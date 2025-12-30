{-|
Module      : Botan.Bindings.KDF
Description : Key Derivation Functions (KDF)
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.KDF (
    botan_kdf
  , pattern BOTAN_KDF_HKDF
  , pattern BOTAN_KDF_HKDF_EXTRACT
  , pattern BOTAN_KDF_HKDF_EXPAND
  , pattern BOTAN_KDF_KDF2
  , pattern BOTAN_KDF_KDF1_18033
  , pattern BOTAN_KDF_KDF1
  , pattern BOTAN_KDF_TLS_12_PRF
  , pattern BOTAN_KDF_X9_42_PRF
  , pattern BOTAN_KDF_SP800_108_COUNTER
  , pattern BOTAN_KDF_SP800_108_FEEDBACK
  , pattern BOTAN_KDF_SP800_108_PIPELINE
  , pattern BOTAN_KDF_SP800_56A
  , pattern BOTAN_KDF_SP800_56C
  ) where

import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Data.Word (Word8)
import           Foreign.C.Types (CChar, CInt, CSize)
import           Foreign.Ptr (Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_kdf :: ConstPtr CChar -> Ptr Word8 -> CSize -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> ConstPtr Word8 -> CSize -> IO CInt
botan_kdf = Safe.botan_kdf_wrapper

pattern BOTAN_KDF_HKDF
    ,   BOTAN_KDF_HKDF_EXTRACT
    ,   BOTAN_KDF_HKDF_EXPAND
    ,   BOTAN_KDF_KDF2
    ,   BOTAN_KDF_KDF1_18033
    ,   BOTAN_KDF_KDF1
    ,   BOTAN_KDF_TLS_12_PRF
    ,   BOTAN_KDF_X9_42_PRF
    ,   BOTAN_KDF_SP800_108_COUNTER
    ,   BOTAN_KDF_SP800_108_FEEDBACK
    ,   BOTAN_KDF_SP800_108_PIPELINE
    ,   BOTAN_KDF_SP800_56A
    ,   BOTAN_KDF_SP800_56C
    :: (Eq a, IsString a) => a

-- NOTE: All KDFs take a HashName or HMAC(HashName) as an argument
pattern BOTAN_KDF_HKDF                = "HKDF"
pattern BOTAN_KDF_HKDF_EXTRACT        = "HKDF-Extract"
pattern BOTAN_KDF_HKDF_EXPAND         = "HKDF-Expand"
pattern BOTAN_KDF_KDF2                = "KDF2"
pattern BOTAN_KDF_KDF1_18033          = "KDF1-18033"
pattern BOTAN_KDF_KDF1                = "KDF1"
pattern BOTAN_KDF_TLS_12_PRF          = "TLS-12-PRF"
-- NOTE: X9_42_PRF is only supposed to take "SHA-1" as an argument
pattern BOTAN_KDF_X9_42_PRF           = "X9.42-PRF"
-- NOTE: SP800 inner content should also be wrapped in HMAC, eg:
--  BOTAN_KDF_SP800_56A \$ BOTAN_MAC_HMAC \$ someHash
pattern BOTAN_KDF_SP800_108_COUNTER   = "SP800-108-Counter"
pattern BOTAN_KDF_SP800_108_FEEDBACK  = "SP800-108-Feedback"
pattern BOTAN_KDF_SP800_108_PIPELINE  = "SP800-108-Pipeline"
pattern BOTAN_KDF_SP800_56A           = "SP800-56A"
pattern BOTAN_KDF_SP800_56C           = "SP800-56C"
