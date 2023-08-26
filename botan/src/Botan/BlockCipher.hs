module Botan.BlockCipher where

import Botan.Low.BlockCipher

import Botan.Prelude

-- NOTE: No nonces at this level - these are raw block ciphers.
--  For block ciphers with nonces, see Cipher

type BlockCipherKey = ByteString

data BlockCipherKeySpec
    = BlockCipherKeySpec
    { blockCipherKeyMinimum :: Int
    , blockCipherKeyMaximum :: Int
    , blockCipherKeyModulo  :: Int
    }

--

blockCipherCtxInit :: BlockCipher -> BlockCipherCtx
blockCipherCtxInit = blockCipherCtxInitName . blockCipherName

blockCipherCtxInitName :: BlockCipherName -> BlockCipherCtx
blockCipherCtxInitName = unsafePerformIO1 blockCipherCtxInitNameIO

-- TODO:
-- blockCipherCtxBlockCipher
--     :: BlockCipherCtx  -- ^ The cipher object
--     -> BlockCipher
-- blockCipherCtxName = undefined

blockCipherCtxName
    :: BlockCipherCtx  -- ^ The cipher object
    -> BlockCipherName
blockCipherCtxName = unsafePerformIO1 blockCipherCtxNameIO

blockCipherCtxBlockSize
    :: BlockCipherCtx  -- ^ The cipher object
    -> Int
blockCipherCtxBlockSize = unsafePerformIO1 blockCipherCtxBlockSizeIO

blockCipherCtxGetKeyspec
    :: BlockCipherCtx  -- ^ The cipher object
    -> BlockCipherKeySpec
blockCipherCtxGetKeyspec ctx = unsafePerformIO $ do
    (mn,mx,md) <- blockCipherCtxGetKeyspecIO ctx
    return $ BlockCipherKeySpec mn mx md

blockCipherCtxEncrypt :: BlockCipherCtx -> BlockCipherKey -> Plaintext -> Ciphertext
blockCipherCtxEncrypt ctx key pt = unsafePerformIO $ do
    blockCipherCtxSetKeyIO ctx key
    ct <- blockCipherCtxEncryptBlocksIO ctx pt
    blockCipherCtxClearIO ctx
    return ct

blockCipherCtxDecrypt :: BlockCipherCtx -> BlockCipherKey -> Ciphertext -> Plaintext
blockCipherCtxDecrypt ctx key ct = unsafePerformIO $ do
    blockCipherCtxSetKeyIO ctx key
    pt <- blockCipherCtxDecryptBlocksIO ctx ct
    blockCipherCtxClearIO ctx
    return pt

blockCipherEncrypt :: BlockCipher -> BlockCipherKey -> Plaintext -> Ciphertext
blockCipherEncrypt = blockCipherCtxEncrypt . blockCipherCtxInit

blockCipherDecrypt :: BlockCipher -> BlockCipherKey -> Ciphertext -> Plaintext
blockCipherDecrypt = blockCipherCtxDecrypt . blockCipherCtxInit

-- Block cipher spec

data AES
    = AES128
    | AES192
    | AES256
    deriving (Show, Eq)

type AESName = ByteString

aesName :: AES -> AESName
aesName AES128 = "AES-128"
aesName AES192 = "AES-192"
aesName AES256 = "AES-256"

data ARIA
    = ARIA128
    | ARIA192
    | ARIA256
    deriving (Show, Eq)

type ARIAName = ByteString

ariaName :: ARIA -> ARIAName
ariaName ARIA128 = "ARIA-128"
ariaName ARIA192 = "ARIA-192"
ariaName ARIA256 = "ARIA-256"

data Camellia
    = Camellia128
    | Camellia192
    | Camellia256
    deriving (Show, Eq)

type CamelliaName = ByteString

camelliaName :: Camellia -> CamelliaName
camelliaName Camellia128 = "Camellia-128"
camelliaName Camellia192 = "Camellia-192"
camelliaName Camellia256 = "Camellia-256"

data BlockCipher128
    = AES AES
    | ARIA ARIA
    | Camellia Camellia
    | Noekeon
    | SEED
    | Serpent
    | SM4
    | Twofish
    deriving (Show, Eq)

type BlockCipher128Name = ByteString

blockCipher128Name :: BlockCipher128 -> BlockCipher128Name
blockCipher128Name spec = case spec of
    AES aes         -> aesName aes
    ARIA aria       -> ariaName aria
    Camellia cam    -> camelliaName cam
    Noekeon         -> "Noekeon"
    SEED            -> "SEED"
    Serpent         -> "Serpent"
    SM4             -> "SM4"
    Twofish         -> "Twofish"

data BlockCipher
    = BlockCipher128 BlockCipher128
    | Blowfish
    -- | Cascade BlockCipher BlockCipher
    | CAST128
    | DES
    | TripleDES
    | GOST_28147_89
    | IDEA
    -- | Lion HashSpec StreamCipher Int
    | SHACAL2
    | Threefish512
    deriving (Show, Eq)

blockCipherName :: BlockCipher -> BlockCipherName
blockCipherName spec = case spec of
    BlockCipher128 bc128    -> blockCipher128Name bc128
    Blowfish                -> "Blowfish"
    -- Cascade bca bcb -> "Cascade(" <> blockCipherName bca <> "," <> blockCipherName bcb <> ")"
    CAST128                 -> "CAST-128"
    DES                     -> "DES"
    TripleDES               -> "TripleDES"
    GOST_28147_89           -> "GOST-28147-89"
    -- Lion h sc sz    -> "Lion(" <> hashSpecName h <> "," <> streamCipherName sc <> "," <> showBytes sz <> ")"
    IDEA                    -> "IDEA"
    SHACAL2                 -> "SHACAL2"
    Threefish512            -> "Threefish-512"
