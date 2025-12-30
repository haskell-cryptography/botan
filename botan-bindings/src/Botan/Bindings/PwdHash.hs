{-|
Module      : Botan.Bindings.PwdHash
Description : Password hashing
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Password Based Key
Deriviation](https://botan.randombit.net/handbook/api_ref/pbkdf.html) section of
the C++ API reference.
-}

{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.PwdHash (
    -- $password-hashing
    botan_pwdhash
  , botan_pwdhash_timed
    -- * Available schemes
    -- $available-schemes
  , pattern BOTAN_PBKDF_PBKDF2
  , pattern BOTAN_PBKDF_SCRYPT
  , pattern BOTAN_PBKDF_ARGON2D
  , pattern BOTAN_PBKDF_ARGON2I
  , pattern BOTAN_PBKDF_ARGON2ID
  , pattern BOTAN_PBKDF_BCRYPT_PBKDF
  , pattern BOTAN_PBKDF_OPENPGP_S2K
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Data.Word (Word32, Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

{-------------------------------------------------------------------------------
  Password hashing
-------------------------------------------------------------------------------}

{- $password-hashing

For 'Safe.botan_pwdhash' the interpretation of parameters @param1@,
@param2@, and @param3@ are different depending on the PBKDF algorithm that is
picked. See the documentation of the
[@from_params@](https://botan.randombit.net/handbook/api_ref/pbkdf.html#passwordhash)
C++ function for more information about the meaning of the parameters.

For the @Argon2@ and @Scrypt@ PBKDF algorithms, 'Safe.botan_pwdhash_timed'
returns parameters in a different order than the order in which they should
be passed to 'Safe.botan_pwdhash'. This is a known issue with the Botan C++
library. See <https://github.com/randombit/botan/issues/2144> for more
information.

'Safe.botan_pwdhash_timed' always returns parameters in this order:

> (iterations, parallelism, memoryParam)

'Safe.botan_pwdhash' should be given parameters in this order for the
@Argon2@ and @Scrypt@ algorithms:

> param1 = memoryParam
> param2 = iterations
> param3 = parallelism
-}

botan_pwdhash :: ConstPtr CChar -> CSize -> CSize -> CSize -> Ptr Word8 -> CSize -> ConstPtr CChar -> CSize -> ConstPtr Word8 -> CSize -> IO CInt
botan_pwdhash = Safe.botan_pwdhash_wrapper

botan_pwdhash_timed :: ConstPtr CChar -> Word32 -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr Word8 -> CSize -> ConstPtr CChar -> CSize -> ConstPtr Word8 -> CSize -> IO CInt
botan_pwdhash_timed = Safe.botan_pwdhash_timed_wrapper

{-------------------------------------------------------------------------------
  Available schemes
-------------------------------------------------------------------------------}

{- $available-schemes

A number of algorithms are available to be used as password derivation schemes.
An algorithm is selected by passing the /algorithm specification name/ of the
algorithm as a string to the password hashing functions. In some cases an
algorithm specification name is just the /algorithm name/, like @"Scrypt"@. In
other cases an algorithm specification name is a combination of an algorithm
name paired with some parameters, such as @"PKBDF2(SHA-256)"@ where @"PBKDF2"@
is the algorithm name followed by a single parameter. Pattern synonyms are
included for each available /algorithm name/. Where necessary, such as in the
@"PBKDF2"@ case, these algorithm names should be manually extended to full
algorithm specification names.

See the [Available
Schemes](https://botan.randombit.net/handbook/api_ref/pbkdf.html#available-schemes)
section of the C++ API reference for more information about available schemes.
-}

pattern BOTAN_PBKDF_PBKDF2
      , BOTAN_PBKDF_SCRYPT
      , BOTAN_PBKDF_ARGON2D
      , BOTAN_PBKDF_ARGON2I
      , BOTAN_PBKDF_ARGON2ID
      , BOTAN_PBKDF_BCRYPT_PBKDF
      , BOTAN_PBKDF_OPENPGP_S2K
      :: (Eq a, IsString a) => a

-- |
-- >>> BOTAN_PBKDF_PBKDF2 @String
-- "PBKDF2"
pattern BOTAN_PBKDF_PBKDF2 = "PBKDF2"

-- |
-- >>> BOTAN_PBKDF_SCRYPT @String
-- "Scrypt"
pattern BOTAN_PBKDF_SCRYPT = "Scrypt"

-- |
-- >>> BOTAN_PBKDF_ARGON2D @String
-- "Argon2d"
pattern BOTAN_PBKDF_ARGON2D = "Argon2d"

-- |
-- >>> BOTAN_PBKDF_ARGON2I @String
-- "Argon2i"
pattern BOTAN_PBKDF_ARGON2I = "Argon2i"

-- |
-- >>> BOTAN_PBKDF_ARGON2ID @String
-- "Argon2id"
pattern BOTAN_PBKDF_ARGON2ID = "Argon2id"

-- |
-- >>> BOTAN_PBKDF_BCRYPT_PBKDF @String
-- "Bcrypt-PBKDF"
pattern BOTAN_PBKDF_BCRYPT_PBKDF = "Bcrypt-PBKDF"

-- |
-- >>> BOTAN_PBKDF_OPENPGP_S2K @String
-- "OpenPGP-S2K"
pattern BOTAN_PBKDF_OPENPGP_S2K = "OpenPGP-S2K"
