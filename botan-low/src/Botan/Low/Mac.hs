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
type MACDigest = ByteString

macCtxInitNameIO :: MACName -> IO MACCtx
macCtxInitNameIO name = mkInit_name_flags MkMACCtx botan_mac_init botan_mac_destroy name 0

macCtxDestroyIO :: MACCtx -> IO ()
macCtxDestroyIO mac = finalizeForeignPtr (getMACForeignPtr mac)

withMACCtxInitNameIO :: MACName -> (MACCtx -> IO a) -> IO a
withMACCtxInitNameIO = mkWithTemp1 macCtxInitNameIO macCtxDestroyIO

macCtxOutputLengthIO :: MACCtx -> IO Int
macCtxOutputLengthIO = mkGetSize withMACPtr botan_mac_output_length

macCtxSetKeyIO :: MACCtx -> ByteString -> IO ()
macCtxSetKeyIO = mkSetBytesLen withMACPtr botan_mac_set_key

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC and Poly1305 require a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macCtxSetNonceIO :: MACCtx -> ByteString -> IO ()
macCtxSetNonceIO = mkSetBytesLen withMACPtr botan_mac_set_nonce

macCtxUpdateIO :: MACCtx -> ByteString -> IO ()
macCtxUpdateIO = mkSetBytesLen withMACPtr botan_mac_update

-- TODO: Digest type
macCtxFinalIO :: MACCtx -> IO MACDigest
macCtxFinalIO mac = withMACPtr mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macCtxOutputLengthIO mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

macCtxClearIO :: MACCtx -> IO ()
macCtxClearIO = mkAction withMACPtr botan_mac_clear

macCtxNameIO :: MACCtx -> IO ByteString
macCtxNameIO = mkGetName withMACPtr botan_mac_name

macCtxGetKeyspecIO :: MACCtx -> IO (Int,Int,Int)
macCtxGetKeyspecIO = mkGetSizes3 withMACPtr botan_mac_get_keyspec
