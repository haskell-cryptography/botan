{-|
Module      : Botan.Low.KeyEncapsulation
Description : Key Encapsulation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.KeyEncapsulation
(

-- * PK Key Encapsulation
-- $introduction
-- * Usage
-- $usage

-- * KEM Encryption
  KEMSharedKey
, KEMEncapsulatedKey
, KEMEncrypt(..)
, withKEMEncrypt
, kemEncryptDestroy
, kemEncryptCreate
, kemEncryptSharedKeyLength
, kemEncryptEncapsulatedKeyLength
, kemEncryptCreateSharedKey

-- * KEM Decryption
, KEMDecrypt(..)
, withKEMDecrypt
, kemDecryptDestroy
, kemDecryptCreate
, kemDecryptSharedKeyLength
, kemDecryptSharedKey

) where

import qualified Data.ByteString as ByteString

import           Botan.Bindings.PubKey.KeyEncapsulation

import           Botan.Low.Error
import           Botan.Low.KDF
import           Botan.Low.Make
import           Botan.Low.Prelude
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG

{- $introduction

Key encapsulation (KEM) is a variation on public key encryption which is
commonly used by post-quantum secure schemes. Instead of choosing a random
secret and encrypting it, as in typical public key encryption, a KEM encryption
takes no inputs and produces two values, the shared secret and the encapsulated
key. The decryption operation takes in the encapsulated key and returns the
shared secret.

-}

{- $usage

> NOTE: KEM only requires the public knowledge of one person's key pair, unlike
> Key Agreement.

First, Alice generates her private and public key pair:

> import Botan.Low.PubKey
> import Botan.Low.PubKey.KeyEncapsulation
> import Botan.Low.Hash
> import Botan.Low.KDF
> import Botan.Low.RNG
> rng <- rngInit UserRNG
> -- Alice generates her private and public keys
> alicePrivKey <- privKeyCreate RSA "2048" rng
> alicePubKey <- privKeyExportPubKey alicePrivKey

Then, Alice shares her public key somewhere where others can see. When Bob
wants to create a shared key with Alice, they choose a KDF algorithm, generate
a salt, and choose a shared key length.

> kdfAlg = hkdf SHA256
> salt <- rngGet rng 4
> sharedKeyLength = 256

Then, Bob generates the shared + encapsulated key, and sends the
encapsulated key to Alice:

> encryptCtx <- kemEncryptCreate alicePubKey kdfAlg
> (bobSharedKey, encapsulatedKey) <- kemEncryptCreateSharedKey encryptCtx rng salt sharedKeyLength
> -- sendToAlice encapsulatedKey

Upon receiving the encapsulated key, Alice can decrypt and extract the shared
key using her private key:

> decryptCtx <- kemDecryptCreate alicePrivKey kdfAlg
> aliceSharedKey <- kemDecryptSharedKey decryptCtx salt encapsulatedKey sharedKeyLength
> bobSharedKey == aliceSharedKey
> -- True

Then, this shared key may be used for any suitable purpose.

-}

-- TODO: KEM supports the following key types:
--      RSA
--      Kyber
--      McEliece
--  https://botan.randombit.net/handbook/api_ref/pubkey.html#key-encapsulation
-- KYBER is post-quantum

type KEMSharedKey = ByteString
type KEMEncapsulatedKey = ByteString

newtype KEMEncrypt = MkKEMEncrypt { getKEMEncryptForeignPtr :: ForeignPtr BotanPKOpKEMEncryptStruct }

withKEMEncrypt     :: KEMEncrypt -> (BotanPKOpKEMEncrypt -> IO a) -> IO a
kemEncryptDestroy  :: KEMEncrypt -> IO ()
createKEMEncrypt   :: (Ptr BotanPKOpKEMEncrypt -> IO CInt) -> IO KEMEncrypt
(_, withKEMEncrypt, kemEncryptDestroy, createKEMEncrypt, _)
    = mkBindings
        MkBotanPKOpKEMEncrypt runBotanPKOpKEMEncrypt
        MkKEMEncrypt getKEMEncryptForeignPtr
        botan_pk_op_kem_encrypt_destroy





kemEncryptCreate
    :: PubKey           -- ^ __key__
    -> KDFName          -- ^ __kdf__
    -> IO KEMEncrypt    -- ^ __op__
kemEncryptCreate pk algo = withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        createKEMEncrypt $ \ out -> botan_pk_op_kem_encrypt_create
            out
            pkPtr
            (ConstPtr algoPtr)

kemEncryptSharedKeyLength
    :: KEMEncrypt   -- ^ __op__
    -> Int          -- ^ __desired_shared_key_length__
    -> IO Int       -- ^ __output_shared_key_length__
kemEncryptSharedKeyLength = mkGetSize_csize withKEMEncrypt botan_pk_op_kem_encrypt_shared_key_length


kemEncryptEncapsulatedKeyLength
    :: KEMEncrypt   -- ^ __op__
    -> IO Int       -- ^ __output_encapsulated_key_length__
kemEncryptEncapsulatedKeyLength = mkGetSize withKEMEncrypt botan_pk_op_kem_encrypt_encapsulated_key_length

-- NOTE: Awkward because of double-query and returning double bytestrings
--  Cannot use allocBytesQuerying because of double-return
-- NOTE: Returns (SharedKey, EncapsulatedKey)


kemEncryptCreateSharedKey
    :: KEMEncrypt                           -- ^ __op__
    -> RNG                                  -- ^ __rng__
    -> ByteString                           -- ^ __salt[]__
    -> Int                                  -- ^ __desired_shared_key_len__
    -> IO (KEMSharedKey,KEMEncapsulatedKey) -- ^ __(shared_key,encapsulated_key)__
kemEncryptCreateSharedKey ke rng salt desiredLen = withKEMEncrypt ke $ \ kePtr -> do
    withRNG rng $ \ botanRNG -> do
        asBytesLen salt $ \ saltPtr saltLen -> do
            alloca $ \ sharedSzPtr -> do
                alloca $ \ encapSzPtr -> do
                    sharedSz <- kemEncryptSharedKeyLength ke desiredLen
                    encapSz <-  kemEncryptEncapsulatedKeyLength ke
                    poke sharedSzPtr (fromIntegral sharedSz)
                    poke encapSzPtr (fromIntegral encapSz)
                    allocBytesWith encapSz $ \ encapPtr -> do
                        allocBytes sharedSz $ \ sharedPtr -> do
                            throwBotanIfNegative_ $ botan_pk_op_kem_encrypt_create_shared_key
                                kePtr
                                botanRNG
                                (ConstPtr saltPtr)
                                saltLen
                                (fromIntegral desiredLen)
                                sharedPtr
                                sharedSzPtr
                                encapPtr
                                encapSzPtr

newtype KEMDecrypt = MkKEMDecrypt { getKEMDecryptForeignPtr :: ForeignPtr BotanPKOpKEMDecryptStruct }

withKEMDecrypt     :: KEMDecrypt -> (BotanPKOpKEMDecrypt -> IO a) -> IO a
kemDecryptDestroy  :: KEMDecrypt -> IO ()
createKEMDecrypt   :: (Ptr BotanPKOpKEMDecrypt -> IO CInt) -> IO KEMDecrypt
(_, withKEMDecrypt, kemDecryptDestroy, createKEMDecrypt, _)
    = mkBindings
        MkBotanPKOpKEMDecrypt runBotanPKOpKEMDecrypt
        MkKEMDecrypt getKEMDecryptForeignPtr
        botan_pk_op_kem_decrypt_destroy

kemDecryptCreate
    :: PrivKey          -- ^ __key__
    -> KDFName          -- ^ __kdf__
    -> IO KEMDecrypt    -- ^ __op__
kemDecryptCreate sk algo = withPrivKey sk $ \ skPtr -> do
    asCString algo $ \ algoPtr -> do
        createKEMDecrypt $ \ out -> botan_pk_op_kem_decrypt_create
            out
            skPtr
            (ConstPtr algoPtr)

kemDecryptSharedKeyLength
    :: KEMDecrypt   -- ^ __op__
    -> Int          -- ^ __desired_shared_key_length__
    -> IO Int       -- ^ __output_shared_key_length__
kemDecryptSharedKeyLength = mkGetSize_csize withKEMDecrypt botan_pk_op_kem_decrypt_shared_key_length

kemDecryptSharedKey
    :: KEMDecrypt           -- ^ __op__
    -> ByteString           -- ^ __salt[]__
    -> KEMEncapsulatedKey   -- ^ __encapsulated_key[]__
    -> Int                  -- ^ __desired_shared_key_len__
    -> IO KEMSharedKey      -- ^ __shared_key[]__
kemDecryptSharedKey kd salt encap desiredLen = withKEMDecrypt kd $ \ kdPtr -> do
    asBytesLen salt $ \ saltPtr saltLen -> do
        asBytesLen encap $ \ encapPtr encapLen -> do
            -- TODO: Consolidate with allocBytesUpperBound or whatever I end up calling it
            alloca $ \ sharedSzPtr -> do
                sharedSz <- kemDecryptSharedKeyLength kd desiredLen
                poke sharedSzPtr (fromIntegral sharedSz)
                bytes <- allocBytes sharedSz $ \ outPtr -> do
                    throwBotanIfNegative_ $ botan_pk_op_kem_decrypt_shared_key
                        kdPtr
                        (ConstPtr saltPtr)
                        saltLen
                        (ConstPtr encapPtr)
                        encapLen
                        (fromIntegral desiredLen)
                        outPtr
                        sharedSzPtr
                actualSharedSz <- peek sharedSzPtr
                return $!! ByteString.take (fromIntegral actualSharedSz) bytes

