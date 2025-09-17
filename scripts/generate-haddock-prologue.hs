#!/usr/bin/env cabal
{- cabal:
build-depends:
    , base          >=4.16
    , pandoc       ^>=3.6.4
    , text          >=2.1

ghc-options:
  -Wall -Wcompat -Wincomplete-uni-patterns
  -Wincomplete-record-updates -Wpartial-fields -Widentities
  -Wredundant-constraints -Wmissing-export-lists
  -Wno-unticked-promoted-constructors -Wunused-packages
  -Werror=missing-deriving-strategies -Wmissing-import-lists

ghc-options: -Werror
-}

module Main (main) where


import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import           Text.Pandoc (runIOorExplode)
import           Text.Pandoc.Extensions (githubMarkdownExtensions)
import           Text.Pandoc.Options (ReaderOptions (readerExtensions), def)
import           Text.Pandoc.Readers (readMarkdown)
import           Text.Pandoc.Writers (writeHaddock)

main :: IO ()
main = do
    putStrLn "Generating prologue.haddock..."
    let readmeHeaderFile = "README.md"
    readmeHeaderContent <- TIO.readFile readmeHeaderFile
    header <-
      runIOorExplode $ do
          doc <- readMarkdown def{readerExtensions = githubMarkdownExtensions} readmeHeaderContent
          writeHaddock def doc
    let prologue = T.unlines [header]
    TIO.writeFile "prologue.haddock" prologue
