module Botan.HOTP (
    MutableHOTP
  , HOTP (..)
  , hotpHash
  , hotpAlgo
  , HOTPKey
  , HOTPCtx (..)
  , HOTPLength (..)
  , hotpLength
  , newHOTP
  , hotpGenerate
  , hotpCheck
  , hotpCtxInit
  , hotpCtxGenerate
  , hotpCtxCheck
  ) where

import qualified Botan.Low.HOTP as Low

import           Botan.Hash

import           Botan.Prelude

-- TODO: Package the ctx with counter?
-- Low HOTPCtx does not mutate, so it should
--  be copyable.

type MutableHOTP = Low.HOTP

data HOTP
    = HOTP_SHA1
    | HOTP_SHA256
    | HOTP_SHA512

hotpHash :: HOTP -> Hash
hotpHash HOTP_SHA1   = SHA1
hotpHash HOTP_SHA256 = SHA256
hotpHash HOTP_SHA512 = SHA512

hotpAlgo :: HOTP -> Low.HOTPHashName
hotpAlgo = hashName . hotpHash

type HOTPKey = ByteString

-- TODO: Bring in MVar to capture everything
data HOTPCtx
    = HOTPCtx
    { ctx     :: Low.HOTP
    , counter :: Low.HOTPCounter
    , resync  :: Int
    }

data HOTPLength
    = Short
    | Long

hotpLength :: HOTPLength -> Int
hotpLength Short = 6
hotpLength Long  = 8

newHOTP :: HOTP -> HOTPLength -> Int -> ByteString -> IO HOTPCtx
newHOTP hotp len resync key = do
    ctx <- Low.hotpInit key (hotpAlgo hotp) (hotpLength len)
    return $ HOTPCtx
        { ctx = ctx
        , counter = 0
        , resync = resync
        }

hotpGenerate :: HOTPCtx -> IO Low.HOTPCode
hotpGenerate = undefined

hotpCheck :: HOTPCtx -> Low.HOTPCode -> IO Bool
hotpCheck = undefined


-- NOTE: Digits should be 6-8
hotpCtxInit :: ByteString -> ByteString -> Int -> IO HOTPCtx
hotpCtxInit _key _algo _digits = undefined

hotpCtxGenerate :: HOTPCtx -> Low.HOTPCounter -> (Low.HOTPCode, HOTPCtx)
hotpCtxGenerate _hotp _counter = undefined

-- NOTE:
--      "Returns a pair of (is_valid,next_counter_to_use). If the OTP is
--      invalid then always returns (false,starting_counter), since the
--      last successful authentication counter has not changed. "
-- NOTE: "Depending on the environment a resync_range of 3 to 10 might be appropriate."
hotpCtxCheck :: HOTPCtx -> Low.HOTPCode -> Low.HOTPCounter -> Int -> (Bool, Low.HOTPCounter)
hotpCtxCheck _hotp _code _counter _resync = undefined
