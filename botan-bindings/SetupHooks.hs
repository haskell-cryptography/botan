{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DerivingStrategies #-}

module SetupHooks where

import           Control.Monad
import qualified Data.List as List
import           Data.Maybe
import           Distribution.Simple.LocalBuildInfo hiding (LibraryName)
import           Distribution.Simple.Setup
import qualified Distribution.Simple.Setup as CommonSetupFlags
                     (CommonSetupFlags (..))
import qualified Distribution.Simple.Setup as ConfigFlags (ConfigFlags (..))
import           Distribution.Simple.SetupHooks as SetupHooks
import qualified Distribution.Simple.SetupHooks as PostConfPackageInputs
                     (PostConfPackageInputs (..))
import qualified Distribution.Simple.SetupHooks as PreConfComponentInputs
                     (PreConfComponentInputs (..))
import           Distribution.Types.LocalBuildConfig
import qualified Distribution.Types.LocalBuildConfig as PackageBuildDescr
                     (PackageBuildDescr (..))
import           Distribution.Utils.Path (interpretSymbolicPath)
import           System.Directory
import           System.Exit
import           System.FilePath (FilePath, takeDirectory, (<.>), (</>))
import           System.Process
import           Text.Printf
import           Text.Read

{-------------------------------------------------------------------------------
  Hooks
-------------------------------------------------------------------------------}

setupHooks :: SetupHooks
setupHooks = noSetupHooks {
      configureHooks = myConfigureHooks
    }

myConfigureHooks :: ConfigureHooks
myConfigureHooks = noConfigureHooks {
      postConfPackageHook = Just myPostConfPackageHook
    , preConfComponentHook = Just myPreConfComponentHook
    }

{-------------------------------------------------------------------------------
  Post package configuration hook
-------------------------------------------------------------------------------}

myPostConfPackageHook :: PostConfPackageInputs -> IO ()
myPostConfPackageHook pcpi = do
    findWhich
    findPkgConfig
    idir <- pkgConfigFindIncludeDir (LibName "botan-3")
    v <- findBotanVersion idir
    let bdir = getBuildDir (PostConfPackageInputs.packageBuildDescr pcpi)
    writeVersionsInfoFile bdir v
    writeVersionsHeaderFile bdir v

getBuildDir :: PackageBuildDescr -> BuildDir
getBuildDir pbd =
    let
      setupFlags =
          ConfigFlags.configCommonFlags
        $ PackageBuildDescr.configFlags pbd
      symBuildDir = fromFlag $ CommonSetupFlags.setupDistPref setupFlags
      symMbWorkingDir = flagToMaybe $ CommonSetupFlags.setupWorkingDir setupFlags
      path = interpretSymbolicPath symMbWorkingDir symBuildDir
    in
      BuildDir path

{-------------------------------------------------------------------------------
  Pre component configuration hook
-------------------------------------------------------------------------------}

myPreConfComponentHook :: PreConfComponentInputs -> IO PreConfComponentOutputs
myPreConfComponentHook pcci = do
    let bdir = getBuildDir (PreConfComponentInputs.packageBuildDescr pcci)
    v <- readVersionsInfoFile bdir
    print v
    -- TODO
    pure $ noPreConfComponentOutputs pcci

{-------------------------------------------------------------------------------
  Finding programs
-------------------------------------------------------------------------------}

findWhich :: IO ()
findWhich = findProgram (ProgramName "which")

findPkgConfig :: IO ()
findPkgConfig = findProgram (ProgramName "pkg-config")

newtype ProgramName = ProgramName String

findProgram :: ProgramName -> IO ()
findProgram prog@(ProgramName n) = do
  path <- findProgram_ prog
  printf "Found program '%s' at path %s\n"
            n (noNewLines path)

findProgramVersion :: ProgramName -> IO ()
findProgramVersion prog@(ProgramName n) = do
  path <- findProgram_ prog
  version <- readProcess n ["--version"] ""
  printf "Found program '%s' with version %s at path %s\n"
            n (noNewLines version) (noNewLines path)

findProgram_ :: ProgramName -> IO FilePath
findProgram_ (ProgramName n) = do
  printf "Searching for program '%s'\n" n
  (ec, path, err) <- readProcessWithExitCode "which" [n] ""
  when (ec /= ExitSuccess) $ do
    putStrLn err
    printf "Can not find program '%s'\n" n
    exitWith ec
  pure path

noNewLines :: String -> String
noNewLines = filter (/='\n')

{-------------------------------------------------------------------------------
  pkg-config
-------------------------------------------------------------------------------}

newtype LibName = LibName String

pkgConfigFindIncludeDir :: LibName -> IO IncludeDir
pkgConfigFindIncludeDir (LibName n) = do
    printf "Searching for library '%s' using 'pkg-config'\n" n
    (ec, includes, err) <- readProcessWithExitCode "pkg-config" [n, "--cflags-only-I"] ""
    when (ec /= ExitSuccess) $ do
      putStrLn err
      printf "Can not find library '%s'\n" n
      exitWith ec
    let includesPath = noWhitespace (stripPrefixI includes)
    printf "Found library 'botan-3' with includes files at path %s\n" includesPath
    pure (IncludeDir includesPath)

stripPrefixI :: String -> String
stripPrefixI ('-':'I':s) = s
stripPrefixI _ = error "fromI: argument is not of the form -I/foo/bar/baz"

noWhitespace :: String -> String
noWhitespace = filter p
  where
    p '\n' = False
    p ' '  = False
    p _    = True

{-------------------------------------------------------------------------------
  Header search
-------------------------------------------------------------------------------}

newtype IncludeDir = IncludeDir FilePath

findBotanVersion :: IncludeDir -> IO Version
findBotanVersion idir = do
    printf "Parsing botan/build.h for version information\n"
    contents <- readFile (botanBuildHeader idir)
    v <- case parseVersion contents of
            Nothing -> do
              printf "Could not find version information in botan/build.h\n"
              exitFailure
            Just v0 -> pure v0
    printf "Found version %s in botan/build.h\n" (prettyVersion v)
    pure v

botanBuildHeader :: IncludeDir -> FilePath
botanBuildHeader (IncludeDir dir) = dir </> "botan" </> "build" <.> "h"

{-------------------------------------------------------------------------------
  Versions
-------------------------------------------------------------------------------}

data Version = Version Int Int Int
  deriving stock (Show, Eq, Read)

prettyVersion :: Version -> String
prettyVersion (Version x y z) =  show x <> "." <> show y <> "." <> show z

majorVersion, minorVersion, patchVersion :: Version -> Int
majorVersion (Version x _ _) = x
minorVersion (Version _ y _) = y
patchVersion (Version _ _ z) = z

{-------------------------------------------------------------------------------
  Versions: parsing
-------------------------------------------------------------------------------}

parseVersion :: String -> Maybe Version
parseVersion s = go (lines s)
  where
    go ss = do
      let vns = catMaybes (fmap parseVersionNumberMacro ss)
      case List.sort vns of
        [MajorVersion major, MinorVersion minor, PatchVersion patch] ->
          Just (Version major minor patch)
        _ ->
          Nothing

data VersionNumber = MajorVersion Int | MinorVersion Int | PatchVersion Int
  deriving stock (Show, Eq, Ord)

parseVersionNumberMacro :: String -> Maybe VersionNumber
parseVersionNumberMacro s = do
    (name, val) <- parseIntMacro s
    case name of
      "BOTAN_VERSION_MAJOR" -> Just $ MajorVersion val
      "BOTAN_VERSION_MINOR" -> Just $ MinorVersion val
      "BOTAN_VERSION_PATCH" -> Just $ PatchVersion val
      _                     -> Nothing

parseIntMacro :: String -> Maybe (String, Int)
parseIntMacro s = go (words s)
  where
    go ["#define", name, val] = (name,) <$> readMaybe val
    go _                      = Nothing

{-------------------------------------------------------------------------------
  Versions: info file
-------------------------------------------------------------------------------}

newtype BuildDir = BuildDir FilePath

writeVersionsInfoFile :: BuildDir -> Version -> IO ()
writeVersionsInfoFile bdir v = do
    let path = versionsInfoFilePath bdir
    printf "Generating versions info file at path %s\n" path
    createDirectoryIfMissing True (takeDirectory path)
    writeFile path (versionsInfoFileContents v)

readVersionsInfoFile :: BuildDir -> IO Version
readVersionsInfoFile bdir = do
    let path = versionsInfoFilePath bdir
    read <$> readFile path

versionsInfoFilePath :: BuildDir -> FilePath
versionsInfoFilePath (BuildDir dir) =
    dir </> "build" </> "HsBotanBindingsVersions" <.> "info"

versionsInfoFileContents :: Version -> String
versionsInfoFileContents v = show v

{-------------------------------------------------------------------------------
  Versions: header file
-------------------------------------------------------------------------------}

writeVersionsHeaderFile :: BuildDir -> Version -> IO ()
writeVersionsHeaderFile bdir v = do
    let path = versionsHeaderFilePath bdir
    printf "Generating versions header file at path %s\n" path
    createDirectoryIfMissing True (takeDirectory path)
    writeFile path (versionsHeaderFileContents v)

versionsHeaderFilePath :: BuildDir -> FilePath
versionsHeaderFilePath (BuildDir dir) =
    dir </> "build" </> "include" </> "HsBotanBindingsVersions" <.> "h"

versionsHeaderFileContents :: Version -> String
versionsHeaderFileContents (Version major minor patch) = unlines $ fmap unwords $ [
      ["#define", "LIBBOTAN_MAJOR_VERSION", show major]
    , ["#define", "LIBBOTAN_MINOR_VERSION", show minor]
    , ["#define", "LIBBOTAN_PATCH_VERSION", show patch]
    ]
