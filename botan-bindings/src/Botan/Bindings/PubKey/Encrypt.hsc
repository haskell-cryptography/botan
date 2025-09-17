{-|
Module      : Botan.Bindings.Encrypt
Description : Public Key Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Encrypt where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

#include <botan/ffi.h>

-- | Opaque encrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_encrypt_struct" #-} BotanPKOpEncryptStruct

-- | Botan encrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_encrypt_t" #-} BotanPKOpEncrypt
    = MkBotanPKOpEncrypt { runBotanPKOpEncrypt :: Ptr BotanPKOpEncryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a encrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_encrypt_destroy"
    botan_pk_op_encrypt_destroy
        :: FinalizerPtr BotanPKOpEncryptStruct

pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE -- ^ Not actual flag
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_ENCRYPT_FLAGS_NONE = 0

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt_create"
    botan_pk_op_encrypt_create
        :: Ptr BotanPKOpEncrypt      -- ^ __op__
        -> BotanPubKey               -- ^ __key__
        -> ConstPtr CChar            -- ^ __padding__
        -> Word32                    -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt_output_length"
    botan_pk_op_encrypt_output_length
        :: BotanPKOpEncrypt      -- ^ __op__
        -> CSize                 -- ^ __ptext_len__
        -> Ptr CSize             -- ^ __ctext_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_encrypt"
    botan_pk_op_encrypt
        :: BotanPKOpEncrypt      -- ^ __op__
        -> BotanRNG              -- ^ __rng__
        -> Ptr Word8             -- ^ __out[]__
        -> Ptr CSize             -- ^ __out_len__
        -> Ptr Word8             -- ^ __plaintext[]__
        -> CSize                 -- ^ __plaintext_len__
        -> IO CInt
