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

-- spec :: Spec
-- spec = forM_ hashes $ \ h -> describe (Char8.unpack h) $ do
--     describe "hashCtxInitNameIO" $ do
--         it "initializes a hash context" $ do
--             ctx <- hashCtxInitNameIO h
--             pass
--     it "can hash a message" $ do
--         ctx <- hashCtxInitNameIO h
--         digest <- hashCtxUpdateFinalizeClearIO ctx message
--         -- TODO: Have test data
--         -- digest `shouldBe` ""
--         pass

spec :: Spec
spec = testSuite hashes chars $ \ h -> do
    it "can initialize a hash context" $ do
        ctx <- hashCtxInitNameIO h
        pass
    it "has a name" $ do
        ctx <- hashCtxInitNameIO h
        name <- hashCtxNameIO ctx
        pass
    it "has an output length" $ do
        ctx <- hashCtxInitNameIO h
        olen <- hashCtxOutputLengthIO ctx
        pass
    it "can copy the internal state" $ do
        ctx <- hashCtxInitNameIO h
        -- TODO: Populate with state and actually prove
        ctx' <- hashCtxCopyStateIO ctx
        pass
    it "can clear all internal state" $ do
        ctx <- hashCtxInitNameIO h
        -- TODO: Populate with state and actually prove
        hashCtxClearIO ctx
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- hashCtxInitNameIO h
        hashCtxUpdateIO ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- hashCtxInitNameIO h
        forM_ (splitBlocks 4 message) $ hashCtxUpdateIO ctx
        pass
    it "can finalize a digest" $ do
        ctx <- hashCtxInitNameIO h
        hashCtxUpdateIO ctx message
        d <- hashCtxFinalIO ctx
        pass
