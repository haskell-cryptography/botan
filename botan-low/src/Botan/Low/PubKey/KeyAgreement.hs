{-|
Module      : Botan.Low.KeyAgreement
Description : Key Agreement
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.KeyAgreement (

  -- * PK Key Agreement
  -- $introduction
  -- * Usage
  -- $usage

  -- * Key agreement
    KeyAgreement(..)
  , withKeyAgreement
  , keyAgreementCreate
  , keyAgreementDestroy
  , keyAgreementExportPublic
  , keyAgreementSize
  , keyAgreement

  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.PubKey.KeyAgreement
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.KDF
import           Botan.Low.Make
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

{- $introduction

Key agreement is a scheme where two parties exchange public keys, after which
it is possible for them to derive a secret key which is known only to the two
of them.

There are different approaches possible for key agreement. In many protocols,
both parties generate a new key, exchange public keys, and derive a secret,
after which they throw away their private keys, using them only the once.
However this requires the parties to both be online and able to communicate
with each other.

In other protocols, one of the parties publishes their public key online in
some way, and then it is possible for someone to send encrypted messages to
that recipient by generating a new keypair, performing key exchange with the
published public key, and then sending both the message along with their
ephemeral public key. Then the recipient uses the provided public key along
with their private key to complete the key exchange, recover the shared secret,
and decrypt the message.

Typically the raw output of the key agreement function is not uniformly
distributed, and may not be of an appropriate length to use as a key. To
resolve these problems, key agreement will use a Key Derivation Functions (KDF)
on the shared secret to produce an output of the desired length.

- ECDH over GF(p) Weierstrass curves
- ECDH over x25519
- DH over prime fields

-}

{- $usage

First, Alice and Bob generate their private keys:

> import Botan.Low.PubKey
> import Botan.Low.PubKey.KeyAgreement
> import Botan.Low.RNG
> import Botan.Low.Hash
> import Botan.Low.KDF
> rng <- rngInit "system"
> -- Alice creates her private key
> alicePrivKey <- privKeyCreate ECDH Secp521r1 rng
> -- Bob creates his private key
> bobPrivKey <-  privKeyCreate ECDH Secp521r1 rng

Then, they exchange their public keys using any channel, private or public:

> -- Alice and Bob exchange public keys
> alicePubKey <- keyAgreementExportPublic alicePrivKey
> bobPubKey <- keyAgreementExportPublic bobPrivKey
> -- ...

Then, they may separately generate the same agreed-upon key and a randomized,
agreed-upon salt:

> salt <- rngGet rng 4
> -- Alice generates her shared key:
> aliceKeyAgreement <- keyAgreementCreate alicePrivKey (kdf2 SHA256)
> aliceSharedKey    <- keyAgreement aliceKeyAgreement bobPubKey salt
> -- Bob generates his shared key:
> bobKeyAgreement   <- keyAgreementCreate bobPrivKey (kdf2 SHA256)
> bobSharedKey      <- keyAgreement bobKeyAgreement alicePubKey salt
> -- They are the same
> aliceSharedKey == bobSharedKey
> -- True

> WARNING: There used to be a memory leak in keyAgreement. Please
> report this bug to the maintainers if it returns.

-}

newtype KeyAgreement = MkKeyAgreement { foreignPtr :: ForeignPtr BotanPKOpKeyAgreementStruct }

withKeyAgreement     :: KeyAgreement -> (BotanPKOpKeyAgreement -> IO a) -> IO a
keyAgreementDestroy  :: KeyAgreement -> IO ()
createKeyAgreement   :: (Ptr BotanPKOpKeyAgreement -> IO CInt) -> IO KeyAgreement
(withKeyAgreement, keyAgreementDestroy, createKeyAgreement)
    = mkBindings
        MkBotanPKOpKeyAgreement (.ptr)
        MkKeyAgreement (.foreignPtr)
        botan_pk_op_key_agreement_destroy

-- NOTE: Silently uses the system RNG
keyAgreementCreate ::
     PrivKey          -- ^ __key__
  -> KDFName          -- ^ __kdf__
  -> IO KeyAgreement  -- ^ __op__
keyAgreementCreate sk algo =
    withPrivKey sk $ \ skPtr ->
    asCString algo $ \ algoPtr ->
    createKeyAgreement $ \ out ->
      botan_pk_op_key_agreement_create
        out
        skPtr
        (ConstPtr algoPtr)
        0

-- NOTE: I do not know if this provides a different functionality than just being
--  an alias for botan_privkey_export_pubkey / privKeyExportPubKey
--  Observe that it *does* just take a privkey, instead of a keyagreement
--  It may simply be here for convenience.
keyAgreementExportPublic ::
     PrivKey          -- ^ __key__
  -> IO ByteString    -- ^ __out[]__
keyAgreementExportPublic sk =
    withPrivKey sk $ \ skPtr ->
    allocBytesQuerying $ \ outPtr outLen ->
      botan_pk_op_key_agreement_export_public
        skPtr
        outPtr
        outLen

keyAgreementSize ::
     KeyAgreement -- ^ __op__
  -> IO Int       -- ^ __out_len__
keyAgreementSize = mkGetSize withKeyAgreement botan_pk_op_key_agreement_size

keyAgreement ::
     KeyAgreement     -- ^ __op__
  -> ByteString       -- ^ __out[]__
  -> ByteString       -- ^ __other_key[]__
  -> IO ByteString    -- ^ __salt[]__
keyAgreement ka key salt =
    withKeyAgreement ka $ \ kaPtr ->
    asBytesLen key $ \ keyPtr keyLen ->
    asBytesLen salt $ \ saltPtr saltLen -> do
      outSz <- keyAgreementSize ka
      alloca $ \ szPtr -> do
        poke szPtr (fromIntegral outSz)
        out <- allocBytes outSz $ \ outPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_key_agreement
                kaPtr
                outPtr
                szPtr
                (ConstPtr keyPtr)
                keyLen
                (ConstPtr saltPtr)
                saltLen
        sz <- fromIntegral <$> peek szPtr
        return $! ByteString.take sz out
