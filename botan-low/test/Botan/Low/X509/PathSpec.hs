module Botan.Low.X509.PathSpec
( spec
) where

import Test.Prelude

import Botan.Low.X509
import Botan.Low.X509.Path

spec :: Spec
spec = do
    describe "thing" $ do
        it "action" $ do
            pass :: IO ()
