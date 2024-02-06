{-|
Module      : Botan.Low.MAC
Description : Message Authentication Codes (MAC)
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

module Botan.Low.MAC
(

-- * Message authentication codes
-- $introduction

-- * Usage
-- $usage

  MAC(..)
, MACName(..)
, MACKey(..)
, MACNonce(..)
, MACDigest(..)
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

import qualified Data.ByteString as ByteString

import Botan.Bindings.MAC

import Botan.Low.BlockCipher
import Botan.Low.Error
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Remake

{- $introduction

A `mac` (or message authentication code) is a cryptographic algorithm that uses
a secret key to produce a fixed-size digest from an arbitrarily-sized message,
which is then used to verify the integrity and authenticity of the data.

-}

{- $usage

Unless you need a specific `mac`, it is strongly recommended that you use the
`hmac SHA_3` algorithm.

> import Botan.Low.MAC
> import Botan.Low.Hash
> mac <- macInit (hmac SHA_3)

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

> verify <- macInit (hmac SHA_3)
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

> mac <- macInit (gmac AES_256)
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

newMAC      :: BotanMAC -> IO MAC
withMAC     :: MAC -> (BotanMAC -> IO a) -> IO a
macDestroy  :: MAC -> IO ()
createMAC   :: (Ptr BotanMAC -> IO CInt) -> IO MAC
(newMAC, withMAC, macDestroy, createMAC, _)
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

macInit :: MACName -> IO MAC
macInit = mkCreateObjectCString createMAC (\ out name -> botan_mac_init out name 0)

-- WARNING: withFooInit-style limited lifetime functions moved to high-level botan
withMACInit :: MACName -> (MAC -> IO a) -> IO a
withMACInit = mkWithTemp1 macInit macDestroy

macOutputLength :: MAC -> IO Int
macOutputLength = mkGetSize withMAC botan_mac_output_length

macSetKey :: MAC -> ByteString -> IO ()
macSetKey = mkWithObjectSetterCBytesLen withMAC botan_mac_set_key

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC requires a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macSetNonce :: MAC -> ByteString -> IO ()
macSetNonce = mkWithObjectSetterCBytesLen withMAC botan_mac_set_nonce

macUpdate :: MAC -> ByteString -> IO ()
macUpdate = mkWithObjectSetterCBytesLen withMAC botan_mac_update

-- TODO: Digest type
macFinal :: MAC -> IO MACDigest
macFinal mac = withMAC mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macOutputLength mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

macClear :: MAC -> IO ()
macClear = mkAction withMAC botan_mac_clear

macName :: MAC -> IO ByteString
macName = mkGetCString withMAC botan_mac_name

macGetKeyspec :: MAC -> IO (Int,Int,Int)
macGetKeyspec = mkGetSizes3 withMAC botan_mac_get_keyspec

-- TODO: MAC does not have a nonce size query, and it relies on per-algorithm knowledgre
-- Luckily only 1 MAC actually requires a nonce (GMAC), so this isn't really an issue
--  macGetNoncespec :: MAC -> IO (Int,Int,Int)
-- Or
-- macGetDefaultNonceLength :: MAC -> IO Int
