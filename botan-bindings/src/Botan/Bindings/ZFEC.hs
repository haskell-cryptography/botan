{-|
Module      : Botan.Bindings.ZFEC
Description : ZFEC Forward Error Correction
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

The ZFEC module provides forward error correction compatible
with the zfec library.

Forward error correction takes an input and creates multiple
“shares”, such that any K of N shares is sufficient to recover
the entire original input.

Note

Specific to the ZFEC format, the first K generated shares are
identical to the original input data, followed by N-K shares of
error correcting code. This is very different from threshold
secret sharing, where having fewer than K shares gives no
information about the original input.

Warning

If a corrupted share is provided to the decoding algorithm, the
resulting decoding will be invalid. It is recommended to protect
shares using a technique such as a MAC or public key signature,
if corruption is likely in your application.

ZFEC requires that the input length be exactly divisible by K; if
needed define a padding scheme to pad your input to the necessary
size.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.ZFEC where

import Botan.Bindings.Prelude

-- | Encode some bytes with certain ZFEC parameters.
foreign import capi safe "botan/ffi.h botan_zfec_encode"
    botan_zfec_encode
        :: CSize            -- ^ @K@: the number of shares needed for recovery
        -> CSize            -- ^ @N@: the number of shares generated
        -> ConstPtr Word8   -- ^ @input@: the data to FEC
        -> CSize            -- ^ @size@: the length in bytes of input, which must be a multiple of K
        -> Ptr (Ptr Word8)  -- ^ @outputs@: An out parameter pointing to a fully allocated array of size
                            --   [N][size / K].  For all n in range, an encoded block will be
                            --   written to the memory starting at outputs[n][0].
        -> IO CInt          -- ^ 0 on success, negative on failure

-- | Decode some previously encoded shares using certain ZFEC parameters.
foreign import capi safe "botan/ffi.h botan_zfec_decode"
    botan_zfec_decode
        :: CSize                     -- ^ @K@: the number of shares needed for recovery
        -> CSize                     -- ^ @N@: the total number of shares
        -> ConstPtr CSize            -- ^ @indexes@: The index into the encoder's outputs for the corresponding
                                     --   element of the inputs array. Must be of length K.
        -> ConstPtr (ConstPtr Word8) -- ^ @inputs@: K previously encoded shares to decode
        -> CSize                     -- ^ @shareSize@: the length in bytes of each input
        -> Ptr (Ptr Word8)           -- ^ @outputs@: An out parameter pointing to a fully allocated array of size
                                     --   [K][shareSize].  For all k in range, a decoded block will
                                     --   written to the memory starting at outputs[k][0].
        -> IO CInt                   -- ^ 0 on success, negative on failure
