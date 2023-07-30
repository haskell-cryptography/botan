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

module Botan.Bindings.PubKey where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.Random
    
{-|
Opaque privkey object

@typedef struct botan_privkey_struct* botan_privkey_t;@
-}

data PrivKeyStruct
type PrivKeyPtr = Ptr PrivKeyStruct

{-|
Create a new private key

- \@param key the new object will be placed here
- \@param algo_name something like "RSA" or "ECDSA"
- \@param algo_params is specific to the algorithm. For RSA, specifies
       the modulus bit length. For ECC is the name of the curve.
- \@param rng a random number generator

@BOTAN_PUBLIC_API(2,0) int botan_privkey_create(botan_privkey_t* key,
                                               const char* algo_name,
                                               const char* algo_params,
                                               botan_rng_t rng);@
-}
foreign import ccall unsafe botan_privkey_create :: Ptr PrivKeyPtr -> Ptr CChar -> Ptr CChar -> RandomPtr -> IO BotanErrorCode

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_privkey_destroy(botan_privkey_t key);@
-}
foreign import ccall unsafe "&botan_privkey_destroy" botan_privkey_destroy :: FinalizerPtr PrivKeyStruct

-- #define BOTAN_CHECK_KEY_EXPENSIVE_TESTS 1
type PubKeyCheckKeyFlags = Word32
pattern BOTAN_PUBKEY_CHECK_KEY_FLAGS_NONE = 0 :: PubKeyCheckKeyFlags -- NOTE: NOT ACTUAL FLAG.
pattern BOTAN_PUBKEYCHECK_KEY_FLAGS_EXPENSIVE_TESTS = 1 :: PubKeyCheckKeyFlags

-- NOTE: returns -1 (INVALID_INPUT) if key is wrong?
{-|
@BOTAN_PUBLIC_API(2,0) int botan_privkey_check_key(botan_privkey_t key, botan_rng_t rng, uint32_t flags);@
-}
foreign import ccall unsafe botan_privkey_check_key :: PrivKeyPtr -> RandomPtr -> PubKeyCheckKeyFlags -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_rsa(botan_privkey_t* key, botan_rng_t rng, size_t n_bits);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_ecdsa(botan_privkey_t* key, botan_rng_t rng, const char* params);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_ecdh(botan_privkey_t* key, botan_rng_t rng, const char* params);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_mceliece(botan_privkey_t* key, botan_rng_t rng, size_t n, size_t t);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_dh(botan_privkey_t* key, botan_rng_t rng, const char* param);

{-|
Generates DSA key pair. Gives to a caller control over key length
and order of a subgroup 'q'.

- @param   key   handler to the resulting key
- @param   rng   initialized PRNG
- @param   pbits length of the key in bits. Must be between in range (1024, 3072)
         and multiple of 64. Bit size of the prime 'p'
- @param   qbits order of the subgroup. Must be in range (160, 256) and multiple
         of 8

- @returns BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
- @returns BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
- @returns BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or
         `qbits'
- @returns BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented


@BOTAN_PUBLIC_API(2,5) int botan_privkey_create_dsa(
                                botan_privkey_t* key,
                                botan_rng_t rng,
                                size_t pbits,
                                size_t qbits);@
-}
foreign import ccall unsafe botan_privkey_create_dsa
    :: Ptr PrivKeyPtr   -- key
    -> RandomPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode

{-|
Generates ElGamal key pair. Caller has a control over key length
and order of a subgroup 'q'. Function is able to use two types of
primes:
   * if pbits-1 == qbits then safe primes are used for key generation
   * otherwise generation uses group of prime order

- @param   key   handler to the resulting key
- @param   rng   initialized PRNG
- @param   pbits length of the key in bits. Must be at least 1024
- @param   qbits order of the subgroup. Must be at least 160

- @returns BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
- @returns BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
- @returns BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or
         `qbits'
- @returns BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented


@BOTAN_PUBLIC_API(2,5) int botan_privkey_create_elgamal(
                            botan_privkey_t* key,
                            botan_rng_t rng,
                            size_t pbits,
                            size_t qbits);@
-}
foreign import ccall unsafe botan_privkey_create_elgamal
    :: Ptr PrivKeyPtr   -- key
    -> RandomPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode


{-|
Input currently assumed to be PKCS #8 structure;
Set password to NULL to indicate no encryption expected
Starting in 2.8.0, the rng parameter is unused and may be set to null

@BOTAN_PUBLIC_API(2,0) int botan_privkey_load(botan_privkey_t* key,
                                             botan_rng_t rng,
                                             const uint8_t bits[], size_t len,
                                             const char* password);@
-}
foreign import ccall unsafe botan_privkey_load :: Ptr PrivKeyPtr -> RandomPtr -> Ptr Word8 -> CSize -> CString -> IO BotanErrorCode

-- #define BOTAN_PRIVKEY_EXPORT_FLAG_DER 0
-- #define BOTAN_PRIVKEY_EXPORT_FLAG_PEM 1
type PrivKeyExportFlags = Word32
pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER = 0 :: PrivKeyExportFlags
pattern BOTAN_PRIVKEY_EXPORT_FLAG_PEM = 1 :: PrivKeyExportFlags

{-|
On input *out_len is number of bytes in out[]
On output *out_len is number of bytes written (or required)
If out is not big enough no output is written, *out_len is set and 1 is returned
Returns 0 on success and sets
If some other error occurs a negative integer is returned.

@BOTAN_PUBLIC_API(2,0) int botan_privkey_export(botan_privkey_t key,
                                   uint8_t out[], size_t* out_len,
                                   uint32_t flags);@
-}
foreign import ccall unsafe botan_privkey_export :: PrivKeyPtr -> Ptr Word8 -> Ptr CSize -> PrivKeyExportFlags -> IO BotanErrorCode

{-
View the private key's DER encoding
-}
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_der(
--    botan_privkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions
-- foreign import ccall unsafe botan_privkey_view_der
--     :: PrivKeyPtr
--     -> Ptr a
--     -> FunPtr (Ptr a -> Ptr Word8 -> CSize -> IO BotanErrorCode)
--     -> IO BotanErrorCode

{-
View the private key's PEM encoding

@BOTAN_PUBLIC_API(3,0) int botan_privkey_view_pem(
   botan_privkey_t key,
   botan_view_ctx ctx,
   botan_view_str_fn view);@
-}

-- TODO: After figuring out the view functions

{-|
@BOTAN_PUBLIC_API(2,8) int botan_privkey_algo_name(botan_privkey_t key, char out[], size_t* out_len);@
-}
foreign import ccall unsafe botan_privkey_algo_name :: PrivKeyPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

{-|
Set encryption_algo to NULL or "" to have the library choose a default (recommended)
-}
-- BOTAN_DEPRECATED("Use botan_privkey_export_encrypted_pbkdf_{msec,iter}")
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted(botan_privkey_t key,
--                                              uint8_t out[], size_t* out_len,
--                                              botan_rng_t rng,
--                                              const char* passphrase,
--                                              const char* encryption_algo,
--                                              uint32_t flags);

{-|
Export a private key, running PBKDF for specified amount of time
- \@param key the private key to export

Note: starting in 3.0, the output iterations count is not provided

@BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted_pbkdf_msec(botan_privkey_t key,
                                                        uint8_t out[], size_t* out_len,
                                                        botan_rng_t rng,
                                                        const char* passphrase,
                                                        uint32_t pbkdf_msec_runtime,
                                                        size_t* pbkdf_iterations_out,
                                                        const char* cipher_algo,
                                                        const char* pbkdf_algo,
                                                        uint32_t flags);@
-}
foreign import ccall unsafe botan_privkey_export_encrypted_pbkdf_msec
    :: PrivKeyPtr   -- key
    -> Ptr Word8    -- out
    -> Ptr CSize    -- out_len
    -> RandomPtr    -- rng
    -> CString      -- passphrase
    -> Word32       -- pbkdf_msec_runtime
    -> Ptr CSize    -- pbkdf_iterations_out -- UNUSED, CAN PASS IN NULLPTR
    -> Ptr CChar    -- cipher_algo
    -> Ptr CChar    -- pbkdf_algo
    -> Word32       -- flags
    -> IO BotanErrorCode


{-|
Export a private key using the specified number of iterations.

@BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted_pbkdf_iter(botan_privkey_t key,
                                                        uint8_t out[], size_t* out_len,
                                                        botan_rng_t rng,
                                                        const char* passphrase,
                                                        size_t pbkdf_iterations,
                                                        const char* cipher_algo,
                                                        const char* pbkdf_algo,
                                                        uint32_t flags);@
-}
foreign import ccall unsafe botan_privkey_export_encrypted_pbkdf_iter
    :: PrivKeyPtr   -- key
    -> Ptr Word8    -- out
    -> Ptr CSize    -- out_len
    -> RandomPtr    -- rng
    -> CString      -- passphrase
    -> CSize        -- pbkdf_iterations
    -> Ptr CChar    -- cipher_algo
    -> Ptr CChar    -- pbkdf_algo
    -> Word32       -- flags
    -> IO BotanErrorCode

{-
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_der(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_iterations,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions

{-
View the encryption of a private key (binary DER encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_der_timed(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_runtime_msec,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions

{-
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
Set pbkdf_iterations to 0 to use defaults
-}
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_pem(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_iterations,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: After figuring out the view functions

{-
View the encryption of a private key (PEM encoding)

Set cipher_algo, pbkdf_algo to NULL to use defaults
-}
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_pem_timed(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_runtime_msec,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: After figuring out the view functions

{-|
Opaque pubkey object

typedef struct botan_pubkey_struct* botan_pubkey_t;
-}
data PubKeyStruct
type PubKeyPtr = Ptr PubKeyStruct

{-|
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_pubkey_destroy(botan_pubkey_t key);@
-}
foreign import ccall unsafe "&botan_pubkey_destroy" botan_pubkey_destroy :: FinalizerPtr PubKeyStruct

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_load(botan_pubkey_t* key, const uint8_t bits[], size_t len);@
-}
foreign import ccall unsafe botan_pubkey_load :: Ptr PubKeyPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_privkey_export_pubkey(botan_pubkey_t* out, botan_privkey_t in);@
-}
foreign import ccall unsafe botan_privkey_export_pubkey :: Ptr PubKeyPtr -> PrivKeyPtr -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_export(botan_pubkey_t key, uint8_t out[], size_t* out_len, uint32_t flags);@
-}
foreign import ccall unsafe botan_pubkey_export :: PubKeyPtr -> Ptr Word8 -> Ptr CSize -> PubKeyExportFlags -> IO BotanErrorCode

type PubKeyExportFlags = Word32
pattern BOTAN_PUBKEY_EXPORT_FLAG_DER = BOTAN_PRIVKEY_EXPORT_FLAG_DER :: PubKeyExportFlags -- Not a real flag
pattern BOTAN_PUBKEY_EXPORT_FLAG_PEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM :: PubKeyExportFlags -- Not a real flag

{-
View the public key's DER encoding
-}
-- BOTAN_PUBLIC_API(3,0) int botan_pubkey_view_der(
--    botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: When we figure out view functions

{-
View the public key's PEM encoding
-}
-- BOTAN_PUBLIC_API(3,0) int botan_pubkey_view_pem(
--    botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: When we figure out view functions

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_algo_name(botan_pubkey_t key, char out[], size_t* out_len);@
-}
foreign import ccall unsafe botan_pubkey_algo_name :: PubKeyPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

{-|
Returns 0 if key is valid, negative if invalid key or some other error

@BOTAN_PUBLIC_API(2,0) int botan_pubkey_check_key(botan_pubkey_t key, botan_rng_t rng, uint32_t flags);@
-}
foreign import ccall unsafe botan_pubkey_check_key :: PubKeyPtr -> RandomPtr -> PubKeyCheckKeyFlags -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_estimated_strength(botan_pubkey_t key, size_t* estimate);@
-}
foreign import ccall unsafe botan_pubkey_estimated_strength :: PubKeyPtr -> Ptr CSize -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_pubkey_fingerprint(botan_pubkey_t key, const char* hash,
                                       uint8_t out[], size_t* out_len);@
-}
foreign import ccall unsafe botan_pubkey_fingerprint :: PubKeyPtr -> CString -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

{-|
Get arbitrary named fields from public or private keys

@BOTAN_PUBLIC_API(2,0) int botan_pubkey_get_field(botan_mp_t output,
                                     botan_pubkey_t key,
                                     const char* field_name);@
-}
foreign import ccall unsafe botan_pubkey_get_field
    :: MPPtr
    -> PubKeyPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,0) int botan_privkey_get_field(botan_mp_t output,
                                      botan_privkey_t key,
                                      const char* field_name);@
-}
foreign import ccall unsafe botan_privkey_get_field
    :: MPPtr
    -> PrivKeyPtr
    -> CString
    -> IO BotanErrorCode

{-
Algorithm specific key operations: ECDSA and ECDH
-}

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_ecdsa(botan_privkey_t* key,
                             const botan_mp_t scalar,
                             const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_ecdsa
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_ecdsa(botan_pubkey_t* key,
                            const botan_mp_t public_x,
                            const botan_mp_t public_y,
                            const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_ecdsa
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_ecdh(botan_privkey_t* key,
                            const botan_mp_t scalar,
                            const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_ecdh
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_ecdh(botan_pubkey_t* key,
                           const botan_mp_t public_x,
                           const botan_mp_t public_y,
                           const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_ecdh
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_privkey_load_sm2(botan_privkey_t* key,
                           const botan_mp_t scalar,
                           const char* curve_name);@
-}
foreign import ccall unsafe botan_privkey_load_sm2
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

{-|
@BOTAN_PUBLIC_API(2,2)
int botan_pubkey_load_sm2(botan_pubkey_t* key,
                          const botan_mp_t public_x,
                          const botan_mp_t public_y,
                          const char* curve_name);@
-}
foreign import ccall unsafe botan_pubkey_load_sm2
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_privkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_sm2_enc(botan_privkey_t* key,
--                                const botan_mp_t scalar,
--                                const char* curve_name);

-- BOTAN_DEPRECATED("Use botan_pubkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_sm2_enc(botan_pubkey_t* key,
--                               const botan_mp_t public_x,
--                               const botan_mp_t public_y,
--                               const char* curve_name);

-- BOTAN_PUBLIC_API(2,3)
-- int botan_pubkey_sm2_compute_za(uint8_t out[],
--                                 size_t* out_len,
--                                 const char* ident,
--                                 const char* hash_algo,
--                                 const botan_pubkey_t key);
-- TODO: Figure out what this is

{-
View the uncompressed public point associated with the key
-}
-- BOTAN_PUBLIC_API(3,0)
-- int botan_pubkey_view_ec_public_point(
--    const botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions
