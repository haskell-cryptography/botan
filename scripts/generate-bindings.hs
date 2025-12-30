#!/usr/bin/env cabal
{- cabal:
build-depends:
    base >=4.16 && <4.22
  , filepath
  , optparse-applicative
  , process
  , split
  , temporary
-}

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
  -Werror=missing-deriving-strategies
  #-}

{-# OPTIONS_GHC -Werror #-}

{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE LambdaCase         #-}

module Main (main) where

import           Control.Monad (forM_)
import           Data.List.Split (splitOn)
import           Data.Word (Word8)
import           Options.Applicative
import           System.Exit (ExitCode (..), exitFailure)
import           System.FilePath ((<.>), (</>))
import           System.IO.Temp (withSystemTempDirectory)
import           System.Process
import           Text.Printf (printf)
import           Text.Read (readMaybe)

{-------------------------------------------------------------------------------
  Main
-------------------------------------------------------------------------------}

main :: IO ()
main = do
    cmd <- customExecParser (prefs disambiguate) parseCmd'

    case cmd of
      PrintVersions -> do
        section "Printing known versions of Botan..."
        knownVersions <- readKnownVersions
        forM_ knownVersions $ putStrLn . prettyVersion
      Generate opts -> do
        let v = version opts
        printf "Selected version %s\n" (prettyVersion v)

        section "Creating a temporary directory..."
        withSystemTempDirectory "releases" $ \tmpDir -> do
          putStrLn tmpDir

          section "Downloading Botan..."
          callProcess "curl" [mkDownloadURL v, "-o", mkTarballFile tmpDir v]

          -- TODO: verify the release's signature

          section "Unpacking..."
          callProcess "tar" ["xf", mkTarballFile tmpDir v, "-C", tmpDir]

          section "Building and installing..."
          procInstall opts tmpDir

          section "Generating Haskell bindings..."
          procHsBindgen opts tmpDir

          section "Success!"

{-------------------------------------------------------------------------------
  Options
-------------------------------------------------------------------------------}

parseCmd' :: ParserInfo Cmd
parseCmd' = info (parseCmd <**> helper)
    (  fullDesc
    <> progDesc "Generate Haskell bindings for the Botan library"
    )

data Cmd = PrintVersions | Generate Options

data Options = Options {
    version         :: Version
  , outputDirectory :: FilePath
  , baseModuleName  :: String
  }

parseCmd :: Parser Cmd
parseCmd = subparser
    (  command "print-known-versions"
        (info
          (PrintVersions <$ pure ())
          (progDesc "Print all known Botan versions"))
    <> command "generate"
        (info
          (Generate <$> parseOptions <**> helper)
          (progDesc "Generate Haskell bindings"))
    )

parseOptions :: Parser Options
parseOptions = Options
    <$> option parseVersion
          (  long "version"
          <> short 'v'
          <> metavar "VERSION"
          <> help "Botan version, e.g., \"3.9.0\""
          )
    <*> strOption
          (  long "output"
          <> short 'o'
          <> metavar "DIR"
          <> value "botan-bindings/src-generated/"
          <> showDefault
          <> help "Output directory for generated bindings, e.g., \"foo/bar/baz/\""
          )
    <*> strOption
          (  long "module"
          <> short 'm'
          <> metavar "NAME"
          <> value "Botan.Bindings.Generated"
          <> showDefault
          <> help "Base module name for generated bindings, e.g., \"Foo.Bar.Baz\""
          )

parseVersion :: ReadM Version
parseVersion = maybeReader $ \s ->
    case splitOn "." s of
      [major, minor, patch] ->
        Version <$> readMaybe major <*> readMaybe minor <*> readMaybe patch
      _ -> Nothing

{-------------------------------------------------------------------------------
  Building the C++ library
-------------------------------------------------------------------------------}

procInstall :: Options -> FilePath -> IO ()
procInstall opts dir = do
    subsection "Configuring..."
    putStrLn $ showCommandForUser configureCmd configureArgs
    checkFailure "'configure' step failed" $ runProc configureProc
    subsection "Building..."
    checkFailure "'make build' step failed" $ runProc makeBuildProc
    subsection "Installing..."
    checkFailure "'make install' step failed" $ runProc makeInstallProc
  where
    configureCmd = "./configure.py"
    configureArgs = [
          "--compiler-cache=ccache"
        , "--minimized-build"
        , "--without-documentation"
        , "--build-targets=shared"
        , "--enable-modules=ffi,ec_group"
        , "--prefix=" ++ mkInstallDir dir (version opts)
        ]
    configureProc = setCwd $ proc configureCmd configureArgs

    makeBuildProc = setCwd $ proc "make" []
    makeInstallProc = setCwd $ proc "make" ["install"]

    setCwd cp = cp {
          cwd = Just $ mkSourceDir dir (version opts)
        }

{-------------------------------------------------------------------------------
  Generating Haskell bindings
-------------------------------------------------------------------------------}

procHsBindgen :: Options -> FilePath -> IO ()
procHsBindgen opts dir = do
    putStrLn $ showCommandForUser hsBindgenCmd hsBindgenArgs
    checkFailure "'hs-bindgen-cli' failed" (runProc hsBindgenProc)
  where
    hsBindgenCmd = "hs-bindgen-cli"
    hsBindgenArgs = [
          "preprocess"
        , "-I" <> mkIncludeDir dir (version opts)
        , "--unique-id=botan-bindings"
        , "--hs-output-dir=" <> outputDirectory opts
        , "--module=" <> baseModuleName opts
        , "--create-output-dirs"
        , "--overwrite-files"
        , "botan/ffi.h"
        ]
    hsBindgenProc = proc hsBindgenCmd hsBindgenArgs

{-------------------------------------------------------------------------------
  Process
-------------------------------------------------------------------------------}

runProc :: CreateProcess -> IO ExitCode
runProc cp = withCreateProcess cp $ \_ _ _ ph -> waitForProcess ph

checkFailure :: String -> IO ExitCode -> IO ()
checkFailure msg k = k >>= \case
    ExitSuccess -> pure ()
    ExitFailure ret -> do
      print ("[" <> show ret <> "] " <> msg)
      exitFailure

{-------------------------------------------------------------------------------
  Logging
-------------------------------------------------------------------------------}

section :: String -> IO ()
section s = putStrLn ("<<<>>> " <> s <> " <<<>>>")

subsection :: String -> IO ()
subsection s = putStrLn ("<<>> " <> s <> " <<>>")

{-------------------------------------------------------------------------------
  Versions
-------------------------------------------------------------------------------}

data Version = Version Major Minor Patch
  deriving stock (Show, Eq, Ord, Read)

type Major = Word8
type Minor = Word8
type Patch = Word8

readKnownVersions :: IO [Version]
readKnownVersions = do
    contents <- readFile "botan-bindings/KnownVersions.cfg"
    pure $ read contents

prettyVersion :: Version -> String
prettyVersion (Version major minor patch) = show major <> "." <> show minor <> "." <> show patch

prettyFullVersion :: Version -> String
prettyFullVersion v = "Botan-" <> prettyVersion v

{-------------------------------------------------------------------------------
  Paths
-------------------------------------------------------------------------------}

-- | For example: @https://botan.randombit.net/releases/Botan-3.9.0.tar.xz@
mkDownloadURL :: Version -> String
mkDownloadURL v = "https://botan.randombit.net/releases/" <> prettyFullVersion v <.> "tar" <.> "xz"

mkTarballFile :: FilePath -> Version -> FilePath
mkTarballFile dir v = dir </> prettyFullVersion v <.> "tar" <.> "xz"

mkSourceDir :: FilePath -> Version -> FilePath
mkSourceDir dir v = dir </> prettyFullVersion v

mkInstallDir :: FilePath -> Version -> FilePath
mkInstallDir dir v = dir </> prettyFullVersion v <.> "install"

mkIncludeDir :: FilePath -> Version -> FilePath
mkIncludeDir dir v = mkInstallDir dir v </> "include/botan-3"
