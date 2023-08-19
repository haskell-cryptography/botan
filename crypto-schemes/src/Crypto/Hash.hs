module Crypto.Hash where

import Crypto.Prelude

{-
High-level stuff for cryptography-schemes / cryptography-schemes-botan
-}
    
-- Data family style
--  Enables type-applications to control algorithm
--      ghci> hash @MD5 "Fee fi fo fum!"
--      4ccde4309739596c2a622e6809948ba0

--
-- CRYPTONITE STYLE
--  This works but I think we can do a bit better
--

data family Ctx a
data family Digest a

-- Temporary nomenclature to avoid clashing until moved
class Hash a where
    hashWithCtx :: Ctx a -> ByteString -> Digest a

-- Temporary nomenclature to avoid clashing until moved
class (Hash a) => IsIncrementalHash a where
    hashInit :: Ctx a
    hashUpdate :: Ctx a -> ByteString -> Ctx a
    hashUpdates :: Ctx a -> [ByteString] -> Ctx a
    hashFinalize :: Ctx a -> Digest a

hash :: (IsIncrementalHash a) => ByteString -> Digest a
hash = hashFinalize . hashUpdate hashInit


--
-- LIBSODIUM STYLE
--

-- data family Digest hash

-- class Hash hash where
--     hash :: Message -> Digest hash

-- class KeyedHash hash where
--     newKeyedHashKey :: IO (Key hash)
--     keyedHash :: Key hash -> Message -> Digest hash
