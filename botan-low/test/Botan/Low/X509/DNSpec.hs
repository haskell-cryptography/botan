module Botan.Low.X509.DNSpec
( spec
) where

import Test.Prelude

import Botan.Low.X509
import Botan.Low.X509.DN

spec :: Spec
spec = do
    describe "thing" $ do
        it "action" $ do
            pass :: IO ()
