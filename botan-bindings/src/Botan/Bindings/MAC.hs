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

module Botan.Bindings.MAC where

import Botan.Bindings.Error
import Botan.Bindings.Prelude

{-|
Message Authentication type

@typedef struct botan_mac_struct* botan_mac_t;@
-}
data MACStruct
type MACPtr = Ptr MACStruct

type MACFlags = Word32

{-|
Initialize a message authentication code object

- \@param mac mac object
- \@param mac_name name of the hash function, e.g., "HMAC(SHA-384)"
- \@param flags should be 0 in current API revision, all other uses are reserved
      and return a negative value (error code)
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_init(botan_mac_t* mac, const char* mac_name, uint32_t flags);@
-}
foreign import ccall unsafe botan_mac_init :: Ptr MACPtr -> CString -> MACFlags -> IO BotanErrorCode

{-|
Frees all resources of the MAC object

- \@param mac mac object
- \@return 0 if success, error if invalid object handle

@BOTAN_PUBLIC_API(2,0) int botan_mac_destroy(botan_mac_t mac);@
-}
foreign import ccall unsafe "&botan_mac_destroy" botan_mac_destroy :: FinalizerPtr MACStruct

{-|
Writes the output length of the message authentication code to *output_length

- \@param mac mac object
- \@param output_length output buffer to hold the MAC output length
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_output_length(botan_mac_t mac, size_t* output_length);@
-}
foreign import ccall unsafe botan_mac_output_length :: MACPtr -> Ptr CSize -> IO BotanErrorCode

{-|
Sets the key on the MAC
- \@param mac mac object
- \@param key buffer holding the key
- \@param key_len size of the key buffer in bytes
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_set_key(botan_mac_t mac, const uint8_t* key, size_t key_len);@
-}
foreign import ccall unsafe botan_mac_set_key :: MACPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
Sets the nonce on the MAC
- \@param mac mac object
- \@param nonce buffer holding the key
- \@param nonce_len size of the key buffer in bytes
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(3,0) int botan_mac_set_nonce(botan_mac_t mac, const uint8_t* nonce, size_t nonce_len);@
-}
foreign import ccall unsafe botan_mac_set_nonce :: MACPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
Send more input to the message authentication code

- \@param mac mac object
- \@param buf input buffer
- \@param len number of bytes to read from the input buffer
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_update(botan_mac_t mac, const uint8_t* buf, size_t len);@
-}
foreign import ccall unsafe botan_mac_update :: MACPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

{-|
Finalizes the MAC computation and writes the output to
out[0:botan_mac_output_length()] then reinitializes for computing
another MAC as if botan_mac_clear had been called.

- \@param mac mac object
- \@param out output buffer
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_final(botan_mac_t mac, uint8_t out[]);@
-}
foreign import ccall unsafe botan_mac_final :: MACPtr -> Ptr Word8 -> IO BotanErrorCode

{-|
Reinitializes the state of the MAC computation. A MAC can
be computed (with update/final) immediately.

- \@param mac mac object
- \@return 0 on success, a negative value on failure

@BOTAN_PUBLIC_API(2,0) int botan_mac_clear(botan_mac_t mac);@
-}
foreign import ccall unsafe botan_mac_clear :: MACPtr -> IO BotanErrorCode

{-|
Get the name of this MAC

- \@param mac the object to read
- \@param name output buffer
- \@param name_len on input, the length of buffer, on success the number of bytes written

@BOTAN_PUBLIC_API(2,8) int botan_mac_name(botan_mac_t mac, char* name, size_t* name_len);@
-}
foreign import ccall unsafe botan_mac_name :: MACPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

{-|
Get the key length limits of this auth code

- \@param mac the object to read
- \@param out_minimum_keylength if non-NULL, will be set to minimum keylength of MAC
- \@param out_maximum_keylength if non-NULL, will be set to maximum keylength of MAC
- \@param out_keylength_modulo if non-NULL will be set to byte multiple of valid keys

@BOTAN_PUBLIC_API(2,8) int botan_mac_get_keyspec(botan_mac_t mac,
                                                 size_t* out_minimum_keylength,
                                                 size_t* out_maximum_keylength,
                                                 size_t* out_keylength_modulo);@
-}
foreign import ccall unsafe botan_mac_get_keyspec
    :: MACPtr
    -> Ptr CSize 
    -> Ptr CSize 
    -> Ptr CSize 
    -> IO BotanErrorCode
