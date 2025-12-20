{-|
Module      : Botan.Bindings.MAC
Description : Message Authentication Codes (MAC)
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

A Message Authentication Code algorithm computes a tag over a
message utilizing a shared secret key. Thus a valid tag confirms
the authenticity and integrity of the message. Only entities in
possession of the shared secret key are able to verify the tag.

Note

When combining a MAC with unauthenticated encryption mode, prefer
to first encrypt the message and then MAC the ciphertext. The
alternative is to MAC the plaintext, which depending on exact usage
can suffer serious security issues. For a detailed discussion of
this issue see the paper “The Order of Encryption and Authentication
for Protecting Communications” by Hugo Krawczyk

The Botan MAC computation is split into five stages.

- Instantiate the MAC algorithm.

- Set the secret key.

- Process IV.

- Process data.

- Finalize the MAC computation.
-}

{-# LANGUAGE CApiFFI #-}

module Botan.Bindings.MAC (
    BotanMACStruct
  , BotanMAC (..)
  , botan_mac_destroy

  , pattern BOTAN_MAC_CMAC
  , pattern BOTAN_MAC_GMAC
  , pattern BOTAN_MAC_HMAC
  , pattern BOTAN_MAC_Poly1305
  , pattern BOTAN_MAC_SipHash
  , pattern BOTAN_MAC_X9_19_MAC

  , botan_mac_init
  , botan_mac_output_length
  , botan_mac_set_key
  , botan_mac_set_nonce
  , botan_mac_update
  , botan_mac_final
  , botan_mac_clear
  , botan_mac_name
  , botan_mac_get_keyspec
  ) where

import           Botan.Bindings.ConstPtr
import           Data.String
import           Data.Word
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr
import           Foreign.Storable

-- | Opaque MAC struct
data {-# CTYPE "botan/ffi.h" "struct botan_mac_struct" #-} BotanMACStruct

-- | Botan MAC object
newtype {-# CTYPE "botan/ffi.h" "botan_mac_t" #-} BotanMAC
    = MkBotanMAC { runBotanMAC :: Ptr BotanMACStruct }
        deriving newtype (Eq, Ord, Storable)

-- | Frees all resources of the MAC object
foreign import capi safe "botan/ffi.h &botan_mac_destroy"
    botan_mac_destroy
        :: FinalizerPtr BotanMACStruct

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

-- | Initialize a message authentication code object
foreign import capi safe "botan/ffi.h botan_mac_init"
    botan_mac_init
        :: Ptr BotanMAC     -- ^ __mac__: mac object
        -> ConstPtr CChar   -- ^ __mac_name__: name of the hash function, e.g., "HMAC(SHA-384)"
        -> Word32           -- ^ __flags__: should be 0 in current API revision, all other uses are reserved
                            --   and return a negative value (error code)
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Writes the output length of the message authentication code to *output_length
foreign import capi safe "botan/ffi.h botan_mac_output_length"
    botan_mac_output_length
        :: BotanMAC     -- ^ __mac__: mac object
        -> Ptr CSize    -- ^ __output_length__: output buffer to hold the MAC output length
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Sets the key on the MAC
foreign import capi safe "botan/ffi.h botan_mac_set_key"
    botan_mac_set_key
        :: BotanMAC         -- ^ __mac__: mac object
        -> ConstPtr Word8   -- ^ __key__: buffer holding the key
        -> CSize            -- ^ __key_len__: size of the key buffer in bytes
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Sets the nonce on the MAC
foreign import capi safe "botan/ffi.h botan_mac_set_nonce"
    botan_mac_set_nonce
        :: BotanMAC         -- ^ __mac__: mac object
        -> ConstPtr Word8   -- ^ __nonce__: buffer holding the nonce
        -> CSize            -- ^ __nonce_len__: size of the nonce buffer in bytes
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Send more input to the message authentication code
foreign import capi safe "botan/ffi.h botan_mac_update"
    botan_mac_update
        :: BotanMAC         -- ^ __mac__: mac object
        -> ConstPtr Word8   -- ^ __buf__: input buffer
        -> CSize            -- ^ __len__: number of bytes to read from the input buffer
        -> IO CInt          -- ^ 0 on success, a negative value on failure

{- |
Finalizes the MAC computation and writes the output to
out[0:botan_mac_output_length()] then reinitializes for computing
another MAC as if botan_mac_clear had been called.
-}
foreign import capi safe "botan/ffi.h botan_mac_final"
    botan_mac_final
        :: BotanMAC     -- ^ __mac__: mac object
        -> Ptr Word8    -- ^ __out[]__: output buffer
        -> IO CInt      -- ^ 0 on success, a negative value on failure

{- |
Reinitializes the state of the MAC computation. A MAC can
be computed (with update/final) immediately.
-}
foreign import capi safe "botan/ffi.h botan_mac_clear"
    botan_mac_clear
        :: BotanMAC -- ^ __mac__: mac object
        -> IO CInt  -- ^ 0 on success, a negative value on failure

-- | Get the name of this MAC
foreign import capi safe "botan/ffi.h botan_mac_name"
    botan_mac_name
        :: BotanMAC     -- ^ __mac__: the object to read
        -> Ptr CChar    -- ^ __name__: output buffer
        -> Ptr CSize    -- ^ __name_len__: on input, the length of buffer, on success the number of bytes written
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Get the key length limits of this auth code
foreign import capi safe "botan/ffi.h botan_mac_get_keyspec"
    botan_mac_get_keyspec
        :: BotanMAC     -- ^ __mac__: the object to read
        -> Ptr CSize    -- ^ __out_minimum_keylength__: if non-NULL, will be set to minimum keylength of MAC
        -> Ptr CSize    -- ^ __out_maximum_keylength__: if non-NULL, will be set to maximum keylength of MAC
        -> Ptr CSize    -- ^ __out_keylength_modulo__: if non-NULL will be set to byte multiple of valid keys
        -> IO CInt      -- ^ 0 on success, a negative value on failure

