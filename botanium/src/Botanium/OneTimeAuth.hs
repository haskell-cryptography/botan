module Botanium.OneTimeAuth
( OneTimeAuthKey(..)
, OneTimeAuth(..)
, newOneTimeAuthKey
, oneTimeAuth
, oneTimeAuthVerify
) where

import Botanium.Prelude

-- NOTE: Libsodium uses Poly1305 Wegman-Carter
-- NOTE: Relation between auth and onetimeauth is key reuse / onetimekey

data OneTimeAuthKey

data OneTimeAuth

newOneTimeAuthKey :: IO OneTimeAuthKey
newOneTimeAuthKey = undefined

oneTimeAuth :: OneTimeAuthKey -> Message -> OneTimeAuth
oneTimeAuth = undefined

oneTimeAuthVerify :: OneTimeAuthKey -> OneTimeAuth -> Message -> Bool
oneTimeAuthVerify = undefined
