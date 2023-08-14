module Botan.KDF where

import Botan.Low.KDF

import Botan.Hash
import Botan.MAC
import Botan.Prelude

data KDF
    = HKDF MAC
    | HKDF_Extract MAC
    | HKDF_Expand MAC
    | KDF2 Hash
    | KDF1_18033 Hash
    | KDF1 Hash
    | TLS_PRF
    | TLS_12_PRF MAC
    | SP800_108_Counter MAC
    | SP800_108_Feedback MAC
    | SP800_108_Pipeline MAC
    | SP800_56AHash Hash
    | SP800_56AMAC MAC
    | SP800_56C MAC
    deriving (Show, Eq)
    
kdfName :: KDF -> KDFName
kdfName (HKDF m)                = "HKDF(" <> macName m <> ")"
kdfName (HKDF_Extract m)        = "HKDF-Extract(" <> macName m <> ")"
kdfName (HKDF_Expand m)         = "HKDF-Expand(" <> macName m <> ")"
kdfName (KDF2 h)                = "KDF2(" <> hashName h <> ")"
kdfName (KDF1_18033 h)          = "KDF1-18033(" <> hashName h <> ")"
kdfName (KDF1 h)                = "KDF1(" <> hashName h <> ")"
kdfName TLS_PRF                 = "TLS-PRF"
kdfName (TLS_12_PRF m)          = "TLS-12-PRF(" <> macName m <> ")"
kdfName (SP800_108_Counter m)   = "SP800-108-Counter(" <>  macName m <> ")"
kdfName (SP800_108_Feedback m)  = "SP800-108-Feedback(" <> macName m <> ")"
kdfName (SP800_108_Pipeline m)  = "SP800-108-Pipeline(" <> macName m <> ")"
kdfName (SP800_56AHash h)       = "SP800-56A(" <> hashName h <> ")"
kdfName (SP800_56AMAC m)        = "SP800-56A(" <> macName m <> ")"
kdfName (SP800_56C m)           = "SP800-56C(" <> macName m <> ")"

-- NOTE: This works:
--  > kdf "KDF1(SHA-256)" 32 "Fee fi fo fum!" "English" "Bread"
-- Some have constraints on key length, eg MD5:
--  > kdf "KDF1(MD5)" 32 "Fee fi fo fum!" "English" "Bread"
--  *** Exception: BadParameterException (-32) ...
--  > kdf "KDF1(MD5)" 16 "Fee fi fo fum!" "English" "Bread"
--  "\234\176\202\212A\162\154]\238J\131aKL\142\197"

kdf :: KDF -> Int -> ByteString -> ByteString -> ByteString -> ByteString
kdf algo outLen secret salt label = unsafePerformIO $ kdfIO (kdfName algo) outLen secret salt label
