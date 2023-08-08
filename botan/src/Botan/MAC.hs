module Botan.MAC where

import Botan.Low.MAC

import Botan.BlockCipher
import Botan.Hash
import Botan.Prelude

-- TODO: Move to botan

data MAC
    = CMAC BlockCipher
    | GMAC BlockCipher     
    | CBC_MAC BlockCipher    
    | HMAC Hash    
    | Poly1305    
    | SipHash Int Int -- Number of input and finalization rounds
    | X9_19_MAC
    deriving (Show, Eq)

macName :: MAC -> ByteString
macName (CMAC bc)       = "CMAC(" <> blockCipherName bc <> ")"
macName (GMAC bc)       = "GMAC(" <> blockCipherName bc <> ")"
macName (CBC_MAC bc)    = "CBC-MAC(" <> blockCipherName bc <> ")"
macName (HMAC h)        = "HMAC(" <> hashName h <> ")"
macName Poly1305        = "Poly1305"
macName (SipHash ir fr) = "SipHash(" <> showBytes ir <> "," <> showBytes fr <> ")"
macName X9_19_MAC       = "X9.19-MAC"

macInitIO :: MAC -> IO MACCtx
macInitIO  mac = macCtxInitNameIO (macName mac)
