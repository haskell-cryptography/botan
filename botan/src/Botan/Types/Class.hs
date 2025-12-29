{-# LANGUAGE PolyKinds    #-}
{-# LANGUAGE TypeFamilies #-}

module Botan.Types.Class (
    Encodable(..)
  , unsafeDecode
  , encodeDefault
  , decodeDefault
  , LazyEncodable(..)
  , unsafeDecodeLazy
  -- , EncodableF(..)
  -- , unsafeDecodeF
  -- , Encoded(..)
  -- , IsEncoding(..)
  , SizeSpecifier(..)
  , sizeSpec
  , coerceSizeSpec
  , monoMapSizes
  , minSize
  , maxSize
  , allSizes
  , defaultSize
  , sizeIsValid
  , newSized
  , newSizedMaybe
  , SecretKey
  , HasSecretKey(..)
  , SecretKeyGen(..)
  , GSecretKey(..)
  , IsNonce(..)
  , Nonce
  , HasNonce(..)
  , NonceGen(..)
  , GNonce(..)
  , Salt
  , HasSalt(..)
  , SaltGen(..)
  , GSalt(..)
  , Password
  , GPassword(..)
  , Digest
  , HasDigest
  , GDigest(..)
  , Ciphertext
  , HasCiphertext
  , GCiphertext(..)
  , LazyCiphertext
  , HasLazyCiphertext(..)
  , GLazyCiphertext(..)
  ) where

import           Botan.Prelude hiding (Ciphertext, LazyCiphertext, max, min,
                     mod)
import qualified Botan.Prelude as P

import           Data.Coerce
import           Data.Maybe

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy

import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text

import           Botan.RNG

import           Botan.Utility

-- TODO: gnewSecretKey, gnewNonce, etc

--
-- Helpers
--

showByteStringHex :: ByteString -> String
showByteStringHex bs =  Text.unpack $ hexEncode bs Lower

--
-- Encoding
--

-- Analogous to saltine:Crypto.Saltine.Class.IsEncoding
class Encodable a where
    encode :: a -> ByteString
    decode :: ByteString -> Maybe a

unsafeDecode :: (Encodable a) => ByteString -> a
unsafeDecode = fromJust . decode

encodeDefault :: (LazyEncodable a) => a -> ByteString
encodeDefault = ByteString.toStrict . encodeLazy

decodeDefault :: (LazyEncodable a) => ByteString -> Maybe a
decodeDefault = decodeLazy . ByteString.fromStrict

instance Encodable ByteString where
    encode = id
    decode = Just

instance Encodable Lazy.ByteString where
    encode = ByteString.toStrict
    decode = Just . ByteString.fromStrict

instance Encodable Text where
    encode = Text.encodeUtf8
    decode = either (const Nothing) Just . Text.decodeUtf8'

class (Encodable a) => LazyEncodable a where

    encodeLazy :: a -> Lazy.ByteString
    encodeLazy = ByteString.fromStrict . encode

    decodeLazy :: Lazy.ByteString -> Maybe a
    decodeLazy = decode . ByteString.toStrict

unsafeDecodeLazy :: (LazyEncodable a) => Lazy.ByteString -> a
unsafeDecodeLazy = fromJust . decodeLazy

instance LazyEncodable Lazy.ByteString where
    encodeLazy = id
    decodeLazy = Just

{- TODO: Encodable base functors
class EncodableF f where
    encodeF :: f ByteString -> ByteString
    decodeF :: ByteString -> Maybe (f ByteString)

unsafeDecodeF :: (EncodableF f) => ByteString -> f ByteString
unsafeDecodeF = fromJust . decodeF
-}

{- TODO: Data family for encoding formats (PEM, BER, DER, ASN1) - something like:
data family Encoded e :: * -> *
class (Encodable (Encoded e a)) => IsEncoding e a where
    encoding :: a -> Encoded e a
    decoding :: Encoded e a -> Maybe a
data PEM
type PEMEncodedByteString = Encoded PEM ByteString
-}

--
-- Size specifiers
--

-- Invariant: If `SizeRange mn mx md` then `mod mn md == 0` and `mod mx md == 0`
--  (or mn and mx congruent modulo md?)
--  Could relax 'min max mod' to 'from to step'
-- Invariant: If `SizeEnum sizes` then `not . null $ sizes`

-- NOTE: We either need this phantom type parameter, or we remove it,
-- rename the type to GSizeSpecifier, and add a SizeSpecifier data family.
-- One or the other is required to provide a type witness for HasFoo.fooSpec:
--      class HasFoo alg where
--          fooSpec :: SizeSpecifier (Foo alg)
data SizeSpecifier a
    = SizeRange Int Int Int -- ^ min max mod
    -- | SizeRange Int Int  -- ^ min max 1
    | SizeEnum [ Int ]      -- ^ one of several sizes
    | SizeExact Int         -- ^ Fixed: exact size
    deriving stock (Eq, Ord, Show)

sizeSpec :: Int -> Int -> Int -> SizeSpecifier a
sizeSpec mn mx _a | mn == mx = SizeExact mn
sizeSpec mn mx md           = SizeRange mn mx md

-- TODO: Get rid of this (maybe), after moving the spec values from the
-- ADT tree to individual algorithms (definitely do this though)
coerceSizeSpec :: forall {k} (a :: k) (b :: k). SizeSpecifier a -> SizeSpecifier b
coerceSizeSpec = coerce

monoMapSizes :: (Int -> Int) -> SizeSpecifier a -> SizeSpecifier a
monoMapSizes f (SizeRange mn mx md) = SizeRange (f mn) (f mx) (f md)
monoMapSizes f (SizeEnum sizes)     = SizeEnum (fmap f sizes)
monoMapSizes f (SizeExact size)     = SizeExact (f size)

minSize :: SizeSpecifier a -> Int
minSize (SizeRange mn _ _) = mn
minSize (SizeEnum sizes)   = foldr P.min maxBound sizes
minSize (SizeExact size)   = size

maxSize :: SizeSpecifier a  -> Int
maxSize (SizeRange _ mx _) = mx
maxSize (SizeEnum sizes)   = foldr P.max 0 sizes
maxSize (SizeExact size)   = size

allSizes :: SizeSpecifier a -> [Int]
allSizes (SizeRange min max mod) = [ min, min+mod .. max ]
allSizes (SizeEnum sizes)        = sizes
allSizes (SizeExact size)        = [ size ]

defaultSize :: SizeSpecifier a -> Int
defaultSize = maxSize

-- closestSize :: SizeSpecifier -> Int -> Int
-- closestSize = undefined

-- atLeastSize :: SizeSpecifier -> Int -> Int
-- atLeastSize = undefined

-- atMostSize :: SizeSpecifier -> Int -> Int
-- atMostSize = undefined

-- NOTE: Maybe flip this back?
sizeIsValid :: SizeSpecifier a -> Int -> Bool
sizeIsValid (SizeRange mn mx md) sz = mn <= sz && sz <= mx && P.mod sz md == 0
sizeIsValid (SizeEnum sizes)     sz = sz `elem` sizes
sizeIsValid (SizeExact size)     sz = sz == size

newSized :: (MonadRandomIO m) => SizeSpecifier a -> m ByteString
newSized spec = getRandomBytes (defaultSize spec)

-- NOTE: Maybe flip this back?
newSizedMaybe :: (MonadRandomIO m) => SizeSpecifier a -> Int -> m (Maybe ByteString)
newSizedMaybe spec sz = if sizeIsValid spec sz
    then Just <$> getRandomBytes sz
    else return Nothing

--
-- Generators
--

-- TODO: Something that conforms with `random` StatefulGen and `statistics` Distribution

-- NOTE: I'm not sure that the `HasFoo.fooSpec` and `FooGen.newFoo` / `FooGen.newFooMaybe` abstraction
-- will hold up over time. Needs more thought on spec vs gen vs maybe-gen / validator
-- Diving one layer deeper to composing attribute generators to get a
--  schema / specifier generator is best left to something like a parser-generator
--  but for distributions. For now, we'll settle at the schematic-level.
{-
-- data family Spec a
data family Gen a
class HasGen (component :: * -> *) alg where
    -- spec :: Spec (component alg)
    defaultGen :: Gen (component alg)
class (HasGen component alg, Monad m) => ComponentGen component alg m where
    newComponent :: m (component alg)
    newComponent = genComponent defaultGen
    -- newComponentMaybe :: spec -> m (Maybe (component alg))
    genComponent :: Gen (component alg) -> m (component alg)
    genComponentMaybe :: (spec -> Maybe (Gen (component alg))) -> spec -> m (Maybe (component alg))
    genComponentMaybe f a = case f a of
        Just gen -> Just <$> genComponent gen
        Nothing  -> return Nothing
-}
-- This requires adding constraints `HasGen foo alg` to `HasFoo` and `ComponentGen foo alg m` to `FooGen`
-- and isn't worth doing at the moment. For now, SizeSpecifier suffices (eg, Spec = SizeSpec, Gen = Size / Int)
-- Eventually I want to use the same interface for keys and nonces as any other random generator / distribution.

--
-- SecretKey
--

-- class (Eq sk, Ord sk, Encodable sk) => IsSecretKey sk where

data family SecretKey alg

class (Encodable (SecretKey alg)) => HasSecretKey alg where
    secretKeySpec :: SizeSpecifier (SecretKey alg)

class (HasSecretKey alg, Monad m) => SecretKeyGen alg m where
    newSecretKey :: m (SecretKey alg)
    newSecretKeyMaybe :: Int -> m (Maybe (SecretKey alg))

newtype GSecretKey = MkGSecretKey { unGSecretKey :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GSecretKey where
    show = showByteStringHex . (.unGSecretKey)

-- NOTE: Cannot do g- / default implementation of new keys since we do not yet
-- have the secret key constructor.
-- We also need the algorithm-specific key spec for gnewSecretKey and gnewSecretKeyMaybe.
-- Being unable to do this isn't necessarily bad, just requires more boilerplate -
-- the benefit being that the implementation of SecretKey is entirely opaque
-- and thus free to be whatever it wants. For example, what if an backing implementation
-- requires that SecretKey alg ~ Integer? (Actually some PK stuff may do just that)
{-
gnewSecretKey :: MonadRandomIO m => m GSecretKey
gnewSecretKey = newSized (secretKeySpec @_)

gnewSecretKeyMaybe :: MonadRandomIO m => Int -> m (Maybe (GSecretKey)
gnewSecretKeyMaybe i = newSizedMaybe (secretKeySpec @_) i
-}

--
-- Nonce
--

class (Eq n, Ord n, Encodable n) => IsNonce n where
    -- zilch :: n
    nudge :: n -> n

data family Nonce alg

class (IsNonce (Nonce alg)) => HasNonce alg where
    nonceSpec :: SizeSpecifier (Nonce alg)

class (HasNonce alg, Monad m) => NonceGen alg m where
    newNonce :: m (Nonce alg)
    newNonceMaybe :: Int -> m (Maybe (Nonce alg))

newtype GNonce = MkGNonce { unGNonce :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GNonce where
    show = showByteStringHex . (.unGNonce)

-- HACK: Grodiest bytestring incrementer ever
instance IsNonce GNonce where
    nudge (MkGNonce bs) = MkGNonce $ snd $ ByteString.mapAccumR
        (\ carry w -> if carry then (w == 255, w + 1) else (False,w)) True bs

--
-- Salt
--

-- class (Eq s, Ord s, Encodable s) => IsSalt s where

data family Salt alg

class (Encodable (Salt alg)) => HasSalt alg where
    saltSpec :: SizeSpecifier (Salt alg)

class (HasSalt alg, Monad m) => SaltGen alg m where
    newSalt :: m (Salt alg)
    newSaltMaybe :: Int -> m (Maybe (Salt alg))

newtype GSalt = MkGSalt { unGSalt :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GSalt where
    show = showByteStringHex . (.unGSalt)

--
-- Password
--

-- NOTE: It is strongly suggested that passwords be ASCII
-- This may be enforced in the future

data family Password alg

newtype GPassword = MkGPassword { unGPassword :: Text }
    deriving newtype (Eq, Ord, Encodable)

instance Show GPassword where
    show = Text.unpack . (.unGPassword)

--
-- Digest
--

data family Digest alg

class (Eq (Digest alg), Ord (Digest alg), Encodable (Digest alg)) => HasDigest alg where

newtype GDigest = MkGDigest { unGDigest :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GDigest where
    show = showByteStringHex . (.unGDigest)

--
-- Ciphertext
--

data family Ciphertext alg

class (Eq (Ciphertext alg), Ord (Ciphertext alg), Encodable (Ciphertext alg)) => HasCiphertext alg where

newtype GCiphertext = MkGCiphertext { unGCiphertext :: ByteString }
    deriving newtype (Eq, Ord, Encodable)

instance Show GCiphertext where
    show = showByteStringHex . (.unGCiphertext)

--
-- Incremental Ciphertext
--

data family LazyCiphertext alg

class (HasCiphertext alg, Eq (LazyCiphertext alg), Ord (LazyCiphertext alg), LazyEncodable (LazyCiphertext alg)) => HasLazyCiphertext alg where
    toStrictCiphertext :: LazyCiphertext alg -> Ciphertext alg
    toStrictCiphertext = unsafeDecode . encode
    fromStrictCiphertext :: Ciphertext alg -> LazyCiphertext alg
    fromStrictCiphertext = unsafeDecodeLazy . ByteString.fromStrict . encode

newtype GLazyCiphertext = MkGLazyCiphertext { unGLazyCiphertext :: Lazy.ByteString }
    deriving newtype (Eq, Ord, Encodable, LazyEncodable)

instance Show GLazyCiphertext where
    show = showByteStringHex . ByteString.toStrict . (.unGLazyCiphertext)

--
-- TODO: classes / data families for:
--  BlockSize / HasBlockSize
--  KeySize / HasKeySize
--  NonceSize / NonceKeySize
--  DigestSize / HasDigestSize
-- This could mesh with the SizeSpecifier
--

-- data family BlockSize (n :: Nat)

-- class (KnownNat n) => HasBlockSize (n :: Nat) alg where
--     blockSize :: BlockSize n alg
--     -- blockSize = fromInteger $ natVal $ Proxy @n
--     fromBlockSize :: (Integral sz) => BlockSize n alg -> sz
--     fromBlockSize _ = fromInteger $ natVal $ Proxy @n



-- newtype Block (n :: Nat) = MkBlock ByteString

-- class IsBlockSize n where

-- data family BlockSize alg

-- class (IsBlockSize (BlockSize alg)) => HasBlockSize alg where
--     blockSize :: BlockSize alg

-- newtype GBlockSize = MkGBlockSize { unGBlockSize :: Int }
--     deriving newtype (Eq, Ord, Show)
