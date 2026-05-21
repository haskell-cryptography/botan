{-# OPTIONS_GHC -Wall #-}

-- | The executable example described in the Haddock documentation of the
-- "Botan.Low.PubKey.KeyAgreement" module.
--
-- NOTE: when changing this example, also change the Haddock documentation in
-- the "Botan.Low.PubKey.KeyAgreement" module.
module Test.Botan.Low.PubKey.KeyAgreement.Example (main) where

import           Botan.Low.Hash
import           Botan.Low.KDF
import           Botan.Low.PubKey
import           Botan.Low.PubKey.KeyAgreement
import           Botan.Low.RNG
import           Data.ByteString (ByteString)

generateKeys :: IO (PrivKey, PrivKey)
generateKeys = do
  rng <- rngInit UserRNG
  alicePrivKey <- privKeyCreate ECDH Secp521r1 rng
  bobPrivKey <- privKeyCreate ECDH Secp521r1 rng
  pure (alicePrivKey, bobPrivKey)

deriveSharedKeys :: PrivKey -> PrivKey -> IO (ByteString, ByteString)
deriveSharedKeys alicePrivKey bobPrivKey = do
  rng <- rngInit UserRNG
  alicePubKey <- keyAgreementExportPublic alicePrivKey
  bobPubKey <- keyAgreementExportPublic bobPrivKey
  salt <- rngGet rng 4

  aliceKeyAgreement <- keyAgreementCreate alicePrivKey (kdf2 SHA256)
  aliceSharedKey <- keyAgreement aliceKeyAgreement bobPubKey salt

  bobKeyAgreement <- keyAgreementCreate bobPrivKey (kdf2 SHA256)
  bobSharedKey <- keyAgreement bobKeyAgreement alicePubKey salt

  pure (aliceSharedKey, bobSharedKey)

main :: IO ()
main = do
  (alicePrivKey, bobPrivKey) <- generateKeys
  (aliceSharedKey, bobSharedKey) <- deriveSharedKeys alicePrivKey bobPrivKey
  print (aliceSharedKey == bobSharedKey)
