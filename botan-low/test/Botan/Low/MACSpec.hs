module Main where

import Test.Prelude

import Botan.Bindings.MAC
import Botan.Low.MAC

import Botan.Low.RNG

-- NOTE: Full testing of all algorithms will require botan ADT types instead
-- of names, to be able to query for acceptable key and nonce parameters

-- nonceMACs :: [(MACName, Maybe Int)]
-- nonceMACs = concat
--     [ [ "CMAC(" <> bc <> ")"        | bc <- allBlockCiphers ]
--     , [ "GMAC(" <> bc <> ")"        | bc <- allBlockCiphers ]
--     , [ "CBC-MAC(" <> bc <> ")"     | bc <- allBlockCiphers ]
--     ]

-- macs :: [(MACName, Maybe Int)]
-- macs = concat
--     [ nonceMACs
--     , [ "HMAC(" <> h <> ")"         | h <- hashes ]
--     , [ "Poly1305", "SipHash(2,4)", "X9.19-MAC" ]
--     ]

macs :: [MACName]
macs = fmap fst macsAndNonceSzs

macsAndNonceSzs :: [(MACName, Int)]
macsAndNonceSzs =
    [ ("CMAC(AES-256)", 0)
    , ("GMAC(AES-256)", 16)
    -- , ("CBC-MAC(AES-256)", 16) -- Not supported
    , ("HMAC(SHA-3)", 0)
    , ("Poly1305", 0)
    , ("SipHash(2,4)", 0)
    , ("X9.19-MAC", 0)
    ]

message :: ByteString
message = "Fee fi fo fum! I smell the blood of an Englishman!"

main :: IO ()
main = hspec $ testSuite macsAndNonceSzs (chars . fst) $ \ (h,nonceSz) -> do
    it "can initialize a mac context" $ do
        ctx <- macInit h
        pass
    it "has a name" $ do
        ctx <- macInit h
        name <- macName ctx
        pass
    it "has an output length" $ do
        ctx <- macInit h
        olen <- macOutputLength ctx
        pass
    -- it "can copy the internal state" $ do
    --     ctx <- macInit h
    --     -- TODO: Populate with state and actually prove
    --     ctx' <- macCopyState ctx
    --     pass
    it "has a key spec" $ do
        ctx <- macInit h
        (_,_,_) <- macGetKeyspec ctx
        pass
    it "can set the key" $ do
        ctx <- macInit h
        (_,mx,_) <- macGetKeyspec ctx
        k <- systemRNGGet mx
        macSetKey ctx k
        pass
    -- it "has a nonce spec" $ do
    it "can set the nonce" $ do
        if nonceSz > 0
            then do
                ctx <- macInit h
                (_,mx,_) <- macGetKeyspec ctx
                k <- systemRNGGet mx
                macSetKey ctx k
                n <- systemRNGGet nonceSz
                macSetNonce ctx n
            else pass
    it "can clear all internal state" $ do
        ctx <- macInit h
        (_,mx,_) <- macGetKeyspec ctx
        k <- systemRNGGet mx
        macSetKey ctx k
        if nonceSz > 0
            then do
                n <- systemRNGGet nonceSz
                macSetNonce ctx n
            else pass
        -- TODO: Populate with state and actually prove
        macClear ctx
        pass
    it "can update the internal state with a single message block" $ do
        ctx <- macInit h
        (_,mx,_) <- macGetKeyspec ctx
        k <- systemRNGGet mx
        macSetKey ctx k
        if nonceSz > 0
            then do
                n <- systemRNGGet nonceSz
                macSetNonce ctx n
            else pass
        macUpdate ctx message
        pass
    it "can update the internal state with multiple message blocks" $ do
        ctx <- macInit h
        (_,mx,_) <- macGetKeyspec ctx
        k <- systemRNGGet mx
        macSetKey ctx k
        if nonceSz > 0
            then do
                n <- systemRNGGet nonceSz
                macSetNonce ctx n
            else pass
        forM_ (splitBlocks 4 message) $ macUpdate ctx
        pass
    it "can finalize a digest" $ do
        ctx <- macInit h
        (_,mx,_) <- macGetKeyspec ctx
        k <- systemRNGGet mx
        macSetKey ctx k
        if nonceSz > 0
            then do
                n <- systemRNGGet nonceSz
                macSetNonce ctx n
            else pass
        macUpdate ctx message
        d <- macFinal ctx
        pass
