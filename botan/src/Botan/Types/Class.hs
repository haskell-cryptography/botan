module Botan.Types.Class
( SecretKey(..)
, IsSecretKey(..)
, SecretKeyGen(..)
, Nonce(..)
, IsNonce(..)
, NonceGen(..)
, CipherText(..)
, IsCipherText(..)
, IncrementalCipherText(..)
, IsIncrementalCipherText(..)
) where

import Botan.Prelude

import Data.Proxy

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import Botan.RNG
import Botan.KeySpec

type SizeSpec a = KeySpec

-- type Plaintext = ByteString
-- type LazyPlaintext = ByteString

-- data family Salt sk

data family SecretKey sk

class (Eq (SecretKey k), Ord (SecretKey k)) => IsSecretKey k where
    mkSecretKey :: ByteString -> SecretKey k
    unSecretKey :: SecretKey k -> ByteString
    secretKeySpec :: Proxy k -> SizeSpec k

-- TODO: Probably should require MonadRandomIO
class (IsSecretKey k, Monad m) => SecretKeyGen k m where

    newSecretKey :: m (SecretKey k)
    default newSecretKey :: (MonadRandomIO m) => m (SecretKey k)
    newSecretKey = mkSecretKey <$> newKey (secretKeySpec $ Proxy @k)

    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey k))
    default newSecretKeyMaybe :: (MonadRandomIO m) => Int -> m (Maybe (SecretKey k))
    newSecretKeyMaybe i = fmap mkSecretKey <$> newKeyMaybe i (secretKeySpec $ Proxy @k)

data family Nonce n

class (Eq (Nonce n), Ord (Nonce n)) => IsNonce n where
    mkNonce :: ByteString -> Nonce n
    unNonce :: Nonce n -> ByteString
    nonceSpec :: Proxy n -> SizeSpec n
    -- nudge :: Nonce n -> Nonce n

-- TODO: Probably should require MonadRandomIO
class (IsNonce n, Monad m) => NonceGen n m where

    newNonce :: m (Nonce n)
    default newNonce :: (MonadRandomIO m) => m (Nonce n)
    newNonce = mkNonce <$> newKey (nonceSpec $ Proxy @n)

    newNonceMaybe :: Int -> m (Maybe (Nonce n))
    default newNonceMaybe :: (MonadRandomIO m) => Int -> m (Maybe (Nonce n))
    newNonceMaybe i = fmap mkNonce <$> newKeyMaybe i (nonceSpec $ Proxy @n)

data family CipherText ct

class (Eq (CipherText ct), Ord (CipherText ct)) => IsCipherText ct where
    mkCipherText :: ByteString -> CipherText ct
    unCipherText :: CipherText ct -> ByteString

data family IncrementalCipherText ct

class IsIncrementalCipherText ct where
    mkIncrementalCipherText :: Lazy.ByteString -> IncrementalCipherText ct
    unIncrementalCipherText :: IncrementalCipherText ct -> Lazy.ByteString


-- TODO: Consider IsNonce vs HasNonce
{-
data family Nonce n

class HasNonce n where
    mkNonce :: ByteString -> Nonce n
    unNonce :: Nonce n -> ByteString
    nonceSpec' :: Proxy n -> SizeSpec n

class IsNonce n where
    mkNonceByteString :: ByteString -> n
    unNonceByteString :: n -> ByteString
-}
