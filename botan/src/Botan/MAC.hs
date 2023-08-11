module Botan.MAC where

import Data.Foldable

import Botan.Low.MAC

import Botan.BlockCipher
import Botan.Hash
import Botan.Prelude

-- NOTE: MAC has no state copy unlike Hash

data MAC
    = CMAC BlockCipher
    | GMAC BlockCipher     
    | CBC_MAC BlockCipher    
    | HMAC Hash    
    | Poly1305    
    | SipHash Int Int -- Number of input and finalization rounds
    | X9_19_MAC
    deriving (Show, Eq)

macName :: MAC -> ByteString
macName (CMAC bc)       = "CMAC(" <> blockCipherName bc <> ")"
macName (GMAC bc)       = "GMAC(" <> blockCipherName bc <> ")"
macName (CBC_MAC bc)    = "CBC-MAC(" <> blockCipherName bc <> ")"
macName (HMAC h)        = "HMAC(" <> hashName h <> ")"
macName Poly1305        = "Poly1305"
macName (SipHash ir fr) = "SipHash(" <> showBytes ir <> "," <> showBytes fr <> ")"
macName X9_19_MAC       = "X9.19-MAC"

type MACKey = ByteString
type MACNonce = ByteString

data MACKeySpec
    = MACKeySpec
    { macKeyMinimum :: Int
    , macKeyMaximum :: Int
    , macKeyModulo  :: Int
    }
    deriving  (Show, Eq)

macCtxInitIO :: MAC -> IO MACCtx
macCtxInitIO  mac = macCtxInitNameIO (macName mac)

macCtxInit :: MAC -> MACCtx
macCtxInit = unsafePerformIO1 macCtxInitIO

macCtxOutputLength :: MACCtx -> Int
macCtxOutputLength = unsafePerformIO1 macCtxOutputLengthIO

macCtxSetKey :: MACCtx -> ByteString -> MACCtx
macCtxSetKey ctx key = unsafePerformIO $ do
    macCtxSetKeyIO ctx key
    return ctx

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC and Poly1305 require a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macCtxSetNonce :: MACCtx -> ByteString -> MACCtx
macCtxSetNonce ctx nonce = unsafePerformIO $ do
    macCtxSetNonceIO ctx nonce
    return ctx

macCtxUpdate :: MACCtx -> ByteString -> MACCtx
macCtxUpdate ctx bytes = unsafePerformIO $ do
    macCtxUpdateIO ctx bytes
    return ctx

macCtxUpdates :: MACCtx -> [ByteString] -> MACCtx
macCtxUpdates ctx chunks = unsafePerformIO $ do
    traverse_ (macCtxUpdateIO ctx) chunks
    return ctx

macCtxFinalize :: MACCtx -> MACDigest
macCtxFinalize = unsafePerformIO1 macCtxFinalIO

-- NOTE: Not sure if this should be exposed
macCtxClear :: MACCtx -> MACCtx
macCtxClear ctx = unsafePerformIO $ do
    macCtxClearIO ctx
    return ctx

macCtxName :: MACCtx -> MACName
macCtxName = unsafePerformIO1 macCtxNameIO

macCtxGetKeyspec :: MACCtx -> MACKeySpec
macCtxGetKeyspec ctx = unsafePerformIO $ do
    (mn,mx,md) <- macCtxGetKeyspecIO ctx
    return $ MACKeySpec mn mx md

-- Convenience

macCtxUpdateFinalizeIO :: MACCtx -> ByteString -> IO MACDigest
macCtxUpdateFinalizeIO ctx bytes = do
    macCtxUpdateIO ctx bytes
    macCtxFinalIO ctx

macCtxUpdateFinalizeClearIO :: MACCtx -> ByteString -> IO MACDigest
macCtxUpdateFinalizeClearIO ctx bytes = do
    dg <- macCtxUpdateFinalizeIO ctx bytes
    macCtxClearIO ctx
    return dg

-- Mac with

macWithMACCtxIO :: MACCtx -> MACKey -> ByteString -> IO MACDigest
macWithMACCtxIO ctx key message = do
    macCtxSetKeyIO ctx key
    macCtxUpdateFinalizeClearIO ctx message

macWithMACCtx :: MACCtx -> MACKey -> ByteString -> MACDigest
macWithMACCtx = unsafePerformIO3 macWithMACCtxIO

macWithNameIO :: MACName -> MACKey -> ByteString -> IO MACDigest
macWithNameIO name key message = do
    ctx <- macCtxInitNameIO name
    macWithMACCtxIO ctx key message

macWithName :: MACName -> MACKey -> ByteString -> MACDigest
macWithName = unsafePerformIO3 macWithNameIO

macIO :: MAC -> MACKey -> ByteString -> IO MACDigest
macIO = macWithNameIO . macName

mac :: MAC -> MACKey -> ByteString -> MACDigest
mac = unsafePerformIO3 macIO

-- Mac nonce with

nonceMacWithMACCtxIO :: MACCtx -> MACKey -> MACNonce -> ByteString -> IO MACDigest
nonceMacWithMACCtxIO ctx key nonce message = do
    macCtxSetKeyIO ctx key
    macCtxSetNonceIO ctx nonce
    macCtxUpdateFinalizeClearIO ctx message

nonceMacWithMACCtx :: MACCtx -> MACKey -> ByteString -> MACDigest
nonceMacWithMACCtx = unsafePerformIO3 macWithMACCtxIO

nonceMacWithNameIO :: MACName -> MACKey -> ByteString -> IO MACDigest
nonceMacWithNameIO name key message = do
    ctx <- macCtxInitNameIO name
    macWithMACCtxIO ctx key message

nonceMacWithName :: MACName -> MACKey -> ByteString -> MACDigest
nonceMacWithName = unsafePerformIO3 macWithNameIO

nonceMacIO :: MAC -> MACKey -> ByteString -> IO MACDigest
nonceMacIO = macWithNameIO . macName

nonceMac :: MAC -> MACKey -> ByteString -> MACDigest
nonceMac = unsafePerformIO3 macIO


-- mac :h: (ByteArrayAccess key, ByteArrayAccess message, HashAlgorithm a) => key -> message -> HMAC a

