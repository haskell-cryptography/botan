module Botan.Low.TOTPSpec
( spec
) where

import Test.Prelude
import Botan.Low.Hash (HashName(..))

import Botan.Low.TOTP

key :: ByteString
key = "Fee fi fo fum"

timestep :: TOTPTimestep
timestep = 60

timestamp :: TOTPTimestamp
timestamp = 1698109812

-- TODO: Do any other hashes work?
totpHashes :: [ HashName ]
totpHashes =
    [ "SHA-1"
    , "SHA-256"
    , "SHA-512"
    ]

-- TODO: More thorough testing
spec :: Spec
spec = testSuite totpHashes chars $ \ h -> do
    it "totpInit" $ do
        ctx <- totpInit key h 6 timestep
        pass
    it "totpGenerate" $ do
        ctx <- totpInit key h 6 timestep
        code <- totpGenerate ctx timestamp
        pass
    it "totpCheck" $ do
        ctx <- totpInit key h 6 timestep
        code <- totpGenerate ctx timestamp
        success <- totpCheck ctx code timestamp 0
        success `shouldBe` True
