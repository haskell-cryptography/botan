module Botan.PubKey.ElGamal where

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
-- * Algorithm specific key operations: ElGamal
-- */

-- /**
-- * Loads ElGamal private key
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
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load_elgamal(botan_privkey_t* key,
--                                          botan_mp_t p,
--                                          botan_mp_t g,
--                                          botan_mp_t x);
foreign import ccall unsafe botan_privkey_load_elgamal
    :: Ptr PrivKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- x
    -> IO BotanErrorCode

privKeyLoadElGamal :: MP -> MP -> MP -> IO PrivKey
privKeyLoadElGamal = mkPrivKeyLoad3 botan_privkey_load_elgamal


-- /**
-- * Loads ElGamal public key
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
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load_elgamal(botan_pubkey_t* key,
--                                         botan_mp_t p,
--                                         botan_mp_t g,
--                                         botan_mp_t y);
foreign import ccall unsafe botan_pubkey_load_elgamal
    :: Ptr PubKeyPtr   -- key
    -> MPPtr            -- p
    -> MPPtr            -- g
    -> MPPtr            -- y
    -> IO BotanErrorCode

pubKeyLoadElGamal :: MP -> MP -> MP -> IO PubKey
pubKeyLoadElGamal = mkPubKeyLoad3 botan_pubkey_load_elgamal
