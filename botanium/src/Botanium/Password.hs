module Botanium.Password
( Password(..)
, PasswordSalt(..)
, PasswordPolicy(..)
, PasswordKey(..)
, newPasswordSalt
, passwordHash
) where

import Botanium.Prelude

data Password -- Text

data PasswordSalt

data PasswordPolicy

data PasswordKey

newPasswordSalt :: IO PasswordSalt
newPasswordSalt = undefined

passwordHash :: Password -> Int -> PasswordSalt -> PasswordPolicy -> Maybe PasswordKey
passwordHash = undefined