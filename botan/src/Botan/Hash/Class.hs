{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TypeFamilies      #-}

module Botan.Hash.Class (
    Hash(..)
  , Digest
  , hashProxy
  , hashFile
  , IncrementalHash(..)
  , hashFileLazy
  ) where

import           Botan.Prelude

import           Data.Proxy (Proxy (..))

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

class IncrementalHash hash where
    hashLazy :: Lazy.ByteString -> Digest hash

hashFileLazy :: (IncrementalHash hash, MonadIO m) => FilePath -> m (Digest hash)
hashFileLazy fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = hashLazy bs
        in d `seq` return d

