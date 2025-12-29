{-|
Module      : Botan.Low.FPE
Description : Format Preserving Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Format preserving encryption (FPE) refers to a set of techniques
for encrypting data such that the ciphertext has the same format
as the plaintext. For instance, you can use FPE to encrypt credit
card numbers with valid checksums such that the ciphertext is also
an credit card number with a valid checksum, or similarly for bank
account numbers, US Social Security numbers, or even more general
mappings like English words onto other English words.

The scheme currently implemented in botan is called FE1, and described
in the paper Format Preserving Encryption by Mihir Bellare, Thomas
Ristenpart, Phillip Rogaway, and Till Stegers. FPE is an area of
ongoing standardization and it is likely that other schemes will be
included in the future.

To encrypt an arbitrary value using FE1, you need to use a ranking
method. Basically, the idea is to assign an integer to every value
you might encrypt. For instance, a 16 digit credit card number consists
of a 15 digit code plus a 1 digit checksum. So to encrypt a credit card
number, you first remove the checksum, encrypt the 15 digit value modulo
1015, and then calculate what the checksum is for the new (ciphertext)
number. Or, if you were encrypting words in a dictionary, you could rank
the words by their lexicographical order, and choose the modulus to be
the number of words in the dictionary.
-}

module Botan.Low.FPE (

    FPE(..)
  , FPEFlags(..)
  , fPEFlags
  , withFPE
  , fpeInitFE1
  , fpeDestroy
  , fpeEncrypt
  , fpeDecrypt

  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.FPE
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.MPI
import           Botan.Low.Remake
import           Data.ByteString (ByteString)
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

-- NOTE: This module lacks documentation, and is not mentioned in the FFI bindings.
--  It is mentioned in the C++ docs, but the construction significantly differs.
--  I did find these functions in the actual header, and have implemented them as to my best guess
--  It is untested, pending an understanding of what the expected parameters are.
-- I think the FPE FFI is using the "original interface to FE1, first added in 1.9.17",
-- because they do not take a mac algo parameter, and may be hardcoded to "HMAC(SHA-256)"
--  SEE: https://botan.randombit.net/handbook/api_ref/fpe.html

-- NOTE: Source indicates that the FPE1 mac_algo is using the default "HMAC(SHA-256)", and
--  that the option is not exposed to FFI.

-- /**
-- * Format Preserving Encryption
-- */

newtype FPE = MkFPE { getFPEForeignPtr :: ForeignPtr BotanFPEStruct }

withFPE     :: FPE -> (BotanFPE -> IO a) -> IO a
fpeDestroy  :: FPE -> IO ()
createFPE   :: (Ptr BotanFPE -> IO CInt) -> IO FPE
(withFPE, fpeDestroy, createFPE)
    = mkBindings
        MkBotanFPE (.runBotanFPE)
        MkFPE (.getFPEForeignPtr)
        botan_fpe_destroy

data FPEFlags =
    FPENone
  | FPEFE1CompatMode

fPEFlags :: FPEFlags -> Word32
fPEFlags FPENone          = BOTAN_FPE_FLAG_NONE
fPEFlags FPEFE1CompatMode = BOTAN_FPE_FLAG_FE1_COMPAT_MODE

-- | Initialize a FE1 FPE context
fpeInitFE1
    :: MP           -- ^ __n__
    -> ByteString   -- ^ __key[]__
    -> Int          -- ^ __rounds__
    -> FPEFlags     -- ^ __flags__
    -> IO FPE       -- ^ __fpe__
fpeInitFE1 n key rounds flags = withMP n $ \ nPtr -> do
    asBytesLen key $ \ keyPtr keyLen -> do
        createFPE $ \ out -> botan_fpe_fe1_init
            out
            nPtr
            (ConstPtr keyPtr)
            keyLen
            (fromIntegral rounds)
            (fPEFlags flags)

-- -- NOTE: Referentially transparent, move to botan
-- fpeEncrypt :: FPE -> MP -> ByteString -> IO MP
-- fpeEncrypt fpe mp tweak = do
--     mp' <- mpCopy mp
--     fpeEncrypt fpe mp' tweak
--     return mp

-- | Encrypt the 'x' value in-place
--
-- NOTE: Mutates the MP
fpeEncrypt
    :: FPE          -- ^ __fpe__
    -> MP           -- ^ __x__
    -> ByteString   -- ^ __tweak[]__
    -> IO ()
fpeEncrypt fpe mp tweak = do
    withFPE fpe $ \ fpePtr -> do
        withMP mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_encrypt fpePtr mpPtr (ConstPtr tweakPtr) tweakLen

-- -- NOTE: Referentially transparent, move to botan
-- fpeDecrypt :: FPE -> MP -> ByteString -> IO MP
-- fpeDecrypt fpe mp tweak = do
--     mp' <- mpCopy mp
--     fpeDecrypt fpe mp' tweak
--     return mp

-- | Decrypt the 'x' value in-place
--
-- NOTE: Mutates the MP
fpeDecrypt
    :: FPE          -- ^ __fpe__
    -> MP           -- ^ __x__
    -> ByteString   -- ^ __tweak[]__
    -> IO ()
fpeDecrypt fpe mp tweak = do
    withFPE fpe $ \ fpePtr -> do
        withMP mp $ \ mpPtr -> do
            asBytesLen tweak $ \ tweakPtr tweakLen -> do
                throwBotanIfNegative_ $ botan_fpe_decrypt fpePtr mpPtr (ConstPtr tweakPtr) tweakLen
