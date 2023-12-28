{-|
Module      : Botan.Bindings.PubKey
Description : Public key cryptography
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Public key cryptography is a collection of techniques allowing
for encryption, signatures, and key agreement.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.PubKey where

import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.RNG
import Botan.Bindings.View

#include <botan/ffi.h>

-- | Opaque PrivKey struct
data {-# CTYPE "botan/ffi.h" "struct botan_privkey_struct" #-} BotanPrivKeyStruct

-- | Botan PrivKey object
newtype {-# CTYPE "botan/ffi.h" "botan_privkey_t" #-} BotanPrivKey
    = MkBotanPrivKey { runBotanPrivKey :: Ptr BotanPrivKeyStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the PrivKey object
foreign import capi safe "botan/ffi.h &botan_privkey_destroy"
    botan_privkey_destroy
        :: FinalizerPtr BotanPrivKeyStruct

-- | Create a new private key
foreign import capi safe "botan/ffi.h botan_privkey_create"
    botan_privkey_create
        :: Ptr BotanPrivKey    -- ^ key the new object will be placed here
        -> ConstPtr CChar      -- ^ algo_name something like "RSA" or "ECDSA"
        -> ConstPtr CChar      -- ^ algo_params is specific to the algorithm. For RSA, specifies
                               --   the modulus bit length. For ECC is the name of the curve.
        -> BotanRNG            -- ^ rng a random number generator
        -> IO CInt

pattern BOTAN_CHECK_KEY_NORMAL_TESTS
    ,   BOTAN_CHECK_KEY_EXPENSIVE_TESTS
    ::  (Eq a, Num a) => a
pattern BOTAN_CHECK_KEY_NORMAL_TESTS    = 0
pattern BOTAN_CHECK_KEY_EXPENSIVE_TESTS = #const BOTAN_CHECK_KEY_EXPENSIVE_TESTS

foreign import capi safe "botan/ffi.h botan_privkey_check_key"
    botan_privkey_check_key
        :: BotanPrivKey    -- ^ key
        -> BotanRNG        -- ^ rng
        -> Word32          -- ^ flags
        -> IO CInt

{- |
Input currently assumed to be PKCS #8 structure;
Set password to NULL to indicate no encryption expected
Starting in 2.8.0, the rng parameter is unused and may be set to null
-}
foreign import capi safe "botan/ffi.h botan_privkey_load"
    botan_privkey_load
        :: Ptr BotanPrivKey    -- ^ key
        -> BotanRNG            -- ^ rng
        -> ConstPtr Word8      -- ^ bits[]
        -> CSize               -- ^ len
        -> ConstPtr CChar      -- ^ password
        -> IO CInt

pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER
    ,   BOTAN_PRIVKEY_EXPORT_FLAG_PEM
    ::  (Eq a, Num a) => a
pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER = #const BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern BOTAN_PRIVKEY_EXPORT_FLAG_PEM = #const BOTAN_PRIVKEY_EXPORT_FLAG_PEM

{- |
On input *out_len is number of bytes in out[]
On output *out_len is number of bytes written (or required)
If out is not big enough no output is written, *out_len is set and 1 is returned
Returns 0 on success and sets
If some other error occurs a negative integer is returned.
-}
foreign import capi safe "botan/ffi.h botan_privkey_export"
    botan_privkey_export
        :: BotanPrivKey    -- ^ key
        -> Ptr Word8       -- ^ out[]
        -> Ptr CSize       -- ^ out_len
        -> Word32          -- ^ flags
        -> IO CInt

-- | View the private key's DER encoding
foreign import capi safe "botan/ffi.h botan_privkey_view_der"
    botan_privkey_view_der
        :: BotanPrivKey                         -- ^ key
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ view
        -> IO CInt

-- | View the private key's PEM encoding
foreign import capi safe "botan/ffi.h botan_privkey_view_pem"
    botan_privkey_view_pem
        :: BotanPrivKey                         -- ^ key
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ view
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_algo_name"
    botan_privkey_algo_name
        :: BotanPrivKey    -- ^ key
        -> Ptr CChar       -- ^ out[]
        -> Ptr CSize       -- ^ out_len
        -> IO CInt

{- |
Export a private key, running PBKDF for specified amount of time

Note: starting in 3.0, the output iterations count is not provided
-}
foreign import capi safe "botan/ffi.h botan_privkey_export_encrypted_pbkdf_msec"
    botan_privkey_export_encrypted_pbkdf_msec
        :: BotanPrivKey    -- ^ key
        -> Ptr Word8       -- ^ out[]
        -> Ptr CSize       -- ^ out_len
        -> BotanRNG        -- ^ rng
        -> ConstPtr CChar  -- ^ passphrase
        -> Word32          -- ^ pbkdf_msec_runtime
        -> Ptr CSize       -- ^ pbkdf_iterations_out
        -> ConstPtr CChar  -- ^ cipher_algo
        -> ConstPtr CChar  -- ^ pbkdf_algo
        -> Word32          -- ^ flags
        -> IO CInt

-- | Export a private key using the specified number of iterations.
foreign import capi safe "botan/ffi.h botan_privkey_export_encrypted_pbkdf_iter"
    botan_privkey_export_encrypted_pbkdf_iter
        :: BotanPrivKey    -- ^ key
        -> Ptr Word8       -- ^ out[]
        -> Ptr CSize       -- ^ out_len
        -> BotanRNG        -- ^ rng
        -> ConstPtr CChar  -- ^ passphrase
        -> CSize           -- ^ pbkdf_iterations
        -> ConstPtr CChar  -- ^ cipher_algo
        -> ConstPtr CChar  -- ^ pbkdf_algo
        -> Word32          -- ^ flags
        -> IO CInt

{- |
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_der"
    botan_privkey_view_encrypted_der
        :: BotanPrivKey                         -- ^ key
        -> BotanRNG                             -- ^ rng
        -> ConstPtr CChar                       -- ^ passphrase
        -> ConstPtr CChar                       -- ^ cipher_algo
        -> ConstPtr CChar                       -- ^ pbkdf_algo
        -> CSize                                -- ^ pbkdf_iterations
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ view
        -> IO CInt

{- |
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_der_timed"
    botan_privkey_view_encrypted_der_timed
        :: BotanPrivKey                         -- ^ key
        -> BotanRNG                             -- ^ rng
        -> ConstPtr CChar                       -- ^ passphrase
        -> ConstPtr CChar                       -- ^ cipher_algo
        -> ConstPtr CChar                       -- ^ pbkdf_algo
        -> CSize                                -- ^ pbkdf_runtime_msec
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx)    -- ^ view
        -> IO CInt

{- |
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_pem"
    botan_privkey_view_encrypted_pem
        :: BotanPrivKey                         -- ^ key
        -> BotanRNG                             -- ^ rng
        -> ConstPtr CChar                       -- ^ passphrase
        -> ConstPtr CChar                       -- ^ cipher_algo
        -> ConstPtr CChar                       -- ^ pbkdf_algo
        -> CSize                                -- ^ pbkdf_iterations
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ view
        -> IO CInt

{- |
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
foreign import capi safe "botan/ffi.h botan_privkey_view_encrypted_pem_timed"
    botan_privkey_view_encrypted_pem_timed
        :: BotanPrivKey                         -- ^ key
        -> BotanRNG                             -- ^ rng
        -> ConstPtr CChar                       -- ^ passphrase
        -> ConstPtr CChar                       -- ^ cipher_algo
        -> ConstPtr CChar                       -- ^ pbkdf_algo
        -> CSize                                -- ^ pbkdf_runtime_msec
        -> BotanViewContext ctx                 -- ^ ctx
        -> FunPtr (BotanViewStrCallback ctx)    -- ^ view
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_privkey_get_field"
    botan_privkey_get_field
        :: BotanMP         -- ^ output
        -> BotanPrivKey    -- ^ key
        -> ConstPtr CChar  -- ^ field_name
        -> IO CInt


-- | Opaque PubKey struct
data {-# CTYPE "botan/ffi.h" "struct botan_pubkey_struct" #-} BotanPubKeyStruct

-- | Botan PubKey object
newtype {-# CTYPE "botan/ffi.h" "botan_pubkey_t" #-} BotanPubKey
    = MkBotanPubKey { runBotanPubKey :: Ptr BotanPubKeyStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the PubKey object
foreign import capi safe "botan/ffi.h &botan_pubkey_destroy"
    botan_pubkey_destroy
        :: FinalizerPtr BotanPubKeyStruct

foreign import capi safe "botan/ffi.h botan_privkey_export_pubkey"
    botan_privkey_export_pubkey
        :: Ptr BotanPubKey    -- ^ out
        -> BotanPrivKey       -- ^ in
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_load"
    botan_pubkey_load
        :: Ptr BotanPubKey     -- ^ key
        -> ConstPtr Word8      -- ^ bits[]
        -> CSize               -- ^ len
        -> IO CInt

pattern BOTAN_PUBKEY_EXPORT_FLAG_DER    -- ^ BOTAN_PRIVKEY_EXPORT_FLAG_DER in disguise
    ,   BOTAN_PUBKEY_EXPORT_FLAG_PEM    -- ^ BOTAN_PRIVKEY_EXPORT_FLAG_PEM in disguise
    ::  (Eq a, Num a) => a
pattern BOTAN_PUBKEY_EXPORT_FLAG_DER = BOTAN_PRIVKEY_EXPORT_FLAG_DER
pattern BOTAN_PUBKEY_EXPORT_FLAG_PEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM

foreign import capi safe "botan/ffi.h botan_pubkey_export"
    botan_pubkey_export
        :: BotanPubKey    -- ^ key
        -> Ptr Word8      -- ^ out[]
        -> Ptr CSize      -- ^ out_len
        -> Word32         -- ^ flags
        -> IO CInt

-- | View the public key's DER encoding
foreign import capi safe "botan/ffi.h botan_pubkey_view_der"
    botan_pubkey_view_der
        :: BotanPubKey                       -- ^ key
        -> BotanViewContext ctx              -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx) -- ^ view
        -> IO CInt
    
    -- | View the public key's PEM encoding
foreign import capi safe "botan/ffi.h botan_pubkey_view_pem"
    botan_pubkey_view_pem
        :: BotanPubKey                       -- ^ key
        -> BotanViewContext ctx              -- ^ ctx
        -> FunPtr (BotanViewStrCallback ctx) -- ^ view
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_algo_name"
    botan_pubkey_algo_name
        :: BotanPubKey    -- ^ key
        -> Ptr CChar      -- ^ out[]
        -> Ptr CSize      -- ^ out_len
        -> IO CInt

-- | Returns 0 if key is valid, negative if invalid key or some other error
foreign import capi safe "botan/ffi.h botan_pubkey_check_key"
    botan_pubkey_check_key
        :: BotanPubKey    -- ^ key
        -> BotanRNG       -- ^ rng
        -> Word32         -- ^ flags
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_estimated_strength"
    botan_pubkey_estimated_strength
        :: BotanPubKey    -- ^ key
        -> Ptr CSize      -- ^ estimate
        -> IO CInt

foreign import capi safe "botan/ffi.h botan_pubkey_fingerprint"
    botan_pubkey_fingerprint
        :: BotanPubKey    -- ^ key
        -> ConstPtr CChar -- ^ hash
        -> Ptr Word8      -- ^ out[]
        -> Ptr CSize      -- ^ out_len
        -> IO CInt

-- | Get arbitrary named fields from public or private keys
foreign import capi safe "botan/ffi.h botan_pubkey_get_field"
    botan_pubkey_get_field
        :: BotanMP        -- ^ output
        -> BotanPubKey    -- ^ key
        -> ConstPtr CChar -- ^ field_name
        -> IO CInt

-- | View the uncompressed public point associated with the key
foreign import capi safe "botan/ffi.h botan_pubkey_view_ec_public_point"
    botan_pubkey_view_ec_public_point
        :: BotanPubKey                       -- ^ key
        -> BotanViewContext ctx              -- ^ ctx
        -> FunPtr (BotanViewBinCallback ctx) -- ^ view
        -> IO CInt
