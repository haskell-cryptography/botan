{-|
Module      : Botan.Low.Cipher
Description : Symmetric cipher modes
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

-- ** Data type
  Cipher(..)
, CipherMode(..)
, CBCPadding(..)
, AEAD(..)
-- , AEADMode(..)

-- ** Enumerations

, allCiphers
, cipherModes
, aeads

-- ** Associated types
-- TODO: Leave CipherDirection only for mutable?
, CipherDirection(..)
, CipherKey(..)
, CipherNonce(..)

-- ** Accessors

, cipherName
, cipherKeySpec
, cipherDefaultNonceSize
, cipherNonceSizeIsValid
, cipherTagLength
, cipherUpdateGranularity
, cipherIdealUpdateGranularity
-- NOTE: This is our custom function
, cipherEstimateOutputLength
-- TODO: Determine if this function is state-dependent
-- NOTE: Really returns an upper bound but is not accurate? Can't remember, notes are old.
, cipherOutputLength

-- ** Idiomatic algorithm
, encrypt   -- NOTE: Offline
, decrypt
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

-- ** Initializers
, newCipher

-- ** Accessors
, getCipherName
, getCipherKeySpec
, getCipherDefaultNonceSize
, getCipherNonceSizeIsValid
, getCipherTagLength
, getCipherUpdateGranularity
, getCipherIdealUpdateGranularity
, getCipherEstimateOutputLength
, getCipherOutputLength
, setCipherKey
-- , setCipherNonce
, setAEADAssociatedData

-- ** Accessory functions
, clearCipher
, resetCipher

-- ** Mutable algorithm
, startCipher
, updateCipher
, finalizeCipher
, updateFinalizeCipher
, updateFinalizeClearCipher

) where

import qualified Botan.Low.Cipher as Low

import Botan.BlockCipher
import Botan.Error
import Botan.KeySpec
import Botan.Prelude
import qualified Data.ByteString as ByteString
import Botan.RNG

-- WARNING: Some notes are incorrect or out of date. Proceed with caution

{- $introduction

-}

{- $usage

-}

--
-- Idiomatic interface
--

-- Data type

-- NOTE: For EAX and GCM, any length nonces are allowed. OCB allows any value between 8 and 15 bytes.
data Cipher
    = CipherMode CipherMode
    -- | AE AE -- SEE: Note about botan's lack of AE
    | AEAD AEAD
    deriving (Eq, Show)

data CipherMode
    = CBC BlockCipher CBCPadding
    | CFB BlockCipher Int -- Feedback bits size, default is 8 * block size
    | XTS BlockCipher
    deriving (Eq, Show)

-- CBC Padding - does this have use elsewhere?
data CBCPadding
    = PKCS7
    | OneAndZeros
    | X9_23
    | ESP   -- NOTE: RFC 4304
    | CTS   -- NOTE: Ciphertext stealing
    | NoPadding
    deriving (Eq, Show)

-- NOTE: "GCM is defined for the tag sizes 4, 8, 12 - 16 bytes" but may actually accept any 1-16
-- NOTE: Wiki: "Both GCM and GMAC can accept initialization vectors of arbitrary length." - untested
-- NOTE: Wiki: "GCM uses a block cipher with block size 128 bits" - not all block ciphers are supported
-- NOTE: RFC 7253 - The OCB Authenticated-Encryption Algorithm
--  "The blockcipher must have a 128-bit blocksize.""
-- NOTE: Wiki, RFC 7253, Botan docs: GCM, OCB, SIV, CCM: "Requires a 128-bit block cipher."
-- NOTE: Botan Docs: EAX: "Supports 128-bit, 256-bit and 512-bit block ciphers."
--  Note that that is currently all block ciphers (at least, those with default values)
-- NOTE: CCM is not an online algorithm:
--  > CCM is not an "on-line" authenticated encryption with associated data (AEAD), in that the length of the message (and associated data) must be known in advance.
-- NOTE: SIV is not an online algorithm:
--  > [SIV] modes process the plaintext blocks twice (once for authentication, then for encryption), and hence they are two-pass
--  https://csrc.nist.gov/CSRC/media/Events/lightweight-cryptography-workshop-2020/documents/papers/structural-classification-lwc2020.pdf
--  
data AEAD
    = ChaCha20Poly1305
    | GCM BlockCipher {- TODO: BlockCipher128 -} Int -- Tag size, default is 16
    | OCB BlockCipher {- TODO: BlockCipher128 -} Int -- Tag size, default is 16
    | EAX BlockCipher Int -- Tag size, default is block size
    | SIV BlockCipher {- TODO: BlockCipher128 -}
    | CCM BlockCipher {- TODO: BlockCipher128 -} Int Int -- Tag size and L, default tag size is 16 and L is 3
    deriving (Eq, Show)

-- Enumerations

cipherModes = concat
    [ [ CBC bc pd                            | bc <- allBlockCiphers, pd <- cbcPaddings ]
    , [ CFB bc (8 * blockCipherBlockSize bc) | bc <- allBlockCiphers ]
    , [ XTS bc                               | bc <- allBlockCiphers ]
    ]

cbcPaddings =
    [ PKCS7
    , OneAndZeros
    , X9_23
    , ESP
    , CTS
    , NoPadding
    ]

aeads = concat
    [ [ ChaCha20Poly1305 ]
    , [ GCM bc 16                        | bc <- fmap BlockCipher128 blockCipher128s ]
    , [ OCB bc 16                        | bc <- fmap BlockCipher128 blockCipher128s ]
    , [ EAX bc (blockCipherBlockSize bc) | bc <- blockCiphers ] -- WARNING: Why just blockCiphers, why not allBlockCiphers? INHERITED - see Botan.Low.Cipher.aeads
    , [ SIV bc                           | bc <- fmap BlockCipher128 blockCipher128s ]
    , [ CCM bc 16 3                      | bc <- fmap BlockCipher128 blockCipher128s ]
    ]

allCiphers = fmap CipherMode cipherModes ++ fmap AEAD aeads

-- Associated types


type CipherKeySpec = KeySpec

-- TODO: Leave CipherDirection only for mutable?
-- CipherDirection(..)
-- CipherKey(..)
-- CipherNonce(..)

-- Accessors
cipherName :: Cipher -> Low.CipherName
cipherName (CipherMode mode) = cipherModeName mode
cipherName (AEAD aead) = aeadName aead

cipherModeName :: CipherMode -> Low.CipherName
cipherModeName (CBC bc padding)    = Low.cbcMode (blockCipherName bc) (cbcPaddingName padding)
cipherModeName (CFB bc fsz)        = Low.cfbMode' (blockCipherName bc) fsz
cipherModeName (XTS bc)            = Low.xtsMode (blockCipherName bc)

cbcPaddingName :: CBCPadding -> ByteString
cbcPaddingName PKCS7        = Low.PKCS7
cbcPaddingName OneAndZeros  = Low.OneAndZeros
cbcPaddingName X9_23        = Low.X9_23
cbcPaddingName ESP          = Low.ESP
cbcPaddingName CTS          = Low.CTS
cbcPaddingName NoPadding    = Low.NoPadding

aeadName :: AEAD -> Low.CipherName
aeadName ChaCha20Poly1305   = Low.chaCha20Poly1305
aeadName (GCM bc tsz)       = Low.gcmMode' (blockCipherName bc) tsz
aeadName (OCB bc tsz)       = Low.ocbMode' (blockCipherName bc) tsz
aeadName (EAX bc tsz)       = Low.eaxMode' (blockCipherName bc) tsz
aeadName (SIV bc)           = Low.sivMode (blockCipherName bc)
aeadName (CCM bc tsz l)     = Low.ccmMode' (blockCipherName bc) tsz l

cipherKeySpec :: Cipher -> CipherKeySpec
cipherKeySpec (CipherMode (CBC bc _)) = blockCipherKeySpec bc
cipherKeySpec (CipherMode (CFB bc _)) = blockCipherKeySpec bc
cipherKeySpec (CipherMode (XTS bc))   = monoMapKeySpec (*2) $ blockCipherKeySpec bc
cipherKeySpec (AEAD ChaCha20Poly1305) = keySpec 32 32 1
cipherKeySpec (AEAD (GCM bc128 _))    = blockCipherKeySpec bc128
cipherKeySpec (AEAD (OCB bc128 _))    = blockCipherKeySpec bc128
cipherKeySpec (AEAD (EAX bc _))       = blockCipherKeySpec bc
cipherKeySpec (AEAD (SIV bc128))      = monoMapKeySpec (*2) $ blockCipherKeySpec bc128
cipherKeySpec (AEAD (CCM bc128 _ _))  = blockCipherKeySpec bc128
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


cipherDefaultNonceSize = undefined 

cipherNonceSizeIsValid = undefined 

cipherTagLength = undefined 

cipherUpdateGranularity = undefined 

cipherIdealUpdateGranularity = undefined 

-- NOTE: This is our custom function
cipherEstimateOutputLength = undefined
-- TODO: Determine if this function is state-dependent
-- NOTE: Really returns an upper bound but is not accurate? Can't remember, notes are old.
cipherOutputLength = undefined

-- Idiomatic algorithm

encrypt = undefined   -- NOTE: Offline
decrypt = undefined
aeadEncrypt = undefined
aeadDecrypt = undefined

--
-- Mutable interface
--

-- Tagged mutable context
-- Destructor
-- Initializers
-- Accessors
-- Accessory functions
-- Mutable algorithm






-- Cipher spec

-- NOTE: For classes, we have:
--  Cipher / Encryption
--  AE / Authenticated encryption
--  AEAD / Authenticated encryption with associated data (not all AE has AD)

-- NOTE: Botan does not directly support AE without AD, though we can just supply "" for AD.
--  This botan documentation note makes reference to performing AE manually, ie Encrypt-then-MAC:
--      Warning
--      Using an unauthenticted cipher mode without combining it with a Message
--      Authentication Codes (MAC) is insecure. Prefer using an AEAD Mode.

-- NOTE: According to good practice, we should not use any of the plaintext if the tag is invalid
--  which can only happen at the end of processing. Therefore online cipher processing may be
--  of lesser value than initially thought. See usage note for Cipher.finish https://botan.randombit.net/handbook/api_ref/cipher_modes.html
-- \* This is due to botan's obscuration which attaches the tag. A datum could be pre-verified,
--  and thus not need the tag any more, *if* the schema is Encrypt-then-MAC

-- TODO: type aliases for CipherModeCtx / AEADCtx for safety later 

-- TODO: Direction = Encrypt | Decrypt, leave CipherFoo- terminology for Low
data CipherDirection
    = CipherEncrypt
    | CipherDecrypt
    
cipherDirectionFlags :: CipherDirection -> Low.CipherInitFlags
cipherDirectionFlags CipherEncrypt = Low.Encrypt
cipherDirectionFlags CipherDecrypt = Low.Decrypt

-- TODO: data UpdateFlags = Update | Final, leave CipherFoo- terminology for Low
data CipherUpdate
    = CipherUpdate
    | CipherFinal

cipherUpdateFlags :: CipherUpdate -> Low.CipherUpdateFlags
cipherUpdateFlags CipherUpdate = Low.CipherUpdate
cipherUpdateFlags CipherFinal = Low.CipherFinal

cipherCtxInit :: Cipher -> CipherDirection -> Low.Cipher
cipherCtxInit = unsafePerformIO2 cipherCtxInitIO

cipherCtxInitIO :: Cipher -> CipherDirection -> IO Low.Cipher
cipherCtxInitIO mode dir = Low.cipherInit (cipherName mode) (cipherDirectionFlags dir)

cipherCtxInitMode :: CipherMode -> CipherDirection -> Low.Cipher
cipherCtxInitMode = unsafePerformIO2 cipherCtxInitModeIO

cipherCtxInitModeIO :: CipherMode -> CipherDirection -> IO Low.Cipher
cipherCtxInitModeIO mode = cipherCtxInitIO (CipherMode mode)

cipherCtxInitAEAD :: AEAD -> CipherDirection -> Low.Cipher
cipherCtxInitAEAD = unsafePerformIO2 cipherCtxInitAEADIO

cipherCtxInitAEADIO :: AEAD -> CipherDirection -> IO Low.Cipher
cipherCtxInitAEADIO aead = cipherCtxInitIO (AEAD aead)

--

cipherCtxInitName :: Low.CipherName -> CipherDirection -> Low.Cipher
cipherCtxInitName name dir = unsafePerformIO $ Low.cipherInit name (cipherDirectionFlags dir)

cipherCtxName :: Low.Cipher -> Low.CipherName
cipherCtxName = unsafePerformIO1 Low.cipherName

cipherCtxOutputLength :: Low.Cipher -> Int -> Int
cipherCtxOutputLength = unsafePerformIO2 Low.cipherOutputLength

cipherCtxValidNonceLength :: Low.Cipher -> Int -> Bool
cipherCtxValidNonceLength = unsafePerformIO2 Low.cipherValidNonceLength

cipherCtxGetTagLength :: Low.Cipher -> Int
cipherCtxGetTagLength = unsafePerformIO1 Low.cipherGetTagLength

cipherCtxGetDefaultNonceLength :: Low.Cipher -> Int
cipherCtxGetDefaultNonceLength = unsafePerformIO1 Low.cipherGetDefaultNonceLength

cipherCtxGetUpdateGranularity :: Low.Cipher -> Int
cipherCtxGetUpdateGranularity = unsafePerformIO1 Low.cipherGetUpdateGranularity

cipherCtxGetIdealUpdateGranularity :: Low.Cipher -> Int
cipherCtxGetIdealUpdateGranularity = unsafePerformIO1 Low.cipherGetIdealUpdateGranularity

cipherCtxGetKeyspec :: Low.Cipher -> CipherKeySpec
cipherCtxGetKeyspec ctx = unsafePerformIO $ do
    (mn,mx,md) <- Low.cipherGetKeyspec ctx
    return $ keySpec mn mx md

-- TODO: Consider flipping
cipherCtxSetKey :: Low.Cipher -> Low.CipherKey -> Low.Cipher
cipherCtxSetKey ctx key = unsafePerformIO $ do
    Low.cipherSetKey ctx key
    return ctx

cipherCtxReset :: Low.Cipher -> Low.Cipher
cipherCtxReset ctx = unsafePerformIO $ do
    Low.cipherReset ctx
    return ctx

-- TODO: Consider flipping
cipherCtxSetAssociatedData :: Low.Cipher -> ByteString -> Low.Cipher
cipherCtxSetAssociatedData ctx ad = unsafePerformIO $ do
    Low.cipherSetAssociatedData ctx ad
    return ctx

-- aeadCtxSetAssociatedData :: AEADCtx -> ByteString -> AEADCtx
-- aeadCtxSetAssociatedData = cipherCtxSetAssociatedData

-- TODO: Consider flipping
cipherCtxStart :: Low.Cipher -> Low.CipherNonce -> Low.Cipher
cipherCtxStart ctx nonce = unsafePerformIO $ do
    Low.cipherStart ctx nonce
    return ctx

-- TODO: Consider flipping

-- cipherCtxUpdate :: Low.Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
-- cipherCtxUpdate :: Low.Cipher -> Bool -> Int -> ByteString -> (Int,ByteString)
-- cipherCtxUpdate ctx final = ...

-- NOTE:
cipherCtxClear :: Low.Cipher -> Low.Cipher
cipherCtxClear ctx = unsafePerformIO $ do
    Low.cipherClear ctx
    return ctx

--



--

type CipherAD = ByteString

data CipherTag

type CombinedCiphertext = ByteString

-- NOTE: Picks min key size
newCipherKey :: Cipher -> IO Low.CipherKey
newCipherKey ciph = do
    -- NOTE: Throwaway context
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    (mn,mx,md) <- Low.cipherGetKeyspec ctx
    -- TODO: Better random source
    getSystemRandomBytes $ if md == 1
        then min 32 mx
        else mn

newCipherNonce :: Cipher -> IO Low.CipherNonce
newCipherNonce ciph = do
    -- NOTE: Throwaway context
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    n <- Low.cipherGetDefaultNonceLength ctx
    -- TODO: Better random source
    getSystemRandomBytes n

encipher :: Cipher -> Low.CipherKey -> Low.CipherNonce -> Message -> Ciphertext
encipher ciph k n msg = unsafePerformIO $ do
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    Low.cipherSetKey ctx k
    Low.cipherStart ctx n
    cipherCtxUpdateFinalizeClearIO ctx msg

-- TODO: Move to botan-low
cipherCtxUpdateBlockIO :: Low.Cipher -> ByteString -> IO ByteString
cipherCtxUpdateBlockIO ctx block = do
    let outSz = ByteString.length block
    (_,block') <- Low.cipherUpdate ctx Low.CipherUpdate outSz block
    return block'

-- TODO: Move to botan-low
cipherCtxFinalizeBlockIO :: Low.Cipher -> ByteString -> IO ByteString
cipherCtxFinalizeBlockIO ctx block = do
    tagSz <- Low.cipherGetTagLength ctx
    let outSz = ByteString.length block + tagSz
    (_,block'tag) <- Low.cipherUpdate ctx Low.CipherFinal tagSz block
    return block'tag

-- TODO: Move to botan-low
cipherCtxFinalizeTagIO :: Low.Cipher -> IO (Maybe ByteString)
cipherCtxFinalizeTagIO ctx = do
    tag <- cipherCtxFinalizeBlockIO ctx ""
    if tag == ""
        then return Nothing
        else return (Just tag)

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeBlocksIO :: Low.Cipher -> [ByteString] -> IO [ByteString]
cipherCtxUpdateFinalizeBlocksIO ctx [block]      = do
    finalBlockTag <- cipherCtxFinalizeBlockIO ctx block
    return [finalBlockTag]
cipherCtxUpdateFinalizeBlocksIO ctx (block:rest) = do
    block' <- cipherCtxUpdateBlockIO ctx block
    (block:) <$> cipherCtxUpdateFinalizeBlocksIO ctx rest

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeOneShotIO :: Low.Cipher -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeOneShotIO ctx bytes = do
    tagSz <- Low.cipherGetTagLength ctx
    (consumed,msg) <- Low.cipherUpdate ctx Low.CipherFinal (ByteString.length bytes + tagSz) bytes
    return msg

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeIO :: Low.Cipher -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeIO ctx msg = do
    g <- Low.cipherGetIdealUpdateGranularity ctx
    if g == 1
        then cipherCtxUpdateFinalizeOneShotIO ctx msg
        else do
            blocks <- cipherCtxUpdateFinalizeBlocksIO ctx (splitBlocks g msg)
            return $! ByteString.concat blocks

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeClearIO :: Low.Cipher -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeClearIO ctx msg = do
    dg <- cipherCtxUpdateFinalizeIO ctx msg
    Low.cipherClear ctx
    return dg

-- TODO: Make Maybe instead of throwing
-- decipher :: CipherKey -> CipherNonce -> Ciphertext -> Maybe Message
decipher :: Cipher -> Low.CipherKey -> Low.CipherNonce -> Ciphertext -> Message
decipher ciph k n msg = unsafePerformIO $ do
    ctx <- cipherCtxInitIO ciph CipherDecrypt
    Low.cipherSetKey ctx k
    Low.cipherStart ctx n
    cipherCtxUpdateFinalizeClearIO ctx msg

-- AE

-- TODO: Summarize attributes of each:
--  https://crypto.stackexchange.com/a/205
-- data AEMode
--     = EncryptThenMac -- Use this one
--     | EncryptAndMac
--     | MacThenEncrypt
-- Or just assume EtM

aeEncipher :: Low.CipherKey -> Low.CipherNonce -> Message -> CombinedCiphertext
aeEncipher = undefined

aeDecipher :: Low.CipherKey -> Low.CipherNonce -> CombinedCiphertext -> Maybe Message
aeDecipher = undefined

aeEncipherDetached :: Low.CipherKey -> Low.CipherNonce -> Message -> (CipherTag, Ciphertext)
aeEncipherDetached = undefined

aeDecipherDetached :: Low.CipherKey -> Low.CipherNonce -> Ciphertext -> Maybe Message
aeDecipherDetached = undefined

-- AEAD

aeadEncipher :: Low.CipherKey -> Low.CipherNonce -> Message -> CipherAD -> CombinedCiphertext
aeadEncipher = undefined

aeadDecipher :: Low.CipherKey -> Low.CipherNonce -> CombinedCiphertext -> CipherAD -> Maybe Message
aeadDecipher = undefined

aeadEncipherDetached :: Low.CipherKey -> Low.CipherNonce -> Message -> CipherAD -> (CipherTag, Ciphertext)
aeadEncipherDetached = undefined

aeadDecipherDetached :: Low.CipherKey -> Low.CipherNonce -> CipherTag -> Ciphertext -> CipherAD -> Maybe Message
aeadDecipherDetached = undefined


--



type CipherKey = Low.CipherKey

newCipherKey' :: (MonadRandomIO m) => Cipher -> m CipherKey
newCipherKey' = newKey . cipherKeySpec

newCipherKeyMaybe :: (MonadRandomIO m) => Int -> Cipher -> m (Maybe CipherKey)
newCipherKeyMaybe sz bc = newKeyMaybe sz (cipherKeySpec bc) 
