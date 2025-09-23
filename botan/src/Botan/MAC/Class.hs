{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TypeFamilies      #-}

module Botan.MAC.Class (
    MAC (..)
  , MACKey
  , MACAuth
  , macProxy
  , macFile
  , IncrementalMAC(..)
  , macFileLazy
  ) where

import           Botan.Prelude

import           Data.Proxy (Proxy (..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

data family MACKey mac
data family MACAuth mac

class MAC mac where

    -- HACKY:
    -- witness :: mac

    mac :: MACKey mac -> ByteString -> MACAuth mac
    default mac :: (IncrementalMAC mac) => MACKey mac -> ByteString -> MACAuth mac
    mac k = macLazy k . ByteString.fromStrict

    -- verifyMAC :: MACKey mac -> ByteString -> MACAuth mac -> Bool
    -- verifyMAC k bs d = mac k bs == d

macProxy :: (MAC mac) => Proxy mac -> MACKey mac -> ByteString -> MACAuth mac
macProxy _ = mac

macFile :: (MAC mac, MonadIO m) => MACKey mac -> FilePath -> m (MACAuth mac)
macFile k fp = mac k <$> liftIO (ByteString.readFile fp)

class IncrementalMAC mac where
    macLazy :: MACKey mac -> Lazy.ByteString -> MACAuth mac

macFileLazy :: (IncrementalMAC mac, MonadIO m) => MACKey mac -> FilePath -> m (MACAuth mac)
macFileLazy k fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = macLazy k bs
        in d `seq` return d
