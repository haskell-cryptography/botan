{-|
Module      : Botan.Low.Encrypt
Description : Public Key Encryption
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Encrypt (

  -- * Public key encryption
    Encrypt(..)
  , withEncrypt
  , encryptCreate
  , encryptDestroy
  , encryptOutputLength
  , encrypt

  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.PubKey.Encrypt
import           Botan.Low.Error.Internal (throwBotanIfNegative_)
import           Botan.Low.Internal.ByteString
import           Botan.Low.Make
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG
import           Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Internal as BSI
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

-- /*
-- * Public Key Encryption
-- */

newtype Encrypt = MkEncrypt { foreignPtr :: ForeignPtr BotanPKOpEncryptStruct }

withEncrypt     :: Encrypt -> (BotanPKOpEncrypt -> IO a) -> IO a
encryptDestroy  :: Encrypt -> IO ()
createEncrypt   :: (Ptr BotanPKOpEncrypt -> IO CInt) -> IO Encrypt
(withEncrypt, encryptDestroy, createEncrypt)
    = mkBindings
        MkBotanPKOpEncrypt (.ptr)
        MkEncrypt (.foreignPtr)
        botan_pk_op_encrypt_destroy

encryptCreate
    :: PubKey       -- ^ __key__
    -> EMEName      -- ^ __padding__
    -> IO Encrypt   -- ^ __op__
encryptCreate pk padding = withPubKey pk $ \ pkPtr -> do
    asCString padding $ \ paddingPtr -> do
        createEncrypt $ \ out -> botan_pk_op_encrypt_create
            out
            pkPtr
            (ConstPtr paddingPtr)
            0

encryptOutputLength
    :: Encrypt  -- ^ __op__
    -> Int      -- ^ __ptext_len__
    -> IO Int   -- ^ __ctext_len__
encryptOutputLength = mkGetSize_csize withEncrypt botan_pk_op_encrypt_output_length

encrypt ::
     Encrypt          -- ^ __op__
  -> RNG              -- ^ __rng__
  -> ByteString       -- ^ __plaintext[]__
  -> IO ByteString    -- ^ __ciphertext[]__
encrypt enc rng ptext =
    withEncrypt enc $ \ encPtr ->
    withRNG rng $ \ botanRNG ->
    asBytesLen ptext $ \ ptextPtr ptextLen ->
    alloca $ \szPtr -> do
      sz <- encryptOutputLength enc (BS.length ptext)
      poke szPtr (fromIntegral sz)
      BSI.createAndTrim sz $ \outPtr -> do
        throwBotanIfNegative_ $
          botan_pk_op_encrypt
            encPtr
            botanRNG
            outPtr
            szPtr
            ptextPtr
            ptextLen
        fromIntegral <$> peek szPtr
