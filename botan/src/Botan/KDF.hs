module Botan.KDF where

import           Botan.Low.KDF (KDFName (..))
import qualified Botan.Low.KDF as Low

import           Botan.Hash
import           Botan.MAC
import           Botan.Prelude

-- Sources: https://github.com/randombit/botan/blob/master/src/lib/kdf/kdf.cpp
-- Due to the blurring of mac vs hash, it is difficult to determine whether
-- a given algorithm works with macs, hashes, both, macs and hashes-via-hmac, or hashes and only hmac
-- According to source:
-- HKDF, HKDF-Extract, HKDF-Expand use kdf_create_mac_or_hash but the H literally stands for HMAC so...
-- KDF2, KDF1-18033, KDF1 use Hash
-- TLS-12-PRF is unimplemented, not in documentation (relic of Botan 2?), and uses kdf_create_mac_or_hash
-- X9.42-PRF is deprecated, has a unique create function, and uses Hash
-- SP800-108-Counter, -Feedback, -Pipeline use kdf_create_mac_or_hash
-- SP800-56A has two unique create functions, and uses Hash or HMAC (but trying to use hash fails according to tests)
-- SP800-56C has two unique create functions, and uses macs or hashes

-- TODO: Find out if the algorithms that support both HMAC and Hash syntax are actually different,
-- or if its just substituting HMAC() silently

data KDF
    = HKDF Hash
    | HKDF_Extract Hash
    | HKDF_Expand Hash
    | KDF2 Hash
    | KDF1_18033 Hash
    | KDF1 Hash
    | TLS_12_PRF Hash -- Not mentioned but still in code?
    -- NOTE: Despite documentation stating it only works with SHA-1,
    -- it "works" with many hashes: MD5, RIPEMD-160, SHA-1, all SHA-2, SM3, both Streebog
    -- however I don't think it is correct behavior as the actual code appears to only
    -- allocate a SHA-1 hash context
    -- | X9_42_PRF Hash
    | X9_42_PRF
    -- NOTE: These SP800 accept / require HMAC wrapping
    | SP800_108_Counter Hash
    | SP800_108_Feedback Hash
    | SP800_108_Pipeline Hash
    | SP800_56A Hash
    | SP800_56C Hash
    deriving (Show, Eq)

-- TODO: | SP800_108 SP800_108_Mode MAC

data SP800_108_Mode
    = Counter
    | Feedback
    | Pipeline

kdfName :: KDF -> KDFName
kdfName (HKDF h)               = Low.hkdf (hashName h)            -- "HKDF(" <> hashName h <> ")"
kdfName (HKDF_Extract h)       = Low.hkdf_extract (hashName h)    -- "HKDF-Extract(" <> hashName h <> ")"
kdfName (HKDF_Expand h)        = Low.hkdf_expand (hashName h)     -- "HKDF-Expand(" <> hashName h <> ")"
kdfName (KDF2 h)               = Low.kdf2 (hashName h)            -- "KDF2(" <> hashName h <> ")"
kdfName (KDF1_18033 h)         = Low.kdf1_18033 (hashName h)      -- "KDF1-18033(" <> hashName h <> ")"
kdfName (KDF1 h)               = Low.kdf1 (hashName h)            -- "KDF1(" <> hashName h <> ")"
kdfName (TLS_12_PRF h)         = Low.tls_12_prf (hashName h)      -- "TLS-12-PRF(" <> hashName h <> ")"
-- NOTE: Many hashes do not throw an error for this KDF but are not necessarily correct
-- kdfName (X9_42_PRF h)           = "X9.42-PRF(" <> hashName h <> ")"
-- Only SHA-1 is valid for X9_42_PRF according to the source
kdfName X9_42_PRF              = Low.x9_42_prf (hashName SHA1)        --"X9.42-PRF(SHA-1)"
kdfName (SP800_108_Counter h)  = Low.sp800_108_counter (hashName h)   -- "SP800-108-Counter(HMAC(" <> hashName h <> "))"
kdfName (SP800_108_Feedback h) = Low.sp800_108_feedback (hashName h)  -- "SP800-108-Feedback(HMAC(" <> hashName h <> "))"
kdfName (SP800_108_Pipeline h) = Low.sp800_108_pipeline (hashName h)  -- "SP800-108-Pipeline(HMAC(" <> hashName h <> "))"
kdfName (SP800_56A h)          = Low.sp800_56A (hashName h)           -- "SP800-56A(HMAC(" <> hashName h <> "))"
kdfName (SP800_56C h)          = Low.sp800_56C (hashName h)           -- "SP800-56C(HMAC(" <> hashName h <> "))"

-- NOTE: This works:
--  > kdf "KDF1(SHA-256)" 32 "Fee fi fo fum!" "English" "Bread"
-- Some have constraints on key length, eg MD5:
--  > kdf "KDF1(MD5)" 32 "Fee fi fo fum!" "English" "Bread"
--  *** Exception: BadParameterException (-32) ...
--  > kdf "KDF1(MD5)" 16 "Fee fi fo fum!" "English" "Bread"
--  "\234\176\202\212A\162\154]\238J\131aKL\142\197"
-- Also this works but shouldnt
--  > kdf "X9.42-PRF(Streebog-256)" 10 "secret" "salt" "label"
--  "\163\224\173\&1>\218$tx\228"

kdf :: KDF -> Int -> ByteString -> ByteString -> ByteString -> ByteString
kdf algo outLen secret salt label = unsafePerformIO $ Low.kdf (kdfName algo) outLen secret salt label
