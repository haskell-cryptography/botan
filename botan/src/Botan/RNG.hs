module Botan.RNG where

import qualified Data.ByteString as ByteString

import Botan.Bindings.RNG
import Botan.Low.RNG

import Botan.Prelude

-- Higher-level

data RNG
    = System
    | User
    | UserThreadsafe
    | RDRand

rngName :: RNG -> RNGName
rngName System          = "system"          -- BOTAN_RANDOM_TYPE_SYSTEM
rngName User            = "user"            -- BOTAN_RANDOM_TYPE_USER
rngName UserThreadsafe  = "user-threadsafe" -- BOTAN_RANDOM_TYPE_USER_THREADSAFE
rngName RDRand          = "rdrand"          -- BOTAN_RANDOM_TYPE_RDRAND

rngCtxInitIO :: RNG -> IO RNGCtx
rngCtxInitIO rng = rngCtxInitNameIO (rngName rng)
