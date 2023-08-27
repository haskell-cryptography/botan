module Botan.Cipher where

import Botan.Bindings.Cipher
import Botan.Low.Cipher

import Botan.BlockCipher
import Botan.Error
import Botan.Prelude
import qualified Data.ByteString as ByteString
import Botan.Low.RNG (systemRNGGetIO)

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

-- TODO: type aliases for CipherModeCtx / AEADCtx for safety later 

data CipherDirection
    = CipherEncrypt
    | CipherDecrypt
    
cipherDirectionFlags :: CipherDirection -> CipherInitFlags
cipherDirectionFlags CipherEncrypt = BOTAN_CIPHER_INIT_FLAG_ENCRYPT
cipherDirectionFlags CipherDecrypt = BOTAN_CIPHER_INIT_FLAG_DECRYPT

data CipherKeySpec
    = CipherKeySpec
    { cipherKeyMinimum :: Int
    , cipherKeyMaximum :: Int
    , cipherKeyModulo  :: Int
    }

-- data CipherUpdate
-- pattern BOTAN_CIPHER_UPDATE_FLAG_NONE = 0 :: CipherUpdateFlags -- NOTE: Not canonical flag
-- pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL = 1 :: CipherUpdateFlags

-- NOTE: For EAX and GCM, any length nonces are allowed. OCB allows any value between 8 and 15 bytes.
data Cipher
    = CipherMode CipherMode
    -- | AE AE -- SEE: Note about botan's lack of AE
    | AEAD AEAD

cipherName :: Cipher -> CipherName
cipherName (CipherMode mode) = cipherModeName mode
cipherName (AEAD aead) = aeadName aead

cipherCtxInit :: Cipher -> CipherDirection -> CipherCtx
cipherCtxInit = unsafePerformIO2 cipherCtxInitIO

cipherCtxInitIO :: Cipher -> CipherDirection -> IO CipherCtx
cipherCtxInitIO mode dir = cipherCtxInitNameIO (cipherName mode) (cipherDirectionFlags dir)

data CipherMode
    = CBC BlockCipher CBCPadding
    | CFB BlockCipher Int -- Feedback bits size, default is 8 * block size
    | XTS BlockCipher

cipherModeName :: CipherMode -> CipherName
cipherModeName (CBC bc padding)    = blockCipherName bc <> "/CBC/" <> cbcPaddingName padding
cipherModeName (CFB bc fsz)        = blockCipherName bc <> "/CFB(" <> showBytes fsz <> ")"
cipherModeName (XTS bc)            = blockCipherName bc <> "/XTS"

cipherCtxInitMode :: CipherMode -> CipherDirection -> CipherCtx
cipherCtxInitMode = unsafePerformIO2 cipherCtxInitModeIO

cipherCtxInitModeIO :: CipherMode -> CipherDirection -> IO CipherCtx
cipherCtxInitModeIO mode = cipherCtxInitIO (CipherMode mode)

-- CBC Padding - does this have use elsewhere?
data CBCPadding
    = PKCS7
    | OneAndZeros
    | X9_23
    | ESP
    | CTS
    | NoPadding

cbcPaddingName :: CBCPadding -> ByteString
cbcPaddingName PKCS7       = "PKCS7"
cbcPaddingName OneAndZeros = "OneAndZeros"
cbcPaddingName X9_23       = "X9.23"
cbcPaddingName ESP         = "ESP"
cbcPaddingName CTS         = "CTS"
cbcPaddingName NoPadding   = "NoPadding"

-- NOTE: "GCM is defined for the tag sizes 4, 8, 12 - 16 bytes" but may actually accept any 1-16
-- NOTE: Wiki: "Both GCM and GMAC can accept initialization vectors of arbitrary length." - untested
-- NOTE: Wiki: "GCM uses a block cipher with block size 128 bits" - not all block ciphers are supported
-- NOTE: RFC 7253 - The OCB Authenticated-Encryption Algorithm
--  "The blockcipher must have a 128-bit blocksize.""
-- NOTE: Wiki, RFC 7253, Botan docs: GCM, OCB, SIV, CCM: "Requires a 128-bit block cipher."
-- NOTE: Botan Docs: EAX: "Supports 128-bit, 256-bit and 512-bit block ciphers."
--  Note that that is currently all block ciphers (at least, those with default values)
data AEAD
    = ChaCha20Poly1305
    | GCM BlockCipher Int -- Tag size, default is 16
    | OCB BlockCipher Int -- Tag size, default is 16
    | EAX BlockCipher Int -- Tag size, default is block size
    | SIV BlockCipher
    | CCM BlockCipher Int Int -- Tag size and L, default tag size is 16 and L is 3

aeadName :: AEAD -> CipherName
aeadName ChaCha20Poly1305   = "ChaCha20Poly1305"
aeadName (GCM bc tsz)       = blockCipherName bc <> "/GCM(" <> showBytes tsz <> ")"
aeadName (OCB bc tsz)       = blockCipherName bc <> "/OCB(" <> showBytes tsz <> ")"
aeadName (EAX bc tsz)       = blockCipherName bc <> "/EAX(" <> showBytes tsz <> ")"
aeadName (SIV bc)           = blockCipherName bc <> "/SIV"
aeadName (CCM bc tsz l)     = blockCipherName bc <> "/CCM(" <> showBytes tsz <> "," <> showBytes l <> ")"

cipherCtxInitAEAD :: AEAD -> CipherDirection -> CipherCtx
cipherCtxInitAEAD = unsafePerformIO2 cipherCtxInitAEADIO

cipherCtxInitAEADIO :: AEAD -> CipherDirection -> IO CipherCtx
cipherCtxInitAEADIO aead = cipherCtxInitIO (AEAD aead)

-- Stream ciphers

-- NOTE: Need to patch botan stream cipher like Z-Botan
-- Stream ciphers operate at the bit level by XORing the plaintext
--  against a stream of pseudorandom bits, and as such do not exhibit
--  the avalanche effect seen in hashing and block ciphers
{-
type StreamCipherName = ByteString

data StreamCipher
    = CTR_BE BlockCipher
    | OFB BlockCipher
    | ChaCha8
    | ChaCha12
    | ChaCha20
    | Salsa20
    | SHAKE128XOF
    | RC4
  deriving (Show, Eq)

streamCipherName :: StreamCipher -> StreamCipherName
streamCipherName s = case s of
    CTR_BE b    -> "CTR-BE(" <> blockCipherName b <> ")"
    OFB b       -> "OFB(" <> blockCipherName b <> ")"
    ChaCha8     -> "ChaCha(8)"
    ChaCha12    -> "ChaCha(12)"
    ChaCha20    -> "ChaCha(20)"
    Salsa20     -> "Salsa20"
    SHAKE128XOF ->  "SHAKE-128"
    RC4         -> "RC4"
-}

--

cipherCtxInitName :: CipherName -> CipherDirection -> CipherCtx
cipherCtxInitName name dir = unsafePerformIO $ cipherCtxInitNameIO name (cipherDirectionFlags dir)

cipherCtxName :: CipherCtx -> CipherName
cipherCtxName = unsafePerformIO1 cipherCtxNameIO

cipherCtxOutputLength :: CipherCtx -> Int -> Int
cipherCtxOutputLength = unsafePerformIO2 cipherCtxOutputLengthIO

cipherCtxValidNonceLength :: CipherCtx -> Int -> Bool
cipherCtxValidNonceLength = unsafePerformIO2 cipherCtxValidNonceLengthIO

cipherCtxGetTagLength :: CipherCtx -> Int
cipherCtxGetTagLength = unsafePerformIO1 cipherCtxGetTagLengthIO

cipherCtxGetDefaultNonceLength :: CipherCtx -> Int
cipherCtxGetDefaultNonceLength = unsafePerformIO1 cipherCtxGetDefaultNonceLengthIO

cipherCtxGetUpdateGranularity :: CipherCtx -> Int
cipherCtxGetUpdateGranularity = unsafePerformIO1 cipherCtxGetUpdateGranularityIO

cipherCtxGetIdealUpdateGranularity :: CipherCtx -> Int
cipherCtxGetIdealUpdateGranularity = unsafePerformIO1 cipherCtxGetIdealUpdateGranularityIO

cipherCtxGetKeyspec :: CipherCtx -> CipherKeySpec
cipherCtxGetKeyspec ctx = unsafePerformIO $ do
    (mn,mx,md) <- cipherCtxGetKeyspecIO ctx
    return $ CipherKeySpec mn mx md

-- TODO: Consider flipping
cipherCtxSetKey :: CipherCtx -> CipherKey -> CipherCtx
cipherCtxSetKey ctx key = unsafePerformIO $ do
    cipherCtxSetKeyIO ctx key
    return ctx

cipherCtxReset :: CipherCtx -> CipherCtx
cipherCtxReset ctx = unsafePerformIO $ do
    cipherCtxResetIO ctx
    return ctx

-- TODO: Consider flipping
cipherCtxSetAssociatedData :: CipherCtx -> ByteString -> CipherCtx
cipherCtxSetAssociatedData ctx ad = unsafePerformIO $ do
    cipherCtxSetAssociatedDataIO ctx ad
    return ctx

-- aeadCtxSetAssociatedData :: AEADCtx -> ByteString -> AEADCtx
-- aeadCtxSetAssociatedData = cipherCtxSetAssociatedData

-- TODO: Consider flipping
cipherCtxStart :: CipherCtx -> CipherNonce -> CipherCtx
cipherCtxStart ctx nonce = unsafePerformIO $ do
    cipherCtxStartIO ctx nonce
    return ctx

-- TODO: Consider flipping

-- cipherCtxUpdateIO :: CipherCtx -> CipherUpdateFlags -> Int -> ByteString -> IO (Int,ByteString)
-- cipherCtxUpdate :: CipherCtx -> Bool -> Int -> ByteString -> (Int,ByteString)
-- cipherCtxUpdate ctx final = ...

-- NOTE:
cipherCtxClear :: CipherCtx -> CipherCtx
cipherCtxClear ctx = unsafePerformIO $ do
    cipherCtxClearIO ctx
    return ctx

--



--

type CipherAD = ByteString

data CipherTag

type CombinedCiphertext = ByteString

-- NOTE: Picks min key size
newCipherKey :: Cipher -> IO CipherKey
newCipherKey ciph = do
    -- NOTE: Throwaway context
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    (mn,mx,md) <- cipherCtxGetKeyspecIO ctx
    -- TODO: Better random source
    systemRNGGetIO $ if md == 1
        then min 32 mx
        else mn

newCipherNonce :: Cipher -> IO CipherNonce
newCipherNonce ciph = do
    -- NOTE: Throwaway context
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    n <- cipherCtxGetDefaultNonceLengthIO ctx
    -- TODO: Better random source
    systemRNGGetIO n

encipher :: Cipher -> CipherKey -> CipherNonce -> Message -> Ciphertext
encipher ciph k n msg = unsafePerformIO $ do
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    cipherCtxSetKeyIO ctx k
    cipherCtxStartIO ctx n
    cipherCtxUpdateFinalizeClearIO ctx msg

-- TODO: Move to botan-low
cipherCtxUpdateBlockIO :: CipherCtx -> ByteString -> IO ByteString
cipherCtxUpdateBlockIO ctx block = do
    let outSz = ByteString.length block
    (_,block') <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_NONE outSz block
    return block'

-- TODO: Move to botan-low
cipherCtxFinalizeBlockIO :: CipherCtx -> ByteString -> IO ByteString
cipherCtxFinalizeBlockIO ctx block = do
    tagSz <- cipherCtxGetTagLengthIO ctx
    let outSz = ByteString.length block + tagSz
    (_,block'tag) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL tagSz block
    return block'tag

-- TODO: Move to botan-low
cipherCtxFinalizeTagIO :: CipherCtx -> IO (Maybe ByteString)
cipherCtxFinalizeTagIO ctx = do
    tag <- cipherCtxFinalizeBlockIO ctx ""
    if tag == ""
        then return Nothing
        else return (Just tag)

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeBlocksIO :: CipherCtx -> [ByteString] -> IO [ByteString]
cipherCtxUpdateFinalizeBlocksIO ctx [block]      = do
    finalBlockTag <- cipherCtxFinalizeBlockIO ctx block
    return [finalBlockTag]
cipherCtxUpdateFinalizeBlocksIO ctx (block:rest) = do
    block' <- cipherCtxUpdateBlockIO ctx block
    (block:) <$> cipherCtxUpdateFinalizeBlocksIO ctx rest

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeOneShotIO :: CipherCtx -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeOneShotIO ctx bytes = do
    tagSz <- cipherCtxGetTagLengthIO ctx
    (consumed,msg) <- cipherCtxUpdateIO ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (ByteString.length bytes + tagSz) bytes
    return msg

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeIO :: CipherCtx -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeIO ctx msg = do
    g <- cipherCtxGetIdealUpdateGranularityIO ctx
    if g == 1
        then cipherCtxUpdateFinalizeOneShotIO ctx msg
        else do
            blocks <- cipherCtxUpdateFinalizeBlocksIO ctx (splitBlocks g msg)
            return $! ByteString.concat blocks

-- TODO: Move to botan-low
cipherCtxUpdateFinalizeClearIO :: CipherCtx -> Message -> IO Ciphertext
cipherCtxUpdateFinalizeClearIO ctx msg = do
    dg <- cipherCtxUpdateFinalizeIO ctx msg
    cipherCtxClearIO ctx
    return dg

-- TODO: Make Maybe instead of throwing
-- decipher :: CipherKey -> CipherNonce -> Ciphertext -> Maybe Message
decipher :: Cipher -> CipherKey -> CipherNonce -> Ciphertext -> Message
decipher ciph k n msg = unsafePerformIO $ do
    ctx <- cipherCtxInitIO ciph CipherDecrypt
    cipherCtxSetKeyIO ctx k
    cipherCtxStartIO ctx n
    cipherCtxUpdateFinalizeClearIO ctx msg

-- AE

-- TODO: Summarize attributes of each:
--  https://crypto.stackexchange.com/a/205
-- data AEMode
--     = EncryptThenMac -- Use this one
--     | EncryptAndMac
--     | MacThenEncrypt
-- Or just assume EtM

aeEncipher :: CipherKey -> CipherNonce -> Message -> CombinedCiphertext
aeEncipher = undefined

aeDecipher :: CipherKey -> CipherNonce -> CombinedCiphertext -> Maybe Message
aeDecipher = undefined

aeEncipherDetached :: CipherKey -> CipherNonce -> Message -> (CipherTag, Ciphertext)
aeEncipherDetached = undefined

aeDecipherDetached :: CipherKey -> CipherNonce -> Ciphertext -> Maybe Message
aeDecipherDetached = undefined

-- AEAD

aeadEncipher :: CipherKey -> CipherNonce -> Message -> CipherAD -> CombinedCiphertext
aeadEncipher = undefined

aeadDecipher :: CipherKey -> CipherNonce -> CombinedCiphertext -> CipherAD -> Maybe Message
aeadDecipher = undefined

aeadEncipherDetached :: CipherKey -> CipherNonce -> Message -> CipherAD -> (CipherTag, Ciphertext)
aeadEncipherDetached = undefined

aeadDecipherDetached :: CipherKey -> CipherNonce -> CipherTag -> Ciphertext -> CipherAD -> Maybe Message
aeadDecipherDetached = undefined