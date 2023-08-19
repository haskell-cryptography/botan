module Crypto.Scrubbed where

import Crypto.Prelude

class Scrubbed a where
    scrubMemIO :: a -> IO ()