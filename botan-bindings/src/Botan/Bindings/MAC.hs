{-|
Module      : Botan.Bindings.MAC
Description : Message Authentication Codes (MAC)
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

{-# LANGUAGE OverloadedStrings #-}

module Botan.Bindings.MAC (
    Types.Botan_mac_t (..)
  , Types.Botan_mac_struct
  , Safe.botan_mac_destroy
  , botan_mac_destroy_ptr
  , Safe.botan_mac_init
  , Safe.botan_mac_output_length
  , Safe.botan_mac_set_key
  , Safe.botan_mac_set_nonce
  , Safe.botan_mac_update
  , Safe.botan_mac_final
  , Safe.botan_mac_clear
  , Safe.botan_mac_name
  , Safe.botan_mac_get_keyspec

  , pattern BOTAN_MAC_CMAC
  , pattern BOTAN_MAC_GMAC
  , pattern BOTAN_MAC_HMAC
  , pattern BOTAN_MAC_Poly1305
  , pattern BOTAN_MAC_SipHash
  , pattern BOTAN_MAC_X9_19_MAC
  ) where

import qualified Botan.Bindings.Generated as Types
import qualified Botan.Bindings.Generated.FunPtr as FunPtr
import qualified Botan.Bindings.Generated.Safe as Safe
import           Data.String (IsString)
import           Foreign.C.Types (CInt)
import           Foreign.Ptr (FunPtr)

botan_mac_destroy_ptr :: FunPtr (Types.Botan_mac_t -> IO CInt)
botan_mac_destroy_ptr = FunPtr.botan_mac_destroy

pattern BOTAN_MAC_CMAC
    ,   BOTAN_MAC_GMAC
    -- ,   BOTAN_MAC_CBC_MAC
    ,   BOTAN_MAC_HMAC
    -- ,   BOTAN_MAC_KMAC_128
    -- ,   BOTAN_MAC_KMAC_256
    ,   BOTAN_MAC_Poly1305
    ,   BOTAN_MAC_SipHash
    ,   BOTAN_MAC_X9_19_MAC
    ::  (Eq a, IsString a) => a

pattern BOTAN_MAC_CMAC      = "CMAC"
pattern BOTAN_MAC_GMAC      = "GMAC"
-- pattern BOTAN_MAC_CBC_MAC   = "CBC-MAC"
pattern BOTAN_MAC_HMAC      = "HMAC"
-- pattern BOTAN_MAC_KMAC_128  = ...
-- pattern BOTAN_MAC_KMAC_256  = ...
pattern BOTAN_MAC_Poly1305  = "Poly1305"
pattern BOTAN_MAC_SipHash   = "SipHash"
pattern BOTAN_MAC_X9_19_MAC = "X9.19-MAC"
