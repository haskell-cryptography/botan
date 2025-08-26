module Botan.OneTimeAuth.Poly1305
( Poly1305(..)
, Poly1305OneTimeAuthKey(..)
, Poly1305OneTimeAuthNonce(..)
, Poly1305OneTimeAuthCode(..)
, poly1305OneTimeAuth
-- , poly1305AuthOneTimeAuthLazy
) where

import Data.Maybe

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.MAC as Botan
import qualified Botan.Utility as Botan

import Botan.OneTimeAuth.Class
import Botan.Prelude

-- Poly1305 type

data Poly1305

newtype instance OneTimeAuthKey Poly1305 = Poly1305OneTimeAuthKey
    { getPoly1305OneTimeAuthKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type Poly1305OneTimeAuthKey = OneTimeAuthKey Poly1305

-- NOTE: Poly1305 combines its nonce into a One-Time-Key, so we set its nonce type
-- to be a singleton, and thus the invariant that key+nonce be one time use makes
-- the key itself one-time use.
newtype instance OneTimeAuthNonce Poly1305 = Poly1305OneTimeAuthNonce
    ()
    deriving newtype (Eq, Ord)

type Poly1305OneTimeAuthNonce = OneTimeAuthNonce Poly1305

newtype instance OneTimeAuthCode Poly1305 = Poly1305OneTimeAuthCode
    { getPoly1305OneTimeAuthCode :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

type Poly1305OneTimeAuthCode = OneTimeAuthCode Poly1305

instance OneTimeAuth Poly1305 where

    -- mkOneTimeAuthCode = Poly1305OneTimeAuthCode

    oneTimeAuth :: OneTimeAuthKey Poly1305 -> OneTimeAuthNonce Poly1305 -> ByteString -> OneTimeAuthCode Poly1305
    oneTimeAuth (Poly1305OneTimeAuthKey k) (Poly1305OneTimeAuthNonce _) = Poly1305OneTimeAuthCode . fromJust . Botan.mac Botan.poly1305 k

instance IncrementalOneTimeAuth Poly1305 where

    -- mkIncrementalOneTimeAuthCode = Poly1305IncrementalOneTimeAuthCode
    -- fromIncremental (Poly1305IncrementalOneTimeAuthCode ct) = Poly1305OneTimeAuthCode $ ByteString.toStrict ct
    -- toIncremental (Poly1305OneTimeAuthCode ct) = Poly1305IncrementalOneTimeAuthCode $ ByteString.fromStrict ct

    oneTimeAuthLazy :: OneTimeAuthKey Poly1305 -> OneTimeAuthNonce Poly1305 -> Lazy.ByteString -> OneTimeAuthCode Poly1305
    oneTimeAuthLazy (Poly1305OneTimeAuthKey k) (Poly1305OneTimeAuthNonce _) = Poly1305OneTimeAuthCode . fromJust . Botan.macLazy Botan.poly1305 k

-- Poly1305 One Time Auth

poly1305OneTimeAuth :: OneTimeAuthKey Poly1305 -> OneTimeAuthNonce Poly1305 -> ByteString -> Poly1305OneTimeAuthCode
poly1305OneTimeAuth = oneTimeAuth
