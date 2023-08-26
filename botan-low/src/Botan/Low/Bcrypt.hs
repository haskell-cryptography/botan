{-|
Module      : Botan.Low.Bcrypt
Description : Bcrypt password hashing
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

Generate and validate Bcrypt password hashes
-}

module Botan.Low.Bcrypt where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Bcrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.RNG

import Data.ByteString.Internal as ByteString

-- |Create a password hash using Bcrypt
--
--  Output is formatted bcrypt $2a$...
bcryptGenerateIO
    :: ByteString   -- ^ The password
    -> RNGCtx       -- ^ A random number generator
    -> Int          -- ^ A work factor to slow down guessing attacks (a value of 12 to 16 is probably fine).
    -> IO ByteString
bcryptGenerateIO password rng factor = asCString password $ \ passwordPtr -> do
   withRNGPtr rng $ \ rngPtr -> do
        alloca $ \ szPtr -> do
            {-
            -- NOTE: Despite the documentation stating:
            --  "@param out buffer holding the password hash, should be of length 64 bytes"
            --  It still throws an InsufficientBufferSpaceException, but we cannot use
            --  allocBytesQuerying to fix it. I have doubled the buffer size as a precaution.
            out <- allocBytes 256 $ \ outPtr -> do
                throwBotanIfNegative_ $ botan_bcrypt_generate
                    outPtr
                    szPtr
                    passwordPtr
                    rngPtr
                    (fromIntegral factor)
                    0   -- "@param flags should be 0 in current API revision, all other uses are reserved"
            sz <- peek szPtr
            -- TODO: Enforce strictness similarly elsewhere as necessary
            -- return $! ByteString.copy $! ByteString.take (fromIntegral sz) out
                -- NOTE: The safety of this function is suspect - may require deepseq
            -- let bcrypt = ByteString.copy $ ByteString.take (fromIntegral sz) out
            --     in bcrypt `seq` return bcrypt
            return $!! ByteString.copy $ ByteString.take (fromIntegral sz) out
            -}
            ByteString.createAndTrim 256 $ \ outPtr -> do
                throwBotanIfNegative_ $ botan_bcrypt_generate
                    outPtr
                    szPtr
                    passwordPtr
                    rngPtr
                    (fromIntegral factor)
                    0   -- "@param flags should be 0 in current API revision, all other uses are reserved"
                fromIntegral <$> peek szPtr

-- |Check a previously created password hash
--
--  Returns True iff this password/hash combination is valid,
--  False if the combination is not valid (but otherwise well formed),
--  and otherwise throws an exception on error
bcryptIsValidIO
    :: ByteString   -- ^ The password to check against
    -> ByteString   -- ^ The stored hash to check against
    -> IO Bool
bcryptIsValidIO password hash = asCString password $ \ passwordPtr -> do
    asCString hash $ \ hashPtr -> do
        throwBotanCatchingSuccess $ botan_bcrypt_is_valid passwordPtr hashPtr
