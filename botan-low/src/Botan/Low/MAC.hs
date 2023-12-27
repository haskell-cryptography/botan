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

module Botan.Low.MAC where

import qualified Data.ByteString as ByteString

import Botan.Bindings.MAC

import Botan.Low.BlockCipher
import Botan.Low.Error
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Remake

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
