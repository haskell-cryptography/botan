{-|
Module      : Botan.Low.FPE
Description : Format Preserving Encryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Format preserving encryption (FPE) refers to a set of techniques
for encrypting data such that the ciphertext has the same format
as the plaintext. For instance, you can use FPE to encrypt credit
card numbers with valid checksums such that the ciphertext is also
an credit card number with a valid checksum, or similarly for bank
account numbers, US Social Security numbers, or even more general
mappings like English words onto other English words.

The scheme currently implemented in botan is called FE1, and described
in the paper Format Preserving Encryption by Mihir Bellare, Thomas
Ristenpart, Phillip Rogaway, and Till Stegers. FPE is an area of
ongoing standardization and it is likely that other schemes will be
included in the future.

To encrypt an arbitrary value using FE1, you need to use a ranking
method. Basically, the idea is to assign an integer to every value
you might encrypt. For instance, a 16 digit credit card number consists
of a 15 digit code plus a 1 digit checksum. So to encrypt a credit card
number, you first remove the checksum, encrypt the 15 digit value modulo
1015, and then calculate what the checksum is for the new (ciphertext)
number. Or, if you were encrypting words in a dictionary, you could rank
the words by their lexicographical order, and choose the modulus to be
the number of words in the dictionary.
-}

module Botan.Low.FPE where

import qualified Data.ByteString as ByteString

import Botan.Bindings.FPE

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.Prelude

-- NOTE: This module lacks documentation, and is not mentioned in the FFI bindings.
--  It is mentioned in the C++ docs, but the construction significantly differs.
--  I did find these functions in the actual header, and have implemented them as to my best guess
--  It is untested, pending an understanding of what the expected parameters are.

-- /**
-- * Format Preserving Encryption
-- */

-- typedef struct botan_fpe_struct* botan_fpe_t;

newtype FPE = MkFPE { getFPEForeignPtr :: ForeignPtr FPEStruct }

withFPEPtr :: FPE -> (FPEPtr -> IO a) -> IO a
withFPEPtr = withForeignPtr . getFPEForeignPtr

pattern FPENone :: FPEFlags
pattern FPENone = BOTAN_FPE_FLAG_NONE

pattern FPEFE1CompatMode :: FPEFlags
pattern FPEFE1CompatMode = BOTAN_FPE_FLAG_FE1_COMPAT_MODE

fpeFE1Init :: MP -> ByteString -> Int -> FPEFlags -> IO FPE
fpeFE1Init n key rounds flags = withMPPtr n $ \ nPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        alloca $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_fpe_fe1_init outPtr nPtr keyPtr keyLen (fromIntegral rounds) flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_fpe_destroy out
            return $ MkFPE foreignPtr

fpeDestroy :: FPE -> IO ()
fpeDestroy fpe = finalizeForeignPtr (getFPEForeignPtr fpe)

withFPEFE1 :: MP -> ByteString -> Int -> FPEFlags -> (FPE -> IO a) -> IO a
withFPEFE1 = mkWithTemp4 fpeFE1Init fpeDestroy

-- NOTE: Referentially transparent
fpeEncrypt :: FPE -> MP -> ByteString -> IO MP
fpeEncrypt fpe mp tweak = do
    mp' <- mpCopy mp
    fpeEncrypt' fpe mp' tweak
    return mp 

-- NOTE: Mutates the MP
fpeEncrypt' :: FPE -> MP -> ByteString -> IO ()
fpeEncrypt' fpe mp tweak = do
    withFPEPtr fpe $ \ fpePtr -> do
        withMPPtr mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_encrypt fpePtr mpPtr tweakPtr tweakLen

-- NOTE: Referentially transparent
fpeDecrypt :: FPE -> MP -> ByteString -> IO MP
fpeDecrypt fpe mp tweak = do
    mp' <- mpCopy mp
    fpeDecrypt' fpe mp' tweak
    return mp 

-- NOTE: Mutates the MP
fpeDecrypt' :: FPE -> MP -> ByteString -> IO ()
fpeDecrypt' fpe mp tweak = do
    withFPEPtr fpe $ \ fpePtr -> do
        withMPPtr mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_decrypt fpePtr mpPtr tweakPtr tweakLen
