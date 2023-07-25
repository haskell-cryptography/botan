module Botan.PubKey.DH where

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
-- * Loads Diffie Hellman private key
-- *
-- * @param key variable populated with key material
-- * @param p prime order of a Z_p group
-- * @param g group generator
-- * @param x private key
-- *
-- * @pre key is NULL on input
-- * @post function allocates memory and assigns to `key'
-- *
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_dh(botan_privkey_t* key,
--                                          botan_mp_t p,
--                                          botan_mp_t g,
--                                          botan_mp_t x);
foreign import ccall unsafe botan_privkey_load_dh
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

privKeyLoadDH :: MP -> MP -> MP -> IO PrivKey
privKeyLoadDH = mkPrivKeyLoad3 botan_privkey_load_dh

-- /**
-- * Loads Diffie Hellman public key
-- *
-- * @param key variable populated with key material
-- * @param p prime order of a Z_p group
-- * @param g group generator
-- * @param y public key
-- *
-- * @pre key is NULL on input
-- * @post function allocates memory and assigns to `key'
-- *
-- * @return 0 on success, a negative value on failure
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_dh(botan_pubkey_t* key,
--                                         botan_mp_t p,
--                                         botan_mp_t g,
--                                         botan_mp_t y);
foreign import ccall unsafe botan_pubkey_load_dh
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode

pubKeyLoadDH :: MP -> MP -> MP -> IO PubKey
pubKeyLoadDH = mkPubKeyLoad3 botan_pubkey_load_dh