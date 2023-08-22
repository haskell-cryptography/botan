module Crypto.Scheme where

import Crypto.Prelude

-- A bcrypt-like cryptographic scheme identifier
data SchemeIdentifier = SchemeIdentifier ByteString
    deriving (Show)

-- Based on Exception, except we're naming things instead of throwing errors
class (Typeable s, Show s) => Scheme s where
    
    toScheme :: s -> SomeScheme
    toScheme = SomeScheme

    fromScheme :: SomeScheme -> Maybe s
    fromScheme (SomeScheme s) = cast s

    schemeIdentifier :: s -> SchemeIdentifier

data SomeScheme = forall s . Scheme s => SomeScheme s

instance Show SomeScheme where
    showsPrec p (SomeScheme s) = showsPrec p (schemeIdentifier s)

-- TODO: Schemes for crypto classes, use for generating identifiers / bcrypt-like formats

-- data PrimScheme
--     = AuthScheme Auth
--     | HashScheme Hash
--     | CipherScheme Cipher
--     | EncryptScheme PK
--     | SignScheme PK
--     | ...

-- data HashScheme = HashScheme
--     deriving (Show)

-- instance Scheme HashScheme where
--     schemeIdentifier HashScheme = SchemeIdentifier "HashScheme"

