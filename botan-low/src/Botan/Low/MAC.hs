{-|
Module      : Botan.Low.MAC
Description : Message Authentication Codes (MAC)
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

A Message Authentication Code algorithm computes a tag over a
message utilizing a shared secret key. Thus a valid tag confirms
the authenticity and integrity of the message. Only entities in
possession of the shared secret key are able to verify the tag.

Note

When combining a MAC with unauthenticated encryption mode, prefer
to first encrypt the message and then MAC the ciphertext. The
alternative is to MAC the plaintext, which depending on exact usage
can suffer serious security issues. For a detailed discussion of
this issue see the paper “The Order of Encryption and Authentication
for Protecting Communications” by Hugo Krawczyk

The Botan MAC computation is split into five stages.

- Instantiate the MAC algorithm.

- Set the secret key.

- Process IV.

- Process data.

- Finalize the MAC computation.
-}

module Botan.Low.MAC (

  -- * Message authentication codes
  -- $introduction

  -- * Usage
  -- $usage

    MAC(..)
  , MACName
  , MACKey
  , MACNonce
  , MACDigest
  , withMAC
  , macInit
  , macDestroy
  , macName
  , macOutputLength
  , macGetKeyspec
  , macSetKey
  , macSetNonce
  , macUpdate
  , macFinal
  , macClear

  -- * MAC algorithms

  , pattern CMAC
  , cmac
  , pattern GMAC
  , gmac
  , pattern HMAC
  , hmac
  , pattern Poly1305
  , pattern SipHash
  , sipHash
  , pattern X9_19_MAC

  -- * Convenience

  ) where

import           Botan.Bindings.MAC
import           Botan.Low.BlockCipher
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.Internal.String
import           Botan.Low.Make
import           Botan.Low.Remake
import           Data.ByteString (ByteString)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

{- $introduction

A `mac` (or message authentication code) is a cryptographic algorithm that uses
a secret key to produce a fixed-size digest from an arbitrarily-sized message,
which is then used to verify the integrity and authenticity of the data.

-}

{- $usage

Unless you need a specific `mac`, it is strongly recommended that you use the
`hmac SHA3` algorithm.

> import Botan.Low.MAC
> import Botan.Low.Hash
> mac <- macInit (hmac SHA3)

To use a MAC, we first need to generate (if we haven't already) a secret key.

> import Botan.Low.RNG
> rng <- rngInit "user"
> -- HMAC allows for an arbitrary key size, but we can check the key spec.
> (keyMin,keyMax,keyMod) <- macGetKeyspec mac
> -- MAC are randomly generated; 32 bytes is acceptable
> key <- rngGet rng 32

After the key is generated, we must set it as the mac key:

> macSetKey mac key

Then, we may produce an authentication code from a message using the secret key:

> macUpdate mac "Fee fi fo fum!"
> auth <- macFinal mac

To verify an message authentication code, we can reproduce it using the secret
key and message, and then check for equality:

> verify <- macInit (hmac SHA3)
> macSetKey verify key
> macUpdate verify "Fee fi fo fum!"
> verifyAuth <- macFinal verify
> auth == verifyAuth -- True

You can completely clear a mac's state, leaving it ready for reuse:

> macClear mac
> -- You'll have to set the key again
> macSetKey mac anotherKey
> -- Process another message
> macUpdate mac anotherMessage
> anotherAuth <- macFinal mac

Some algorithms (GMAC, Poly1305) have additional requirements for use. Avoid if
possible, and consult algorithm-specific documentation for GMAC and Poly1305.
If you must use GMAC, a nonce needs to be set:

> mac <- macInit (gmac AES256)
> k <- systemRNGGet 32
> n <- systemRNGGet 32    -- Here
> macSetKey mac k
> macSetNonce mac n       -- Here
> macUpdate mac "Fee fi fo fum!"
> auth <- macFinal mac

-}

-- /*
-- * Message Authentication type
-- */

newtype MAC = MkMAC { getMACForeignPtr :: ForeignPtr BotanMACStruct }

withMAC     :: MAC -> (BotanMAC -> IO a) -> IO a
macDestroy  :: MAC -> IO ()
createMAC   :: (Ptr BotanMAC -> IO CInt) -> IO MAC
(withMAC, macDestroy, createMAC)
    = mkBindings
        MkBotanMAC runBotanMAC
        MkMAC getMACForeignPtr
        botan_mac_destroy

type MACName = ByteString

pattern CMAC
    ,   GMAC
    -- ,   CBC_MAC
    ,   HMAC
    -- ,   KMAC_128
    -- ,   KMAC_256
    ,   Poly1305
    ,   SipHash
    ,   X9_19_MAC
    :: MACName

pattern CMAC      = BOTAN_MAC_CMAC
pattern GMAC      = BOTAN_MAC_GMAC
-- pattern CBC_MAC   = BOTAN_MAC_CBC_MAC
pattern HMAC      = BOTAN_MAC_HMAC
-- pattern KMAC_128  = BOTAN_MAC_KMAC_128
-- pattern KMAC_256  = BOTAN_MAC_KMAC_256
pattern Poly1305  = BOTAN_MAC_Poly1305
pattern SipHash   = BOTAN_MAC_SipHash
pattern X9_19_MAC = BOTAN_MAC_X9_19_MAC

cmac :: BlockCipherName -> MACName
cmac bc = CMAC /$ bc

gmac :: BlockCipherName -> MACName
gmac bc = GMAC /$ bc

-- cbc_mac :: BlockCipherName -> MACName
-- cbc_mac bc = CBC_MAC /$ bc

hmac :: BlockCipherName -> MACName
hmac h = HMAC /$ h

-- kmac_128 :: BlockCipherName -> MACName
-- kmac_128 = ...

-- kmac_256 :: BlockCipherName -> MACName
-- kmac_256 = ...

sipHash :: Int -> Int -> MACName
sipHash ir fr = SipHash /$ showBytes ir <> "," <> showBytes fr


type MACKey = ByteString
type MACNonce = ByteString

-- TODO: Rename MACTag?
type MACDigest = ByteString

-- | Initialize a message authentication code object
macInit
    :: MACName  -- ^ __mac_name__: name of the hash function, e.g., "HMAC(SHA-384)"
    -> IO MAC   -- ^ __mac__: mac object
macInit = mkCreateObjectCString createMAC (\ out name -> botan_mac_init out name 0)

-- | Writes the output length of the message authentication code to *output_length
macOutputLength
    :: MAC      -- ^ __mac__: mac object
    -> IO Int   -- ^ __output_length__: output buffer to hold the MAC output length
macOutputLength = mkGetSize withMAC botan_mac_output_length

-- | Sets the key on the MAC
macSetKey
    :: MAC          -- ^ __mac__: mac object
    -> ByteString   -- ^ __key__: buffer holding the key
    -> IO ()
macSetKey = mkWithObjectSetterCBytesLen withMAC botan_mac_set_key

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC requires a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
-- | Sets the nonce on the MAC
macSetNonce
    :: MAC          -- ^ __mac__: mac object
    -> ByteString   -- ^ __nonce__: buffer holding the nonce
    -> IO ()
macSetNonce = mkWithObjectSetterCBytesLen withMAC botan_mac_set_nonce

-- | Send more input to the message authentication code
macUpdate
    :: MAC          -- ^ __mac__: mac object
    -> ByteString   -- ^ __buf__: input buffer
    -> IO ()
macUpdate = mkWithObjectSetterCBytesLen withMAC botan_mac_update

-- TODO: Digest type
{- |
Finalizes the MAC computation and writes the output to
out[0:botan_mac_output_length()] then reinitializes for computing
another MAC as if botan_mac_clear had been called.
-}
macFinal
    :: MAC          -- ^ __mac__: mac object
    -> IO MACDigest -- ^ __out[]__: output buffer
macFinal mac = withMAC mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macOutputLength mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

{- |
Reinitializes the state of the MAC computation. A MAC can
be computed (with update/final) immediately.
-}
macClear
    :: MAC -- @mac@: mac object
    -> IO ()
macClear = mkAction withMAC botan_mac_clear

-- | Get the name of this MAC
macName
    :: MAC              -- ^ __mac__: the object to read
    -> IO ByteString    -- ^ __name__: output buffer
macName = mkGetCString withMAC botan_mac_name

-- | Get the key length limits of this auth code
macGetKeyspec
    :: MAC              -- ^ __mac__: the object to read
    -> IO (Int,Int,Int) -- ^ __(min,max,mod)__: minimum maximum and modulo keylength of MAC
macGetKeyspec = mkGetSizes3 withMAC botan_mac_get_keyspec

-- TODO: MAC does not have a nonce size query, and it relies on per-algorithm knowledgre
-- Luckily only 1 MAC actually requires a nonce (GMAC), so this isn't really an issue
--  macGetNoncespec :: MAC -> IO (Int,Int,Int)
-- Or
-- macGetDefaultNonceLength :: MAC -> IO Int
