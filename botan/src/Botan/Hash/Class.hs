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

class Hash h where
    hash :: ByteString -> Digest h
    default hash :: (IncrementalHash h) => ByteString -> Digest h
    hash = hashLazy . ByteString.fromStrict

hashProxy :: (Hash h) => Proxy h -> ByteString -> Digest h
hashProxy _ = hash

hashFile :: (IncrementalHash h, MonadIO m) => FilePath -> m (Digest h)
hashFile fp = hash <$> liftIO (ByteString.readFile fp)

class (Hash h) => IncrementalHash h where
    hashLazy :: Lazy.ByteString -> Digest h

hashFileLazy :: (IncrementalHash h, MonadIO m) => FilePath -> m (Digest h)
hashFileLazy fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = hashLazy bs
        in d `seq` return d

-- Experimental below


-- TODO: Mutable hashes

-- TODO: Rename Mutable?
data family MutableCtx hash

class (IncrementalHash h, MonadIO m) => MutableHash h m where
    hashInit     :: m (MutableCtx h)
    hashUpdate   :: MutableCtx h -> ByteString -> m ()
    hashUpdates  :: MutableCtx h -> [ByteString] -> m ()
    hashFinalize :: MutableCtx h -> m (Digest h)


mutableHashLazy :: MutableHash h m => Lazy.ByteString -> m (Digest h)
mutableHashLazy lbs = do
    ctx <- hashInit
    hashUpdates ctx $ Lazy.toChunks lbs
    hashFinalize ctx
