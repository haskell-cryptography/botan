{-# LANGUAGE CPP                 #-}
{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedRecordDot #-}

-- Copied from @common warnings@
{-# OPTIONS_GHC
  -Wall
  -Wcompat
  -Wincomplete-uni-patterns
  -Wincomplete-record-updates
  -Wpartial-fields
  -Widentities
  -Wredundant-constraints
  -Wmissing-export-lists
  -Wno-unticked-promoted-constructors
  -Wunused-packages
  -Wmissing-deriving-strategies
 #-}

{-# OPTIONS_GHC -Werror #-}

module SetupHooks (
    setupHooks
  ) where

import           Control.Monad
import qualified Data.List as List
import qualified Data.List.Split as List
import           Data.Maybe
import           Data.Monoid (First (..))
import           Distribution.ModuleName
import qualified Distribution.Simple.Errors as Errors
import           Distribution.Simple.Flag (flagToMaybe, fromFlag)
import           Distribution.Simple.LocalBuildInfo (showComponentName)
import qualified Distribution.Simple.Program as Program
import           Distribution.Simple.Setup (CommonSetupFlags (..))
import           Distribution.Simple.SetupHooks as SetupHooks
import qualified Distribution.Simple.SetupHooks as PreConfComponentOutputs
                     (PreConfComponentOutputs (..))
import qualified Distribution.Simple.Utils as Utils
import           Distribution.Types.Flag (lookupFlagAssignment, mkFlagName)
import           Distribution.Types.LocalBuildConfig (LocalBuildConfig (..),
                     PackageBuildDescr (..))
import           Distribution.Utils.Path (Dist, FileOrDir (..), Include, Pkg,
                     RelativePath, getSymbolicPath, interpretSymbolicPath,
                     makeRelativePathEx)
import qualified Distribution.Utils.Path as Path ((</>))
import           System.Directory (createDirectoryIfMissing, doesFileExist)
import           System.FilePath (takeDirectory, takeFileName, (<.>), (</>))
import           Text.Printf (printf)
import           Text.Read

{-------------------------------------------------------------------------------
  Hooks
-------------------------------------------------------------------------------}

-- | See 'myConfigureHooks'.
setupHooks :: SetupHooks
setupHooks = noSetupHooks {
      configureHooks = myConfigureHooks
    }

-- | The configure hooks have two goals:
--
-- * Detect and record version information for an installed @Botan@ library.
--
-- * Add pre-generated Haskell bindings to the build plan based on the installed
--   @Botan@ library version.
myConfigureHooks :: ConfigureHooks
myConfigureHooks = noConfigureHooks {
      postConfPackageHook = Just $ \pcpi -> do
        let verb = getVerbosity  pcpi.packageBuildDescr
        trace verb RunPostConfPackageHook
        myPostConfPackageHook pcpi
        trace verb FinishPostConfPackageHook
    , preConfComponentHook = Just $ \pcci -> do
        let compName = componentName pcci.component
            verb = getVerbosity pcci.packageBuildDescr
        case compName of
          CLibName LMainLibName ->
            continue verb compName $
              myPreConfComponentHook pcci compName
          _ ->
            skip verb compName $
              pure (noPreConfComponentOutputs pcci)
    }
  where
    -- | Log that a pre-configure-component-hook is being run
    continue :: Verbosity -> ComponentName -> IO a -> IO a
    continue verb compName k = do
        trace verb $ RunPreConfComponentHook compName
        res <- k
        trace verb $ FinishPreConfComponentHook compName
        pure res

    -- | Log that a pre-configure-component-hook is being skipped
    skip :: Verbosity -> ComponentName -> IO a -> IO a
    skip verb compName k = do
        trace verb $ SkipPreConfComponentHook compName
        k


{-------------------------------------------------------------------------------
  Post package configuration hook
-------------------------------------------------------------------------------}

-- | In short: detect and record version information for an installed @Botan@
-- library.
myPostConfPackageHook :: PostConfPackageInputs -> IO ()
myPostConfPackageHook pcpi = do
    -- Find the version of the @Botan@ library, if it is installed
    installedVersion <- findBotan3LibraryVersion pcpi
    trace verb $ DetectedBotan3Library installedVersion

    -- Find and parse the @KnownVersions.cfg@ file for the set of known versions
    -- that @botan-bindings@ has pre-generated Haskell modules for.
    knownVersions <- findAndParseKnownVersionsCfgFile verb extraSrcFiles

    -- If the version of the installed @Botan@ library is one that we do not
    -- recognize, then fall back to to the most recent compatible version that
    -- we do recognize, which is the most recent version that is
    -- @<=installedVersion@
    let fallbackVersionMay = findCompatibleKnownVersion knownVersions installedVersion
    fallbackVersion <- onNothing fallbackVersionMay $
      dieWithException verb $ NoFallbackVersion installedVersion knownVersions
    when (installedVersion /= unKnownVersion fallbackVersion) $
      trace verb $ FallingBackToCompatibleVersion fallbackVersion installedVersion

    -- Write the installed version and fallback version to an info file, so that
    -- subsequent hooks can access this information.
    let infoPath = interpretRelativePathBuildDir pcpi.packageBuildDescr versionsInfoPath
    trace verb $ GenerateVersionsInfoFile infoPath
    writeVersionsInfoFile installedVersion fallbackVersion infoPath

    -- Write the installed version and fallback version as C macros to a C
    -- header file, so that Haskell modules in the botan-bindings library can
    -- use these macros for conditional compilation.
    let headerPath = interpretRelativePathBuildDir pcpi.packageBuildDescr versionsHeaderPath
    trace verb $ GenerateVersionsHeaderFile headerPath
    writeVersionsHeaderFile installedVersion fallbackVersion headerPath
  where
    verb = getVerbosity pcpi.packageBuildDescr

    -- extra-src-files
    extraSrcFiles =
        interpretRelativePathWorkingDir pcpi.packageBuildDescr
          <$> pcpi.packageBuildDescr.localPkgDescr.extraSrcFiles

-- | Find out whether the @Botan@ library is installed, and what its version
-- is.
--
-- This uses either @pkg-config@ or a custom search method depending on the
-- value of the @pkg-config@ Cabal flag.
findBotan3LibraryVersion :: PostConfPackageInputs -> IO Version
findBotan3LibraryVersion pcpi = do
    usePkgConfig <- onNothing usePkgConfigMay $
      dieWithException verb NoPkgConfigCabalFlag
    if usePkgConfig then
      pkgConfigFindLibraryVersion verb progDb (LibName "botan-3")
    else
      manualFindBotan3LibraryVersion verb idirs
  where
    verb :: Verbosity
    verb = getVerbosity pcpi.packageBuildDescr

    usePkgConfigMay :: Maybe Bool
    usePkgConfigMay =
        lookupFlagAssignment
          (mkFlagName "pkg-config")
          pcpi.packageBuildDescr.flagAssignment

    progDb :: ProgramDb
    progDb = pcpi.localBuildConfig.withPrograms

    idirs :: [IncludesDir]
    idirs = IncludesDir <$> getExtraIncludesDirs pcpi.packageBuildDescr

{-------------------------------------------------------------------------------
  Pre component configuration hook
-------------------------------------------------------------------------------}

-- | In short: add pre-generated Haskell bindings to the build plan based on the
--   @Botan@ version.
myPreConfComponentHook :: PreConfComponentInputs -> ComponentName -> IO PreConfComponentOutputs
myPreConfComponentHook pcci compName = do
    -- Parse the info file that was created in a previous hook for the installed
    -- @Botan@ version and the fallback version that we picked.
    let infoPath = interpretRelativePathBuildDir pcci.packageBuildDescr versionsInfoPath
    (_v, kv) <- readVersionsInfoFile infoPath

    -- Add pre-generated modules with bindings for the fallback version to the
    -- @other-modules@ field
    let mods = getModuleNames kv
    trace verb $ AddToOtherModules mods
    let bi' = emptyBuildInfo { otherModules = mods }

    -- Add the C header file containing version information that we generated in
    -- a previous hook to the @install-includes@ field
    let headerPath = getSymbolicPath includesDir_versionsHeaderPath
    trace verb $ AddToInstallIncludes headerPath
    let bi'' = bi' { installIncludes = [includesDir_versionsHeaderPath] }

    pure (noPreConfComponentOutputs pcci) {
        PreConfComponentOutputs.componentDiff =
          buildInfoComponentDiff compName bi''
      }
  where
    verb = getVerbosity pcci.packageBuildDescr

{-------------------------------------------------------------------------------
  pkg-config
-------------------------------------------------------------------------------}

-- | The name of a library (per @pkg-config@)
newtype LibName = LibName String

-- | Use @pkg-config@ to find the version of a library (if the library is
-- installed)
pkgConfigFindLibraryVersion ::
     Verbosity
  -> Program.ProgramDb
  -> LibName
  -> IO Version
pkgConfigFindLibraryVersion verb progDb lib@(LibName n) = do
    trace verb $ PkgConfigSearchLibrary lib
    contents <- pkgConfigModVersion
    version <- onNothing (parsePrettyVersion contents) $
      dieWithException verb $ PkgConfigLibVersionNoParse contents
    trace verb $ PkgConfigFoundLibraryVersion lib version
    pure version
  where
    pkgConfigModVersion =
        Program.getDbProgramOutput
          verb
          Program.pkgConfigProgram
          progDb
          ["--modversion", n]

{-------------------------------------------------------------------------------
  Known versions
-------------------------------------------------------------------------------}

findAndParseKnownVersionsCfgFile :: Verbosity -> [FilePath] -> IO [KnownVersion]
findAndParseKnownVersionsCfgFile verb extraSrcFiles = do
    file <- onNothing (findKnownVersionsCfgFile extraSrcFiles) $
      dieWithException verb $ FileNotFound knownVersionsCfgFileName
    readKnownVersions verb file

findKnownVersionsCfgFile :: [FilePath] -> Maybe FilePath
findKnownVersionsCfgFile files = List.find p files
  where
    p file = takeFileName file == "KnownVersions.cfg"

knownVersionsCfgFileName :: FilePath
knownVersionsCfgFileName = "KnownVersions.cfg"

-- | Read the set of known version from a configuration file.
readKnownVersions :: Verbosity -> FilePath -> IO [KnownVersion]
readKnownVersions verb path = do
    contents <- readFile path
    case readMaybe contents of
      Just (kvs :: [Version]) -> pure $ reverse $ List.sort $ fmap KnownVersion kvs
      Nothing -> dieWithException verb $ NoParseKnownVersions path

-- | Given an arbitrary version, pick the most recent /known/ version LEQ than
-- it.
findCompatibleKnownVersion :: [KnownVersion] -> Version -> Maybe KnownVersion
findCompatibleKnownVersion kvs v =
    case filter (<= KnownVersion v) kvs of
      (kv : _kvs) -> Just kv
      _           -> Nothing

newtype KnownVersion = KnownVersion { unKnownVersion :: Version }
  deriving stock (Show, Eq, Ord, Read)

-- | The names of the Haskell modules containing the Haskell bindings for the
-- given @Botan@ version.
getModuleNames :: KnownVersion -> [ModuleName]
getModuleNames (KnownVersion (Version major minor patch)) = fmap fromString [
      baseName
    , baseName `dot` "FunPtr"
    , baseName `dot` "Safe"
    , baseName `dot` "Unsafe"
    ]
  where
    dot x y = x <> "." <> y
    ucase x y = x <> "_" <> y

    baseName =
        "Botan" `dot` "Bindings" `dot` "Generated" `dot`
        "Botan" `ucase` show major `ucase` show minor `ucase` show patch

{-------------------------------------------------------------------------------
  Versions
-------------------------------------------------------------------------------}

-- | A Botan version of the form @MAJOR.MINOR.PATCH@
data Version = Version Int Int Int
  deriving stock (Show, Eq, Ord, Read)

majorVersion, minorVersion, patchVersion :: Version -> Int
majorVersion (Version x _ _) = x
minorVersion (Version _ y _) = y
patchVersion (Version _ _ z) = z

prettyVersion :: Version -> String
prettyVersion (Version x y z) =  show x <> "." <> show y <> "." <> show z

parsePrettyVersion :: String -> Maybe Version
parsePrettyVersion contents = do
    case List.splitOn "." contents of
      [majorStr, minorStr, patchStr] -> do
        major <- readMaybe majorStr
        minor <- readMaybe minorStr
        patch <- readMaybe patchStr
        pure $ Version major minor patch
      _ -> Nothing

{-------------------------------------------------------------------------------
  Versions info file
-------------------------------------------------------------------------------}

-- | Write the Botan version to an info file.
--
-- This info file is mainly used to communicate the version between hooks.
writeVersionsInfoFile ::
     Version
  -> KnownVersion
  -> FilePath
  -> IO ()
writeVersionsInfoFile v kv path = do
    createDirectoryIfMissing True $ takeDirectory path
    writeFile path (versionsInfoFileContents v kv)

-- | Read the Botan version from an info file.
readVersionsInfoFile :: FilePath -> IO (Version, KnownVersion)
readVersionsInfoFile path = read <$> readFile path

versionsInfoFileContents :: Version -> KnownVersion -> String
versionsInfoFileContents v kv = show (v, kv)

{-------------------------------------------------------------------------------
  Versions header file
-------------------------------------------------------------------------------}

-- | Write the Botan version to a header file.
writeVersionsHeaderFile ::
     Version
  -> KnownVersion
  -> FilePath
  -> IO ()
writeVersionsHeaderFile v kv path = do
    createDirectoryIfMissing True $ takeDirectory path
    writeFile path (versionsHeaderFileContents v kv)

versionsHeaderFileContents :: Version -> KnownVersion -> String
versionsHeaderFileContents v (KnownVersion kv) = unlines $ fmap unwords $ [
      ["#define", "BOTAN_MAJOR_VERSION", show (majorVersion v)]
    , ["#define", "BOTAN_MINOR_VERSION", show (minorVersion v)]
    , ["#define", "BOTAN_PATCH_VERSION", show (patchVersion v)]
    , ["#define", "BOTAN_MAJOR_VERSION_BINDINGS", show (majorVersion kv)]
    , ["#define", "BOTAN_MINOR_VERSION_BINDINGS", show (minorVersion kv)]
    , ["#define", "BOTAN_PATCH_VERSION_BINDINGS", show (patchVersion kv)]
    ]

{-------------------------------------------------------------------------------
  Paths
-------------------------------------------------------------------------------}

-- | Interpret a relative path WRT to the build directory
interpretRelativePathBuildDir ::
     SetupHooks.PackageBuildDescr
  -> RelativePath Dist to
  -> FilePath
interpretRelativePathBuildDir pbd relPath =
    let setupFlags = pbd.configFlags.configCommonFlags
        symBuildDir = fromFlag setupFlags.setupDistPref
        symMbWorkingDir = flagToMaybe setupFlags.setupWorkingDir
    in  interpretSymbolicPath symMbWorkingDir (symBuildDir Path.</> relPath)

-- | Interpret a relative path WRT to the current working directory
interpretRelativePathWorkingDir ::
     SetupHooks.PackageBuildDescr
  -> RelativePath Pkg to
  -> FilePath
interpretRelativePathWorkingDir pbd relPath =
    let setupFlags = pbd.configFlags.configCommonFlags
        symMbWorkingDir = flagToMaybe setupFlags.setupWorkingDir
    in  interpretSymbolicPath symMbWorkingDir relPath

versionsInfoPath :: RelativePath Dist File
versionsInfoPath = makeRelativePathEx $
    "build" </> "HsBotanBindingsVersions" <.> "info"

versionsHeaderPath :: RelativePath Dist File
versionsHeaderPath =
    makeRelativePathEx ("build" </> "include") Path.</>
    includesDir_versionsHeaderPath

includesDir_versionsHeaderPath :: RelativePath Include File
includesDir_versionsHeaderPath = makeRelativePathEx $
    "HsBotanBindingsVersions" <.> "h"

{-------------------------------------------------------------------------------
  Getters
-------------------------------------------------------------------------------}

getVerbosity :: PackageBuildDescr -> Verbosity
getVerbosity pbd = fromFlag pbd.configFlags.configCommonFlags.setupVerbosity

getExtraIncludesDirs :: PackageBuildDescr -> [FilePath]
getExtraIncludesDirs pbd =
    interpretSymbolicPath workingDir <$> extraIncludeDirs
  where
    setupFlags = pbd.configFlags.configCommonFlags
    workingDir = flagToMaybe setupFlags.setupWorkingDir
    extraIncludeDirs = pbd.configFlags.configExtraIncludeDirs

{-------------------------------------------------------------------------------
  Logging
-------------------------------------------------------------------------------}

trace :: Verbosity -> TraceMsg -> IO ()
trace verb msg =
    traceFun verb $ prefixHooks $ prettyTraceMsg msg
  where
    traceFun = case traceLevelFor msg of
        Debug  -> Utils.debug
        Info   -> Utils.info
        Notice -> Utils.notice
        Warn   -> Utils.warn

prefixHooks :: String -> String
prefixHooks msg = printf "[hooks]: %s" msg

data TraceMsg =
    RunPostConfPackageHook
  | FinishPostConfPackageHook
  | RunPreConfComponentHook ComponentName
  | FinishPreConfComponentHook ComponentName
  | SkipPreConfComponentHook ComponentName
    -- post-conf-package-hook
  | DetectedBotan3Library Version
  | FallingBackToCompatibleVersion KnownVersion Version
  | GenerateVersionsInfoFile FilePath
  | GenerateVersionsHeaderFile FilePath
    -- pre-conf-component-hook
  | AddToOtherModules [ModuleName]
  | AddToInstallIncludes FilePath
    -- pkg-config
  | PkgConfigSearchLibrary LibName
  | PkgConfigFoundLibraryVersion LibName Version

prettyTraceMsg :: TraceMsg -> String
prettyTraceMsg = \case
    RunPostConfPackageHook ->
      "Running post-configure-package-hook"
    FinishPostConfPackageHook ->
      "Finished post-configure-package-hook"
    RunPreConfComponentHook compName ->
      printf
        "Running pre-configure-component-hook for component '%s'"
        (showComponentName compName)
    FinishPreConfComponentHook compName ->
      printf
        "Finished pre-configure-component-hook for component '%s'"
        (showComponentName compName)
    SkipPreConfComponentHook compName ->
      printf
        "Skipping pre-configure-component-hook for component '%s'"
        (showComponentName compName)

    -- post-conf-package-hook

    DetectedBotan3Library version ->
      printf
        "Detected an installed Botan library with version %s"
        (prettyVersion version)
    FallingBackToCompatibleVersion fallbackVersion installedVersion ->
      printf
        (concat [
            "Falling back to largest known compatible version %s because "
          , "botan-bindings does not recognize installed version %s. "
          , "botan-bindings should still compile, but it might be missing newer "
          , "Botan features."
          ])
        (prettyVersion $ unKnownVersion fallbackVersion)
        (prettyVersion installedVersion)
    GenerateVersionsInfoFile path ->
      printf "Generating versions info file at path %s" path
    GenerateVersionsHeaderFile path ->
      printf "Generating versions header file at path %s" path

    -- pre-conf-component-hook

    AddToOtherModules moduleNames ->
      printf
        "Adding modules to other-modules: %s"
        (show moduleNames)
    AddToInstallIncludes path ->
      printf
        "Adding C header file to install-includes: %s"
        path

    --pkg-config

    PkgConfigSearchLibrary (LibName n) ->
      printf "Searching for library '%s' using 'pkg-config'" n
    PkgConfigFoundLibraryVersion (LibName n) version ->
      printf
        "Found library '%s' with version '%s'"
        n
        (prettyVersion version)

data TraceLevel = Warn | Notice | Info | Debug

traceLevelFor :: TraceMsg -> TraceLevel
traceLevelFor = \case
    RunPostConfPackageHook{} -> Notice
    FinishPostConfPackageHook{} -> Notice
    RunPreConfComponentHook{} -> Notice
    FinishPreConfComponentHook{} -> Notice
    SkipPreConfComponentHook{} -> Info

    -- post-conf-package-hook

    DetectedBotan3Library{} -> Notice
    FallingBackToCompatibleVersion{} -> Warn
    GenerateVersionsInfoFile{} -> Info
    GenerateVersionsHeaderFile{} -> Notice

    -- pre-conf-component-hook

    AddToOtherModules{} -> Notice
    AddToInstallIncludes{} -> Notice

    -- pkg-config

    PkgConfigSearchLibrary{} -> Debug
    PkgConfigFoundLibraryVersion{} -> Debug

{-------------------------------------------------------------------------------
  Errors
-------------------------------------------------------------------------------}

dieWithException :: forall a. Verbosity -> HooksError -> IO a
dieWithException verb err = Utils.dieWithException verb $
    Errors.RawSystemStdout (prefixHooks (prettyHooksError err))

onNothing :: Maybe a -> IO a -> IO a
onNothing x k = maybe k pure x

data HooksError =
    NoFallbackVersion Version [KnownVersion]
  | NoPkgConfigCabalFlag
  | PkgConfigLibVersionNoParse String
  | FileNotFound FilePath
  | NoParseKnownVersions FilePath
  | BotanBuildHeaderNotFound [IncludesDir]
  | NoParseBuildHeader FilePath

prettyHooksError :: HooksError -> String
prettyHooksError = \case
    NoFallbackVersion installedVersion knownVersions ->
      printf
        (concat [
            "Can not find a compatible fallback version for installed version  "
          , "%s in known versions %s"
          ])
        (show installedVersion)
        (show $ fmap unKnownVersion knownVersions)
    NoPkgConfigCabalFlag ->
      "Can not find pkg-config cabal flag"
    PkgConfigLibVersionNoParse contents ->
      printf "can not parse version information from %s" (show contents)
    FileNotFound path ->
      printf "Can not find %s" path
    NoParseKnownVersions path ->
      printf "Failed to parse file %s for known versions" path
    BotanBuildHeaderNotFound idirs ->
      printf
        (concat [
            "Failed to find the Botan header file %s. "
          , "These directories were searched: %s. "
          , "Make sure to update extra-lib-dirs and extra-include-dirs."
          ])
        botanBuildHeader
        (show $ fmap unIncludesDir idirs)
    NoParseBuildHeader path ->
      printf "Failed to parse Botan header file %s for version information" path

{-------------------------------------------------------------------------------
  C header parsing
-------------------------------------------------------------------------------}

manualFindBotan3LibraryVersion ::
     Verbosity
  -> [IncludesDir]
  -> IO Version
manualFindBotan3LibraryVersion verb idirs = do
    pathMay <- findBotan3BuildHeader idirs
    path <- onNothing pathMay $
      dieWithException verb $ BotanBuildHeaderNotFound idirs
    headerParseBotanVersion verb path

findBotan3BuildHeader :: [IncludesDir] -> IO (Maybe FilePath)
findBotan3BuildHeader idirs = do
    paths <- forM idirs $ \idir -> do
      let path = absBotanBuildHeader idir
      b <- doesFileExist path
      pure $ if b then Just path else Nothing
    pure $ getFirst $ foldMap First paths

-- | An includes directory
newtype IncludesDir = IncludesDir FilePath
  deriving stock Show

unIncludesDir :: IncludesDir -> FilePath
unIncludesDir (IncludesDir path) = path

-- | Parse a @Botan@ version from the @botan/build.h@ header file.
headerParseBotanVersion :: Verbosity -> FilePath -> IO Version
headerParseBotanVersion verb path = do
    contents <- readFile path
    v <- onNothing (pVersion contents) $
      dieWithException verb $ NoParseBuildHeader path
    pure v

absBotanBuildHeader :: IncludesDir -> FilePath
absBotanBuildHeader (IncludesDir dir) = dir </> botanBuildHeader

botanBuildHeader :: FilePath
botanBuildHeader = "botan" </> "build" <.> "h"

-- | Parse a @Botan@ version from the contents of the @botan/build.h@ header
-- file.
pVersion :: String -> Maybe Version
pVersion s = go (lines s)
  where
    go ss = do
      let vns = catMaybes (fmap pVersionNumber ss)
      case List.sort vns of
        [MajorVersion major, MinorVersion minor, PatchVersion patch] ->
          Just (Version major minor patch)
        _ ->
          Nothing

-- | A @Botan@ major version, minor version, or patch version.
data VersionNumber = MajorVersion Int | MinorVersion Int | PatchVersion Int
  deriving stock (Show, Eq, Ord)

pVersionNumber :: String -> Maybe VersionNumber
pVersionNumber s = do
    IntMacro name val <- pIntMacro s
    case name of
      "BOTAN_VERSION_MAJOR" -> Just $ MajorVersion val
      "BOTAN_VERSION_MINOR" -> Just $ MinorVersion val
      "BOTAN_VERSION_PATCH" -> Just $ PatchVersion val
      _                     -> Nothing

-- | A C macro with an integer value
data IntMacro = IntMacro { _intMacroName :: String, _intMacroValue :: Int }

pIntMacro :: String -> Maybe IntMacro
pIntMacro s = go (words s)
  where
    go ["#define", name, val] = IntMacro name <$> readMaybe val
    go _                      = Nothing
