module Botan.PwdHash where

import Botan.Low.PwdHash (PBKDFName(..))
import qualified Botan.Low.PwdHash as Low

import Botan.Hash
import Botan.MAC
import Botan.Prelude

pwdhash :: PBKDF -> Int -> ByteString -> ByteString -> ByteString
pwdhash algo outLen passphrase salt = unsafePerformIO $ Low.pwdhash
    name
    p1
    p2
    p3
    outLen
    passphrase
    salt
    where
        name = pbkdfName algo
        (p1,p2,p3) = pbkdfParams algo

-- TODO: ... -> (PBKDF, ByteString) once we have parsers for PBKDFName -> PBKDF (with default values)
pwdhashTimed :: PBKDFName -> Int -> Int -> ByteString -> ByteString -> (PBKDFParams,ByteString)
pwdhashTimed algo msec outLen passphrase salt = unsafePerformIO $ do
    (p1,p2,p3,out) <- Low.pwdhashTimed
        algo
        msec
        outLen
        passphrase
        salt
    return ((p1,p2,p3), out)

-- NOTE: We have the correct parameters for Scrypt and the Argons
--  However, the order is not necessarily correct, and it may also
--  be inconsistent comparing pwdhash with pwdhashTimed.
-- Further investigation is needed
data PBKDF
    = PBKDF2 MAC Int        -- Iterations
    | Scrypt Int Int Int    -- N, r, p
    | Argon2d Int Int Int   -- Iterations, memory, parallelism
    | Argon2i Int Int Int   -- Iterations, memory, parallelism
    | Argon2id Int Int Int  -- Iterations, memory, parallelism
    | Bcrypt Int            -- Iterations
    | OpenPGP_S2K Hash Int  -- Iterations

pbkdfName :: PBKDF -> PBKDFName
pbkdfName (PBKDF2 m _)      = "PBKDF2(" <> macName m <> ")"
pbkdfName (Scrypt n r p)    = "Scrypt"
pbkdfName (Argon2d i m p)   = "Argon2d"
pbkdfName (Argon2i i m p)   = "Argon2i"
pbkdfName (Argon2id i m p)  = "Argon2id"
pbkdfName (Bcrypt i)        = "Bcrypt-PBKDF"
pbkdfName (OpenPGP_S2K h _) = "OpenPGP-S2K(" <> hashName h <> ")"

type PBKDFParams = (Int,Int,Int)

pbkdfParams :: PBKDF -> PBKDFParams
pbkdfParams (PBKDF2 _ i)        = (i, 0, 0)
pbkdfParams (Scrypt n r p)      = (n, r, p)
pbkdfParams (Argon2d i m p)     = (i, m, p)
pbkdfParams (Argon2i i m p)     = (i, m, p)
pbkdfParams (Argon2id i m p)    = (i, m, p)
pbkdfParams (Bcrypt i)          = (i, 0, 0)
pbkdfParams (OpenPGP_S2K _ i)   = (i, 0, 0)

pbkdfParamsNone :: PBKDFParams
pbkdfParamsNone = (0,0,0)
