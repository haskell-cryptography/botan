{-|
Module      : Botan.Low.PubKey.Sign
Description : Signature Generation
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Sign (

  -- * Public key signatures
    Sign(..)
  , SigningFlags
  , pattern StandardFormatSignature
  , pattern DERFormatSignature
  , withSign
  , signCreate
  , signDestroy
  , signOutputLength
  , signUpdate
  , signFinish

  ) where

import           Botan.Bindings.ConstPtr (ConstPtr (..))
import           Botan.Bindings.PubKey.Sign
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.Make
import           Botan.Low.PubKey
import           Botan.Low.Remake
import           Botan.Low.RNG
import           Control.DeepSeq
import           Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Marshal.Alloc
import           Foreign.Ptr
import           Foreign.Storable

-- /*
-- * Signature Generation
-- */

newtype Sign = MkSign { getSignForeignPtr :: ForeignPtr BotanPKOpSignStruct }

withSign     :: Sign -> (BotanPKOpSign -> IO a) -> IO a
signDestroy  :: Sign -> IO ()
createSign   :: (Ptr BotanPKOpSign -> IO CInt) -> IO Sign
(withSign, signDestroy, createSign)
    = mkBindings
        MkBotanPKOpSign (.runBotanPKOpSign)
        MkSign (.getSignForeignPtr)
        botan_pk_op_sign_destroy

type SigningFlags = Word32

pattern StandardFormatSignature   -- ^ Not an actual flags
    ,   DERFormatSignature
    ::  SigningFlags
pattern StandardFormatSignature = BOTAN_PUBKEY_STD_FORMAT_SIGNATURE
pattern DERFormatSignature = BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

signCreate
    :: PrivKey      -- ^ __key__
    -> EMSAName     -- ^ __hash_and_padding__
    -> SigningFlags -- ^ __flags__
    -> IO Sign      -- ^ __op__
signCreate sk algo flags = withPrivKey sk $ \ skPtr -> do
    asCString algo $ \ algoPtr -> do
        createSign $ \ out -> botan_pk_op_sign_create
            out
            skPtr
            (ConstPtr algoPtr)
            flags

signOutputLength
    :: Sign     -- ^ __op__
    -> IO Int   -- ^ __olen__
signOutputLength = mkGetSize withSign botan_pk_op_sign_output_length

signUpdate
    :: Sign         -- ^ __op__
    -> ByteString   -- ^ __in[]__
    -> IO ()
-- signUpdate = mkSetBytesLen withSign botan_pk_op_sign_update
signUpdate = mkWithObjectSetterCBytesLen withSign botan_pk_op_sign_update

-- | Finish signing
--
-- Depending on the algorithm, signatures produced using StandardFormatSignature
-- may have trailing null bytes.
signFinish
    :: Sign             -- ^ __op__
    -> RNG              -- ^ __rng__
    -> IO ByteString    -- ^ __sig[]__
-- TODO: Signature type
-- NOTE: This function is still highly suspect
signFinish sign rng = withSign sign $ \ signPtr -> do
    withRNG rng $ \ botanRNG -> do
        -- NOTE: Investigation into DER format shows lots of trailing nulls that may need to be trimmed
        --  using the output of szPtr if sz is just an upper-bound estimate
        -- sz <- signOutputLength sign
        -- allocBytes sz $ \ sigPtr -> do
        --     alloca $ \ szPtr -> do
        --         poke szPtr (fromIntegral sz)
        --         throwBotanIfNegative_ $ botan_pk_op_sign_finish signPtr botanRNG sigPtr szPtr
        -- NOTE: This doesn't work, I think the output length poke is necessary
        -- allocBytesQuerying $ \ sigPtr szPtr -> do
        --     botan_pk_op_sign_finish signPtr botanRNG sigPtr szPtr
        -- NOTE: Trying combo, this should be packaged as allocBytesUpperBound or something
        --  We get an upper bound, allocate at least that many, poke the size, perform the
        --  op, read the actual size, and trim.
        sz <- signOutputLength sign
        (sz',bytes) <- allocBytesWith sz $ \ sigPtr -> do
            alloca $ \ szPtr -> do
                poke szPtr (fromIntegral sz)
                throwBotanIfNegative_ $ botan_pk_op_sign_finish signPtr botanRNG sigPtr szPtr
                peek szPtr
        return $!! ByteString.take (fromIntegral sz') bytes

-- /**
-- * Signature Scheme Utility Functions
-- */

-- TODO: botan_pkcs_hash_id
