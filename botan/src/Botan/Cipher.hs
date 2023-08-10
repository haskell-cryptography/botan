module Botan.Cipher where

import Botan.Bindings.Cipher
import Botan.Low.Cipher

import Botan.BlockCipher
import Botan.Error
import Botan.Prelude
import qualified Data.ByteString as ByteString

-- Cipher spec

-- NOTE: For classes, we have:
--  Cipher / Encryption
--  AE / Authenticated encryption
--  AEAD / Authenticated encryption with associated data (not all AE has AD)

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

data CipherUpdate
pattern BOTAN_CIPHER_UPDATE_FLAG_NONE = 0 :: CipherUpdateFlags -- NOTE: Not canonical flag
pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL = 1 :: CipherUpdateFlags

data CipherMode
    = Cipher Cipher
    -- Botan contains no AE without AD? Or just supply "" for AD.
    -- | AE AE
    | AEAD AEAD

cipherModeName :: CipherMode -> CipherName
cipherModeName (Cipher cipher) = cipherName cipher
cipherModeName (AEAD aead) = aeadName aead

type CipherModeCtx = CipherCtx

cipherModeInitIO :: CipherMode -> CipherDirection -> IO CipherModeCtx
cipherModeInitIO mode dir = cipherCtxInitNameIO (cipherModeName mode) (cipherDirectionFlags dir)

data Cipher
    = CBC BlockCipher CBCPadding
    | CFB BlockCipher Int -- Feedback bits size, default is 8 * block size
    | XTS BlockCipher

cipherName :: Cipher -> CipherName
cipherName (CBC bc padding)    = blockCipherName bc <> "/CBC/" <> cbcPaddingName padding
cipherName (CFB bc fsz)        = blockCipherName bc <> "/CFB(" <> showBytes fsz <> ")"
cipherName (XTS bc)            = blockCipherName bc <> "/XTS"

cipherInitIO :: Cipher -> CipherDirection -> IO CipherCtx
cipherInitIO cipher = cipherModeInitIO (Cipher cipher)

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

type AEADDirection = CipherDirection
type AEADCtx = CipherCtx

aeadInitIO :: AEAD -> AEADDirection -> IO AEADCtx
aeadInitIO aead = cipherModeInitIO (AEAD aead)

aeadInit :: AEAD -> AEADDirection -> AEADCtx
aeadInit = unsafePerformIO2 aeadInitIO

-- Stream ciphers

-- NOTE: Need to patch botan stream cipher like Z-Botan
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

--

-- TODO:

-- cipherEncrypt :: Cipher -> CipherKey -> CipherNonce -> Plaintext -> Ciphertext
-- cipherEncrypt = undefined

-- cipherDecrypt :: Cipher -> CipherKey -> CipherNonce -> Ciphertext -> Plaintext
-- cipherDecrypt = undefined

--

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
-- cipherCtxUpdate :: CipherCtx -> Bool -> Int -> ByteString -> (Int,ByteString)
-- cipherCtxUpdate ctx final = ...

cipherCtxClear :: CipherCtx -> CipherCtx
cipherCtxClear ctx = unsafePerformIO $ do
    cipherCtxClearIO ctx
    return ctx
