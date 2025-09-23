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

module Botan.Low.Cipher
(

-- * Cipher
-- $introduction

-- * Usage
-- $usage

  Cipher(..)
, CipherName
, CipherKey
, CipherNonce
, CipherInitFlags
, pattern MaskDirection
, pattern Encrypt
, pattern Decrypt
, CipherUpdateFlags
, pattern CipherUpdate
, pattern CipherFinal
, withCipher
, cipherInit
, cipherDestroy
, cipherName
, cipherOutputLength
, cipherValidNonceLength
, cipherGetTagLength
, cipherGetDefaultNonceLength
, cipherGetUpdateGranularity
, cipherGetIdealUpdateGranularity
, cipherQueryKeylen
, cipherGetKeyspec
, cipherSetKey
, cipherReset
, cipherSetAssociatedData
, cipherStart
, cipherUpdate
, cipherEncrypt
, cipherDecrypt
, cipherClear

-- * Cipher modes
, CipherMode
, cbcMode
, cfbMode
, cfbModeWith
, xtsMode

-- ** CBC padding
, CBCPaddingName
, pattern PKCS7
, pattern OneAndZeros
, pattern X9_23
, pattern ESP
, pattern CTS
, pattern NoPadding

-- * AEAD
, AEADName
, pattern ChaCha20Poly1305
, chaCha20Poly1305

-- * AEAD modes
, AEADMode
, gcmMode
, gcmModeWith
, ocbMode
, ocbModeWith
, eaxMode
, eaxModeWith
, sivMode
, ccmMode
, ccmModeWith

-- * Convenience
, cipherEncryptOnline
, cipherDecryptOnline
, cipherModes
, cbcPaddings
, aeads
, allCiphers

) where

import qualified Data.ByteString as ByteString

import           Botan.Bindings.Cipher

import           Botan.Low.BlockCipher
import           Botan.Low.Error
import           Botan.Low.Make
import           Botan.Low.Prelude
import           Botan.Low.Remake

{- $introduction

A `cipher` mode is a cryptographic algorithm suitable for encrypting and
decrypting large quantities of arbitrarily-sized data. An `aead` is a cipher
mode that also used to provide authentication of the ciphertext, potentially
with plaintext `associated data`.

-}

{- $usage

Unless you need a specific `cipher` or `aead`, it is strongly recommended that you use the `cbcMode AES256 PKCS7` and `gcmMode AES256` (or `ChaCha20Poly1305`) algorithms respectively.

> import Botan.Low.Cipher
> encrypter <- cipherInit ChaCha20Poly1305 Encrypt

To use a cipher, we first need to generate (if we haven't already) a secret key.

> import Botan.Low.RNG
> rng <- rngInit "user"
> -- We will use the maximum key size; ChaCha20Poly1305 keys are always 32 bytes
> (_,keySize,_) <- cipherGetKeyspec encrypter
> -- Block cipher keys are randomly generated
> key <- rngGet rng keySize

After the key is generated, we must set it as the cipher key:

> cipherSetKey encrypter key

If the cipher is an `aead`, we may also set the `associated data`:

> cipherSetAssociatedData encrypter "Fee fi fo fum!"

To ensure that the key is not leaked, we should generate a new nonce for every encryption. The range of allowed nonce sizes depends on the specific algorithm.

> import Botan.Low.RNG
> -- The default ChaCha20Poly1305 nonce is always 12 bytes.
> nonceSize <- cipherGetDefaultNonceLength encrypter
> nonce <- rngGet rng nonceSize

To encrypt a message, it must be a multiple of the block size. If the cipher was an aead, the authentication tag will automatically be included in the ciphertext

> -- Rarely, some cipher modes require that the message size be aligned to the block size
> -- Consult algorithm-specific documentation if this occurs.
> message = "I smell the blood of an Englishman!"
> cipherStart encrypter nonce
> ciphertext <- cipherEncrypt encrypter message

To decrypt a message, we run the same process with a decrypter, using the same `key` and `nonce` to decode the `ciphertext`:

> decrypter <- cipherInit ChaCha20Poly1305 Decrypt
> cipherSetKey decrypter key
> cipherSetAssociatedData decrypter "Fee fi fo fum!"
> cipherStart decrypter nonce
> plaintext <- cipherDecrypt decrypter ciphertext
> message == plaintext -- True

You can completely clear a cipher's state, leaving it ready for reuse:

> cipherClear encrypter
> -- You'll have to set the key, nonce, (and ad, if aead) again.
> cipherSetKey encrypter anotherKey
> cipherStart encrypter anotherNonce
> cipherSetAssociatedData encrypter anotherAD
> -- Process another message
> anotherCiphertext <- cipherEncrypt encrypter anotherMessage

If you are encrypting or decrypting multiple messages with the same key, you can reset the cipher instead of clearing it, leaving the key set:

> cipherClear encrypter
> -- This is equivalent to calling cipherClear followed by cipherSetKey with the original key.
> -- You'll have to set the nonce  (and ad, if aead) again, but not the key.
> cipherStart encrypter anotherNonce
> cipherSetAssociatedData encrypter anotherAD
> -- Process another message with the same key
> anotherCiphertext <- cipherEncrypt encrypter anotherMessage

-}

-- NOTE: This is *symmetric* ciphers  For the 'raw' interface to ECB mode block ciphers, see BlockCipher.hs

newtype Cipher = MkCipher { getCipherForeignPtr :: ForeignPtr BotanCipherStruct }

withCipher     :: Cipher -> (BotanCipher -> IO a) -> IO a
-- | Destroy the cipher object immediately
cipherDestroy  :: Cipher -> IO ()
createCipher   :: (Ptr BotanCipher -> IO CInt) -> IO Cipher
(_, withCipher, cipherDestroy, createCipher, _)
    = mkBindings
        MkBotanCipher runBotanCipher
        MkCipher getCipherForeignPtr
        botan_cipher_destroy

type CipherInitFlags = Word32
type CipherUpdateFlags = Int
type CipherNonce = ByteString
type CipherKey = ByteString

type CipherName = ByteString

type CipherMode = ByteString

type CBCPaddingName = ByteString

pattern PKCS7
    ,   OneAndZeros
    ,   X9_23
    ,   ESP
    ,   CTS
    ,   NoPadding
    ::  CBCPaddingName

pattern PKCS7       = BOTAN_CBC_PADDING_PKCS7
pattern OneAndZeros = BOTAN_CBC_PADDING_ONE_AND_ZEROS
pattern X9_23       = BOTAN_CBC_PADDING_X9_23
pattern ESP         = BOTAN_CBC_PADDING_ESP
pattern CTS         = BOTAN_CBC_PADDING_CTS
pattern NoPadding   = BOTAN_CBC_PADDING_NO_PADDING

cbcMode :: BlockCipherName -> CBCPaddingName -> CipherName
cbcMode bc padding = bc // BOTAN_CIPHER_MODE_CBC // padding

cfbMode :: BlockCipherName -> CipherName
cfbMode bc = bc // BOTAN_CIPHER_MODE_CFB

cfbModeWith :: BlockCipherName -> Int -> CipherName
cfbModeWith bc feedbackSz = cfbMode bc /$ showBytes feedbackSz

xtsMode :: BlockCipherName -> CipherName
xtsMode bc = bc // BOTAN_CIPHER_MODE_XTS

type AEADName = CipherName

pattern ChaCha20Poly1305 :: CipherName
pattern ChaCha20Poly1305 = BOTAN_AEAD_CHACHA20POLY1305

chaCha20Poly1305 :: AEADName
chaCha20Poly1305 = BOTAN_AEAD_CHACHA20POLY1305

type AEADMode = ByteString

gcmMode :: BlockCipher128Name -> AEADName
gcmMode bc = bc // BOTAN_AEAD_MODE_GCM

gcmModeWith :: BlockCipher128Name -> Int -> AEADName
gcmModeWith bc tagSz = gcmMode bc /$ showBytes tagSz

ocbMode :: BlockCipher128Name -> AEADName
ocbMode bc = bc // BOTAN_AEAD_MODE_OCB

ocbModeWith :: BlockCipher128Name -> Int -> AEADName
ocbModeWith bc tagSz = ocbMode bc /$ showBytes tagSz

eaxMode :: BlockCipherName -> AEADName
eaxMode bc = bc // BOTAN_AEAD_MODE_EAX

eaxModeWith :: BlockCipherName -> Int -> AEADName
eaxModeWith bc tagSz = eaxMode bc /$ showBytes tagSz

sivMode :: BlockCipher128Name -> AEADName
sivMode bc = bc // BOTAN_AEAD_MODE_SIV

ccmMode :: BlockCipher128Name -> AEADName
ccmMode bc = bc // BOTAN_AEAD_MODE_CCM

ccmModeWith :: BlockCipher128Name -> Int -> Int -> AEADName
ccmModeWith bc tagSz l = ccmMode bc /$ showBytes tagSz <> "," <> showBytes l

cbcPaddings :: [CBCPaddingName]
cbcPaddings =
    [ PKCS7
    , OneAndZeros
    , X9_23
    , ESP
    , CTS
    , NoPadding
    ]

cipherModes :: [CipherName]
cipherModes = concat
    [ [ cbcMode bc pd | bc <- allBlockCiphers, pd <- cbcPaddings ]
    , [ cfbMode bc    | bc <- allBlockCiphers ]
    , [ xtsMode bc    | bc <- allBlockCiphers ]
    ]

aeads :: [AEADName]
aeads = concat
    [ [ chaCha20Poly1305 ]
    , [ gcmMode bc | bc <- blockCipher128s ]
    , [ ocbMode bc | bc <- blockCipher128s ]
    , [ eaxMode bc | bc <- blockCiphers ] -- WARNING: Why just blockCiphers, why not allBlockCiphers?
    , [ sivMode bc | bc <- blockCipher128s ]
    , [ ccmMode bc | bc <- blockCipher128s ]
    ]

allCiphers :: [CipherName]
allCiphers = cipherModes ++ aeads

-- TODO: Rename CipherMaskDirection, CipherEncrypt, CipherDecrypt;
--  Leave slim terminology for botan
pattern MaskDirection
    ,   Encrypt         -- ^ May be renamed Encipher to avoid confusion with PKEncrypt
    ,   Decrypt         -- ^ May be renamed Decipher to avoid confusion with PKDecrypt
    ::  CipherInitFlags

pattern MaskDirection = BOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
pattern Encrypt = BOTAN_CIPHER_INIT_FLAG_ENCRYPT
pattern Decrypt = BOTAN_CIPHER_INIT_FLAG_DECRYPT

pattern CipherUpdate
    ,   CipherFinal
    ::  CipherUpdateFlags

pattern CipherUpdate    = BOTAN_CIPHER_UPDATE_FLAG_NONE
pattern CipherFinal     = BOTAN_CIPHER_UPDATE_FLAG_FINAL

-- |Initialize a cipher object
cipherInit
    :: CipherName       -- ^ __name__
    -> CipherInitFlags  -- ^ __flags__
    -> IO Cipher        -- ^ __cipher__
cipherInit = mkCreateObjectCString1 createCipher botan_cipher_init

-- |Return the name of the cipher object
cipherName
    :: Cipher           -- ^ __cipher__
    -> IO CipherName    -- ^ __name__
cipherName = mkGetCString withCipher botan_cipher_name

-- |Return the output length of this cipher, for a particular input length.
--
--  WARNING: This function is of limited use. From the C++ docs:
--   /**
--   * Returns the size of the output if this transform is used to process a
--   * message with input_length bytes. In most cases the answer is precise.
--   * If it is not possible to precise (namely for CBC decryption) instead an
--   * upper bound is returned.
--   */
--  We need to explicitly calculate padding + tag length
cipherOutputLength
    :: Cipher   -- ^ __cipher__
    -> Int      -- ^ __in_len__
    -> IO Int   -- ^ __out_len__
cipherOutputLength = mkGetSize_csize withCipher botan_cipher_output_length

-- NOTE: Unique function form?
-- |Return if the specified nonce length is valid for this cipher
-- NOTE: This just always seems to return 'True', even for -1 and maxBound
cipherValidNonceLength
    :: Cipher   -- ^ __cipher__
    -> Int      -- ^ __nl__
    -> IO Bool
cipherValidNonceLength = mkGetBoolCode_csize withCipher botan_cipher_valid_nonce_length

-- |Get the tag length of the cipher (0 for non-AEAD modes)
cipherGetTagLength
    :: Cipher   -- ^ __cipher__
    -> IO Int   -- ^ __tag_size__
cipherGetTagLength = mkGetSize withCipher botan_cipher_get_tag_length

-- |Get the default nonce length of this cipher
cipherGetDefaultNonceLength
    :: Cipher   -- ^ __cipher__
    -> IO Int   -- ^ __nl__
cipherGetDefaultNonceLength = mkGetSize withCipher botan_cipher_get_default_nonce_length

-- |Return the update granularity of the cipher; botan_cipher_update must be
--  called with blocks of this size, except for the final.
cipherGetUpdateGranularity
    :: Cipher   -- ^ __cipher__
    -> IO Int   -- ^ __ug__
cipherGetUpdateGranularity = mkGetSize withCipher botan_cipher_get_update_granularity

-- |Return the ideal update granularity of the cipher. This is some multiple of the
--  update granularity, reflecting possibilities for optimization.
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherGetIdealUpdateGranularity
    :: Cipher   -- ^ __cipher__
    -> IO Int   -- ^ __ug__
cipherGetIdealUpdateGranularity = mkGetSize withCipher botan_cipher_get_ideal_update_granularity

-- |Get information about the key lengths.
cipherQueryKeylen
    :: Cipher       -- ^ __cipher__
    -> IO (Int,Int) -- ^ __(min,max)__
cipherQueryKeylen = mkGetSizes2 withCipher botan_cipher_query_keylen
{-# DEPRECATED cipherQueryKeylen "Prefer cipherGetKeyspec." #-}

-- |Get information about the supported key lengths.
cipherGetKeyspec
    :: Cipher           -- ^ __cipher__
    -> IO (Int,Int,Int) -- ^ __(min,max,mod)__
cipherGetKeyspec = mkGetSizes3 withCipher botan_cipher_get_keyspec

-- |Set the key for this cipher object
cipherSetKey
    :: Cipher       -- ^ __cipher__
    -> ByteString   -- ^ __key__
    -> IO ()
cipherSetKey = mkWithObjectSetterCBytesLen withCipher botan_cipher_set_key

-- |Reset the message specific state for this cipher.
--  Without resetting the keys, this resets the nonce, and any state
--  associated with any message bits that have been processed so far.
--
--  It is conceptually equivalent to calling botan_cipher_clear followed
--  by botan_cipher_set_key with the original key.
cipherReset
    :: Cipher   -- ^ __cipher__
    -> IO ()
cipherReset = mkAction withCipher botan_cipher_reset

-- |Set the associated data. Will fail if cipher is not an AEAD
cipherSetAssociatedData
    :: Cipher       -- ^ __cipher__
    -> ByteString   -- ^ __ad__
    -> IO ()
cipherSetAssociatedData = mkWithObjectSetterCBytesLen withCipher botan_cipher_set_associated_data

-- |Begin processing a new message using the provided nonce
cipherStart
    :: Cipher       -- ^ __cipher__
    -> ByteString   -- ^ __nonce__
    -> IO ()
cipherStart = mkWithObjectSetterCBytesLen withCipher botan_cipher_start

-- |"Encrypt some data"
--
--  This function is ill-documented.
--
--  See the source for authoritative details:
--  https://github.com/randombit/botan/blob/72dc18bbf598f2c3bef81a4fb2915e9c3c524ac4/src/lib/ffi/ffi_cipher.cpp#L133
--
-- Some ciphers (ChaChaPoly, EAX) may consume less input than the reported ideal granularity
cipherUpdate
    :: Cipher               -- ^ __cipher__
    -> CipherUpdateFlags    -- ^ __flags__
    -> Int                  -- ^ __output_size__
    -> ByteString           -- ^ __input_bytes[]__
    -> IO (Int,ByteString)  -- ^ __(input_consumed,output[])__
cipherUpdate ctx flags outputSz input = withCipher ctx $ \ ctxPtr -> do
    unsafeAsBytesLen input $ \ inputPtr inputSz -> do
        alloca $ \ consumedPtr -> do
            alloca $ \ writtenPtr -> do
                output <- allocBytes outputSz $ \ outputPtr -> do
                    throwBotanIfNegative_ $ botan_cipher_update
                        ctxPtr
                        (fromIntegral flags)
                        outputPtr
                        (fromIntegral outputSz)
                        writtenPtr
                        (ConstPtr inputPtr)
                        inputSz
                        consumedPtr
                consumed <- fromIntegral <$> peek consumedPtr
                written <- fromIntegral <$> peek writtenPtr
                -- NOTE: The safety of this function is suspect - may require deepseq
                let processed = ByteString.take written output
                    in processed `seq` return (consumed,processed)

{- |
Encrypt and finalize a complete piece of data.

This is not a canonical Botan C/C++ function.
-}
cipherEncrypt :: Cipher -> ByteString -> IO ByteString
cipherEncrypt = cipherEncryptOffline

{- |
Encrypt and finalize a complete piece of data.

This is not a canonical Botan C/C++ function.
-}
cipherDecrypt :: Cipher -> ByteString -> IO ByteString
cipherDecrypt = cipherDecryptOffline

-- |Reset the key, nonce, AD and all other state on this cipher object
cipherClear :: Cipher -> IO ()
cipherClear = mkAction withCipher botan_cipher_clear

{-
Non-standard functions
-}

-- NOTE: out + ug + tag is safe overestimate for encryption
-- NOTE: out + ug - tag may not be a safe overestimate for decryption
{-# DEPRECATED cipherEstimateOutputLength "This will be moved from botan-low to botan" #-}
cipherEstimateOutputLength :: Cipher -> CipherInitFlags -> Int -> IO Int
cipherEstimateOutputLength ctx flags input = do
    o <- cipherOutputLength ctx input  -- NOTE: Flawed but usable
    u <- cipherGetUpdateGranularity ctx -- TODO: When u == 1, it should be just input + t, right?
    t <- cipherGetTagLength ctx
    if flags == BOTAN_CIPHER_INIT_FLAG_ENCRYPT
        then return (o + u + t)
        else return (o + u - t) -- TODO: Maybe just 'o'...

-- NOTE: Offset must be a valid length of the input so far processed
-- NOTE: If (estimated) outputLength input + offset == outputLength (input + offset) then
--  we can just use cipherEstimateOutputLength instead of this
--  However, this may not be completely true due to block alignment requirements
--  For the moment this function exists for clarity.
{-# DEPRECATED cipherEstimateFinalOutputLength "Moving from botan-low to botan" #-}
cipherEstimateFinalOutputLength :: Cipher -> CipherInitFlags -> Int -> Int -> IO Int
cipherEstimateFinalOutputLength ctx flags offset input = do
    len <- cipherEstimateOutputLength ctx flags (offset + input)
    return $ len - offset

-- A better version of cipherUpdate
-- NOTE: It returns (processed,remaining) compared to (consumed,processed)
--  so the processed ciphertext has moved from snd to fst
-- TODO: Use Builder to do this
--  https://hackage.haskell.org/package/bytestring-0.12.0.2/docs/Data-ByteString-Builder.html
-- NOTE: There still is (an efficiency) use for a version that reports only consumed length
--  and defers the computation of the 'remaining' bytestring
{-# DEPRECATED cipherProcess "Moving from botan-low to botan" #-}
cipherProcess :: Cipher -> CipherUpdateFlags -> Int -> ByteString -> IO (ByteString,ByteString)
cipherProcess ctx flags outputSz input = do
    (consumed,processed) <- cipherUpdate ctx flags outputSz input
    -- NOTE: The safety of this function is suspect - may require deepseq
    let remaining = ByteString.drop consumed input
        in processed `seq` remaining `seq` return (processed,remaining)

{-# DEPRECATED cipherProcessOffline "Moving from botan-low to botan" #-}
cipherProcessOffline :: Cipher -> CipherInitFlags -> ByteString -> IO ByteString
cipherProcessOffline ctx flags msg = do
    o <- cipherEstimateOutputLength ctx flags (ByteString.length msg)
    -- snd <$> cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg
    fst <$> cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o msg

{-# WARNING cipherEncryptOffline "May be renamed to cipherEncrypt, may be moved to botan" #-}
cipherEncryptOffline :: Cipher -> ByteString -> IO ByteString
cipherEncryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_ENCRYPT

{-# WARNING cipherDecryptOffline "May be renamed to cipherDecrypt, may be moved to botan" #-}
cipherDecryptOffline :: Cipher -> ByteString -> IO ByteString
cipherDecryptOffline ctx = cipherProcessOffline ctx BOTAN_CIPHER_INIT_FLAG_DECRYPT

{-
Experiments with online processing
-}

-- cipherEncryptOnline :: Cipher -> ByteString -> IO ByteString
-- cipherEncryptOnline ctx msg = do
--     u <- cipherGetUpdateGranularity ctx
--     t <- cipherGetTagLength ctx
--     g <- cipherGetIdealUpdateGranularity ctx
--     ByteString.concat <$> go 0 u t g msg
--     where
--         go i u t g bs = case ByteString.splitAt g bs of
--             (block,"")      -> do
--                 o <- cipherOutputLength ctx (i + ByteString.length block)  -- NOTE: Flawed but usable
--                 (_,encblock) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL (o + u + t - i) block
--                 return [encblock]
--             (block,rest)    -> do
--                 (_,encblock) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
--                 encrest <- go (i + g) u t g rest
--                 return $! encblock : encrest

-- TODO: Consolidate online encipher / decipher
-- TODO: Use Builder to do this
--  https://hackage.haskell.org/package/bytestring-0.12.0.2/docs/Data-ByteString-Builder.html
{-# DEPRECATED cipherEncryptOnline "Moving from botan-low to botan" #-}
cipherEncryptOnline :: Cipher -> ByteString -> IO ByteString
cipherEncryptOnline ctx msg = do
    g <- cipherGetIdealUpdateGranularity ctx
    ByteString.concat <$> go 0 g msg
    where
        go i g bs = case ByteString.splitAt g bs of
            (block,"")      -> do
                o <- cipherEstimateFinalOutputLength ctx BOTAN_CIPHER_INIT_FLAG_ENCRYPT i (ByteString.length block)
                (processed,_) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o block
                return [processed]
            (block,rest)    -> do
                (processed,remaining) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                (processed :) <$> go (i + g) g (remaining <> rest)
                -- Though this following version may be more efficient especially with lazy bytestrings
                --  or builder, though note *which* update function it uses - the original
                -- (consumed,processed) <- cipherUpdate ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                -- (processed :) <$> go (i + g) g (ByteString.drop consumed bs)

-- TODO: Consolidate online encipher / decipher
{-# DEPRECATED cipherDecryptOnline "Moving from botan-low to botan" #-}
cipherDecryptOnline :: Cipher -> ByteString -> IO ByteString
cipherDecryptOnline ctx msg = do
    g <- cipherGetIdealUpdateGranularity ctx
    t <- cipherGetTagLength ctx
    ByteString.concat <$> go 0 g t msg
    where
        go i g t bs = case ByteString.splitAt g bs of
            (block,"")      -> do
                o <- cipherEstimateFinalOutputLength ctx BOTAN_CIPHER_INIT_FLAG_DECRYPT i (ByteString.length block)
                (processed,_) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_FINAL o block
                return [processed]
            (block,rest)    -> do
                (processed,remaining) <- cipherProcess ctx BOTAN_CIPHER_UPDATE_FLAG_NONE g block
                (processed :) <$> go (i + g) g t (remaining <> rest)
