module Botan.Bindings.PubKey.ElGamal where

import Botan.Bindings.Error
import Botan.Bindings.MPI
import Botan.Bindings.Prelude
import Botan.Bindings.PubKey
import Botan.Bindings.RNG

{-
Algorithm specific key operations: ElGamal
-}

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
    -> RNGPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode

{-|
Loads ElGamal private key

- \@param key variable populated with key material
- \@param p prime order of a Z_p group
- \@param g group generator
- \@param x private key

- \@pre key is NULL on input
- \@post function allocates memory and assigns to `key'

- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_privkey_load_elgamal(botan_privkey_t* key,
                                         botan_mp_t p,
                                         botan_mp_t g,
                                         botan_mp_t x);@
-}
foreign import ccall unsafe botan_privkey_load_elgamal
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

{-|
Loads ElGamal public key
- \@param key variable populated with key material
- \@param p prime order of a Z_p group
- \@param g group generator
- \@param y public key

- \@pre key is NULL on input
- \@post function allocates memory and assigns to `key'

- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_elgamal(botan_pubkey_t* key,
                                        botan_mp_t p,
                                        botan_mp_t g,
                                        botan_mp_t y);@
-}
foreign import ccall unsafe botan_pubkey_load_elgamal
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode
