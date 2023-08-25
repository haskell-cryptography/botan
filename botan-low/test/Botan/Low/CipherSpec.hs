module Botan.Low.CipherSpec
( spec
) where

import Test.Prelude

import qualified Data.ByteString.Char8 as Char8

import Botan.Bindings.Cipher
import Botan.Low.Cipher

blockCiphers =
    [ "AES-128"
    , "AES-192"
    , "AES-256"
    , "ARIA-128"
    , "ARIA-192"
    , "ARIA-256"
    , "Blowfish"
    , "Camellia-128"
    , "Camellia-192"
    , "Camellia-256"
    , "CAST-128"
    , "CAST-256"
    , "DES"
    , "TripleDES"
    , "GOST-28147-89"
    , "Noekeon"
    , "IDEA"
    , "SEED"
    , "SM4"
    , "Serpent"
    , "SHACAL2"
    , "Twofish"
    , "Threefish-512"
    ]

paddings =
    [ "PKCS7"
    , "OneAndZeros"
    , "X9.23"
    , "ESP"
    , "CTS"
    , "NoPadding"
    ]

blockCipherModes = concat
    [ [ bc <> "/CBC/" <> pd                     | bc <- blockCiphers, pd <- paddings ]
    , [ bc <> "/CFB(" <>  showBytes fsz <> ")"   | bc <- blockCiphers, fsz <- [ 32 ] ]
    , [ bc <> "/XTS"                            | bc <- blockCiphers ]
    ]

aeads =  concat
    [ [ "ChaCha20Poly1305" ]
    , [ bc <> "/GCM(" <> showBytes tsz <> ")"   | bc <- blockCiphers, tsz <-[ 16 ] ]
    , [ bc <> "/OCB(" <> showBytes tsz <> ")"   | bc <- blockCiphers, tsz <-[ 16 ] ]
    , [ bc <> "/EAX(" <> showBytes tsz <> ")"   | bc <- blockCiphers, tsz <-[ 16 ] ]
    , [ bc <> "/SIV"                            | bc <- blockCiphers ]
    , [ bc <> "/CCM(" <> showBytes tsz <> "," <> showBytes l <> ")"
                                                | bc <- blockCiphers, tsz <-[ 16 ], l <- [ 8 ] ]
    ]

showBytes :: (Show a) => a -> ByteString
showBytes = Char8.pack . show

spec :: Spec
spec = testSuite (blockCipherModes ++ aeads) chars $ \ cipher -> do
    describe "cipherCtxInitNameIO" $ do
        it "initializes a cipher context object" $ do
            ctx <- cipherCtxInitNameIO "AES-256/CBC/PKCS7" BOTAN_CIPHER_INIT_FLAG_ENCRYPT
            pass
    -- describe "cipherCtxNameIO" $ do
    --     it "has a name" $ do
    --         pending
    -- describe "cipherCtxOutputLengthIO" $ do
    --     it "has an output length" $ do
    --         pending
    -- describe "cipherCtxValidNonceLengthIO" $ do
    --     it "has a valid nonce length" $ do
    --         pending
    -- describe "cipherCtxGetTagLengthIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetDefaultNonceLengthIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetUpdateGranularityIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetIdealUpdateGranularityIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxQueryKeylenIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxGetKeyspecIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxSetKeyIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxResetIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxSetAssociatedDataIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxStartIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxUpdateIO" $ do
    --     it "" $ do
    --         pending
    -- describe "cipherCtxClearIO" $ do
    --     it "" $ do
    --         pending