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

module Botan.Bindings.ZFEC where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

{-
ZFEC
-}

{-|
Encode some bytes with certain ZFEC parameters.

- @param K the number of shares needed for recovery
- @param N the number of shares generated
- @param input the data to FEC
- @param size the length in bytes of input, which must be a multiple of K

- @param outputs An out parameter pointing to a fully allocated array of size
               [N][size / K].  For all n in range, an encoded block will be
               written to the memory starting at outputs[n][0].

- @return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_zfec_encode(size_t K, size_t N,
                      const uint8_t *input,
                      size_t size,
                      uint8_t **outputs);@
-}
foreign import ccall unsafe botan_zfec_encode
    :: CSize            -- ^ size_t K
    -> CSize            -- ^ size_t N
    -> Ptr Word8        -- ^ const uint8_t *input
    -> CSize            -- ^ size_t size
    -> Ptr (Ptr Word8)  -- ^ uint8_t **outputs
    -> IO BotanErrorCode

-- foreign import ccall unsafe botan_zfec_encode
--     :: CSize            -- k, number of recovery shares
--     -> CSize            -- n, number of total shares
--     -> Ptr Word8        -- Input
--     -> CSize            -- Input length, must be multiple of k
--     -> Ptr (Ptr Word8)
--     -> IO BotanErrorCode

{-|
Decode some previously encoded shares using certain ZFEC parameters.

- @param K the number of shares needed for recovery
- @param N the total number of shares

- @param indexes The index into the encoder's outputs for the corresponding
               element of the inputs array. Must be of length K.

- @param inputs K previously encoded shares to decode
- @param shareSize the length in bytes of each input

- @param outputs An out parameter pointing to a fully allocated array of size
               [K][shareSize].  For all k in range, a decoded block will
               written to the memory starting at outputs[k][0].

- @return 0 on success, negative on failure

@BOTAN_PUBLIC_API(3,0)
int botan_zfec_decode(size_t K, size_t N,
                      const size_t *indexes,
                      uint8_t *const*const inputs,
                      size_t shareSize,
                      uint8_t **outputs);@
-}
foreign import ccall unsafe botan_zfec_decode
    :: CSize            -- k, number of recovery shares
    -> CSize            -- n, number of total shares
    -> Ptr CSize        -- Indexes
    -> Ptr (Ptr Word8)  -- Shares
    -> CSize            -- Share size
    -> Ptr (Ptr Word8)  -- Outputs
    -> IO BotanErrorCode
