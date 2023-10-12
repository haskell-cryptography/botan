import Test.Tasty.Bench

import Prelude

import Data.ByteString (ByteString(..))
import qualified Data.ByteString as ByteString

import qualified Botan.Bindings.RNG as Botan
import qualified Botan.Bindings.Bcrypt as Botan
import qualified Botan.Low.RNG as Botan
import qualified Botan.Low.Bcrypt as Botan
import qualified Botan.Low.Hash as Botan


import qualified Crypto.KDF.BCrypt as Crypton
import qualified Crypto.Hash as Crypton
import qualified Crypto.Hash.Algorithms as Crypton

password :: ByteString
password = "Fee fi fo fum!"

cryptonBcrypt :: Int -> IO ByteString
cryptonBcrypt factor = Crypton.hashPassword factor password

botanBcrypt :: Int -> IO ByteString
botanBcrypt factor = do
    rng <- Botan.rngInit "system"
    Botan.bcryptGenerate password rng factor


plaintext :: ByteString
plaintext = "Fee fi fo fum! I smell the blood of an Englishman! Be he alive or be he dead, I'll grind his bones to make my bread!"

longtext :: ByteString
longtext = ByteString.concat $ replicate 10000 $ plaintext

cryptonHash :: ByteString -> Crypton.Digest Crypton.SHA3_512
cryptonHash = Crypton.hash

botanHash :: ByteString -> IO Botan.HashDigest
botanHash = Botan.hashWithName "SHA-3(512)"

main :: IO ()
main = defaultMain
    [ bgroup "Bcrypt work factor"
        [ bgroup "Crypton"
            [ bench "twelve"    $ nfIO $ cryptonBcrypt 12
            , bench "fourteen"  $ nfIO $ cryptonBcrypt 14
            , bench "sixteen"   $ nfIO $ cryptonBcrypt 16
            ]
        , bgroup "Botan"
            [ bench "twelve"    $ nfIO $ botanBcrypt 12
            , bench "fourteen"  $ nfIO $ botanBcrypt 14
            , bench "sixteen"   $ nfIO $ botanBcrypt 16
            ]
        ]
    , bgroup "Hash"
        [ bgroup "Crypton"
            [ bench "password"  $ nf cryptonHash password
            , bench "plaintext" $ nf cryptonHash plaintext
            , bench "longtext" $ nf cryptonHash longtext
            ]
        , bgroup "Botan"
            [ bench "password"  $ nfIO $ botanHash password
            , bench "plaintext" $ nfIO $ botanHash plaintext
            , bench "longtext" $ nfIO $ botanHash longtext
            ]
        ]
    ]

