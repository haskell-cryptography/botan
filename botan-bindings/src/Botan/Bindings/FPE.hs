{-|
Module      : Botan.Bindings.FPE
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

module Botan.Bindings.FPE where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude

-- NOTE: This module lacks documentation, and is not mentioned in the FFI bindings.
--  It is mentioned in the C++ docs, but the construction significantly differs.
--  I did find these functions in the actual header, and have implemented them as to my best guess
--  It is untested, pending an understanding of what the expected parameters are.

{-|
Opaque FPE object

@typedef struct botan_fpe_struct* botan_fpe_t;@
-}
data FPEStruct
type FPEPtr = Ptr FPEStruct

-- #define BOTAN_FPE_FLAG_FE1_COMPAT_MODE 1
type FPEFlags = Word32
pattern BOTAN_FPE_FLAG_NONE = 0 :: FPEFlags -- Not a real flag
pattern BOTAN_FPE_FLAG_FE1_COMPAT_MODE = 1 :: FPEFlags

{-
@BOTAN_PUBLIC_API(2,8) 
int botan_fpe_fe1_init(botan_fpe_t* fpe, botan_mp_t n,
                       const uint8_t key[], size_t key_len,
                       size_t rounds, uint32_t flags);@
-}
foreign import ccall unsafe botan_fpe_fe1_init :: Ptr FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> CSize -> Word32 -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,8)
int botan_fpe_destroy(botan_fpe_t fpe);@
-}
foreign import ccall unsafe "&botan_fpe_destroy" botan_fpe_destroy :: FinalizerPtr FPEStruct

{-|
@BOTAN_PUBLIC_API(2,8)
int botan_fpe_encrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);@
-}
foreign import ccall unsafe botan_fpe_encrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,8)
int botan_fpe_decrypt(botan_fpe_t fpe, botan_mp_t x, const uint8_t tweak[], size_t tweak_len);@
-}
foreign import ccall unsafe botan_fpe_decrypt :: FPEPtr -> MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode
