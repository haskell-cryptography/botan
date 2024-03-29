module Botan.Hash.Class
( Hash(..)
, Digest(..)
, hashProxy
, hashFile
, IncrementalHash(..)
, hashFileLazy
-- , MutableHash(..)
-- , MutableCtx(..)
) where

import Botan.Prelude

import Data.Proxy (Proxy(..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

data family Digest hash

class (Eq (Digest hash), Ord (Digest hash)) => Hash hash where
    hash :: ByteString -> Digest hash
    default hash :: (IncrementalHash hash) => ByteString -> Digest hash
    hash = hashLazy . ByteString.fromStrict

    -- verifyHash :: ByteString -> Digest hash -> Bool
    -- verifyHash bs d = hash bs == d

hashProxy :: (Hash hash) => Proxy hash -> ByteString -> Digest hash
hashProxy _ = hash

hashFile :: (Hash hash, MonadIO m) => FilePath -> m (Digest hash)
hashFile fp = hash <$> liftIO (ByteString.readFile fp)

class (Hash hash) => IncrementalHash hash where
    hashLazy :: Lazy.ByteString -> Digest hash

hashFileLazy :: (IncrementalHash hash, MonadIO m) => FilePath -> m (Digest hash)
hashFileLazy fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = hashLazy bs
        in d `seq` return d

-- Experimental below


-- TODO: Mutable hashes

-- TODO: Rename Mutable?
data family MutableCtx hash

class (IncrementalHash hash, MonadIO m) => MutableHash hash m where
    hashInit     :: m (MutableCtx hash)
    hashUpdate   :: MutableCtx hash -> ByteString -> m ()
    hashUpdates  :: MutableCtx hash -> [ByteString] -> m ()
    hashFinalize :: MutableCtx hash -> m (Digest hash)


mutableHashLazy :: MutableHash hash m => Lazy.ByteString -> m (Digest hash)
mutableHashLazy lbs = do
    ctx <- hashInit
    hashUpdates ctx $ Lazy.toChunks lbs
    hashFinalize ctx



-- TODO: Something like `Salted "salt" SHA3_512` for static salts?
{-

data Salted (salt :: Symbol) h

-- NOTE: Needs proper encodable to get rid of coerce
instance (KnownSymbol salt, Hash h) => Hash (Salted salt h) where
    hash bs = SaltedDigest $ unsafeCoerce $ hash @h $ bs <> Char8.pack (symbolVal (Proxy @salt))

newtype instance Digest (Salted salt h) = SaltedDigest
    { getSaltedByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance (KnownSymbol salt, Hash h) => Show (Digest (Salted salt h)) where
    show :: Digest (Salted salt h) -> String
    show (SaltedDigest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

-}
