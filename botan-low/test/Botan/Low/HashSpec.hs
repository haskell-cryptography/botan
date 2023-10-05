module Botan.Low.HashSpec
( spec
) where

import Test.Prelude

import qualified Data.ByteString.Char8 as Char8
import qualified Data.ByteString as ByteString

import Botan.Bindings.Hash
import Botan.Low.Hash

hashes :: [HashName]
hashes = 
    -- [ "BLAKE2b(128)"
    -- , "BLAKE2b(256)"
    -- , "BLAKE2b(512)"
    [ "BLAKE2b"
    , "GOST-34.11"
    -- , "Keccak-1600(224)"
    -- , "Keccak-1600(256)"
    -- , "Keccak-1600(384)"
    -- , "Keccak-1600(512)"
    , "Keccak-1600"
    , "MD4"
    , "MD5"
    , "RIPEMD-160"
    , "SHA-1"
    , "SHA-224"
    , "SHA-256"
    , "SHA-512"
    , "SHA-384"
    -- , "SHA-512-256"
    -- , "SHA-3(224)"
    -- , "SHA-3(256)"
    -- , "SHA-3(384)"
    -- , "SHA-3(512)"
    , "SHA-3"
    , "SHAKE-128(128)" -- NOTE: SHAKE-128 has no default value, a parameter *MUST* be supplied
    -- , "SHAKE-128(256)"
    -- , "SHAKE-128(512)"
    -- , "SHAKE-256(128)"
    , "SHAKE-256(256)" -- NOTE: SHAKE-128 has no default value, a parameter *MUST* be supplied
    -- , "SHAKE-256(512)"
    , "SM3"
    -- , "Skein-512(128)"
    -- , "Skein-512(256)"
    -- , "Skein-512(512)"
    , "Skein-512"
    , "Streebog-256"
    , "Streebog-512"
    , "Whirlpool"
    , "Adler32"
    , "CRC24"
    , "CRC32"
    ]

message = "Fee fi fo fum! I smell the blood of an Englishman!"

spec :: Spec
spec = testSuite hashes chars $ \ h -> do
    it "can initialize a hash context" $ do
        ctx <- hashInit h
        pass
    it "has a name" $ do
        ctx <- hashInit h
        name <- hashName ctx
        pass
    it "has an output length" $ do
        ctx <- hashInit h
        olen <- hashOutputLength ctx
        pass
    it "can copy the internal state" $ do
        ctx <- hashInit h
        -- TODO: Populate with state and actually prove
        ctx' <- hashCopyState ctx
        pass
    it "can clear all internal state" $ do
        ctx <- hashInit h
        -- TODO: Populate with state and actually prove
        hashClear ctx
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- hashInit h
        forM_ (splitBlocks 4 message) $ hashUpdate ctx
        pass
    it "can finalize a digest" $ do
        ctx <- hashInit h
        hashUpdate ctx message
        d <- hashFinal ctx
        pass
