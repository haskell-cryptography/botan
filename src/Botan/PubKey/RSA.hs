module Botan.PubKey.RSA where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.MPI
import Botan.Prelude
import Botan.PubKey

-- /*
-- * Algorithm specific key operations: RSA
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_rsa(botan_privkey_t* key,
--                                      botan_mp_t p,
--                                      botan_mp_t q,
--                                      botan_mp_t e);
foreign import ccall unsafe botan_privkey_load_rsa
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- e
    -> IO BotanErrorCode

privKeyLoadRSA :: MP -> MP -> MP -> IO PrivKey
privKeyLoadRSA = mkPrivKeyLoad3 botan_privkey_load_rsa


-- BOTAN_PUBLIC_API(2,8) int botan_privkey_load_rsa_pkcs1(botan_privkey_t* key,
--                                                        const uint8_t bits[],
--                                                        size_t len);

-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_p(botan_mp_t p, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_q(botan_mp_t q, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_d(botan_mp_t d, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_n(botan_mp_t n, botan_privkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_rsa_get_e(botan_mp_t e, botan_privkey_t rsa_key);

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_rsa_get_privkey(botan_privkey_t rsa_key,
--                                                         uint8_t out[], size_t* out_len,
--                                                         uint32_t flags);

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_rsa(botan_pubkey_t* key,
--                                                 botan_mp_t n,
--                                                 botan_mp_t e);
foreign import ccall unsafe botan_pubkey_load_rsa
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- n
    -> MPPtr            -- e
    -> IO BotanErrorCode

pubKeyLoadDSA :: MP -> MP -> IO PubKey
pubKeyLoadDSA = mkPubKeyLoad2 botan_pubkey_load_rsa

-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_rsa_get_e(botan_mp_t e, botan_pubkey_t rsa_key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_rsa_get_n(botan_mp_t n, botan_pubkey_t rsa_key);

