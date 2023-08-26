module Botan.MAC
( MAC(..)
, macName
, MACKey(..)
, MACNonce(..)
, MACDigest(..)
, macCtxInitIO
, macCtxInit
, macCtxOutputLength
, macCtxSetKey
, macCtxSetNonce
, macCtxUpdate
, macCtxUpdates
, macCtxFinalize
, macCtxClear
, macCtxName
, macCtxGetKeyspec
, macCtxUpdateFinalizeIO
, macCtxUpdateFinalizeClearIO
, macWithMACCtxIO
, macWithMACCtx
, macWithNameIO
, macWithName
, macIO
, mac
) where

import Data.Foldable

import Botan.Low.MAC

import Botan.BlockCipher
import Botan.Hash
import Botan.RNG
import Botan.Prelude

-- NOTE: MAC has no state copy unlike Hash

-- NOTE: Botan MAC FFI is missing query for nonce sizes.

data MAC
    = CMAC BlockCipher  -- NOTE: This is actually OMAC a CMAC variant
    | GMAC BlockCipher      -- Requires a nonce
    | CBC_MAC BlockCipher    
    | HMAC Hash    
    | Poly1305              -- Requires a unique key per message
    | SipHash Int Int       -- Number of input and finalization rounds
    | X9_19_MAC
    deriving (Show, Eq)
-- NOTE: Wiki: "Both GCM and GMAC can accept initialization vectors of arbitrary length." - untested

macName :: MAC -> ByteString
macName (CMAC bc)       = "CMAC(" <> blockCipherName bc <> ")"
macName (GMAC bc)       = "GMAC(" <> blockCipherName bc <> ")"
macName (CBC_MAC bc)    = "CBC-MAC(" <> blockCipherName bc <> ")"
macName (HMAC h)        = "HMAC(" <> hashName h <> ")"
macName Poly1305        = "Poly1305"
macName (SipHash ir fr) = "SipHash(" <> showBytes ir <> "," <> showBytes fr <> ")"
macName X9_19_MAC       = "X9.19-MAC"

-- NOTE: NOT CHECKED FOR CORRECTNESS YET
macNonceLength :: MAC -> Int
macNonceLength (CMAC _)      = 0
macNonceLength (GMAC _)      = 12 -- Probably incorrect for some ciphers - TODO: use cipherCtxGetDefaultNonceLength
macNonceLength (CBC_MAC _)   = 0
macNonceLength (HMAC _)      = 0
macNonceLength Poly1305      = 16   -- Is this Poly1305, or Poly1305-WC?
macNonceLength (SipHash _ _) = 0
macNonceLength X9_19_MAC     = 0
-- NOTE: Poly1305 takes a 32-byte key? But its supposed to take a 16-byte key.
--  Need to figure out specifics - what variant of Poly1305
{-
ghci> import Botan.MAC
ghci> import Botan.Utility 
ghci> import Botan.Low.RNG 
ghci> k <- systemRNGGetIO 16
ghci> mac Poly1305 k Nothing "Fee fi fo fum!"
"*** Exception: InvalidKeyLengthException (-34) [("throwBotanIfNegative_",SrcLoc {srcLocPackage = "botan-low-0.0.1-inplace", srcLocModule = "Botan.Low.Make", srcLocFile = "src/Botan/Low/Make.hs", srcLocStartLine = 346, srcLocStartCol = 9, srcLocEndLine = 346, srcLocEndCol = 30})]
ghci> k <- systemRNGGetIO 32
ghci> mac Poly1305 k Nothing "Fee fi fo fum!"
"\234\SO\211\187%\156\220o\134\&4\169\248\rr\134H"
-}

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

macCtxSetKey :: MACCtx -> MACKey -> MACCtx
macCtxSetKey ctx key = unsafePerformIO $ do
    macCtxSetKeyIO ctx key
    return ctx

-- NOTE: Not all MACs require a nonce
--  Eg, GMAC requires a nonce
--  Other MACs do not require a nonce, and will cause a BadParameterException (-32)
macCtxSetNonce :: MACCtx -> MACNonce -> MACCtx
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

macCtxUpdateFinalizeIO :: MACCtx -> Message -> IO MACDigest
macCtxUpdateFinalizeIO ctx bytes = do
    macCtxUpdateIO ctx bytes
    macCtxFinalIO ctx

macCtxUpdateFinalizeClearIO :: MACCtx -> Message -> IO MACDigest
macCtxUpdateFinalizeClearIO ctx bytes = do
    dg <- macCtxUpdateFinalizeIO ctx bytes
    macCtxClearIO ctx
    return dg

--

macWithMACCtxIO :: MACCtx -> MACKey -> Maybe MACNonce -> Message -> IO MACDigest
macWithMACCtxIO ctx key nonce message = do
    macCtxSetKeyIO ctx key
    case nonce of
        Nothing -> macCtxSetNonceIO ctx ""
        Just n  -> macCtxSetNonceIO ctx n
    macCtxUpdateFinalizeClearIO ctx message

macWithMACCtx :: MACCtx -> MACKey -> Maybe MACNonce -> Message -> MACDigest
macWithMACCtx = unsafePerformIO4 macWithMACCtxIO

macWithNameIO :: MACName -> MACKey -> Maybe MACNonce -> Message -> IO MACDigest
macWithNameIO name key nonce message = do
    ctx <- macCtxInitNameIO name
    macWithMACCtxIO ctx key nonce message

macWithName :: MACName -> MACKey -> Maybe MACNonce -> Message -> MACDigest
macWithName = unsafePerformIO4 macWithNameIO

macIO :: MAC -> MACKey -> Maybe MACNonce -> Message -> IO MACDigest
macIO = macWithNameIO . macName

mac :: MAC -> MACKey -> Maybe MACNonce -> Message -> MACDigest
mac = unsafePerformIO4 macIO

-- TODO: stuff like newMACKey newMACNonce