module Botan.Cipher where

-- import Botan.Bindings.Cipher
--     ( CipherInitFlags(..)
--     , pattern BOTAN_CIPHER_INIT_FLAG_ENCRYPT
--     , pattern BOTAN_CIPHER_INIT_FLAG_DECRYPT
--     , CipherUpdateFlags(..)
--     , pattern BOTAN_CIPHER_UPDATE_FLAG_NONE
--     , pattern BOTAN_CIPHER_UPDATE_FLAG_FINAL
--     )
-- import Botan.Low.Cipher (Low.Cipher(..), CipherName(..), CipherKey(..), CipherNonce(..))
import qualified Botan.Low.Cipher as Low

import Botan.BlockCipher ( blockCipherName, BlockCipher )
import Botan.Error
import Botan.Prelude
import qualified Data.ByteString as ByteString
import Botan.Low.RNG (systemRNGGet)

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

data CipherKeySpec
    = CipherKeySpec
    { cipherKeyMinimum :: Int
    , cipherKeyMaximum :: Int
    , cipherKeyModulo  :: Int
    }

-- NOTE: For EAX and GCM, any length nonces are allowed. OCB allows any value between 8 and 15 bytes.
data Cipher
    = CipherMode CipherMode
    -- | AE AE -- SEE: Note about botan's lack of AE
    | AEAD AEAD

cipherName :: Cipher -> Low.CipherName
cipherName (CipherMode mode) = cipherModeName mode
cipherName (AEAD aead) = aeadName aead

cipherCtxInit :: Cipher -> CipherDirection -> Low.Cipher
cipherCtxInit = unsafePerformIO2 cipherCtxInitIO

cipherCtxInitIO :: Cipher -> CipherDirection -> IO Low.Cipher
cipherCtxInitIO mode dir = Low.cipherInit (cipherName mode) (cipherDirectionFlags dir)

data CipherMode
    = CBC BlockCipher CBCPadding
    | CFB BlockCipher Int -- Feedback bits size, default is 8 * block size
    | XTS BlockCipher

cipherModeName :: CipherMode -> Low.CipherName
cipherModeName (CBC bc padding)    = Low.cbcMode (blockCipherName bc) (cbcPaddingName padding)
cipherModeName (CFB bc fsz)        = Low.cfbMode' (blockCipherName bc) fsz
cipherModeName (XTS bc)            = Low.xtsMode (blockCipherName bc)

cipherCtxInitMode :: CipherMode -> CipherDirection -> Low.Cipher
cipherCtxInitMode = unsafePerformIO2 cipherCtxInitModeIO

cipherCtxInitModeIO :: CipherMode -> CipherDirection -> IO Low.Cipher
cipherCtxInitModeIO mode = cipherCtxInitIO (CipherMode mode)

-- CBC Padding - does this have use elsewhere?
data CBCPadding
    = PKCS7
    | OnesAndZeroes
    | X9_23
    | ESP   -- NOTE: RFC 4304
    | CTS   -- NOTE: Ciphertext stealing
    | NoPadding

cbcPaddingName :: CBCPadding -> ByteString
cbcPaddingName PKCS7         = Low.PKCS7
cbcPaddingName OnesAndZeroes = Low.OnesAndZeroes
cbcPaddingName X9_23         = Low.X9_23
cbcPaddingName ESP           = Low.ESP
cbcPaddingName CTS           = Low.CTS
cbcPaddingName NoPadding     = Low.NoPadding

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
    | GCM BlockCipher Int -- Tag size, default is 16
    | OCB BlockCipher Int -- Tag size, default is 16
    | EAX BlockCipher Int -- Tag size, default is block size
    | SIV BlockCipher
    | CCM BlockCipher Int Int -- Tag size and L, default tag size is 16 and L is 3

aeadName :: AEAD -> Low.CipherName
aeadName ChaCha20Poly1305   = Low.chaCha20Poly1305
aeadName (GCM bc tsz)       = Low.gcmMode' (blockCipherName bc) tsz
aeadName (OCB bc tsz)       = Low.ocbMode' (blockCipherName bc) tsz
aeadName (EAX bc tsz)       = Low.eaxMode' (blockCipherName bc) tsz
aeadName (SIV bc)           = Low.sivMode (blockCipherName bc)
aeadName (CCM bc tsz l)     = Low.ccmMode' (blockCipherName bc) tsz l

cipherCtxInitAEAD :: AEAD -> CipherDirection -> Low.Cipher
cipherCtxInitAEAD = unsafePerformIO2 cipherCtxInitAEADIO

cipherCtxInitAEADIO :: AEAD -> CipherDirection -> IO Low.Cipher
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
    return $ CipherKeySpec mn mx md

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
    systemRNGGet $ if md == 1
        then min 32 mx
        else mn

newCipherNonce :: Cipher -> IO Low.CipherNonce
newCipherNonce ciph = do
    -- NOTE: Throwaway context
    ctx <- cipherCtxInitIO ciph CipherEncrypt
    n <- Low.cipherGetDefaultNonceLength ctx
    -- TODO: Better random source
    systemRNGGet n

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