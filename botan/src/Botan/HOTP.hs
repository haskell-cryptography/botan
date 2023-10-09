module Botan.HOTP where

import qualified Data.ByteString as ByteString

import Botan.Bindings.HOTP (HOTPCode(..), HOTPCounter(..))
import Botan.Low.HOTP hiding (HOTPCtx(..))
import qualified Botan.Low.HOTP as Low

import Botan.Hash

import Botan.Prelude

-- TODO: Package the ctx with counter?
-- Low HOTPCtx does not mutate, so it should
--  be copyable.

data HOTP
    = HOTP_SHA1
    | HOTP_SHA256
    | HOTP_SHA512

hotpHash :: HOTP -> Hash
hotpHash HOTP_SHA1 = SHA1
hotpHash HOTP_SHA256 = SHA2 SHA256
hotpHash HOTP_SHA512 = SHA2 SHA512

hotpAlgo :: HOTP -> HashName
hotpAlgo = hashName . hotpHash

type HOTPKey = ByteString

-- TODO: Bring in MVar to capture everything
data HOTPCtx
    = HOTPCtx
    { hotpCtx       :: Low.HOTPCtx
    , hotpCounter   :: HOTPCounter
    , hotpResync    :: Int
    }

data HOTPLength
    = Short
    | Long

hotpLength :: HOTPLength -> Int
hotpLength Short = 6
hotpLength Long = 8

newHOTP :: HOTP -> HOTPLength -> Int -> ByteString -> IO HOTPCtx
newHOTP hotp len resync key = do
    ctx <- Low.hotpInit key (hotpAlgo hotp) (hotpLength len)
    return $ HOTPCtx
        { hotpCtx = ctx
        , hotpCounter = 0
        , hotpResync = resync
        }

hotpGenerate :: HOTPCtx -> IO HOTPCode
hotpGenerate = undefined

hotpCheck :: HOTPCtx -> HOTPCode -> IO Bool
hotpCheck = undefined


-- NOTE: Digits should be 6-8
hotpCtxInit :: ByteString -> ByteString -> Int -> IO HOTPCtx
hotpCtxInit key algo digits = undefined

hotpCtxGenerate :: HOTPCtx -> HOTPCounter -> (HOTPCode, HOTPCtx)
hotpCtxGenerate hotp counter = undefined

-- NOTE:
--      "Returns a pair of (is_valid,next_counter_to_use). If the OTP is
--      invalid then always returns (false,starting_counter), since the
--      last successful authentication counter has not changed. "
-- NOTE: "Depending on the environment a resync_range of 3 to 10 might be appropriate."
hotpCtxCheck :: HOTPCtx -> HOTPCode -> HOTPCounter -> Int -> (Bool, HOTPCounter)
hotpCtxCheck hotp code counter resync = undefined
