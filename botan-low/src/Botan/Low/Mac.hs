module Botan.Low.Mac where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Mac

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude

-- /*
-- * Message Authentication type
-- */

newtype Mac = MkMac { getMacForeignPtr :: ForeignPtr MacStruct }

withMacPtr :: Mac -> (MacPtr -> IO a) -> IO a
withMacPtr = withForeignPtr . getMacForeignPtr

type MacName = ByteString

macInit :: MacName -> IO Mac
macInit name = mkInit_name_flags MkMac botan_mac_init botan_mac_destroy name 0

macDestroy :: Mac -> IO ()
macDestroy mac = finalizeForeignPtr (getMacForeignPtr mac)

withMac :: MacName -> (Mac -> IO a) -> IO a
withMac = mkWithTemp1 macInit macDestroy

macOutputLength :: Mac -> IO Int
macOutputLength = mkGetSize withMacPtr botan_mac_output_length

macSetKey :: Mac -> ByteString -> IO ()
macSetKey = mkSetBytesLen withMacPtr botan_mac_set_key

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC and Poly1305 require a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macSetNonce :: Mac -> ByteString -> IO ()
macSetNonce = mkSetBytesLen withMacPtr botan_mac_set_nonce

macUpdate :: Mac -> ByteString -> IO ()
macUpdate = mkSetBytesLen withMacPtr botan_mac_update

-- TODO: Digest type
macFinal :: Mac -> IO ByteString
macFinal mac = withMacPtr mac $ \ macPtr -> do
    -- sz <- alloca $ \ szPtr -> do
    --     throwBotanIfNegative_ $ botan_mac_output_length macPtr szPtr
    --     fromIntegral <$> peek szPtr
    sz <- macOutputLength mac
    allocBytes sz $ \ bytesPtr -> do
        throwBotanIfNegative_ $ botan_mac_final macPtr bytesPtr

macClear :: Mac -> IO ()
macClear = mkAction withMacPtr botan_mac_clear

macName :: Mac -> IO ByteString
macName = mkGetName withMacPtr botan_mac_name

macGetKeyspec :: Mac -> IO (Int,Int,Int)
macGetKeyspec = mkGetSizes3 withMacPtr botan_mac_get_keyspec

-- TODO: Proper MACType

-- Currently the following MAC algorithms are available in Botan. In new code, default to HMAC with a strong hash like SHA-256 or SHA-384.

-- CMAC
--
-- A modern CBC-MAC variant that avoids the security problems of plain CBC-MAC. Approved by NIST. Also sometimes called OMAC.
--
-- Available if BOTAN_HAS_CMAC is defined.

-- GMAC
--
-- GMAC is related to the GCM authenticated cipher mode. It is quite slow unless hardware support for carryless multiplications is available. A new nonce must be used with each message authenticated, or otherwise all security is lost.
--
-- Available if BOTAN_HAS_GMAC is defined.
--
-- Warning
--
-- Due to the nonce requirement, GMAC is exceptionally fragile. Avoid it unless absolutely required.

-- HMAC
--
-- A message authentication code based on a hash function. Very commonly used.
--
-- Available if BOTAN_HAS_HMAC is defined.

-- Poly1305
--
-- A polynomial mac (similar to GMAC). Very fast, but tricky to use safely. Forms part of the ChaCha20Poly1305 AEAD mode. A new key must be used for each message, or all security is lost.
--
-- Available if BOTAN_HAS_POLY1305 is defined.
--
-- Warning
--
-- Due to the nonce requirement, Poly1305 is exceptionally fragile. Avoid it unless absolutely required.

-- SipHash
--
-- A modern and very fast PRF. Produces only a 64-bit output. Defaults to “SipHash(2,4)” which is the recommended configuration, using 2 rounds for each input block and 4 rounds for finalization.
--
-- Available if BOTAN_HAS_SIPHASH is defined.

-- X9.19-MAC
--
-- A CBC-MAC variant sometimes used in finance. Always uses DES. Sometimes called the “DES retail MAC”, also standardized in ISO 9797-1.
--
-- It is slow and has known attacks. Avoid unless required.
--
-- Available if BOTAN_HAS_X919_MAC is defined.
