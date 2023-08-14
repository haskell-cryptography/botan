module Botan.HOTP where

import qualified Data.ByteString as ByteString

import Botan.Low.HOTP hiding (HOTPCtx)
import qualified Botan.Low.HOTP as Low

import Botan.Hash (Hash(..), hashName)

import Botan.Prelude

-- TODO: Package the ctx with counter?
-- Low HOTPCtx does not mutate, so it should
--  be copyable.

type HOTPKey = ByteString

data HOTPCtx
    = HOTPCtx
    { hotpCtx       :: Low.HOTPCtx
    , hotpCounter   :: HOTPCounter
    }

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
