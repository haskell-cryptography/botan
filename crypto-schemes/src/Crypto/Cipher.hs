module Crypto.Cipher where

import Crypto.Prelude

-- TODO: Use MonadRandom to replace RNGCtx arguments

-- TODO: Make generic
-- data family Ctx t

-- class Context t where
--     ctxType :: Ctx t -> t
--     ctxName :: t -> String

-- class Init t where
--     ctxInit :: t -> Ctx t
--     default ctxInit :: (InitParams t) => t -> Ctx t
--     ctxInit t = ctxInitWith t (defaultParams t)

-- data family Params t

-- class InitParams t where
--     defaultParams :: Params t
--     ctxInitWith :: t -> Params t -> Ctx t

-- -- SymmetricKey
-- data family Key a
-- -- NOTE: This way, the key is responsible for validity
-- --  So we don't have failable initializers
-- type family KeySpec a -- SomeKeySpec a

-- class Keyed a where
--     setKey :: Ctx a -> Key a -> Ctx a
--     setKeyIO :: Ctx a -> Key a -> IO ()
--     getKeyspec :: a -> KeySpec a

-- class Cipher c where
--     cipherCtxInit :: Key c -> Ctx c
--     -- cipherCtxName :: Ctx c -> String
--     -- cipherCtxKeySpec :: Ctx c -> KeySpec c
--     cipherName :: c -> String
--     cipherKeySpec :: c -> KeySpec c

-- class BlockCipher bc where
--     blockCipherBlockSize :: bc -> Int


-- data family Nonce a

-- class Nonced a where

--     setNonce :: Ctx a -> Nonce a -> Ctx a
--     getDefaultNonceLength :: a -> Int -- getNonceSpec

-- class Output a where
--     getOutputLength :: a -> Int

-- data family Key a



-- class Properties a where
--     getName :: a -> ByteString
--     getOutputLength :: a -> Int
--     GetDefaultNonceLength
--     SetAssociatedData
--     GetTagLength

-- class ResetCtx a where
--     resetCtx :: Ctx a -> Ctx a
--     resetCtxIO :: Ctx a -> IO ()

-- class ClearCtx a where
--     clearCtx :: Ctx a -> Ctx a
--     clearCtxIO :: Ctx a -> IO ()

-- class Granular a where
--     getGranularity :: a -> Int       -- updateGranularity, blocksize
--     getIdealGranularity :: a -> Int  -- idealUpdateGranularity

-- class AEAD aead where
--     aeadInit :: AEADMode -> cipher -> iv -> CryptoFailable (AEAD cipher)
--     aeadEncrypt :: st -> ba -> (ba, st) 
--     aeadDecrypt :: st -> ba -> (ba, st) 
--     aeadImplFinalize :: st -> Int -> AuthTag


-- data family Point curve
-- data family Scalar curve

-- class EllipticCurve curve where
--     curveGenerateScalar :: MonadRandom randomly => proxy curve -> randomly (Scalar curve)
--     curveGenerateKeyPair :: MonadRandom randomly => proxy curve -> randomly (KeyPair curve)
--     curveSizeBits :: proxy curve -> Int
--     encodePoint :: ByteArray bs => proxy curve -> Point curve -> bs
--     decodePoint :: ByteArray bs => proxy curve -> bs -> CryptoFailable (Point curve) 

-- data family SharedSecret curve

-- class EllipticCurve curve => EllipticCurveDH curve where
--     ecdhRaw :: proxy curve -> Scalar curve -> Point curve -> SharedSecret curve
--     ecdh :: proxy curve -> Scalar curve -> Point curve -> CryptoFailable SharedSecret curve


-- data family SymKey a

-- data family PubKey a
-- data family PrivKey a

-- type KeyPair a = (PubKey a,PrivKey a)

-- class KeyPaired a where
--     newKeyPairIO :: IO (KeyPair a)
--     newPrivKeyIO :: IO (PrivKey a)
--     exportPubKey :: PrivKey a -> PubKey a
--     pubKeySize    :: a -> Int
--     privKeySize   :: a -> Int

-- data family Signature a

-- class Sign a where
--     signatureSize :: a -> Int
--     sign :: PrivKey a -> PubKey a -> Message -> Signature a
--     verify :: PubKey a -> Message -> Signature a -> Bool

-- data family Cryptext a

-- class Encrypt a where
--     encrypt :: MonadRandom m => Key a -> Nonce a -> Message -> m (Cryptext a)
--     encryptOutputLength :: a -> Int -> Int

-- class Decrypt a where
--     decrypt :: Key a -> Nonce a -> Message -> Cryptext a
--     decryptOutputLength :: a -> Int -> Int


{-

class BlockCipher bc where

class BlockCipherMode bcm where

class Cipher c where

class StreamCipher sc where

-}

data family Key ciph
data family Nonce ciph
data family Ciphertext ciph
data family CombinedCiphertext ciph

class Cipher ciph where

    newKey :: IO (Key ciph)

    newNonce :: IO (Nonce ciph)

    encipher :: Key ciph -> Nonce ciph -> Message -> Ciphertext ciph
    decipher :: Key ciph -> Nonce ciph -> Ciphertext ciph -> Maybe Message

    encipherCombined :: Key ciph -> Nonce ciph -> Message -> CombinedCiphertext ciph
    decipherCombined :: Key ciph -> CombinedCiphertext ciph -> Maybe Message
