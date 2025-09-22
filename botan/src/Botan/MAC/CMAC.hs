module Botan.MAC.CMAC
( CMAC(..)
, CMACKey(..)
, CMACAuth(..)
, cmac
, cmacLazy
, newCMACKey
) where

import           Data.Maybe
import           Data.Proxy

import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Lazy as Lazy
import qualified Data.Text as Text

import qualified Botan.BlockCipher as Botan
import qualified Botan.MAC as Botan
import qualified Botan.Utility as Botan

import           Botan.BlockCipher.AES
import           Botan.BlockCipher.Class
import           Botan.MAC.Class
import           Botan.Prelude

import           Botan.RNG

-- CMAC type

data CMAC bc

newtype instance MACKey (CMAC bc) = CMACKey
    { getCMACKey :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (MACKey (CMAC bc)) where
    show :: MACKey (CMAC bc) -> String
    show (CMACKey bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

type CMACKey bc = MACKey (CMAC bc)

newtype instance MACAuth (CMAC bc) = CMACAuth
    { getCMACAuth :: ByteString {- ByteVector n -} }
    deriving newtype (Eq, Ord)

instance Show (MACAuth (CMAC bc)) where
    show :: MACAuth (CMAC bc) -> String
    show (CMACAuth bytes) = Text.unpack $ Botan.hexEncode bytes Botan.Lower

type CMACAuth bc = MACAuth (CMAC bc)

-- -- TODO: This can't support BlockCipher CLASS
-- -- IT NEEDS TO BE THE BlockCipher ENUM
-- instance (BlockCipher bc) => MAC (CMAC bc) where
--     mac :: MACKey (CMAC bc) -> ByteString -> MACAuth (CMAC bc)
--     mac k = CMACAuth . fromJust . Botan.mac (Botan.cmac (blockCipherWitness @bc)) (getCMACKeyByteString k)
--
-- -- TODO: This can't support BlockCipher CLASS
-- -- IT NEEDS TO BE THE BlockCipher ENUM
-- instance (BlockCipher bc) => IncrementalMAC (CMAC bc) where
--     macLazy :: MACKey (CMAC bc) -> Lazy.ByteString -> MACAuth (CMAC bc)
--     macLazy k = CMACAuth . fromJust . Botan.macLazy (Botan.cmac (blockCipherWitness @bc)) (getCMACKeyByteString k)

-- Can do per-algorithm instances - this works

-- instance MAC (CMAC AES128) where
--     mac :: MACKey (CMAC bc) -> ByteString -> MACAuth (CMAC bc)
--     mac (CMACKey k) = CMACAuth . fromJust . Botan.mac (Botan.cmac Botan.aes128) k
--
-- instance IncrementalMAC (CMAC AES128) where
--     macLazy :: MACKey (CMAC bc) -> Lazy.ByteString -> MACAuth (CMAC bc)
--     macLazy (CMACKey k) = CMACAuth . fromJust . Botan.macLazy (Botan.cmac Botan.aes128) k

-- ... but its tedious as it requires instances for each combination

-- Maybe I should allow / use proxy / witnesses
-- This requires either:
--  - abandoning use of empty data
--  - a witness data type
--  - classes to convert between crypto types and botan types

class BotanBlockCipher bc where
    botanBlockCipher :: Proxy bc -> Botan.BlockCipher
instance BotanBlockCipher AES128 where
    botanBlockCipher _ = Botan.aes128
class BotanMAC mac where
    botanMAC :: Proxy mac -> Botan.MAC
instance (BotanBlockCipher bc) => BotanMAC (CMAC bc) where
    botanMAC :: BotanBlockCipher bc => Proxy (CMAC bc) -> Botan.MAC
    botanMAC _ = Botan.cmac (botanBlockCipher $ Proxy @bc)
instance (BotanBlockCipher bc) => MAC (CMAC bc) where
    mac :: MACKey (CMAC bc) -> ByteString -> MACAuth (CMAC bc)
    mac (CMACKey k) = CMACAuth . fromJust . Botan.mac (botanMAC $ Proxy @(CMAC bc)) k

-- instance (IsBotanBlockCipher bc) => IncrementalMAC (CMAC AES128) where
--     macLazy :: MACKey (CMAC bc) -> Lazy.ByteString -> MACAuth (CMAC bc)
--     macLazy (CMACKey k) = CMACAuth . fromJust . Botan.macLazy (Botan.cmac Botan.aes128) k

-- CMAC mac

cmac :: (MAC (CMAC bc)) => MACKey (CMAC bc) -> ByteString -> CMACAuth bc
cmac = mac

cmacLazy :: (IncrementalMAC (CMAC bc)) => MACKey (CMAC bc) -> Lazy.ByteString -> CMACAuth bc
cmacLazy = macLazy

newCMACKey :: forall bc m . MonadRandomIO m => m (CMACKey bc)
newCMACKey = CMACKey <$> getRandomBytes 16
