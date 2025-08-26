module Botan.Hash.MD5
( MD5(..)
, MD5Digest(..)
, md5
, md5Lazy
) where

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.Hash as Botan
import qualified Botan.Utility as Botan

import Botan.Hash.Class
import Botan.Prelude

-- MD5 type

data MD5

newtype instance Digest MD5 = MD5Digest
    { getMD5ByteString :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type MD5Digest = Digest MD5

instance Show (Digest MD5) where
    show :: Digest MD5 -> String
    show (MD5Digest bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

instance Hash MD5 where
    hash :: ByteString -> Digest MD5
    hash = MD5Digest . Botan.hash Botan.md5

instance IncrementalHash MD5 where
    hashLazy :: Lazy.ByteString -> Digest MD5
    hashLazy = MD5Digest . Botan.hashLazy Botan.md5

-- MD5 hash

md5 :: ByteString -> MD5Digest
md5 = hash

md5Lazy :: Lazy.ByteString -> MD5Digest
md5Lazy = hashLazy

-- Experimental below

-- newtype instance MutableCtx MD5 = MD5Ctx
--     { getMD5Ctx :: Botan.MutableHash }

-- -- TODO: Rename MutableMD5?
-- type MD5Ctx = MutableCtx MD5

-- instance (MonadIO m) => MutableHash MD5 m where

--     hashInit :: m MD5Ctx
--     hashInit = MD5Ctx <$> Botan.newHash Botan.md5

--     hashUpdate :: MD5Ctx -> ByteString -> m ()
--     hashUpdate (MD5Ctx ctx) = Botan.updateHash ctx

--     hashUpdates :: MD5Ctx -> [ByteString] -> m ()
--     hashUpdates (MD5Ctx ctx) = Botan.updateHashChunks ctx

--     hashFinalize :: MD5Ctx -> m (Digest MD5)
--     hashFinalize (MD5Ctx ctx) = MD5Digest <$> Botan.finalizeHash ctx
