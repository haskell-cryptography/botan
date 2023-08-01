module Botan.Cipher where

import qualified Botan.Bindings.Cipher as Bindings
import qualified Botan.Low.Cipher as Low

import Botan.Error
import Botan.Prelude

-- TODO: Push down to botan-low, make proper parametric types
type CipherName = Low.CipherName
type CipherInitFlags = Bindings.CipherInitFlags
type CipherKey = Low.CipherKey
type CipherCtx = Low.Cipher
type Ciphertext = ByteString

-- cipherInit :: CipherName -> CipherInitFlags -> CipherKey -> 