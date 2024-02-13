{-|
Module      : Botan.Bindings.Decrypt
Description : Public Key Decryption
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey.Decrypt where

import Botan.Bindings.Prelude
import Botan.Bindings.PubKey

#include <botan/ffi.h>

-- | Opaque decrypt struct
data {-# CTYPE "botan/ffi.h" "struct botan_pk_op_decrypt_struct" #-} BotanPKOpDecryptStruct

-- | Botan decrypt object
newtype {-# CTYPE "botan/ffi.h" "botan_pk_op_decrypt_t" #-} BotanPKOpDecrypt
    = MkBotanPKOpDecrypt { runBotanPKOpDecrypt :: Ptr BotanPKOpDecryptStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Destroy a decrypt object
foreign import capi safe "botan/ffi.h &botan_pk_op_decrypt_destroy"
    botan_pk_op_decrypt_destroy
        :: FinalizerPtr BotanPKOpDecryptStruct

pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE -- ^ Not actual flag
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_DECRYPT_FLAGS_NONE = 0

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt_create"
    botan_pk_op_decrypt_create
        :: Ptr BotanPKOpDecrypt      -- ^ __op__
        -> BotanPrivKey              -- ^ __key__
        -> Ptr CChar                 -- ^ __padding__
        -> Word32                    -- ^ __flags__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt_output_length"
    botan_pk_op_decrypt_output_length
        :: BotanPKOpDecrypt      -- ^ __op__
        -> CSize                 -- ^ __ctext_len__
        -> Ptr CSize             -- ^ __ptext_len__
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pk_op_decrypt"
    botan_pk_op_decrypt
        :: BotanPKOpDecrypt      -- ^ __op__
        -> Ptr Word8             -- ^ __out[]__
        -> Ptr CSize             -- ^ __out_len__
        -> ConstPtr Word8        -- ^ __ciphertext__
        -> CSize                 -- ^ __ciphertext_len__
        -> IO CInt
