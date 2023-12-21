{-|
Module      : Botan.Bindings.MAC
Description : Message Authentication Codes (MAC)
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
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

module Botan.Bindings.MAC where

import Botan.Bindings.Prelude

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

-- | Initialize a message authentication code object
foreign import capi safe "botan/ffi.h botan_mac_init"
    botan_mac_init
        :: Ptr BotanMAC     -- ^ mac mac object
        -> ConstPtr CChar   -- ^ mac_name name of the hash function, e.g., "HMAC(SHA-384)"
        -> Word32           -- ^ flags should be 0 in current API revision, all other uses are reserved
                            --   and return a negative value (error code)
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Writes the output length of the message authentication code to *output_length
foreign import capi safe "botan/ffi.h botan_mac_output_length"
    botan_mac_output_length
        :: BotanMAC     -- ^ mac mac object
        -> Ptr CSize    -- ^ output_length output buffer to hold the MAC output length
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Sets the key on the MAC
foreign import capi safe "botan/ffi.h botan_mac_set_key"
    botan_mac_set_key
        :: BotanMAC         -- ^ mac mac object
        -> ConstPtr Word8   -- ^ key buffer holding the key
        -> CSize            -- ^ key_len size of the key buffer in bytes
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Sets the nonce on the MAC
foreign import capi safe "botan/ffi.h botan_mac_set_nonce"
    botan_mac_set_nonce
        :: BotanMAC         -- ^ mac mac object
        -> ConstPtr Word8   -- ^ nonce buffer holding the nonce
        -> CSize            -- ^ nonce_len size of the nonce buffer in bytes
        -> IO CInt          -- ^ 0 on success, a negative value on failure

-- | Send more input to the message authentication code
foreign import capi safe "botan/ffi.h botan_mac_update"
    botan_mac_update
        :: BotanMAC         -- ^ mac mac object
        -> ConstPtr Word8   -- ^ buf input buffer
        -> CSize            -- ^ len number of bytes to read from the input buffer
        -> IO CInt          -- ^ 0 on success, a negative value on failure

{- |
Finalizes the MAC computation and writes the output to
out[0:botan_mac_output_length()] then reinitializes for computing
another MAC as if botan_mac_clear had been called.
-}
foreign import capi safe "botan/ffi.h botan_mac_final"
    botan_mac_final
        :: BotanMAC     -- ^ mac mac object
        -> Ptr Word8    -- ^ out[] output buffer
        -> IO CInt      -- ^ 0 on success, a negative value on failure

{- |
Reinitializes the state of the MAC computation. A MAC can
be computed (with update/final) immediately.
-}
foreign import capi safe "botan/ffi.h botan_mac_clear"
    botan_mac_clear
        :: BotanMAC -- ^ mac mac object
        -> IO CInt  -- ^ 0 on success, a negative value on failure

-- | Get the name of this MAC
foreign import capi safe "botan/ffi.h botan_mac_name"
    botan_mac_name
        :: BotanMAC     -- ^ mac the object to read
        -> Ptr CChar    -- ^ name output buffer
        -> Ptr CSize    -- ^ name_len on input, the length of buffer, on success the number of bytes written
        -> IO CInt      -- ^ 0 on success, a negative value on failure

-- | Get the key length limits of this auth code
foreign import capi safe "botan/ffi.h botan_mac_get_keyspec"
    botan_mac_get_keyspec
        :: BotanMAC     -- ^ mac the object to read
        -> Ptr CSize    -- ^ out_minimum_keylength if non-NULL, will be set to minimum keylength of MAC
        -> Ptr CSize    -- ^ out_maximum_keylength if non-NULL, will be set to maximum keylength of MAC
        -> Ptr CSize    -- ^ out_keylength_modulo if non-NULL will be set to byte multiple of valid keys
        -> IO CInt      -- ^ 0 on success, a negative value on failure
        