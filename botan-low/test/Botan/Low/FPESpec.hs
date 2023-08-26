module Botan.Low.FPESpec
( spec
) where

import Test.Prelude

import Botan.Low.FPE
import Botan.Bindings.FPE
import Botan.Low.MPI
import Botan.Low.RNG

import Botan.Low.Error

-- NOTE: FPE operations encrypt/decrypt integers less than n
nStr :: ByteString
nStr = "1000000000000"

key :: ByteString
key = "0000DEADBEEF0000"

rounds :: Int
rounds = 3

newRng :: IO RNGCtx
newRng = rngCtxInitNameIO "system"

newX :: MP -> IO MP
newX n = do
    x <- mpInitIO
    z <- mpInitIO
    mpSetFromIntIO z 0
    -- n <- mpInitIO
    -- mpSetFromStrIO n nStr
    rng <- newRng
    mpRandRangeIO x rng z n
    return x

newFE1Ctx :: IO (MP, FPECtx)
newFE1Ctx = do
    n <- mpInitIO
    mpSetFromStrIO n nStr
    ctx <- fpeCtxInitFE1IO n key rounds BOTAN_FPE_FLAG_NONE
    return (n,ctx)

newFE1CtxCompatMode :: IO (MP, FPECtx)
newFE1CtxCompatMode = do
    n <- mpInitIO
    mpSetFromStrIO n nStr
    ctx <- fpeCtxInitFE1IO n key rounds BOTAN_FPE_FLAG_FE1_COMPAT_MODE
    return (n,ctx)

spec :: Spec
spec = do
    describe "fpeCtxInitFE1IO" $ do
        it "initializes an FE1 FPE context" $ do
            newFE1Ctx
            pass
        it "initializes an FE1 FPE context in compat mode" $ (do
            newFE1CtxCompatMode
            pass
            ) -- `shouldThrow` anyBotanException
    describe "fpeCtxEncryptIO" $ do
        it "performs format-preserving encryption" $ do
            (n,ctx) <- newFE1Ctx
            x <- newX n
            y <- mpCopyIO x
            fpeCtxEncryptIO ctx y ""
            isSame <- mpEqualIO x y
            isSame `shouldBe` False
            pass
        it "performs format-preserving encryption in compat mode" $ do
            (n,ctx) <- newFE1CtxCompatMode
            x <- newX n
            y <- mpCopyIO x
            fpeCtxEncryptIO ctx y ""
            isSame <- mpEqualIO x y
            isSame `shouldBe` False
            pass
    describe "fpeCtxDecryptIO" $ do
        it "performs format-preserving decryption" $ do
            (n,ctx) <- newFE1Ctx
            x <- newX n
            y <- mpCopyIO x
            fpeCtxEncryptIO ctx y ""
            z <- mpCopyIO y
            fpeCtxDecryptIO ctx z ""
            isSame <- mpEqualIO x z
            isSame `shouldBe` True
            pass
        it "performs format-preserving decryption in compat mode" $ do
            (n,ctx) <- newFE1CtxCompatMode
            x <- newX n
            y <- mpCopyIO x
            fpeCtxEncryptIO ctx y ""
            z <- mpCopyIO y
            fpeCtxDecryptIO ctx z ""
            isSame <- mpEqualIO x z
            isSame `shouldBe` True
            pass
