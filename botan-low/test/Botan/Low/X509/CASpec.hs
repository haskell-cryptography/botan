module Botan.Low.X509.CASpec
( spec
) where

import Test.Prelude

import Botan.Low.X509
import Botan.Low.X509.CA

spec :: Spec
spec = do
    describe "thing" $ do
        it "action" $ do
            pass :: IO ()
