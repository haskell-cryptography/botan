module Botan.Low.HashSpec
( spec
) where

import Prelude

import Test.Hspec

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as ByteString

import Botan.Bindings.Hash
import Botan.Low.Hash

hashes :: [HashName]
hashes = 
    [ "BLAKE2b(128)"
    , "BLAKE2b(256)"
    , "BLAKE2b(512)"
    , "GOST-34.11"
    , "Keccak-1600(224)"
    , "Keccak-1600(256)"
    , "Keccak-1600(384)"
    , "Keccak-1600(512)"
    , "MD4"
    , "MD5"
    , "RIPEMD-160"
    , "SHA-1"
    , "SHA-224"
    , "SHA-256"
    , "SHA-512"
    , "SHA-384"
    , "SHA-512-256"
    , "SHA-3(224)"
    , "SHA-3(256)"
    , "SHA-3(384)"
    , "SHA-3(512)"
    , "SHAKE-128(128)"
    , "SHAKE-128(256)"
    , "SHAKE-128(512)"
    , "SHAKE-256(128)"
    , "SHAKE-256(256)"
    , "SHAKE-256(512)"
    , "SM3"
    , "Skein-512(128)"
    , "Skein-512(256)"
    , "Skein-512(512)"
    , "Streebog-256"
    , "Streebog-512"
    , "Whirlpool"
    , "Adler32"
    , "CRC24"
    , "CRC32"
    ]

spec :: Spec
spec = do
    describe "hashCtxInitNameIO" $ do
        forM_ hashes $ \ h -> context (Char8.unpack h) $ do
            it "initializes a hash context" $ do
                ctx <- hashCtxInitNameIO h
                pending
