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

-- /*
-- * Message Authentication type
-- */

newtype MACCtx = MkMACCtx { getMACForeignPtr :: ForeignPtr MACStruct }

withMACPtr :: MACCtx -> (MACPtr -> IO a) -> IO a
withMACPtr = withForeignPtr . getMACForeignPtr

type MACName = ByteString
-- TODO: Rename MACTag?
type MACDigest = ByteString

macInit :: MACName -> IO MACCtx
macInit name = mkInit_name_flags MkMACCtx botan_mac_init botan_mac_destroy name 0

macDestroy :: MACCtx -> IO ()
macDestroy mac = finalizeForeignPtr (getMACForeignPtr mac)

withMACInit :: MACName -> (MACCtx -> IO a) -> IO a
withMACInit = mkWithTemp1 macInit macDestroy

macOutputLength :: MACCtx -> IO Int
macOutputLength = mkGetSize withMACPtr botan_mac_output_length

macSetKey :: MACCtx -> ByteString -> IO ()
macSetKey = mkSetBytesLen withMACPtr botan_mac_set_key

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC requires a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macSetNonce :: MACCtx -> ByteString -> IO ()
macSetNonce = mkSetBytesLen withMACPtr botan_mac_set_nonce

macUpdate :: MACCtx -> ByteString -> IO ()
macUpdate = mkSetBytesLen withMACPtr botan_mac_update

-- TODO: Digest type
macFinal :: MACCtx -> IO MACDigest
macFinal mac = withMACPtr mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macOutputLength mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

macClear :: MACCtx -> IO ()
macClear = mkAction withMACPtr botan_mac_clear

macName :: MACCtx -> IO ByteString
macName = mkGetCString withMACPtr botan_mac_name

macGetKeyspec :: MACCtx -> IO (Int,Int,Int)
macGetKeyspec = mkGetSizes3 withMACPtr botan_mac_get_keyspec
