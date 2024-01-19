{-|
Module      : Botan.PubKey.Sign
Description : Signature Generation
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX
-}

module Botan.PubKey.Sign
(

-- * Thing
-- $introduction

-- * Usage
-- $usage

-- * Public Key Signatures

  pkSign
-- , pkSignatureLength

-- ** Data type
,  PKSign(..)

-- ** Associated types

, PKSignAlgo(..)
, signAlgoName
, PKSignatureFormat(..)
, PKSignature(..)

-- ** Destructor
, destroyPKSign

-- ** Initializers
, newPKSign

-- ** Accessors
, pkSignOutputLength

-- ** Algorithm
, pkSignUpdate
, pkSignFinish

-- PENDING REFACTOR
, SignAlgo(..)
, EMSA(..)

) where

import qualified Data.ByteString as ByteString

import Data.Bool

import qualified Botan.Low.PubKey.Sign as Low

import Botan.Error
import Botan.Hash
import Botan.Prelude
import Botan.PubKey
import Botan.RNG
import Botan.Low.PubKey.Sign (signDestroy)

{- $introduction

-}

{- $usage

-}

--
-- Public Key Signatures
--

-- NOTE: Signatures are currently wicked dangerous and prone to throwing exceptions
-- which pk algorithms go with what signing algos and formats is currently not well
-- defined. Proceed with caution

pkSign
    :: (MonadRandomIO m)
    => PrivKey
    -> PKSignAlgo
    -> PKSignatureFormat
    -> ByteString
    -> m PKSignature
pkSign pk algo fmt msg = do
    signer <- newPKSign pk algo fmt
    pkSignUpdate signer msg
    pkSignFinish signer

-- NOTE: Needs analysis for static data, involves key algo and fmt too
-- pkSignatureLength :: PKSignAlgo -> Int
-- pkSignatureLength algo = undefined
-- {-# NOINLINE pkSignatureLength #-}

-- Data type

-- TODO:

-- Associated types

type PKSignAlgo = SignAlgo

type PKSignatureFormat = PKExportFormat
type PKSignature = ByteString

-- Mutable context

type PKSign = Low.Sign

-- Destructor
destroyPKSign :: (MonadIO m) => PKSign -> m ()
destroyPKSign = liftIO . signDestroy

-- ** Initializers

newPKSign :: (MonadIO m) => PrivKey -> PKSignAlgo -> PKSignatureFormat -> m PKSign
newPKSign pk algo fmt = liftIO $ Low.signCreate pk (signAlgoName algo) (pkExportFormatFlags fmt)

-- Accessors
pkSignOutputLength :: (MonadIO m) => PKSign -> m Int
pkSignOutputLength = liftIO . Low.signOutputLength

-- Mutable Algorithm

pkSignUpdate :: (MonadIO m) => PKSign -> ByteString -> m ()
pkSignUpdate signer msg = liftIO $ Low.signUpdate signer msg

pkSignFinish :: (MonadRandomIO m) => PKSign -> m PKSignature
pkSignFinish signer = do
    rng <- getRNG
    liftIO $ Low.signFinish signer rng




--
-- OG BELOW
--






-- NOTE: Related to pk_pad

-- NOTE: Referred to as /padding/ algo in C++ docs
--  "The proper value of padding depends on the algorithm. For many
--  signature schemes including ECDSA and DSA, simply naming a hash
--  function like “SHA-256” is all that is required."
-- Are these all EMSA?
-- TODO: REFACTOR HEAVILY?
data SignAlgo
    = EMSA EMSA
    | Ed25519Pure
    | Ed25519ph
    | Ed25519Hash Hash  -- NOTE: Ed25519 is not the only key type to accept arbitary hashes.
    | SM2SignParam ByteString Hash
    | XMSSEmptyParam
    deriving (Show, Eq)

{- REFACTORING STAB 1 -}

data PKSignAlgo'
    = RSASign' EMSA 
    | SM2Sign' ByteString Hash
    | DSASign' Hash
    | ECDSASign' Hash
    | ECKCDSASign' Hash
    | ECGDSASign' Hash
    | GOST_34_10Sign' Hash
    | Ed25519Sign' Ed25519Sign'
    | XMSSSign' -- NOTE: Probably has actual params
    | DilithiumSign' -- NOTE: Probably has actual params

data Ed25519Sign'
    = Ed25519Pure'
    | Ed25519ph'
    | Ed25519Hash' Hash
    | Ed25519Empty' -- NOTE: SUSPECT DEFAULTS TO ONE OF THE OTHERS

{- END REFACTORING STAB 1 -}

signAlgoName :: SignAlgo -> Low.SignAlgoName
signAlgoName (EMSA emsa)            = emsaName emsa
signAlgoName Ed25519Pure            = "Pure"
signAlgoName Ed25519ph              = "Ed25519ph"
signAlgoName (Ed25519Hash h)        = hashName h
signAlgoName (SM2SignParam uid h)   = uid <> "," <> hashName h
signAlgoName _                      = ""

-- NOTE: Mostly straight from Z-Botan
--  Can do a lot to make more ergonomic
data EMSA
    = EMSA_Raw
    | EMSA1 Hash
    | EMSA2 Hash
    | EMSA3_Raw (Maybe Hash)
    | EMSA3 Hash
    | EMSA4_Raw Hash (Maybe Int)
    | EMSA4 Hash (Maybe Int)
    | ISO_9796_DS2 Hash Bool (Maybe Int)
    | ISO_9796_DS3 Hash Bool
    deriving (Show, Eq)

-- TODO: Use elsewhere
mkNameArgs :: ByteString -> [ByteString] -> ByteString
mkNameArgs name args = name <> "(" <> ByteString.intercalate "," args <> ")"

-- NOTE: Raw mode assumes the plaintext is already processed and just signs the plaintext
-- TODO: Split out Raw mode?
emsaName :: EMSA -> Low.SignAlgoName
emsaName EMSA_Raw                   = "Raw"
emsaName (EMSA1 h)                  = mkNameArgs "EMSA1" [ hashName h ]
emsaName (EMSA2 h)                  = mkNameArgs "EMSA2" [ hashName h ]
emsaName (EMSA3 h)                  = mkNameArgs "EMSA3" [ hashName h ]
emsaName (EMSA3_Raw (Just h))       = mkNameArgs "EMSA3" [ "Raw", hashName h ]
emsaName (EMSA3_Raw _)              = mkNameArgs "EMSA3" [ "Raw" ]
emsaName (EMSA4 h (Just sz))        = mkNameArgs "EMSA4" [ hashName h, "MGF1", showBytes sz ]
emsaName (EMSA4 h _)                = mkNameArgs "EMSA4" [ hashName h ]
emsaName (EMSA4_Raw h (Just sz))    = mkNameArgs "EMSA4_Raw" [ hashName h, "MGF1", showBytes sz ]
emsaName (EMSA4_Raw h _)            = mkNameArgs "EMSA4_Raw" [ hashName h ]
emsaName (ISO_9796_DS2 h imp (Just sz))
                                    = mkNameArgs "ISO_9796_DS2" [ hashName h, iso9796Implicit imp, showBytes sz]
emsaName (ISO_9796_DS2 h imp _)     = mkNameArgs "ISO_9796_DS2" [ hashName h, iso9796Implicit imp]
emsaName (ISO_9796_DS3 h imp)       = mkNameArgs "ISO_9796_DS3" [ hashName h, iso9796Implicit imp]

iso9796Implicit :: Bool -> ByteString
iso9796Implicit = bool "exp" "imp"

data SignatureFormat
    = Standard
    | DERSequence
    deriving (Show, Eq)

signatureFormatFlag :: SignatureFormat -> Low.SigningFlags
signatureFormatFlag Standard    = Low.SigningPEMFormatSignature -- BOTAN_PUBKEY_SIGNING_FLAGS_NONE
signatureFormatFlag DERSequence = Low.SigningDERFormatSignature -- BOTAN_PUBKEY_DER_FORMAT_SIGNATURE

