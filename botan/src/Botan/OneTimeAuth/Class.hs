module Botan.OneTimeAuth.Class
( OneTimeAuth(..)
, OneTimeAuthKey(..)
, OneTimeAuthNonce(..)
, OneTimeAuthCode(..)
, oneTimeAuthProxy
, oneTimeAuthFile
, IncrementalOneTimeAuth(..)
, oneTimeAuthFileLazy
) where

import           Botan.Prelude

import           Data.Proxy (Proxy (..))

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

-- TODO: Maybe OneTimeAuth -> OTA?

data family OneTimeAuthKey ota
data family OneTimeAuthNonce ota
data family OneTimeAuthCode ota

-- Invariant: The key and nonce must never be re-used together.
type OneTimeKey ota = (OneTimeAuthKey ota, OneTimeAuthNonce ota)
-- TODO: Decide whether to `SeparateKey ota -> SeparateNonce ota -> ...`
--  or `CombinedOneTimeKey ota -> ...`
-- Note that this is a different meaning of `Combined` than as used in `saltine`.
-- We mean `Combined` as the opposite of `Detached` in saltine.
-- TODO: Prefer `Attached` terminology?

class OneTimeAuth ota where
    oneTimeAuth :: OneTimeAuthKey ota -> OneTimeAuthNonce ota -> ByteString -> OneTimeAuthCode ota
    default oneTimeAuth :: (IncrementalOneTimeAuth ota) => OneTimeAuthKey ota -> OneTimeAuthNonce ota -> ByteString -> OneTimeAuthCode ota
    oneTimeAuth k n = oneTimeAuthLazy k n . ByteString.fromStrict

    -- verifyOneTimeAuth :: OneTimeAuthKey ota -> ByteString -> OneTimeAuthCode ota -> Bool
    -- verifyOneTimeAuth k bs d = oneTimeAuth k bs == d

oneTimeAuthProxy :: (OneTimeAuth ota) => Proxy ota -> OneTimeAuthKey ota -> OneTimeAuthNonce ota ->ByteString -> OneTimeAuthCode ota
oneTimeAuthProxy _ = oneTimeAuth

oneTimeAuthFile :: (OneTimeAuth ota, MonadIO m) => OneTimeAuthKey ota -> OneTimeAuthNonce ota -> FilePath -> m (OneTimeAuthCode ota)
oneTimeAuthFile k n fp = oneTimeAuth k n <$> liftIO (ByteString.readFile fp)

class (OneTimeAuth ota) => IncrementalOneTimeAuth ota where
    oneTimeAuthLazy :: OneTimeAuthKey ota -> OneTimeAuthNonce ota -> Lazy.ByteString -> OneTimeAuthCode ota

oneTimeAuthFileLazy :: (IncrementalOneTimeAuth ota, MonadIO m) => OneTimeAuthKey ota -> OneTimeAuthNonce ota -> FilePath -> m (OneTimeAuthCode ota)
oneTimeAuthFileLazy k n fp = do
    bs <- liftIO $ Lazy.readFile fp
    -- Seq is probably unnecessary
    let d = oneTimeAuthLazy k n bs
        in d `seq` return d
