{-|
Module      : Botan.Bindings.SRP6
Description : Secure remote password
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

This module is based on the [Secure Remote
Password](https://botan.randombit.net/handbook/api_ref/srp.html) section of the
C++ API reference.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.SRP6 (
    -- $srp6
    Types.Botan_srp6_server_session_t (..)
  , Types.Botan_srp6_server_session_struct
  , Safe.botan_srp6_server_session_destroy
  , botan_srp6_server_session_destroy_ptr
  , Safe.botan_srp6_server_session_init
  , botan_srp6_server_session_step1
  , botan_srp6_server_session_step2
  , botan_srp6_generate_verifier
  , botan_srp6_client_agree
  , Safe.botan_srp6_group_size
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

{- $srp6

'Safe.botan_srp6_server_session_destroy' (or its 'FunPtr' variant) should be not
be invoked twice on the same server session. Regardless of the result of the
first invocation, the second invocation will result in an error. See
https://github.com/randombit/botan/issues/5112 for more information. If a second
invocation can not be prevented, try it on a newly initialised server session
instead.

'Safe.botan_srp6_group_size' can be used to determine the size of output
buffers for generated keys in the SRP6 algorithm. Such buffers need to be
allocated before calling SRP6 functions. An example of such a buffer is the
@verifier[]@ buffer in the 'botan_srp6_generate_verifier' function.
-}

botan_srp6_server_session_destroy_ptr :: FunPtr (Types.Botan_srp6_server_session_t -> IO CInt)
botan_srp6_server_session_destroy_ptr = FunPtr.botan_srp6_server_session_destroy

botan_srp6_server_session_step1 :: Types.Botan_srp6_server_session_t -> ConstPtr Word8 -> CSize -> ConstPtr CChar -> ConstPtr CChar -> Types.Botan_rng_t -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_srp6_server_session_step1 = Safe.botan_srp6_server_session_step1_wrapper

botan_srp6_server_session_step2 :: Types.Botan_srp6_server_session_t -> ConstPtr Word8 -> CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_srp6_server_session_step2 = Safe.botan_srp6_server_session_step2_wrapper

botan_srp6_generate_verifier :: ConstPtr CChar -> ConstPtr CChar -> ConstPtr Word8 -> CSize -> ConstPtr CChar -> ConstPtr CChar -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_srp6_generate_verifier = Safe.botan_srp6_generate_verifier_wrapper

botan_srp6_client_agree :: ConstPtr CChar -> ConstPtr CChar -> ConstPtr CChar -> ConstPtr CChar -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> Types.Botan_rng_t -> Ptr Word8 -> Ptr CSize -> Ptr Word8 -> Ptr CSize -> IO CInt
botan_srp6_client_agree = Safe.botan_srp6_client_agree_wrapper
