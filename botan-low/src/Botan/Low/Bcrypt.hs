module Botan.Low.Bcrypt where

import qualified Data.ByteString as ByteString

import Botan.Bindings.Bcrypt

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random

-- /* Bcrypt password hashing */

-- NOTE: "@param out buffer holding the password hash, should be of length 64 bytes"
--  allocBytes 64 *is correct*
bcryptGenerate :: ByteString -> Random -> Int -> IO ByteString
bcryptGenerate password random factor = asCString password $ \ passwordPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        alloca $ \ szPtr -> do
            out <- allocBytes 64 $ \ outPtr -> do
                throwBotanIfNegative_ $ botan_bcrypt_generate
                    outPtr
                    szPtr
                    passwordPtr
                    randomPtr
                    (fromIntegral factor)
                    0
            sz <- peek szPtr
            return $ ByteString.copy $ ByteString.take (fromIntegral sz) $ out

bcryptIsValid :: ByteString -> ByteString -> IO Bool
bcryptIsValid password hash = asCString password $ \ passwordPtr -> do
    asCString hash $ \ hashPtr -> do
        throwBotanCatchingSuccess $ botan_bcrypt_is_valid passwordPtr hashPtr
