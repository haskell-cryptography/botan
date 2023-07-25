module Botan.PubKey.Ed25519 where

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
import Botan.Prelude
import Botan.PubKey

-- /*
-- * Algorithm specific key operations: Ed25519
-- */

-- BOTAN_PUBLIC_API(2,2) int botan_privkey_load_ed25519(botan_privkey_t* key,
--                                          const uint8_t privkey[32]);
foreign import ccall unsafe botan_privkey_load_ed25519 :: Ptr PrivKeyPtr -> Ptr Word8 -> IO BotanErrorCode

-- NOTE: Input must be exactly 32 bytes long
privKeyLoadEd25519 :: ByteString -> IO PrivKey
privKeyLoadEd25519 = mkInit_bytes MkPrivKey botan_privkey_load_ed25519 botan_privkey_destroy

-- BOTAN_PUBLIC_API(2,2) int botan_pubkey_load_ed25519(botan_pubkey_t* key,
--                                         const uint8_t pubkey[32]);
foreign import ccall unsafe botan_pubkey_load_ed25519 :: Ptr PubKeyPtr -> Ptr Word8 -> IO BotanErrorCode

-- NOTE: Input must be exactly 32 bytes long
pubKeyLoadEd25519 :: ByteString -> IO PubKey
pubKeyLoadEd25519 = mkInit_bytes MkPubKey botan_pubkey_load_ed25519 botan_pubkey_destroy

-- BOTAN_PUBLIC_API(2,2) int botan_privkey_ed25519_get_privkey(botan_privkey_t key,
--                                                 uint8_t output[64]);
foreign import ccall unsafe botan_privkey_ed25519_get_privkey :: PrivKeyPtr -> Ptr Word8 -> IO BotanErrorCode

privKeyEd25519GetPrivKey :: PrivKey -> IO ByteString
privKeyEd25519GetPrivKey sk = withPrivKeyPtr sk $ \ skPtr -> do
    allocBytes 64 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_ed25519_get_privkey skPtr outPtr

-- BOTAN_PUBLIC_API(2,2) int botan_pubkey_ed25519_get_pubkey(botan_pubkey_t key,
--                                               uint8_t pubkey[32]);
foreign import ccall unsafe botan_pubkey_ed25519_get_pubkey :: PubKeyPtr -> Ptr Word8 -> IO BotanErrorCode

pubKeyEd25519GetPubKey :: PubKey -> IO ByteString
pubKeyEd25519GetPubKey pk = withPubKeyPtr pk $ \ pkPtr -> do
    allocBytes 32 $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_pubkey_ed25519_get_pubkey pkPtr outPtr
