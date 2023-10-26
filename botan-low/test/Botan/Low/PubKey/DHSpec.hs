module Botan.Low.PubKey.DHSpec
( spec
) where

import Test.Prelude

import Botan.Low.MPI 
import Botan.Low.RNG
import Botan.Low.PubKey
import Botan.Low.PubKey.DH

-- TODO: Consolidate
dlGroups :: [ByteString]
dlGroups =
    [ "ffdhe/ietf/2048"
    , "ffdhe/ietf/3072"
    , "ffdhe/ietf/4096"
    , "ffdhe/ietf/6144"
    , "ffdhe/ietf/8192"
    , "modp/ietf/1024"
    , "modp/ietf/1536"
    , "modp/ietf/2048"
    , "modp/ietf/3072"
    , "modp/ietf/4096"
    , "modp/ietf/6144"
    , "modp/ietf/8192"
    , "modp/srp/1024"
    , "modp/srp/1536"
    , "modp/srp/2048"
    , "modp/srp/3072"
    , "modp/srp/4096"
    , "modp/srp/6144"
    , "modp/srp/8192"
    , "dsa/jce/1024"
    , "dsa/botan/2048"
    , "dsa/botan/3072"
    ]

-- TODO: Consolidate
privKeyField :: PrivKey -> ByteString -> IO MP
privKeyField privKey field = do
    mp <- mpInit
    privKeyGetField mp privKey field
    return mp

-- TODO: Consolidate
pubKeyField :: PubKey -> ByteString -> IO MP
pubKeyField pubKey field = do
    mp <- mpInit
    pubKeyGetField mp pubKey field
    return mp

spec :: Spec
spec = testSuite dlGroups chars $ \ dlGroup -> do
    it "privKeyLoadDH" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        p <- privKeyField privKey "p"
        g <- privKeyField privKey "g"
        x <- privKeyField privKey "x"
        loadedKey <- privKeyLoadDH p g x
        pass
    it "pubKeyLoadDH" $ do
        rng <- rngInit "system"
        privKey <- privKeyCreate "DH" dlGroup rng
        pubKey <- privKeyExportPubKey privKey
        p <- pubKeyField pubKey "p"
        g <- pubKeyField pubKey "g"
        y <- pubKeyField pubKey "y"
        loadedKey <- pubKeyLoadDH p g y
        pass
