module Crypto.Auth where

import Crypto.Prelude

data family Key auth
data family Tag auth    -- A MAC digest
data family CombinedMessage auth

-- MACs and such
class Auth auth where

    auth :: Key auth -> Message -> CombinedMessage auth
    verify :: Key auth -> CombinedMessage auth -> Bool

    authDetached :: Key auth -> Message -> Tag auth
    verifyDetached :: Key auth -> Message -> Tag auth -> Bool
