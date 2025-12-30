{-|
Module      : Botan.Bindings.Cipher
Description : Symmetric cipher modes
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.Cipher (
    Types.Botan_cipher_t (..)
  , Types.Botan_cipher_struct
  , botan_cipher_destroy_ptr
  , Types.bOTAN_CIPHER_INIT_FLAG_MASK_DIRECTION
  , Types.bOTAN_CIPHER_INIT_FLAG_ENCRYPT
  , Types.bOTAN_CIPHER_INIT_FLAG_DECRYPT
  , Safe.botan_cipher_init
  , Safe.botan_cipher_name
  , Safe.botan_cipher_output_length
  , Safe.botan_cipher_valid_nonce_length
  , Safe.botan_cipher_get_tag_length
  , Safe.botan_cipher_get_default_nonce_length
  , Safe.botan_cipher_get_update_granularity
  , Safe.botan_cipher_get_ideal_update_granularity
  , Safe.botan_cipher_query_keylen
  , Safe.botan_cipher_get_keyspec
  , Safe.botan_cipher_set_key
  , Safe.botan_cipher_reset
  , Safe.botan_cipher_set_associated_data
  , Safe.botan_cipher_start
  , Types.bOTAN_CIPHER_UPDATE_FLAG_FINAL
  , botan_cipher_update
  , Safe.botan_cipher_clear

  , pattern BOTAN_CIPHER_MODE_CBC
  , pattern BOTAN_CIPHER_MODE_CFB
  , pattern BOTAN_CIPHER_MODE_XTS

  , pattern BOTAN_CBC_PADDING_PKCS7
  , pattern BOTAN_CBC_PADDING_ONE_AND_ZEROS
  , pattern BOTAN_CBC_PADDING_X9_23
  , pattern BOTAN_CBC_PADDING_ESP
  , pattern BOTAN_CBC_PADDING_CTS
  , pattern BOTAN_CBC_PADDING_NO_PADDING

  , pattern BOTAN_AEAD_CHACHA20POLY1305

  , pattern BOTAN_AEAD_MODE_GCM
  , pattern BOTAN_AEAD_MODE_OCB
  , pattern BOTAN_AEAD_MODE_EAX
  , pattern BOTAN_AEAD_MODE_SIV
  , pattern BOTAN_AEAD_MODE_CCM
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Data.Word (Word32, Word8)
import           Foreign.C.Types (CInt, CSize)
import           Foreign.Ptr (FunPtr, Ptr)
import           HsBindgen.Runtime.ConstPtr (ConstPtr)

botan_cipher_destroy_ptr :: FunPtr (Types.Botan_cipher_t -> IO CInt)
botan_cipher_destroy_ptr = FunPtr.botan_cipher_destroy

botan_cipher_update :: Types.Botan_cipher_t -> Word32 -> Ptr Word8 -> CSize -> Ptr CSize -> ConstPtr Word8 -> CSize -> Ptr CSize -> IO CInt
botan_cipher_update = Safe.botan_cipher_update_wrapper

pattern BOTAN_CIPHER_MODE_CBC
    ,   BOTAN_CIPHER_MODE_CFB
    ,   BOTAN_CIPHER_MODE_XTS
    ::  (Eq a, IsString a) => a

pattern BOTAN_CIPHER_MODE_CBC = "CBC"
pattern BOTAN_CIPHER_MODE_CFB = "CFB"
pattern BOTAN_CIPHER_MODE_XTS = "XTS"

pattern BOTAN_CBC_PADDING_PKCS7
    ,   BOTAN_CBC_PADDING_ONE_AND_ZEROS
    ,   BOTAN_CBC_PADDING_X9_23
    ,   BOTAN_CBC_PADDING_ESP
    ,   BOTAN_CBC_PADDING_CTS
    ,   BOTAN_CBC_PADDING_NO_PADDING
    ::  (Eq a, IsString a) => a

pattern BOTAN_CBC_PADDING_PKCS7             = "PKCS7"
pattern BOTAN_CBC_PADDING_ONE_AND_ZEROS    = "OneAndZeros"
pattern BOTAN_CBC_PADDING_X9_23             = "X9.23"
pattern BOTAN_CBC_PADDING_ESP               = "ESP"
pattern BOTAN_CBC_PADDING_CTS               = "CTS"
pattern BOTAN_CBC_PADDING_NO_PADDING        = "NoPadding"

pattern BOTAN_AEAD_CHACHA20POLY1305
    ::  (Eq a, IsString a) => a

pattern BOTAN_AEAD_CHACHA20POLY1305 = "ChaCha20Poly1305"

pattern BOTAN_AEAD_MODE_GCM
    ,   BOTAN_AEAD_MODE_OCB
    ,   BOTAN_AEAD_MODE_EAX
    ,   BOTAN_AEAD_MODE_SIV
    ,   BOTAN_AEAD_MODE_CCM
    ::  (Eq a, IsString a) => a

pattern BOTAN_AEAD_MODE_GCM         = "GCM"
pattern BOTAN_AEAD_MODE_OCB         = "OCB"
pattern BOTAN_AEAD_MODE_EAX         = "EAX"
pattern BOTAN_AEAD_MODE_SIV         = "SIV"
pattern BOTAN_AEAD_MODE_CCM         = "CCM"
