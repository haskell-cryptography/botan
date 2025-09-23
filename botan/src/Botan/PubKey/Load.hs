{-|
Module      : Botan.PubKey.Load
Description : Algorithm specific public key operations
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Load (

  -- * DH
    loadDHPrivKey
  , loadDHPubKey

  -- * DSA
  , newDSAPrivKey
  , loadDSAPrivKey
  , loadDSAPubKey

  -- * ECDH
  , loadECDHPrivKey
  , loadECDHPubKey

  -- * ECDSA
  , loadECDSAPrivKey
  , loadECDSAPubKey

  -- * Ed25519
  , loadEd25519PrivKey
  , loadEd25519PubKey
  , exportEd25519PrivKey
  , exportEd25519PubKey

  -- * ElGamal
  , newElGamalPrivKey
  , loadElGamalPrivKey
  , loadElGamalPubKey

  -- * RSA
  , loadRSAPrivKey
  , loadRSAPubKey

  -- * SM2
  , loadSM2PrivKey
  , loadSM2PubKey

  -- * X25519
  , loadX25519PrivKey
  , loadX25519PubKey
  , exportX25519PrivKey
  , exportX25519PubKey

  ) where

import qualified Botan.Low.PubKey.DH as Low
import qualified Botan.Low.PubKey.DSA as Low
import qualified Botan.Low.PubKey.ECDH as Low
import qualified Botan.Low.PubKey.ECDSA as Low
import qualified Botan.Low.PubKey.Ed25519 as Low
import qualified Botan.Low.PubKey.ElGamal as Low
import qualified Botan.Low.PubKey.RSA as Low
import qualified Botan.Low.PubKey.SM2 as Low
import qualified Botan.Low.PubKey.X25519 as Low

import           Botan.Prelude
import           Botan.PubKey
import           Botan.RNG

import           Botan.Low.MPI

-- DH

loadDHPrivKey :: MP -> MP -> MP -> PrivKey
loadDHPrivKey p g x = unsafePerformIO $ Low.privKeyLoadDH p g x
{-# NOINLINE loadDHPrivKey #-}

loadDHPubKey :: MP -> MP -> MP -> PubKey
loadDHPubKey p g y = unsafePerformIO $ Low.pubKeyLoadDH p g y
{-# NOINLINE loadDHPubKey #-}

-- DSA

newDSAPrivKey :: (MonadRandomIO m) => Int -> Int -> m PrivKey
newDSAPrivKey pbits qbits = do
    rng <- getRNG
    liftIO $ Low.privKeyCreateDSA rng pbits qbits

loadDSAPrivKey :: MP -> MP -> MP -> MP -> PrivKey
loadDSAPrivKey p q g x = unsafePerformIO $ Low.privKeyLoadDSA p q g x
{-# NOINLINE loadDSAPrivKey #-}

loadDSAPubKey :: MP -> MP -> MP -> MP -> PubKey
loadDSAPubKey p q g y = unsafePerformIO $ Low.pubKeyLoadDSA p q g y
{-# NOINLINE loadDSAPubKey #-}

-- ECDH

loadECDHPrivKey :: MP -> ByteString -> PrivKey
loadECDHPrivKey scalar curve_name = unsafePerformIO $ Low.privKeyLoadECDH scalar curve_name
{-# NOINLINE loadECDHPrivKey #-}

loadECDHPubKey :: MP -> MP -> ByteString -> PubKey
loadECDHPubKey public_x public_y curve_name = unsafePerformIO $ Low.pubKeyLoadECDH public_x public_y curve_name
{-# NOINLINE loadECDHPubKey #-}

-- ECDSA

loadECDSAPrivKey :: MP -> ByteString -> PrivKey
loadECDSAPrivKey scalar curve_name = unsafePerformIO $ Low.privKeyLoadECDSA scalar curve_name
{-# NOINLINE loadECDSAPrivKey #-}

loadECDSAPubKey :: MP -> MP -> ByteString -> PubKey
loadECDSAPubKey public_x public_y curve_name = unsafePerformIO $ Low.pubKeyLoadECDSA public_x public_y curve_name
{-# NOINLINE loadECDSAPubKey #-}

-- Ed25519

-- NOTE: Input must be exactly 32 bytes long
loadEd25519PrivKey :: ByteString -> PrivKey
loadEd25519PrivKey bytes = unsafePerformIO $ Low.privKeyLoadEd25519 bytes
{-# NOINLINE loadEd25519PrivKey #-}

-- NOTE: Input must be exactly 32 bytes long
loadEd25519PubKey :: ByteString -> PubKey
loadEd25519PubKey bytes = unsafePerformIO $ Low.pubKeyLoadEd25519 bytes
{-# NOINLINE loadEd25519PubKey #-}

exportEd25519PrivKey :: PrivKey -> ByteString
exportEd25519PrivKey k = unsafePerformIO $ Low.privKeyEd25519GetPrivKey k
{-# NOINLINE exportEd25519PrivKey #-}

exportEd25519PubKey :: PubKey -> ByteString
exportEd25519PubKey k = unsafePerformIO $ Low.pubKeyEd25519GetPubKey k
{-# NOINLINE exportEd25519PubKey #-}

-- ElGamal

newElGamalPrivKey :: (MonadRandomIO m) => Int -> Int -> m PrivKey
newElGamalPrivKey pbits qbits = do
    rng <- getRNG
    liftIO $ Low.privKeyCreateDSA rng pbits qbits

loadElGamalPrivKey :: MP -> MP -> MP -> PrivKey
loadElGamalPrivKey p g x = unsafePerformIO $ Low.privKeyLoadElGamal p g x
{-# NOINLINE loadElGamalPrivKey #-}

loadElGamalPubKey :: MP -> MP -> MP -> PubKey
loadElGamalPubKey p g y = unsafePerformIO $ Low.pubKeyLoadElGamal p g y
{-# NOINLINE loadElGamalPubKey #-}

-- RSA

loadRSAPrivKey :: MP -> MP -> MP -> PrivKey
loadRSAPrivKey p q e = unsafePerformIO $ Low.privKeyLoadRSA p q e
{-# NOINLINE loadRSAPrivKey #-}

loadRSAPubKey :: MP -> MP -> PubKey
loadRSAPubKey n e = unsafePerformIO $ Low.pubKeyLoadRSA n e
{-# NOINLINE loadRSAPubKey #-}

-- SM2

loadSM2PrivKey :: MP -> ByteString -> PrivKey
loadSM2PrivKey scalar curve_name = unsafePerformIO $ Low.privKeyLoadSM2 scalar curve_name
{-# NOINLINE loadSM2PrivKey #-}

loadSM2PubKey :: MP -> MP -> ByteString -> PubKey
loadSM2PubKey public_x public_y curve_name = unsafePerformIO $ Low.pubKeyLoadSM2 public_x public_y curve_name
{-# NOINLINE loadSM2PubKey #-}

-- X25519 /  Curve25519

-- NOTE: Input must be exactly 32 bytes long
loadX25519PrivKey :: ByteString -> PrivKey
loadX25519PrivKey bytes = unsafePerformIO $ Low.privKeyLoadX25519 bytes
{-# NOINLINE loadX25519PrivKey #-}

-- NOTE: Input must be exactly 32 bytes long
loadX25519PubKey :: ByteString -> PubKey
loadX25519PubKey bytes = unsafePerformIO $ Low.pubKeyLoadX25519 bytes
{-# NOINLINE loadX25519PubKey #-}

exportX25519PrivKey :: PrivKey -> ByteString
exportX25519PrivKey k = unsafePerformIO $ Low.privKeyX25519GetPrivKey k
{-# NOINLINE exportX25519PrivKey #-}

exportX25519PubKey :: PubKey -> ByteString
exportX25519PubKey k = unsafePerformIO $ Low.pubKeyX25519GetPubKey k
{-# NOINLINE exportX25519PubKey #-}
