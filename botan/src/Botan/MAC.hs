{-|
Module      : Botan.MAC
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

module Botan.MAC
(

-- * Message Authentication Codes
-- $introduction

-- * Usage
-- $usage

-- * Idiomatic interface

-- ** Data type
  MAC(..)

-- ** Enumerations

, allMACs

-- ** Associated types
, MACKeySpec
, MACKey(..)
, newMACKey
, newMACKeyMaybe
, MACDigest(..)

-- ** Accessors

, macName
, macKeySpec
, macDigestLength

-- ** Idiomatic algorithm
, mac
, gmac

, macLazy

-- * Mutable interface

-- ** Tagged mutable context
, MutableMAC(..)

-- ** Destructor
, destroyMAC

-- ** Initializers
, newMAC

-- ** Accessors
, getMACName
, getMACKeySpec
, getMACDigestLength
, setMACKey

-- ** GMAC-specific functions
, GMACNonce(..)
, setGMACNonce

-- ** Accessory functions
, clearMAC

-- ** Mutable algorithm
, updateMAC
, finalizeMAC
, updateFinalizeMAC
, updateFinalizeClearMAC

-- *Algorithm references
, cmac
, hmac
-- , kmac
, poly1305
, sipHash
, x9_19_mac

) where

import Data.Foldable

import qualified Data.ByteString.Lazy as Lazy
import qualified Data.ByteString as ByteString

import qualified Botan.Low.MAC as Low

import Botan.BlockCipher
import Botan.KeySpec
import Botan.Hash
import Botan.RNG
import Botan.Prelude
import Botan.Error (SomeBotanException(SomeBotanException))
import qualified Botan.Bindings.MAC as Low

-- NOTE: MAC has no state copy unlike Hash

-- TODO: Maybe separate out GMAC entirely

-- NOTE: Poly1305 is Poly1305 One-Time-Authenticator, and it has a 16 byte key r
-- and a 16 byte nonce s that must not be re-used together. Botan implements this
-- by combining the two into a single 32-byte key that must never be reused.

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Data type

data MAC
    = CMAC BlockCipher  -- NOTE: This is actually OMAC a CMAC variant
    -- | CBC_MAC BlockCipher  -- No longer supported (possibly due to security issues) 
    | GMAC BlockCipher      -- Requires a nonce "GMAC can accept initialization vectors of arbitrary length"
    | HMAC Hash -- Must be a (CS)Hash, and not a Checksum
    -- New in 3.2
    -- | KMAC_128 Int -- Output length
    -- | KMAC_256 Int -- Output length
    | Poly1305              -- Requires a unique key per message (key r and nonce s have been combined)
    | SipHash Int Int       -- Number of input and finalization rounds
    | X9_19_MAC
    deriving (Eq, Show)
    
-- Enumerations

allMACs = concat
    [ [ CMAC bc | bc <- allBlockCiphers ]
    , [ GMAC bc | bc <- allBlockCiphers ] -- Requires a nonce
    , [ HMAC h  | h  <- Cryptohash <$> cryptohashes ]
    , [ Poly1305
      , SipHash 2 4
      , X9_19_MAC
      ]
    ]


-- Associated types

type MACKeySpec = KeySpec

type MACKey = ByteString

newMACKey :: (MonadRandomIO m) => MAC -> m MACKey
newMACKey = newKey . macKeySpec

newMACKeyMaybe :: (MonadRandomIO m) => Int -> MAC -> m (Maybe MACKey)
newMACKeyMaybe sz bc = newKeyMaybe sz (macKeySpec bc)

type MACDigest = ByteString

-- Accessors

macName :: MAC -> ByteString
macName (CMAC bc)       = Low.cmac (blockCipherName bc)
macName (GMAC bc)       = Low.gmac (blockCipherName bc)
macName (HMAC h)        = Low.hmac (hashName h)
macName Poly1305        = Low.Poly1305
macName (SipHash ir fr) = Low.sipHash ir fr
macName X9_19_MAC       = Low.X9_19_MAC

macKeySpec :: MAC -> KeySpec
macKeySpec (CMAC bc)        = blockCipherKeySpec bc
macKeySpec (GMAC bc)        = blockCipherKeySpec bc
macKeySpec (HMAC h)         = keySpec 0 4096 1
macKeySpec Poly1305         = keySpec 32 32 1
macKeySpec (SipHash 2 4)    = keySpec 16 16 1
macKeySpec X9_19_MAC        = keySpec 8 16 8
-- NOTE: Extracted from inspecting:
{-
generateMACKeySpec :: IO ()
generateMACKeySpec = do
    each <- forM macs $ \ m -> do
        ctx <- Low.macInit (macName m)
        (mn,mx,md) <- Low.macGetKeyspec ctx
        return $ concat $
            [ "macKeySpec "
            , showsPrec 11 m ""
            , " = KeySpec "
            , show mn
            , " "
            , show mx
            , " "
            , show md
            ]
    putStrLn $ unlines $
        "macKeySpec :: MAC -> KeySpec"
        : each
-}

-- NOTE: Size in bytes
macDigestLength :: MAC -> Int
macDigestLength (CMAC bc)     = blockCipherBlockSize bc
macDigestLength (GMAC _)      = 16    -- Always 16
macDigestLength (HMAC h)      = hashDigestSize h
macDigestLength Poly1305      = 16
-- TODO: Check more variants
macDigestLength (SipHash 2 4) = 8
macDigestLength X9_19_MAC     = 8
-- NOTE: Extracted / confirmed from inspecting:
{-
generateMACDigestSize :: IO ()
generateMACDigestSize = do
    each <- forM macs $ \ m -> do
        ctx <- Low.macInit (macName m)
        dsz <- Low.macOutputLength ctx
        return $ concat $
            [ "macDigestSize "
            , showsPrec 11 m ""
            , " = "
            , show dsz
            ]
    putStrLn $ unlines $
        "macDigestSize :: MAC -> Int"
        : each
-}

-- Idiomatic algorithm

-- NOTE: Why is this a maybe?
-- Returns Nothing if the key is the wrong size.
-- Some macs accept any size (up to 4096).
mac :: MAC -> MACKey -> ByteString -> Maybe MACDigest
mac m k msg = unsafePerformIO $ do
    mm <- newMAC m
    wasSet <- setMACKey k mm
    if wasSet
    then Just <$> updateFinalizeClearMAC mm msg
    else return Nothing
{-# NOINLINE mac #-}

macLazy :: MAC -> MACKey -> Lazy.ByteString -> Maybe MACDigest
macLazy = undefined

-- NOTE: Or just take a BlockCipher as an argument?
gmac :: MAC -> MACKey -> GMACNonce -> ByteString -> Maybe MACDigest
gmac m@(GMAC _) k n msg = unsafePerformIO $  do
    mm <- newMAC m
    wasSet <- setMACKey k mm
    if wasSet
    then do
        setGMACNonce n mm
        Just <$> updateFinalizeClearMAC mm msg
    else return Nothing
gmac _ _ _ _ = error "Expected GMAC"
{-# NOINLINE gmac #-}

--
-- Mutable interface
--

-- Tagged mutable context

data MutableMAC = MkMutableMAC
    { mutableMACType    :: MAC
    , mutableMACCtx     :: Low.MAC
    }

-- Destructor

destroyMAC
    :: (MonadIO m)
    => MutableMAC
    -> m ()
destroyMAC = liftIO . Low.macDestroy . mutableMACCtx

-- Initializers

newMAC
    :: (MonadIO m)
    => MAC
    -> m MutableMAC
newMAC h = do
    ctx <- liftIO $ Low.macInit $ macName h
    return $ MkMutableMAC h ctx

-- Accessors

getMACName
    :: (MonadIO m)
    => MutableMAC
    -> m Low.MACName
getMACName = liftIO . Low.macName . mutableMACCtx

getMACKeySpec
    :: (MonadIO m)
    => MutableMAC
    -> m MACKeySpec
getMACKeySpec mm = do
    (mn,mx,md) <- liftIO $ Low.macGetKeyspec (mutableMACCtx mm)
    return $ keySpec mn mx md

getMACDigestLength
    :: (MonadIO m)
    => MutableMAC
    -> m Int
getMACDigestLength = liftIO . Low.macOutputLength . mutableMACCtx

setMACKey
    :: (MonadIO m)
    => MACKey
    -> MutableMAC
    -> m Bool
setMACKey k mm = do
    valid <- keySizeIsValid (ByteString.length k) <$> getMACKeySpec mm
    if valid
    then do
        liftIO $ Low.macSetKey (mutableMACCtx mm) k
        return True
    else return False

-- GMAC-specific functions

-- NOTE: At time of writing, the only MAC with a nonce is GMAC,
-- which accepts a nonce of arbitrary length.
-- This nonce must not be re-used.
type GMACNonce = ByteString

-- NOTE: Must occur *AFTER* setting the key
setGMACNonce
    :: (MonadIO m)
    => GMACNonce
    -> MutableMAC
    -> m ()
setGMACNonce n mm@(MkMutableMAC (GMAC _) ctx) = liftIO $ Low.macSetNonce ctx n
setGMACNonce _ _                              = return ()

-- Accessory functions

clearMAC
    :: (MonadIO m)
    => MutableMAC
    -> m ()
clearMAC = liftIO . Low.macClear . mutableMACCtx

-- Mutable algorithm

-- Mutable algorithm
-- TODO: Flip?
updateMAC
    :: (MonadIO m)
    => MutableMAC
    -> ByteString
    -> m ()
updateMAC m bs = updateMACChunks m [bs]

-- TODO: Flip?
updateMACChunks
    :: (MonadIO m)
    => MutableMAC
    -> [ByteString]
    -> m ()
updateMACChunks mm chunks = let ctx = mutableMACCtx mm in
    liftIO $ traverse_ (Low.macUpdate ctx) chunks

finalizeMAC
    :: (MonadIO m)
    => MutableMAC
    -> m MACDigest
finalizeMAC = liftIO . Low.macFinal . mutableMACCtx

updateFinalizeMAC
    :: (MonadIO m)
    => MutableMAC
    -> ByteString
    -> m MACDigest
updateFinalizeMAC mm bs = liftIO $ do
    updateMAC mm bs
    finalizeMAC mm

updateFinalizeClearMAC
    :: (MonadIO m)
    => MutableMAC
    -> ByteString
    -> m MACDigest
updateFinalizeClearMAC mm bs = updateFinalizeMAC mm bs <* clearMAC mm

--
-- Algorithm references
--

-- = CMAC BlockCipher  -- NOTE: This is actually OMAC a CMAC variant
-- -- | CBC_MAC BlockCipher  -- No longer supported (possibly due to security issues) 
-- | GMAC BlockCipher      -- Requires a nonce "GMAC can accept initialization vectors of arbitrary length"
-- | HMAC Hash -- Must be a (CS)Hash, and not a Checksum
-- -- New in 3.2
-- -- | KMAC_128 Int -- Output length
-- -- | KMAC_256 Int -- Output length
-- | Poly1305              -- Requires a unique key per message (key r and nonce s have been combined)
-- | SipHash Int Int       -- Number of input and finalization rounds
-- | X9_19_MAC


cmac :: BlockCipher -> MAC
cmac = CMAC

-- MOVE TO OneTimeAuth
-- gmac :: BlockCipher -> MAC
-- gmac = undefined

hmac :: Hash -> MAC
hmac = HMAC

-- kmac :: Int -> Maybe MAC
-- kmac = undefined

-- MOVE TO OneTimeAuth
poly1305 :: MAC
poly1305 = Poly1305

-- NOTE: I'm pretty sure any positive values are valid
sipHash :: Int -> Int -> Maybe MAC
sipHash r f = Just $ SipHash r f
 
x9_19_mac :: MAC
x9_19_mac = X9_19_MAC
