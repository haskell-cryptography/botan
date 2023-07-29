module Botan.Low.PubKey.Sign where

import qualified Data.ByteString as ByteString

import Botan.Bindings.PubKey.Sign

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.Random
import Botan.Low.PubKey

-- /*
-- * Signature Generation
-- */

newtype Sign = MkSign { getSignForeignPtr :: ForeignPtr SignStruct }

withSignPtr :: Sign -> (SignPtr -> IO a) -> IO a
withSignPtr = withForeignPtr . getSignForeignPtr

type SigningAlgo = ByteString

pattern SigningNoFlags = BOTAN_PUBKEY_SIGNING_FLAGS_NONE
pattern SigningDERFormatSignature = BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

signCreate :: PrivKey -> SigningAlgo -> SigningFlags -> IO Sign
signCreate sk algo flags = alloca $ \ outPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString algo $ \ algoPtr -> do
            throwBotanIfNegative_ $ botan_pk_op_sign_create outPtr skPtr algoPtr flags
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pk_op_sign_destroy out
            return $ MkSign foreignPtr

signDestroy :: Sign -> IO ()
signDestroy sign = finalizeForeignPtr (getSignForeignPtr sign)

withSign :: PrivKey -> SigningAlgo -> SigningFlags -> (Sign -> IO a) -> IO a
withSign = mkWithTemp3 signCreate signDestroy

signOutputLength :: Sign -> IO Int
signOutputLength = mkGetSize withSignPtr botan_pk_op_sign_output_length

signUpdate :: Sign -> ByteString -> IO ()
signUpdate = mkSetBytesLen withSignPtr botan_pk_op_sign_update

-- TODO: Signature type
-- NOTE: Ignores szPtr result
signFinish :: Sign -> Random -> IO ByteString
signFinish sign random = withSignPtr sign $ \ signPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        sz <- signOutputLength sign
        allocBytes sz $ \ sigPtr -> do
            alloca $ \ szPtr -> do
                throwBotanIfNegative_ $ botan_pk_op_sign_finish signPtr randomPtr sigPtr szPtr

-- /**
-- * Signature Scheme Utility Functions
-- */

-- TODO: botan_pkcs_hash_id
