module Botan.Low.MPISpec
( spec
) where

import Test.Prelude

import Botan.Low.MPI
import Botan.Low.RNG

-- NOTE: These unit tests are mostly checking that the functions are bound correctly.
--  These are kind of crappy and repetative, but that also exposes what needs to be done
--  in the higher libraries to make things ergonomic.

spec :: Spec
spec = do
    it "can initialize a mutable MPI reference" $ do
        mp <- mpInitIO
        pass
    it "can set the value from an int" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        pass 
    it "can set the value from another reference" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mp' <- mpInitIO
        mpSetFromMPIO mp' mp
        isEqual <- mpEqualIO mp mp'
        isEqual `shouldBe` True
        pass
    it "can be converted to a hex string" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        hex <- mpToHexIO mp
        hex `shouldBe` "0x0200"
        hex' <- mpToStrIO mp 16
        hex' `shouldBe` "0x0200"
        pass
    it "can be converted to a decimal string" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        dec <- mpToStrIO mp 10
        dec `shouldBe` "512"
        pass
    it "can be cleared to zero" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mpClearIO mp
        zero <- mpInitIO
        mpSetFromIntIO zero 0
        isClear <- mpEqualIO mp zero 
        isClear `shouldBe` True
        pass
    it "can copy the value to a new reference" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mp' <- mpCopyIO mp
        isEqual <- mpEqualIO mp mp'
        isEqual `shouldBe` True
        pass
    it "can set the value from a decimal string" $ do
        mp <- mpInitIO
        mpSetFromStrIO mp "512"
        mp' <- mpInitIO
        mpSetFromIntIO mp' 512
        isEqualStr <- mpEqualIO mp mp'
        isEqualStr `shouldBe` True
        mpSetFromRadixStrIO mp "512" 10
        isEqualRadixStr <- mpEqualIO mp mp'
        isEqualRadixStr `shouldBe` True
        pass
    it "can set the value from a hex string" $ do
        mp <- mpInitIO
        mpSetFromStrIO mp "0x0200"
        mp' <- mpInitIO
        mpSetFromIntIO mp' 512
        isEqualStr <- mpEqualIO mp mp'
        isEqualStr `shouldBe` True
        mpSetFromRadixStrIO mp "0200" 16 -- NOTE: Lack of "0x" prefix
        isEqualRadixStr <- mpEqualIO mp mp'
        isEqualRadixStr `shouldBe` True
        pass
    it "has a number of bits" $ do
        mp <- mpInitIO
        mpSetFromStrIO mp "512"
        n <- mpNumBitsIO mp
        n `shouldBe` 10
        pass
    it "has a number of bytes" $ do
        mp <- mpInitIO
        mpSetFromStrIO mp "512"
        n <- mpNumBytesIO mp
        n `shouldBe` 2
        pass
    it "can be converted to a bytestring" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        bin <- mpToBinIO mp
        bin `shouldBe` "\STX\NUL" -- NOTE: 0b 0000 0010 0000 0000
        pass
    it "can set the value from a bytestring" $ do
        mp <- mpInitIO
        mpFromBinIO mp "\STX\NUL"
        mp' <- mpInitIO
        mpSetFromIntIO mp' 512
        isEqual <- mpEqualIO mp mp'
        isEqual `shouldBe` True
        pass
    it "can be converted to a 32-bit word" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        w <- mpToWord32IO mp
        w `shouldBe` 512
        pass
    -- NOTE: Returns whether x >= 0, not x > 0 because 0 is treated as positive.
    it "can check if a value is positive" $ do
        n <- mpInitIO
        mpSetFromIntIO n (-512)
        nIsPositive <- mpIsPositiveIO n
        nIsPositive `shouldBe` False
        z <- mpInitIO
        mpSetFromIntIO z 0
        zIsPositive <- mpIsPositiveIO z
        zIsPositive `shouldBe` True
        p <- mpInitIO
        mpSetFromIntIO p 512
        pIsPositive <- mpIsPositiveIO p
        pIsPositive `shouldBe` True
        pass
    it "can check if a value is negative" $ do
        n <- mpInitIO
        mpSetFromIntIO n (-512)
        nIsPositive <- mpIsNegativeIO n
        nIsPositive `shouldBe` True
        z <- mpInitIO
        mpSetFromIntIO z 0
        zIsPositive <- mpIsNegativeIO z
        zIsPositive `shouldBe` False
        p <- mpInitIO
        mpSetFromIntIO p 512
        pIsPositive <- mpIsNegativeIO p
        pIsPositive `shouldBe` False
        pass
    it "can flip the sign of a value" $ do
        p <- mpInitIO
        mpSetFromIntIO p 512
        n <- mpInitIO
        mpSetFromIntIO n (-512)
        mpFlipSignIO p
        isEqual <- mpEqualIO p n
        pass
    it "can check whether a value is zero" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        isZeroA <- mpIsZeroIO mp
        isZeroA `shouldBe` False
        mpSetFromIntIO mp 0
        isZeroB <- mpIsZeroIO mp
        isZeroB `shouldBe` True
        mpSetFromIntIO mp (-512)
        isZeroC <- mpIsZeroIO mp
        isZeroC `shouldBe` False
        pass
    it "can add a 32-bit word to the value and store the result" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mp' <- mpInitIO
        mpAddWord32IO mp' mp 512
        result <- mpToWord32IO mp'
        result `shouldBe` 1024
        pass
    it "can subtract a 32-bit word from the value and store the result" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mp' <- mpInitIO
        mpSubWord32IO mp' mp 512
        result <- mpToWord32IO mp'
        result `shouldBe` 0
        pass
    it "can add one value to another and store the result" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 512
        c <- mpInitIO
        mpAddIO c a b
        result <- mpToWord32IO c
        result `shouldBe` 1024
        pass
    it "can subtract one value from another and store the result" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 512
        c <- mpInitIO
        mpSubIO c a b
        result <- mpToWord32IO c
        result `shouldBe` 0
        pass
    it "can multiply one value by another and store the result" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 512
        c <- mpInitIO
        mpMulIO c a b
        result <- mpToWord32IO c
        result `shouldBe` 262144
        pass
    it "can divide one value by another and store the result" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 512
        q <- mpInitIO
        r <- mpInitIO
        mpDivIO q r a b
        quotient <- mpToWord32IO q
        quotient `shouldBe` 1
        remainder <- mpToWord32IO r
        remainder `shouldBe` 0
        pass
    it "can perform multiplication and modulus at the same time and store the result" $ do
        r <- mpInitIO
        x <- mpInitIO
        mpSetFromIntIO x 2
        y <- mpInitIO
        mpSetFromIntIO y 4
        mod <- mpInitIO
        mpSetFromIntIO mod 7
        mpModMulIO r x y mod
        result <- mpToWord32IO r
        result `shouldBe` 1
        pass
    it "can check whether two values are equal" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 512
        c <- mpInitIO
        mpSetFromIntIO c 256
        abEqual <- mpEqualIO a b
        abEqual `shouldBe` True
        bcEqual <- mpEqualIO b c
        bcEqual `shouldBe` False
        pass
    it "can compare two values for order" $ do
        n <- mpInitIO
        mpSetFromIntIO n (-1)
        z <- mpInitIO
        mpSetFromIntIO z 0
        p <- mpInitIO
        mpSetFromIntIO p 1
        nz <- mpCmpIO n z
        nz `shouldBe` -1
        zp <- mpCmpIO z p
        zp `shouldBe` -1
        np <- mpCmpIO n p
        np `shouldBe` -1
        nn <- mpCmpIO n n
        nn `shouldBe` 0
        zz <- mpCmpIO z z
        zz `shouldBe` 0
        pp <- mpCmpIO p p
        pp `shouldBe` 0
        pz <- mpCmpIO p z
        pz `shouldBe` 1
        zn <- mpCmpIO z n
        zn `shouldBe` 1
        pn <- mpCmpIO p n
        pn `shouldBe` 1
        pass
    it "can swap the values of two references" $ do
        a <- mpInitIO
        mpSetFromIntIO a 512
        b <- mpInitIO
        mpSetFromIntIO b 256
        mpSwapIO a b
        a' <- mpToWord32IO a
        a' `shouldBe` 256
        b' <- mpToWord32IO b
        b' `shouldBe` 512
        pass
    it "can perform exponentiation and modulus at the same time and store the result" $ do
        r <- mpInitIO
        x <- mpInitIO
        mpSetFromIntIO x 2
        y <- mpInitIO
        mpSetFromIntIO y 4
        mod <- mpInitIO
        mpSetFromIntIO mod 7
        mpPowModIO r x y mod
        result <- mpToWord32IO r
        result `shouldBe` 2
        pass
    it "can perform a left shift and store the result" $ do
        mp <- mpInitIO
        result <- mpInitIO
        mpSetFromIntIO mp 512
        mpLeftShiftIO result mp 3
        r <- mpToWord32IO result
        r `shouldBe` 4096
        pass
    it "can perform a right shift and store the result" $ do
        mp <- mpInitIO
        result <- mpInitIO
        mpSetFromIntIO mp 512
        mpRightShiftIO result mp 3
        r <- mpToWord32IO result
        r `shouldBe` 64
        pass
    it "can compute the modular inverse" $ do
        r <- mpInitIO
        x <- mpInitIO
        mpSetFromIntIO x 512
        mod <- mpInitIO
        mpSetFromIntIO mod 29
        mpModInverseIO r x mod
        -- TODO: Actually check more than just being bound
        pass
    it "can generate a number of random bits" $ do
        mp <- mpInitIO
        rng <- rngCtxInitNameIO "system"
        mpRandBitsIO mp rng 9
        r <- mpToWord32IO mp
        0 <= r && r < 512 `shouldBe` True
        pass
    it "can generate a random value within a range [lower,upper)" $ do
        result <- mpInitIO
        rng <- rngCtxInitNameIO "system"
        lower <- mpInitIO
        mpSetFromIntIO lower 4
        upper <- mpInitIO
        mpSetFromIntIO upper 8
        mpRandRangeIO result rng lower upper
        isGTELower <- (<= 0) <$> mpCmpIO lower result
        isGTELower `shouldBe` True
        isLTUpper <- (== -1) <$> mpCmpIO result upper
        isLTUpper `shouldBe` True
        pass
    it "can calculate the greatest common divisor of a value" $ do
        r <- mpInitIO
        x <- mpInitIO
        mpSetFromIntIO x 35
        y <- mpInitIO
        mpSetFromIntIO y 21
        mpGCDIO r x y
        result <- mpToWord32IO r
        result `shouldBe` 7
        pass
    it "can probabilistically calculate whether a value is prime" $ do
        mp <- mpInitIO
        rng <- rngCtxInitNameIO "system"
        mpSetFromIntIO mp 131
        isPrime131 <- mpIsPrimeIO mp rng 100
        isPrime131 `shouldBe` True
        mpSetFromIntIO mp 133
        isPrime133 <- mpIsPrimeIO mp rng 100
        isPrime133 `shouldBe` False
        pass
    it "can get the value of a single bit" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        f <- mpGetBitIO mp 8
        f `shouldBe` False
        t <- mpGetBitIO mp 9
        t `shouldBe` True
        pass
    it "can set the value of a single bit (set it to 1)" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 512
        mpSetBitIO mp 8
        result <- mpToWord32IO mp
        result `shouldBe` 768
        pass
    it "can clear the value of a single bit (set it to 0)" $ do
        mp <- mpInitIO
        mpSetFromIntIO mp 768
        mpClearBitIO mp 8
        result <- mpToWord32IO mp
        result `shouldBe` 512
        pass
