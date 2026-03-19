{-|
Module      : Botan.Bindings.XOF
Description : eXtendable Output Functions (XOFs)
Copyright   : (c) 2026-2027, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

An eXtendable Output Function (XOF) transforms an arbitrary length input message into an indefinite stream of output bits. Typically, it is illegal to call update() after the first call to output().
-}

{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.XOF (
    BotanXOFStruct
  , BotanXOF (..)
  , botan_xof_init
  , botan_xof_copy_state
  , botan_xof_block_size
  , botan_xof_name
  , botan_xof_accepts_input
  , botan_xof_clear
  , botan_xof_update
  , botan_xof_output
  , botan_xof_destroy
  , pattern BOTAN_XOF_ASCON_XOF128
  , pattern BOTAN_XOF_SHAKE_128_XOF
  , pattern BOTAN_XOF_SHAKE_256_XOF
  ) where

import           Botan.Bindings.ConstPtr
import           Data.String
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Foreign.Storable

-- | Opaque XOF struct
data {-# CTYPE "botan/ffi.h" "struct botan_xof_struct" #-} BotanXOFStruct

-- | Botan XOF object
newtype {-# CTYPE "botan/ffi.h" "botan_xof_t" #-} BotanXOF
    = MkBotanXOF { ptr :: Ptr BotanXOFStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the eXtendable Output Function
foreign import capi safe "botan/ffi.h &botan_xof_destroy"
    botan_xof_destroy
        :: FinalizerPtr BotanXOFStruct

-- | Initialize an eXtendable Output Function
foreign import capi safe "botan/ffi.h botan_xof_init"
    botan_xof_init
        :: Ptr BotanXOF   -- ^ __xof__: XOF object
        -> ConstPtr CChar -- ^ __xof_name__: name of the XOF, e.g., "SHAKE-128"
        -> Word32         -- ^ __flags__: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG
        -> IO CInt        -- ^ 0 on success, a negative value on failure

-- | Copy the state of an eXtendable Output Function
foreign import capi safe "botan/ffi.h botan_xof_copy_state"
    botan_xof_copy_state
        :: Ptr BotanXOF -- ^ __dest__: destination XOF object
        -> BotanXOF     -- ^ __source__: source XOF object
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Writes the block size of the eXtendable Output Function to *block_size
foreign import capi safe "botan/ffi.h botan_xof_block_size"
    botan_xof_block_size
        :: BotanXOF  -- ^ __xof__: XOF object
        -> Ptr CSize -- ^ __block_size__: output buffer to hold the XOF's block size
        -> IO CInt   -- ^ returns the XOF block size

-- | Get the name of this eXtendable Output Function
foreign import capi safe "botan/ffi.h botan_xof_name"
    botan_xof_name
        :: BotanXOF  -- ^ __xof__: XOF object to read
        -> Ptr CChar -- ^ __name__: output buffer
        -> Ptr CSize -- ^ __name_len__: on input, the length of buffer, on success the number of bytes written
        -> IO CInt   -- ^ 0 on success, a negative value on buffer preparation failure

-- | Get the input/output state of this eXtendable Output Function. Typically, XOFs don't accept input as soon as the first output bytes were requested.
foreign import capi safe "botan/ffi.h botan_xof_accepts_input"
    botan_xof_accepts_input
        :: BotanXOF -- ^ __xof__: XOF object
        -> IO CInt  -- ^ 1 iff the XOF is still accepting input bytes

-- | Reinitializes the state of the eXtendable Output Function
foreign import capi safe "botan/ffi.h botan_xof_clear"
    botan_xof_clear
        :: BotanXOF -- ^ __xof__: XOF object
        -> IO CInt  -- ^ 0 on success, a negative value on failure

-- | Send more input to the XOF
foreign import capi safe "botan/ffi.h botan_xof_update"
    botan_xof_update
        :: BotanXOF       -- ^ __xof__: XOF object
        -> ConstPtr Word8 -- ^ __in__: input buffer
        -> CSize          -- ^ __in_len__: number of bytes to read from the input buffer
        -> IO CInt        -- ^ 0 on success, a negative value on failure

-- | Generate output bytes from the XOF
foreign import capi safe "botan/ffi.h botan_xof_output"
    botan_xof_output
        :: BotanXOF  -- ^ __xof__: XOF object
        -> Ptr Word8 -- ^ __out__: output buffer
        -> CSize     -- ^ __out_len__: number of bytes to write into the output buffer
        -> IO CInt   -- ^ 0 on success, a negative value on failure

pattern BOTAN_XOF_ASCON_XOF128
    ,   BOTAN_XOF_SHAKE_128_XOF
    ,   BOTAN_XOF_SHAKE_256_XOF
    ::  (Eq a, IsString a) => a
pattern BOTAN_XOF_ASCON_XOF128  = "Ascon-XOF128"
pattern BOTAN_XOF_SHAKE_128_XOF = "SHAKE-128"
pattern BOTAN_XOF_SHAKE_256_XOF = "SHAKE-256"
