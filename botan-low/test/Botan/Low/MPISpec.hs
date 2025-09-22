module Main where

import           Test.Prelude

import           Botan.Low.MPI
import           Botan.Low.RNG

-- NOTE: These unit tests are mostly checking that the functions are bound correctly.
--  These are kind of crappy and repetative, but that also exposes what needs to be done
--  in the higher libraries to make things ergonomic.

main :: IO ()
main = hspec $ do
    it "can initialize a mutable MPI reference" $ do
        mp <- mpInit
        pass
    it "can set the value from an int" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        pass
    it "can set the value from another reference" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mp' <- mpInit
        mpSetFromMP mp' mp
        isEqual <- mpEqual mp mp'
        isEqual `shouldBe` True
        pass
    it "can be converted to a hex string" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        hex <- mpToHex mp
        hex `shouldBe` "0x0200"
        hex' <- mpToStr mp 16
        hex' `shouldBe` "0x0200"
        pass
    it "can be converted to a decimal string" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        dec <- mpToStr mp 10
        dec `shouldBe` "512"
        pass
    it "can be cleared to zero" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mpClear mp
        zero <- mpInit
        mpSetFromInt zero 0
        isClear <- mpEqual mp zero
        isClear `shouldBe` True
        pass
    it "can copy the value to a new reference" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mp' <- mpCopy mp
        isEqual <- mpEqual mp mp'
        isEqual `shouldBe` True
        pass
    it "can set the value from a decimal string" $ do
        mp <- mpInit
        mpSetFromStr mp "512"
        mp' <- mpInit
        mpSetFromInt mp' 512
        isEqualStr <- mpEqual mp mp'
        isEqualStr `shouldBe` True
        mpSetFromRadixStr mp "512" 10
        isEqualRadixStr <- mpEqual mp mp'
        isEqualRadixStr `shouldBe` True
        pass
    it "can set the value from a hex string" $ do
        mp <- mpInit
        mpSetFromStr mp "0x0200"
        mp' <- mpInit
        mpSetFromInt mp' 512
        isEqualStr <- mpEqual mp mp'
        isEqualStr `shouldBe` True
        mpSetFromRadixStr mp "0200" 16 -- NOTE: Lack of "0x" prefix
        isEqualRadixStr <- mpEqual mp mp'
        isEqualRadixStr `shouldBe` True
        pass
    it "has a number of bits" $ do
        mp <- mpInit
        mpSetFromStr mp "512"
        n <- mpNumBits mp
        n `shouldBe` 10
        pass
    it "has a number of bytes" $ do
        mp <- mpInit
        mpSetFromStr mp "512"
        n <- mpNumBytes mp
        n `shouldBe` 2
        pass
    it "can be converted to a bytestring" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        bin <- mpToBin mp
        bin `shouldBe` "\STX\NUL" -- NOTE: 0b 0000 0010 0000 0000
        pass
    it "can set the value from a bytestring" $ do
        mp <- mpInit
        mpFromBin mp "\STX\NUL"
        mp' <- mpInit
        mpSetFromInt mp' 512
        isEqual <- mpEqual mp mp'
        isEqual `shouldBe` True
        pass
    it "can be converted to a 32-bit word" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        w <- mpToWord32 mp
        w `shouldBe` 512
        pass
    -- NOTE: Returns whether x >= 0, not x > 0 because 0 is treated as positive.
    it "can check if a value is positive" $ do
        n <- mpInit
        mpSetFromInt n (-512)
        nIsPositive <- mpIsPositive n
        nIsPositive `shouldBe` False
        z <- mpInit
        mpSetFromInt z 0
        zIsPositive <- mpIsPositive z
        zIsPositive `shouldBe` True
        p <- mpInit
        mpSetFromInt p 512
        pIsPositive <- mpIsPositive p
        pIsPositive `shouldBe` True
        pass
    it "can check if a value is negative" $ do
        n <- mpInit
        mpSetFromInt n (-512)
        nIsPositive <- mpIsNegative n
        nIsPositive `shouldBe` True
        z <- mpInit
        mpSetFromInt z 0
        zIsPositive <- mpIsNegative z
        zIsPositive `shouldBe` False
        p <- mpInit
        mpSetFromInt p 512
        pIsPositive <- mpIsNegative p
        pIsPositive `shouldBe` False
        pass
    it "can flip the sign of a value" $ do
        p <- mpInit
        mpSetFromInt p 512
        n <- mpInit
        mpSetFromInt n (-512)
        mpFlipSign p
        isEqual <- mpEqual p n
        pass
    it "can check whether a value is zero" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        isZeroA <- mpIsZero mp
        isZeroA `shouldBe` False
        mpSetFromInt mp 0
        isZeroB <- mpIsZero mp
        isZeroB `shouldBe` True
        mpSetFromInt mp (-512)
        isZeroC <- mpIsZero mp
        isZeroC `shouldBe` False
        pass
    it "can add a 32-bit word to the value and store the result" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mp' <- mpInit
        mpAddWord32 mp' mp 512
        result <- mpToWord32 mp'
        result `shouldBe` 1024
        pass
    it "can subtract a 32-bit word from the value and store the result" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mp' <- mpInit
        mpSubWord32 mp' mp 512
        result <- mpToWord32 mp'
        result `shouldBe` 0
        pass
    it "can add one value to another and store the result" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 512
        c <- mpInit
        mpAdd c a b
        result <- mpToWord32 c
        result `shouldBe` 1024
        pass
    it "can subtract one value from another and store the result" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 512
        c <- mpInit
        mpSub c a b
        result <- mpToWord32 c
        result `shouldBe` 0
        pass
    it "can multiply one value by another and store the result" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 512
        c <- mpInit
        mpMul c a b
        result <- mpToWord32 c
        result `shouldBe` 262144
        pass
    it "can divide one value by another and store the result" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 512
        q <- mpInit
        r <- mpInit
        mpDiv q r a b
        quotient <- mpToWord32 q
        quotient `shouldBe` 1
        remainder <- mpToWord32 r
        remainder `shouldBe` 0
        pass
    it "can perform multiplication and modulus at the same time and store the result" $ do
        r <- mpInit
        x <- mpInit
        mpSetFromInt x 2
        y <- mpInit
        mpSetFromInt y 4
        mod <- mpInit
        mpSetFromInt mod 7
        mpModMul r x y mod
        result <- mpToWord32 r
        result `shouldBe` 1
        pass
    it "can check whether two values are equal" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 512
        c <- mpInit
        mpSetFromInt c 256
        abEqual <- mpEqual a b
        abEqual `shouldBe` True
        bcEqual <- mpEqual b c
        bcEqual `shouldBe` False
        pass
    it "can compare two values for order" $ do
        n <- mpInit
        mpSetFromInt n (-1)
        z <- mpInit
        mpSetFromInt z 0
        p <- mpInit
        mpSetFromInt p 1
        nz <- mpCmp n z
        nz `shouldBe` -1
        zp <- mpCmp z p
        zp `shouldBe` -1
        np <- mpCmp n p
        np `shouldBe` -1
        nn <- mpCmp n n
        nn `shouldBe` 0
        zz <- mpCmp z z
        zz `shouldBe` 0
        pp <- mpCmp p p
        pp `shouldBe` 0
        pz <- mpCmp p z
        pz `shouldBe` 1
        zn <- mpCmp z n
        zn `shouldBe` 1
        pn <- mpCmp p n
        pn `shouldBe` 1
        pass
    it "can swap the values of two references" $ do
        a <- mpInit
        mpSetFromInt a 512
        b <- mpInit
        mpSetFromInt b 256
        mpSwap a b
        a' <- mpToWord32 a
        a' `shouldBe` 256
        b' <- mpToWord32 b
        b' `shouldBe` 512
        pass
    it "can perform exponentiation and modulus at the same time and store the result" $ do
        r <- mpInit
        x <- mpInit
        mpSetFromInt x 2
        y <- mpInit
        mpSetFromInt y 4
        mod <- mpInit
        mpSetFromInt mod 7
        mpPowMod r x y mod
        result <- mpToWord32 r
        result `shouldBe` 2
        pass
    it "can perform a left shift and store the result" $ do
        mp <- mpInit
        result <- mpInit
        mpSetFromInt mp 512
        mpLeftShift result mp 3
        r <- mpToWord32 result
        r `shouldBe` 4096
        pass
    it "can perform a right shift and store the result" $ do
        mp <- mpInit
        result <- mpInit
        mpSetFromInt mp 512
        mpRightShift result mp 3
        r <- mpToWord32 result
        r `shouldBe` 64
        pass
    it "can compute the modular inverse" $ do
        result <- mpInit
        x <- mpInit
        mpSetFromInt x 29
        mod <- mpInit
        mpSetFromInt mod 65535
        -- x needs to be smaller than mod
        mpModInverse result x mod
        r <- mpToWord32 result
        r `shouldBe` 13559
        pass
    it "can generate a number of random bits" $ do
        mp <- mpInit
        rng <- rngInit "system"
        mpRandBits mp rng 9
        r <- mpToWord32 mp
        0 <= r && r < 512 `shouldBe` True
        pass
    it "can generate a random value within a range [lower,upper)" $ do
        result <- mpInit
        rng <- rngInit "system"
        lower <- mpInit
        mpSetFromInt lower 4
        upper <- mpInit
        mpSetFromInt upper 8
        mpRandRange result rng lower upper
        isGTELower <- (<= 0) <$> mpCmp lower result
        isGTELower `shouldBe` True
        isLTUpper <- (== -1) <$> mpCmp result upper
        isLTUpper `shouldBe` True
        pass
    it "can calculate the greatest common divisor of a value" $ do
        r <- mpInit
        x <- mpInit
        mpSetFromInt x 35
        y <- mpInit
        mpSetFromInt y 21
        mpGCD r x y
        result <- mpToWord32 r
        result `shouldBe` 7
        pass
    it "can probabilistically calculate whether a value is prime" $ do
        mp <- mpInit
        rng <- rngInit "system"
        mpSetFromInt mp 131
        isPrime131 <- mpIsPrime mp rng 100
        isPrime131 `shouldBe` True
        mpSetFromInt mp 133
        isPrime133 <- mpIsPrime mp rng 100
        isPrime133 `shouldBe` False
        pass
    it "can get the value of a single bit" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        f <- mpGetBit mp 8
        f `shouldBe` False
        t <- mpGetBit mp 9
        t `shouldBe` True
        pass
    it "can set the value of a single bit (set it to 1)" $ do
        mp <- mpInit
        mpSetFromInt mp 512
        mpSetBit mp 8
        result <- mpToWord32 mp
        result `shouldBe` 768
        pass
    it "can clear the value of a single bit (set it to 0)" $ do
        mp <- mpInit
        mpSetFromInt mp 768
        mpClearBit mp 8
        result <- mpToWord32 mp
        result `shouldBe` 512
        pass
