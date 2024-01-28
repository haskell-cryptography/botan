module Botan.Types.Class
( Encodable(..)
, unsafeDecode
-- , EncodableF(..)
-- , unsafeDecodeF
-- , Encoded(..)
-- , IsEncoding(..)
, SizeSpec(..)
, GSecretKey(..)
, SecretKey(..)
, HasSecretKey(..)
, SecretKeyGen(..)
, IsNonce(..)
, GNonce(..)
, Nonce(..)
, HasNonce(..)
, NonceGen(..)
, Salt(..)
, GSalt(..)
, HasSalt(..)
, SaltGen(..)
, Password(..)
, GPassword(..)
, Ciphertext(..)
, GCiphertext(..)
, LazyCiphertext(..)
, GLazyCiphertext(..)
) where

import Botan.Prelude hiding (Ciphertext,LazyCiphertext)

import Data.Maybe
import Data.Either
import Data.Proxy

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

import Botan.RNG
import Botan.KeySpec

import Botan.Utility

--
-- Helpers
--

showByteStringHex bs =  Text.unpack $ hexEncode bs Lower

--
-- Encoding
--

-- Analogous to saltine:Crypto.Saltine.Class.IsEncoding
class Encodable a where
    encode :: a -> ByteString
    decode :: ByteString -> Maybe a

unsafeDecode :: (Encodable a) => ByteString -> a
unsafeDecode = fromJust . decode

instance Encodable ByteString where
    encode = id
    decode = Just

instance Encodable Lazy.ByteString where
    encode = ByteString.toStrict
    decode = Just . ByteString.fromStrict

instance Encodable Text where
    encode = Text.encodeUtf8
    decode = either (const Nothing) Just . Text.decodeUtf8'

{- TODO: Encodable base functors
class EncodableF f where
    encodeF :: f ByteString -> ByteString
    decodeF :: ByteString -> Maybe (f ByteString)

unsafeDecodeF :: (EncodableF f) => ByteString -> f ByteString
unsafeDecodeF = fromJust . decodeF
-}

{- TODO: Data family for encoding formats (PEM, BER, DER, ASN1) - something like:
data family Encoded e :: * -> *
class (Encodable (Encoded e a)) => IsEncoding e a where
    encoding :: a -> Encoded e a
    decoding :: Encoded e a -> Maybe a
data PEM
type PEMEncodedByteString = Encoded PEM ByteString
-}

--
-- Size specifiers
--

data SizeSpec a
    = SizeRange Int Int Int -- ^ min max mod
    -- | SizeRange Int Int  -- ^ min max 1
    | Sizes [ Int ]         -- ^ one of several sizes
    | Size Int              -- ^ exact size
    deriving (Show,Eq)

--
-- SecretKey
--

-- class (Eq sk, Ord sk, Encodable sk) => IsSecretKey sk where

newtype GSecretKey = GSecretKey { unGSecretKey :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GSecretKey where
    show = showByteStringHex . unGSecretKey

data family SecretKey alg

class (Encodable (SecretKey alg)) => HasSecretKey alg where
    secretKeySpec :: SizeSpec (SecretKey alg)

class (HasSecretKey alg, Monad m) => SecretKeyGen alg m where
    newSecretKey :: m (SecretKey alg)
    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey alg))

--
-- Nonce
--

class (Eq n, Ord n, Encodable n) => IsNonce n where
    -- zilch :: n
    nudge :: n -> n

newtype GNonce = GNonce { unGNonce :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GNonce where
    show = showByteStringHex . unGNonce

-- HACK: Grodiest bytestring incrementer ever
instance IsNonce GNonce where
    nudge (GNonce bs) = GNonce $ snd $ ByteString.mapAccumR
        (\ carry w -> if carry then (w == 255, w + 1) else (False,w)) True bs

data family Nonce alg

class (IsNonce (Nonce alg)) => HasNonce alg where
    nonceSpec :: SizeSpec (Nonce alg)

class (HasNonce alg, Monad m) => NonceGen alg m where
    newNonce :: m (Nonce alg)
    newNonceMaybe :: Int -> m (Maybe (Nonce alg))

--
-- Salt
--

-- class (Eq s, Ord s, Encodable s) => IsSalt s where

data family Salt alg

newtype GSalt = GSalt { unGSalt :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GSalt where
    show = showByteStringHex . unGSalt

class (Encodable (Salt alg)) => HasSalt alg where
    saltSpec :: SizeSpec (Salt alg)

class (HasSalt alg, Monad m) => SaltGen alg m where
    newSalt :: m (Salt alg)
    newSaltMaybe :: Int -> m (Maybe (Salt alg))

--
-- Password
--

-- NOTE: It is strongly suggested that passwords be ASCII
-- This may be enforced in the future

data family Password alg

newtype GPassword = GPassword { unGPassword :: Text }
    deriving newtype (Eq, Ord, Encodable)

instance Show GPassword where
    show = Text.unpack . unGPassword

--
-- Ciphertext
--

data family Ciphertext alg

newtype GCiphertext = GCiphertext { unGCiphertext :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GCiphertext where
    show = showByteStringHex . unGCiphertext

--
-- Incremental Ciphertext
--

data family LazyCiphertext alg

newtype GLazyCiphertext = GLazyCiphertext { unGLazyCiphertext :: Lazy.ByteString }
    deriving newtype (Eq, Ord, Encodable)


instance Show GLazyCiphertext where
    show = showByteStringHex . ByteString.toStrict . unGLazyCiphertext






-- --

-- class Encodable salt => IsSalt salt where

-- data family Salt sk

-- newtype GSalt = MkGSalt { unGSalt :: ByteString }



-- data family SecretKey sk

-- class (Eq (SecretKey k), Ord (SecretKey k)) => IsSecretKey k where
--     mkSecretKey :: ByteString -> SecretKey k
--     unSecretKey :: SecretKey k -> ByteString
--     secretKeySpec :: Proxy k -> SizeSpec k

-- -- TODO: Probably should require MonadRandomIO
-- class (IsSecretKey k, Monad m) => SecretKeyGen k m where

--     newSecretKey :: m (SecretKey k)
--     default newSecretKey :: (MonadRandomIO m) => m (SecretKey k)
--     newSecretKey = mkSecretKey <$> newKey (secretKeySpec $ Proxy @k)

--     newSecretKeyMaybe :: Int -> m (Maybe (SecretKey k))
--     default newSecretKeyMaybe :: (MonadRandomIO m) => Int -> m (Maybe (SecretKey k))
--     newSecretKeyMaybe i = fmap mkSecretKey <$> newKeyMaybe i (secretKeySpec $ Proxy @k)



-- class (Eq (Nonce n), Ord (Nonce n)) => IsNonce n where
--     mkNonce :: ByteString -> Nonce n
--     unNonce :: Nonce n -> ByteString
--     nonceSpec :: Proxy n -> SizeSpec n
--     -- nudge :: Nonce n -> Nonce n

-- -- TODO: Probably should require MonadRandomIO
-- class (IsNonce n, Monad m) => NonceGen n m where

--     newNonce :: m (Nonce n)
--     default newNonce :: (MonadRandomIO m) => m (Nonce n)
--     newNonce = mkNonce <$> newKey (nonceSpec $ Proxy @n)

--     newNonceMaybe :: Int -> m (Maybe (Nonce n))
--     default newNonceMaybe :: (MonadRandomIO m) => Int -> m (Maybe (Nonce n))
--     newNonceMaybe i = fmap mkNonce <$> newKeyMaybe i (nonceSpec $ Proxy @n)

-- data family CipherText ct

-- class (Eq (CipherText ct), Ord (CipherText ct)) => IsCipherText ct where
--     mkCipherText :: ByteString -> CipherText ct
--     unCipherText :: CipherText ct -> ByteString

-- data family IncrementalCipherText ct

-- class IsIncrementalCipherText ct where
--     mkIncrementalCipherText :: Lazy.ByteString -> IncrementalCipherText ct
--     unIncrementalCipherText :: IncrementalCipherText ct -> Lazy.ByteString


-- -- TODO: Consider IsNonce vs HasNonce
-- {-
-- data family Nonce n

-- class HasNonce n where
--     mkNonce :: ByteString -> Nonce n
--     unNonce :: Nonce n -> ByteString
--     nonceSpec' :: Proxy n -> SizeSpec n

-- class IsNonce n where
--     mkNonceByteString :: ByteString -> n
--     unNonceByteString :: n -> ByteString
-- -}
