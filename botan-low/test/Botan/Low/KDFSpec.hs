module Main where

import Test.Prelude

import qualified Data.ByteString as ByteString

-- import Botan.Low.Hash
import Botan.Low.KDF

--  NOTE: Many of these tests fail because different kdfs / macs / hashes have different requirements
--  such as input or output lengths.
--  Failing tests:
--      - Checksums: Adler32, CRC24, CRC32, BadParameterException for almost everything
--          - Probably because they are not cryptographic hashes
--          - All fail for HKDF, SP800-108-*(HMAC(hash)), SP800-56A(hash), SP800-56A(HMAC(hash)), SP800-56C(hash), SP800-56C(HMAC(hash))
--          - CRC24 fails for KDF1, probably because we asked for 4 bits
--      - HKDF-Extract - BadParameterException for unknown reasons
--      - X9.42-PRF: About half fail with NotImplementedException
--      - SP800-108-*: Requires HMAC wrapping, may support other MACs?
--      - SP800-56A / SP800-56C: Allow HMAC wrapping, may support other MACs?
--  Many do accept HMAC(hash) as an argument instead of just hash
--  It is not yet known which if any MACs work aside from HMAC (eg whether anything with CMAC, GMAC does) due to non-exhaustive
--  enumeration of MACs in their own tests.
--  SP800 KDFs fail with InvalidKeyLengthException for X9.19-MAC, Poly1305, SipHash(2,4)
--  except for SP800-56A which fails with NotImplementedException
--  TODO: Exhaustive algorithm testing (see Botan.KDF notes)

-- NOTE: Some kdfs (HKDF-Extract) do not support label input arguments
main :: IO ()
main = hspec $ testSuite kdfs chars $ \ algo -> do
    describe "kdf" $ do
        it "can derive a key" $ do
            key <- kdf algo 3 "secret" "salt" "" -- "label"
            pass
