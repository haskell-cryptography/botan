{-|
Module      : Botan.Low.Verify
Description : Signature Verification
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.Low.PubKey.Verify (

  -- * Public key signature verification
    Verify(..)
  , withVerify
  , verifyCreate
  , verifyDestroy
  , verifyUpdate
  , verifyFinish

  ) where

import           Botan.Bindings.PubKey.Verify
import           Botan.Low.Error.Internal
import qualified Botan.Low.Internal as Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.PubKey
import           Botan.Low.PubKey.Sign (SigningFlags, signingFlags)
import           Botan.Low.Remake
import           Data.ByteString (ByteString)
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           HsBindgen.Runtime.ConstPtr (ConstPtr (..))

-- /*
-- * Signature Verification
-- */

newtype Verify = MkVerify { getVerifyForeignPtr :: ForeignPtr Botan_pk_op_verify_struct }

withVerify     :: Verify -> (Botan_pk_op_verify_t -> IO a) -> IO a
verifyDestroy  :: Verify -> IO ()
createVerify   :: (Ptr Botan_pk_op_verify_t -> IO CInt) -> IO Verify
(withVerify, verifyDestroy, createVerify)
    = mkBindings
        Botan_pk_op_verify_t (.un_Botan_pk_op_verify_t)
        MkVerify (.getVerifyForeignPtr)
        (Internal.funPtrIgnoreRetCode botan_pk_op_verify_destroy_ptr)

verifyCreate
    :: PubKey       -- ^ __key__
    -> EMSAName     -- ^ __hash_and_padding__
    -> SigningFlags -- ^ __flags__
    -> IO Verify    -- ^ __op__
verifyCreate pk algo flags =  withPubKey pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        createVerify $ \ out -> botan_pk_op_verify_create
            out
            pkPtr
            (ConstPtr algoPtr)
            (signingFlags flags)

verifyUpdate
    :: Verify       -- ^ __op__
    -> ByteString   -- ^ __in[]__
    -> IO ()
verifyUpdate = mkWithObjectSetterCBytesLen withVerify botan_pk_op_verify_update

-- TODO: Signature type
verifyFinish ::
     Verify       -- ^ __op__
  -> ByteString   -- ^ __sig[]__
  -> IO Bool
verifyFinish verify sig =
    withVerify verify $ \ verifyPtr ->
    asBytesLen sig $ \ sigPtr sigLen ->
    throwBotanCatchingInvalidVerifier $ botan_pk_op_verify_finish
      verifyPtr
      (ConstPtr sigPtr)
      sigLen
