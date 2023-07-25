module Botan.PubKey.DSA where

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
-- * Algorithm specific key operations: DSA
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_dsa(botan_privkey_t* key,
--                                      botan_mp_t p,
--                                      botan_mp_t q,
--                                      botan_mp_t g,
--                                      botan_mp_t x);
foreign import ccall unsafe botan_privkey_load_dsa
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

privKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PrivKey
privKeyLoadDSA = mkPrivKeyLoad4 botan_privkey_load_dsa

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_dsa(botan_pubkey_t* key,
--                                     botan_mp_t p,
--                                     botan_mp_t q,
--                                     botan_mp_t g,
--                                     botan_mp_t y);
foreign import ccall unsafe botan_pubkey_load_dsa
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- q
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode

pubKeyLoadDSA :: MP -> MP -> MP -> MP -> IO PubKey
pubKeyLoadDSA = mkPubKeyLoad4 botan_pubkey_load_dsa

-- BOTAN_DEPRECATED("Use botan_privkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_dsa_get_x(botan_mp_t n, botan_privkey_t key);

-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_p(botan_mp_t p, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_q(botan_mp_t q, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_g(botan_mp_t d, botan_pubkey_t key);
-- BOTAN_DEPRECATED("Use botan_pubkey_get_field") BOTAN_PUBLIC_API(2,0)
-- int botan_pubkey_dsa_get_y(botan_mp_t y, botan_pubkey_t key);
