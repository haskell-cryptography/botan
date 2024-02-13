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

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.FPE where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude

#include <botan/ffi.h>

-- | Opaque FPE struct
data {-# CTYPE "botan/ffi.h" "struct botan_fpe_struct" #-} BotanFPEStruct

-- | Botan FPE object
newtype {-# CTYPE "botan/ffi.h" "botan_fpe_t" #-} BotanFPE
    = MkBotanFPE { runBotanFPE :: Ptr BotanFPEStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy the FPE object
foreign import capi safe "botan/ffi.h &botan_fpe_destroy"
    botan_fpe_destroy
        :: FinalizerPtr BotanFPEStruct

pattern BOTAN_FPE_FLAG_NONE 
    ,   BOTAN_FPE_FLAG_FE1_COMPAT_MODE
    ::  (Eq a, Num a) => a

-- Not an actual flag
pattern BOTAN_FPE_FLAG_NONE            = 0
pattern BOTAN_FPE_FLAG_FE1_COMPAT_MODE = #const BOTAN_FPE_FLAG_FE1_COMPAT_MODE

foreign import capi safe "botan/ffi.h botan_fpe_fe1_init"
    botan_fpe_fe1_init
        :: Ptr BotanFPE     -- ^ @fpe@
        -> BotanMP          -- ^ @n@
        -> ConstPtr Word8   -- ^ @key[]@
        -> CSize            -- ^ @key_len@
        -> CSize            -- ^ @rounds@
        -> Word32           -- ^ @flags@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_fpe_encrypt"
    botan_fpe_encrypt
        :: BotanFPE         -- ^ @fpe@
        -> BotanMP          -- ^ @x@
        -> ConstPtr Word8   -- ^ @tweak[]@
        -> CSize            -- ^ @tweak_len@
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_fpe_decrypt"
    botan_fpe_decrypt
        :: BotanFPE         -- ^ @fpe@
        -> BotanMP          -- ^ @x@
        -> ConstPtr Word8   -- ^ @tweak[]@
        -> CSize            -- ^ @tweak_len@
        -> IO CInt
