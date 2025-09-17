-- TODO: properly fix this warning. See issue #36.
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

{-|
Module      : Botan.Low.Cipher
Description : Symmetric cipher modes
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

A block cipher by itself, is only able to securely encrypt a single
data block. To be able to securely encrypt data of arbitrary length,
a mode of operation applies the block cipher’s single block operation
repeatedly to encrypt an entire message.
-}

module Botan.Cipher
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Idiomatic interface

-- ** Cipher data type
 Cipher(..)

-- ** AEAD data type
, AEAD(..)
, aead
, unsafeAEAD
, isAEAD

-- ** Enumerations

, ciphers
, cbcPaddings
, aeads

-- ** Associated types
, CipherKey(..)
, CipherNonce(..)
, CBCPadding(..)
, AEADAssociatedData(..)

-- ** Accessors

, cipherName
, cipherKeySpec
, cipherDefaultNonceSize
, cipherNonceSizeIsValid
, cipherTagSize
, cipherUpdateGranularity
, cipherIdealUpdateGranularity
-- NOTE: This is our custom function
-- , cipherEstimateOutputLength
-- TODO: Determine if this function is state-dependent
-- NOTE: Really returns an upper bound but is not accurate? Can't remember, notes are old.
, cipherOutputLength

-- ** Idiomatic algorithm
, cipherEncrypt   -- NOTE: Offline
, cipherDecrypt
, cipherEncryptLazy
, cipherDecryptLazy
-- , encryptGeneratingKeys
-- , autoEncrypt

, aeadEncrypt
, aeadDecrypt

-- encryptLazy -- NOTE: Online, SIV and CCM are not available
-- , decryptLazy

-- * Mutable interface

-- ** Tagged mutable context
-- TODO: Split MutableCipher into MutableEncipher and MutableDecipher?
-- Would be separate like pk ops
, MutableCipher(..)

-- ** Destructor
, destroyCipher

-- ** Associated types
, CipherDirection(..)
, CipherUpdate(..)

-- ** Initializers
, newCipher

-- ** Accessors
, getCipherName
, getCipherKeySpec
, getCipherDefaultNonceSize
, getCipherNonceSizeIsValid
, getCipherTagSize
, getCipherUpdateGranularity
, getCipherIdealUpdateGranularity
, getCipherEstimateOutputLength
, getCipherOutputLength
, setCipherKey
, setAEADAssociatedData

-- ** Accessory functions
, clearCipher
, resetCipher

-- ** Mutable algorithm
, startCipher
, updateCipher
-- , updateCipherChunks
, finalizeCipher
, finalizeResetCipher
, finalizeClearCipher

-- ** Algorithm references

, cbc
, cbcWith
, cfb
, cfbWith
, xts
, chaCha20Poly1305
, gcm
, gcmWith
, ocb
, ocbWith
, eax
, eaxWith
, siv
, ccm
, ccmWith

) where

import qualified Botan.Low.Cipher as Low

import Botan.BlockCipher
import Botan.Error
import Botan.KeySpec
import Botan.Prelude

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import Botan.RNG

import Data.Maybe

-- WARNING: Some notes are incorrect or out of date. Proceed with caution

-- TODO: Consider flipping a lot of mutablectx functions such that `args -> ctx -> monadio result`

-- NOTE: According to good practice, we should not use any of the plaintext if the tag is invalid
--  which can only happen at the end of processing. Therefore online cipher processing may be
--  of lesser value than initially thought. See usage note for Cipher.finish https://botan.randombit.net/handbook/api_ref/cipher_modes.html
-- \* This is due to botan's obscuration which attaches the tag. A datum could be pre-verified,
--  and thus not need the tag any more, *if* the schema is Encrypt-then-MAC

-- NOTE: Botan does not directly support AE without AD, though we can just supply "" for AD.
--  This botan documentation note makes reference to performing AE manually, ie Encrypt-then-MAC:
--      Warning
--      Using an unauthenticted cipher mode without combining it with a Message
--      Authentication Codes (MAC) is insecure. Prefer using an AEAD Mode.

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Cipher data type

-- NOTE: For GCM, EAX, SIV, any length nonces are allowed.
-- NOTE: "GCM is defined for the tag sizes 4, 8, 12 - 16 bytes" but may actually accept any 1-16
-- NOTE: Botan Docs: EAX: "Supports 128-bit, 256-bit and 512-bit block ciphers."
--  Note that that is currently all block ciphers (at least, those with default values)
-- NOTE: CCM is not an online algorithm:
--  > CCM is not an "on-line" authenticated encryption with associated data (AEAD), in that the length of the message (and associated data) must be known in advance.
-- NOTE: SIV is not an online algorithm:
--  > [SIV] modes process the plaintext blocks twice (once for authentication, then for encryption), and hence they are two-pass
--  https://csrc.nist.gov/CSRC/media/Events/lightweight-cryptography-workshop-2020/documents/papers/structural-classification-lwc2020.pdf
data Cipher
    = CBC BlockCipher CBCPadding
    | CFB BlockCipher Int -- Feedback bits size, default is 8 * block size
    | XTS BlockCipher
    | ChaCha20Poly1305
    | GCM BlockCipher128 Int -- Tag size, default is 16
    | OCB BlockCipher128 Int -- Tag size, default is 16
    | EAX BlockCipher Int -- Tag size, default is block size
    | SIV BlockCipher128
    | CCM BlockCipher128 Int Int -- Tag size and L, default tag size is 16 and L is 3
    deriving (Eq, Ord, Show)

-- CBC Padding - does this have use elsewhere?
data CBCPadding
    = PKCS7
    | OneAndZeros
    | X9_23
    | ESP   -- NOTE: RFC 4304
    | CTS   -- NOTE: Ciphertext stealing
    | NoPadding
    deriving (Eq, Ord, Show)

-- TODO: AE data type? Unnecessary if considering AEAD?

-- AEAD data type

newtype AEAD = MkAEAD { unAEAD :: Cipher }
    deriving (Eq, Ord, Show)

aead :: Cipher -> Maybe AEAD
aead c@(ChaCha20Poly1305)   = Just $ MkAEAD c
aead c@(GCM _ _)            = Just $ MkAEAD c
aead c@(OCB _ _)            = Just $ MkAEAD c
aead c@(EAX _ _)            = Just $ MkAEAD c
aead c@(SIV _)              = Just $ MkAEAD c
aead c@(CCM _ _ _)          = Just $ MkAEAD c
aead _                      = Nothing

unsafeAEAD :: Cipher -> AEAD
unsafeAEAD = MkAEAD

isAEAD :: Cipher -> Bool
isAEAD = isJust . aead

-- Enumerations

ciphers :: [ Cipher ]
ciphers = concat
    [ [ CBC bc pd                               | bc <- blockCiphers, pd <- cbcPaddings ]
    , [ CFB bc (8 * blockCipherBlockSize bc)    | bc <- blockCiphers ]
    , [ XTS bc                                  | bc <- blockCiphers ]
    , fmap unAEAD aeads
    ]

cbcPaddings :: [ CBCPadding ]
cbcPaddings =
    [ PKCS7
    , OneAndZeros
    , X9_23
    , ESP
    , CTS
    , NoPadding
    ]

aeads :: [ AEAD ]
aeads = fmap MkAEAD $ concat
    [ [ ChaCha20Poly1305 ]
    , [ GCM bc 16                               | bc <- blockCipher128s ]
    , [ OCB bc 16                               | bc <- blockCipher128s ]
    , [ EAX bc (blockCipherBlockSize bc)        | bc <- blockCiphers ]
    , [ SIV bc                                  | bc <- blockCipher128s ]
    , [ CCM bc 16 3                             | bc <- blockCipher128s ]
    ]

-- Associated types

type CipherKeySpec = KeySpec

type CipherKey = Low.CipherKey

newCipherKey :: (MonadRandomIO m) => Cipher -> m CipherKey
newCipherKey = newKey . cipherKeySpec

newCipherKeyMaybe :: (MonadRandomIO m) => Int -> Cipher -> m (Maybe CipherKey)
newCipherKeyMaybe sz bc = newKeyMaybe sz (cipherKeySpec bc)

type CipherNonce = ByteString

newCipherNonce :: (MonadRandomIO m) => Cipher -> m CipherNonce
newCipherNonce = getRandomBytes . cipherDefaultNonceSize

newCipherNonceMaybe :: (MonadRandomIO m) => Int -> Cipher -> m (Maybe CipherNonce)
newCipherNonceMaybe sz c = if cipherNonceSizeIsValid sz c
    then Just <$> getRandomBytes sz
    else return Nothing

type AEADAssociatedData = ByteString

-- Accessors

cipherName :: Cipher -> Low.CipherName
cipherName (CBC bc padding)     = Low.cbcMode (blockCipherName bc) (cbcPaddingName padding)
cipherName (CFB bc fsz)         = Low.cfbModeWith (blockCipherName bc) fsz
cipherName (XTS bc)             = Low.xtsMode (blockCipherName bc)
cipherName ChaCha20Poly1305     = Low.chaCha20Poly1305
cipherName (GCM bc128 tsz)      = Low.gcmModeWith (blockCipher128Name bc128) tsz
cipherName (OCB bc128 tsz)      = Low.ocbModeWith (blockCipher128Name bc128) tsz
cipherName (EAX bc tsz)         = Low.eaxModeWith (blockCipherName bc) tsz
cipherName (SIV bc128)          = Low.sivMode (blockCipher128Name bc128)
cipherName (CCM bc128 tsz l)    = Low.ccmModeWith (blockCipher128Name bc128) tsz l

cbcPaddingName :: CBCPadding -> ByteString
cbcPaddingName PKCS7        = Low.PKCS7
cbcPaddingName OneAndZeros  = Low.OneAndZeros
cbcPaddingName X9_23        = Low.X9_23
cbcPaddingName ESP          = Low.ESP
cbcPaddingName CTS          = Low.CTS
cbcPaddingName NoPadding    = Low.NoPadding

aeadName :: AEAD -> Low.CipherName
aeadName = cipherName . unAEAD

cipherKeySpec :: Cipher -> CipherKeySpec
cipherKeySpec (CBC bc _)        = blockCipherKeySpec bc
cipherKeySpec (CFB bc _)        = blockCipherKeySpec bc
cipherKeySpec (XTS bc)          = monoMapKeySpec (*2) $ blockCipherKeySpec bc
cipherKeySpec ChaCha20Poly1305  = keySpec 32 32 1
cipherKeySpec (GCM bc128 _)     = blockCipher128KeySpec bc128
cipherKeySpec (OCB bc128 _)     = blockCipher128KeySpec bc128
cipherKeySpec (EAX bc _)        = blockCipherKeySpec bc
cipherKeySpec (SIV bc128)       = monoMapKeySpec (*2) $ blockCipher128KeySpec bc128
cipherKeySpec (CCM bc128 _ _)   = blockCipher128KeySpec bc128
-- NOTE: Extracted from inspecting:
{-
generateCipherKeySpecs :: IO ()
generateCipherKeySpecs = do
    each <- forM ciphers  $ \ c -> do
        ctx <- Low.cipherInit (cipherName c) Low.Encrypt
        (mn,mx,md) <- Low.cipherGetKeyspec ctx
        return $ concat $
            [ "cipherKeySpec "
            , showsPrec 11 c ""
            , " = CipherKeySpec "
            , show mn
            , " "
            , show mx
            , " "
            , show md
            ]
    putStrLn $ unlines $
        "cipherKeySpec :: Cipher -> CipherKeySpec"
        : each
-}

cipherDefaultNonceSize :: Cipher -> Int
cipherDefaultNonceSize (CBC bc _) = blockCipherBlockSize bc
cipherDefaultNonceSize (CFB bc _) = blockCipherBlockSize bc
cipherDefaultNonceSize (XTS bc)   = blockCipherBlockSize bc
-- NOTE: This is the value at current, and matches the default in botan,
-- presumably because 12 is valid for all remaining cipher / AEAD nonces
cipherDefaultNonceSize _          = 12
-- NOTE: Extracted from inspecting:
{-
generateCipherDefaultNonceLengths :: IO ()
generateCipherDefaultNonceLengths = do
    each <- forM ciphers  $ \ c -> do
        ctx <- Low.cipherInit (cipherName c) Low.Encrypt
        nlen <- Low.cipherGetDefaultNonceLength ctx
        return $ concat $
            [ "cipherDefaultNonceLength "
            , showsPrec 11 c ""
            , " = "
            , show nlen
            ]
    putStrLn $ unlines $
        "cipherDefaultNonceLength :: Cipher -> Int"
        : each
-}

-- TODO: Make NonceSpec? generalize to RangeSpec?

-- NOTE: We've capped the length at 512, but they could be potentially unbounded
internalMaximumCipherNonceSize :: Int
internalMaximumCipherNonceSize = 1024

cipherNonceSizeIsValid :: Int -> Cipher -> Bool
cipherNonceSizeIsValid n (CBC bc _)         = n == blockCipherBlockSize bc
cipherNonceSizeIsValid n (CFB bc _)         = n == blockCipherBlockSize bc
cipherNonceSizeIsValid n (XTS bc)           = 1 <= n && n <= blockCipherBlockSize bc -- Always [ 1 .. 16 ]
cipherNonceSizeIsValid n chaCha20Poly1305   = n `elem` [ 8, 12, 24 ]
cipherNonceSizeIsValid n (GCM _ _)          = 1 <= n && n <= internalMaximumCipherNonceSize -- True if unbounded
cipherNonceSizeIsValid n (OCB bc128 _)      = 1 <= n && n <= blockCipherBlockSize (unBlockCipher128 bc128) - 1 -- Always [ 1 .. 15 ]
cipherNonceSizeIsValid n (EAX _ _)          = 1 <= n && n <= internalMaximumCipherNonceSize -- True if unbounded
cipherNonceSizeIsValid n (SIV _)            = 1 <= n && n <= internalMaximumCipherNonceSize -- True if unbounded
cipherNonceSizeIsValid n (CCM _ _ _)        = n == 12
-- NOTE: Extracted from inspecting:
{-
generateCipherNonceLengths :: IO ()
generateCipherNonceLengths = do
    each <- forM ciphers  $ \ c -> do
        ctx <- Low.cipherInit (cipherName c) Low.Encrypt
        validLengths <- filterM (Low.cipherValidNonceLength ctx) [1..512]
        return $ concat $
            [ "cipherValidNonceLengths "
            , showsPrec 11 c ""
            , " = "
            , show validLengths
            ]
    putStrLn $ unlines $
        "cipherValidNonceLengths :: Cipher -> [ Int ]"
        : each
-}

cipherTagSize :: Cipher -> Maybe Int
cipherTagSize (CBC bc _)        = Nothing
cipherTagSize (CFB bc _)        = Nothing
cipherTagSize (XTS bc)          = Nothing
cipherTagSize chaCha20Poly1305  = Just 16
cipherTagSize (GCM _ tsz)       = Just tsz
cipherTagSize (OCB _ tsz)       = Just tsz
cipherTagSize (EAX _ tsz)       = Just tsz
cipherTagSize (SIV _)           = Just 16
cipherTagSize (CCM _ tsz _)     = Just tsz
-- NOTE: Extracted / confirmed from inspecting:
{-
generateCipherTagLength :: IO ()
generateCipherTagLength = do
    each <- forM ciphers  $ \ c -> do
        ctx <- Low.cipherInit (cipherName c) Low.Encrypt
        tag <- Low.cipherGetTagLength ctx
        return $ concat $
            [ "cipherTagLength "
            , showsPrec 11 c ""
            , " = "
            , show tag
            ]
    putStrLn $ unlines $
        "cipherTagLength :: Cipher -> Int"
        : each
-}

aeadTagSize :: AEAD -> Int
aeadTagSize = fromJust . cipherTagSize .  unAEAD

cipherUpdateGranularity :: Cipher -> Int
cipherUpdateGranularity (CBC bc CTS)        = 2 * blockCipherBlockSize bc
cipherUpdateGranularity (CBC bc _)          = blockCipherBlockSize bc
cipherUpdateGranularity (CFB bc _)          = blockCipherBlockSize bc
cipherUpdateGranularity (XTS bc)            = 2 * blockCipherBlockSize bc
cipherUpdateGranularity ChaCha20Poly1305    = 1
cipherUpdateGranularity (GCM bc128 _)       = blockCipherBlockSize (unBlockCipher128 bc128) -- always 16
cipherUpdateGranularity (OCB bc128 _)       = blockCipherBlockSize (unBlockCipher128 bc128) -- always 16
cipherUpdateGranularity (EAX _ _)           = 1
cipherUpdateGranularity (SIV _)             = 1
cipherUpdateGranularity (CCM _ _ _)         = 1
-- NOTE: Extracted / confirmed from inspecting:
{-
generateCipherUpdateGranularity :: IO ()
generateCipherUpdateGranularity = do
    each <- forM ciphers  $ \ c -> do
        ctx <- Low.cipherInit (cipherName c) Low.Encrypt
        ug <- Low.cipherGetUpdateGranularity ctx
        return $ concat $
            [ "cipherUpdateGranularity "
            , showsPrec 11 c ""
            , " = "
            , show ug
            ]
    putStrLn $ unlines $
        "cipherUpdateGranularity :: Cipher -> Int"
        : each
-}

cipherIdealUpdateGranularity :: Cipher -> Int
cipherIdealUpdateGranularity cipher = unsafePerformIO $ do
    ctx <- Low.cipherInit (cipherName cipher) Low.Encrypt
    Low.cipherGetIdealUpdateGranularity ctx
{-# NOINLINE cipherIdealUpdateGranularity #-}
-- NOTE: This is machine-dependent, but should stay consistent per-machine
-- so we do this instead of inlining the values

cipherOutputLength :: Cipher -> CipherDirection -> Int -> Int
cipherOutputLength c dir n = unsafePerformIO $ do
    ctx <- Low.cipherInit (cipherName c) (cipherDirectionFlags dir)
    Low.cipherOutputLength ctx n
{-# NOINLINE cipherOutputLength #-}

-- Idiomatic algorithm

-- NOTE: Unsafe
-- TODO: Wrap in Maybe
cipherEncrypt :: Cipher -> CipherKey -> CipherNonce -> ByteString -> Ciphertext
cipherEncrypt c k n msg = unsafePerformIO $ do
    ctx <- newCipher c CipherEncrypt
    setCipherKey ctx k
    startCipher ctx n
    finalizeClearCipher ctx msg
{-# NOINLINE cipherEncrypt #-}

cipherDecrypt ::  Cipher -> CipherKey -> CipherNonce -> Ciphertext -> Maybe ByteString
cipherDecrypt c k n ct = unsafePerformIO $ do
    ctx <- newCipher c CipherDecrypt
    setCipherKey ctx k
    startCipher ctx n
    -- TODO: Catch error to return Nothing
    Just <$> finalizeClearCipher ctx ct
{-# NOINLINE cipherDecrypt #-}

-- NOTE: Unsafe
-- TODO: Wrap in Maybe
cipherEncryptLazy :: Cipher -> CipherKey -> CipherNonce -> Lazy.ByteString -> LazyCiphertext
cipherEncryptLazy = undefined

cipherDecryptLazy ::  Cipher -> CipherKey -> CipherNonce -> LazyCiphertext -> Maybe Lazy.ByteString
cipherDecryptLazy = undefined

-- NOTE: Unsafe
-- TODO: Wrap in Maybe
aeadEncrypt :: AEAD -> CipherKey -> CipherNonce -> AEADAssociatedData -> ByteString -> Ciphertext
aeadEncrypt c k n ad msg = unsafePerformIO $ do
    ctx <- newCipher (unAEAD c) CipherEncrypt
    setCipherKey ctx k
    setAEADAssociatedData ctx ad
    startCipher ctx n
    finalizeClearCipher ctx msg
{-# NOINLINE aeadEncrypt #-}

aeadDecrypt ::  AEAD -> CipherKey -> CipherNonce -> AEADAssociatedData -> Ciphertext -> Maybe ByteString
aeadDecrypt c k n ad ct = unsafePerformIO $ do
    ctx <- newCipher (unAEAD c) CipherDecrypt
    setCipherKey ctx k
    setAEADAssociatedData ctx ad
    startCipher ctx n
    -- TODO: Catch error to return Nothing
    Just <$> finalizeClearCipher ctx ct
{-# NOINLINE aeadDecrypt #-}

--
-- Mutable interface
--

-- Tagged mutable context

data MutableCipher = MkMutableCipher
    { mutableCipherType         :: Cipher
    , mutableCipherDirection    :: CipherDirection
    , mutableCipherCtx          :: Low.Cipher
    -- , mutableCipherProcessed    :: Int
    }

-- Destructor

destroyCipher :: (MonadIO m) => MutableCipher -> m ()
destroyCipher = liftIO . Low.cipherDestroy . mutableCipherCtx

-- Associated types

-- TODO: Direction = Encrypt | Decrypt, leave CipherFoo- terminology for Low
data CipherDirection
    = CipherEncrypt
    | CipherDecrypt
    deriving (Eq, Ord, Show)

cipherDirectionFlags :: CipherDirection -> Low.CipherInitFlags
cipherDirectionFlags CipherEncrypt = Low.Encrypt
cipherDirectionFlags CipherDecrypt = Low.Decrypt

-- TODO: data UpdateFlags = Update | Final, leave CipherFoo- terminology for Low
data CipherUpdate
    = CipherUpdate
    | CipherFinal
    deriving (Eq, Ord, Show)

cipherUpdateFlags :: CipherUpdate -> Low.CipherUpdateFlags
cipherUpdateFlags CipherUpdate = Low.CipherUpdate
cipherUpdateFlags CipherFinal = Low.CipherFinal

-- Initializers

newCipher
    :: (MonadIO m)
    => Cipher
    -> CipherDirection
    -> m MutableCipher
newCipher c dir = do
    ctx <- liftIO $ Low.cipherInit (cipherName c) (cipherDirectionFlags dir)
    return $ MkMutableCipher c dir ctx

-- Accessors

getCipherName :: (MonadIO m) => MutableCipher -> m ByteString
getCipherName = liftIO . Low.cipherName . mutableCipherCtx

getCipherKeySpec :: (MonadIO m) => MutableCipher -> m CipherKeySpec
getCipherKeySpec c = do
    (mn,mx,md) <- liftIO $ Low.cipherGetKeyspec (mutableCipherCtx c)
    return $ keySpec mn mx md


getCipherDefaultNonceSize :: (MonadIO m) => MutableCipher -> m Int
getCipherDefaultNonceSize = liftIO . Low.cipherGetDefaultNonceLength . mutableCipherCtx

getCipherNonceSizeIsValid :: (MonadIO m) => MutableCipher -> Int -> m Bool
getCipherNonceSizeIsValid c n = liftIO $ Low.cipherValidNonceLength (mutableCipherCtx c) n

-- TODO: Rename getAEADTagLength? getAETagLength?
getCipherTagSize :: (MonadIO m) => MutableCipher -> m Int
getCipherTagSize = liftIO . Low.cipherGetTagLength . mutableCipherCtx

getCipherUpdateGranularity :: (MonadIO m) => MutableCipher -> m Int
getCipherUpdateGranularity = liftIO . Low.cipherGetUpdateGranularity . mutableCipherCtx

getCipherIdealUpdateGranularity :: (MonadIO m) => MutableCipher -> m Int
getCipherIdealUpdateGranularity = liftIO . Low.cipherGetIdealUpdateGranularity . mutableCipherCtx

-- NOTE: out + ug + tag is safe overestimate for encryption
-- NOTE: out + ug - tag may not be a safe overestimate for decryption
getCipherEstimateOutputLength :: (MonadIO m) => MutableCipher -> Int -> m Int
getCipherEstimateOutputLength ctx input = do
    o <- getCipherOutputLength ctx input  -- NOTE: Flawed but usable
    u <- getCipherUpdateGranularity ctx -- TODO: When u == 1, it should be just input + t, right?
    t <- getCipherTagSize ctx
    if mutableCipherDirection ctx == CipherEncrypt
        then return (o + u + t)
        else return (o + u - t) -- TODO: Maybe just 'o'...

-- NOTE: Supposed to be an upper bound, may not always be valid? - needs checking
{-# WARNING getCipherOutputLength "Needs to be confirmed accurate, use getCipherEstimateOutputLength" #-}
getCipherOutputLength :: (MonadIO m) => MutableCipher -> Int -> m Int
getCipherOutputLength c n = liftIO $ Low.cipherOutputLength (mutableCipherCtx c) n

setCipherKey :: (MonadIO m) => MutableCipher -> CipherKey -> m ()
setCipherKey c key = liftIO $ Low.cipherSetKey (mutableCipherCtx c) key

-- TODO: Consider flipping
setAEADAssociatedData :: (MonadIO m) => MutableCipher -> ByteString -> m ()
setAEADAssociatedData c ad = liftIO $ Low.cipherSetAssociatedData (mutableCipherCtx c) ad

-- Accessory functions

clearCipher :: (MonadIO m) => MutableCipher -> m ()
clearCipher = liftIO . Low.cipherClear . mutableCipherCtx

resetCipher :: (MonadIO m) => MutableCipher -> m ()
resetCipher = liftIO . Low.cipherReset . mutableCipherCtx

-- Mutable algorithm

startCipher :: (MonadIO m) => MutableCipher -> CipherNonce -> m ()
startCipher c n = liftIO $ Low.cipherStart (mutableCipherCtx c) n

-- NOTE: DOES NOT USE ESTIMATED OUTPUT LENGTH
updateCipher
    :: (MonadIO m)
    => MutableCipher
    -> ByteString
    -> m (Int, ByteString)
updateCipher c msg = do
    o <- getCipherOutputLength c (ByteString.length msg)
    liftIO $ Low.cipherUpdate (mutableCipherCtx c) (cipherUpdateFlags CipherUpdate) o msg

-- updateCipherChunks :: _
-- updateCipherChunks = undefined

-- TODO: See if we can finalize explicitly using "";
--  if so, split into `finalizeCipher ctx = updateFinalizeCipher ctx ""`
-- NOTE: DOES NOT USE ESTIMATED OUTPUT LENGTH
finalizeCipher
    :: (MonadIO m)
    => MutableCipher
    -> ByteString
    -> m ByteString
finalizeCipher c msg = do
    o <- getCipherOutputLength c (ByteString.length msg)
    (_,out) <- liftIO $ Low.cipherUpdate (mutableCipherCtx c) (cipherUpdateFlags CipherFinal) o msg
    return out

finalizeResetCipher
    :: (MonadIO m)
    => MutableCipher
    -> ByteString
    -> m ByteString
finalizeResetCipher c msg = finalizeCipher c msg <* resetCipher c

finalizeClearCipher
    :: (MonadIO m)
    => MutableCipher
    -> ByteString
    -> m ByteString
finalizeClearCipher c msg = finalizeCipher c msg <* clearCipher c

-- TODO: bring back cipherProcess / processCipher for lazy bytestrings

--
-- Algorithm references
--

-- TODO: Maybe replace foo / fooWith terminology: fooDefault / foo?

cbc :: BlockCipher -> Cipher
cbc bc  = cbcWith bc PKCS7

cbcWith :: BlockCipher -> CBCPadding -> Cipher
cbcWith = CBC

cfb :: BlockCipher -> Cipher
cfb bc = cfbWith bc (8 * blockCipherBlockSize bc)

-- Feedback bits size, default is 8 * block size
cfbWith :: BlockCipher -> Int -> Cipher
cfbWith = CFB

xts :: BlockCipher -> Cipher
xts = XTS

chaCha20Poly1305 :: Cipher
chaCha20Poly1305 = ChaCha20Poly1305

gcm :: BlockCipher128 -> Cipher
gcm bc = gcmWith bc 16

-- Tag size, default is 16
gcmWith :: BlockCipher128 -> Int -> Cipher
gcmWith = GCM

ocb :: BlockCipher128 -> Cipher
ocb bc = ocbWith bc 16

-- Tag size, default is 16
ocbWith :: BlockCipher128 -> Int -> Cipher
ocbWith = OCB

eax :: BlockCipher -> Cipher
eax bc = eaxWith bc (blockCipherBlockSize bc)

-- Tag size, default is block size
eaxWith :: BlockCipher -> Int -> Cipher
eaxWith = EAX

siv :: BlockCipher128 -> Cipher
siv = SIV

ccm :: BlockCipher128 -> Cipher
ccm bc = ccmWith bc 16 3

 -- Tag size and L, default tag size is 16 and L is 3
ccmWith :: BlockCipher128 -> Int -> Int -> Cipher
ccmWith = CCM
