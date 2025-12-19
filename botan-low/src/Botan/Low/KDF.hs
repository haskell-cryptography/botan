{-|
Module      : Botan.Low.KDF
Description : Key Derivation Functions (KDF)
Copyright   : (c) 2023-2024, Apotheca Labs
              (c) 2024-2025, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

Key derivation functions are used to turn some amount of shared
secret material into uniform random keys suitable for use with
symmetric algorithms. An example of an input which is useful for
a KDF is a shared secret created using Diffie-Hellman key agreement.

Typically a KDF is also used with a salt and a label. The salt should
be some random information which is available to all of the parties
that would need to use the KDF; this could be performed by setting
the salt to some kind of session identifier, or by having one of the
parties generate a random salt and including it in a message.

The label is used to bind the KDF output to some specific context. For
instance if you were using the KDF to derive a specific key referred to
as the “message key” in the protocol description, you might use a label
of “FooProtocol v2 MessageKey”. This labeling ensures that if you
accidentally use the same input key and salt in some other context, you
still use different keys in the two contexts.
-}

module Botan.Low.KDF (

  -- * Key derivation function

    KDFName
  , kdf

  -- * KDF algorithms

  , pattern HKDF
  , hkdf
  , pattern HKDF_Extract
  , hkdf_extract
  , pattern HKDF_Expand
  , hkdf_expand
  , pattern KDF2
  , kdf2
  , pattern KDF1_18033
  , kdf1_18033
  , pattern KDF1
  , kdf1
  , pattern TLS_12_PRF
  , tls_12_prf
  , pattern X9_42_PRF
  , x9_42_prf
  , pattern SP800_108_Counter
  , sp800_108_counter
  , pattern SP800_108_Feedback
  , sp800_108_feedback
  , pattern SP800_108_Pipeline
  , sp800_108_pipeline
  , pattern SP800_56A
  , sp800_56A
  , pattern SP800_56C
  , sp800_56C

  -- * Convenience

  , kdfs

  ) where

import           Botan.Bindings.KDF

import           Botan.Low.Error.Internal
import           Botan.Low.Hash
import           Botan.Low.MAC
import           Botan.Low.Prelude

type KDFName = ByteString

pattern HKDF
    ,   HKDF_Extract
    ,   HKDF_Expand
    ,   KDF2
    ,   KDF1_18033
    ,   KDF1
    ,   TLS_12_PRF
    ,   X9_42_PRF
    ,   SP800_108_Counter
    ,   SP800_108_Feedback
    ,   SP800_108_Pipeline
    ,   SP800_56A
    ,   SP800_56C
    :: KDFName

pattern HKDF                = BOTAN_KDF_HKDF
pattern HKDF_Extract        = BOTAN_KDF_HKDF_EXTRACT
pattern HKDF_Expand         = BOTAN_KDF_HKDF_EXPAND
pattern KDF2                = BOTAN_KDF_KDF2
pattern KDF1_18033          = BOTAN_KDF_KDF1_18033
pattern KDF1                = BOTAN_KDF_KDF1
pattern TLS_12_PRF          = BOTAN_KDF_TLS_12_PRF
pattern X9_42_PRF           = BOTAN_KDF_X9_42_PRF
pattern SP800_108_Counter   = BOTAN_KDF_SP800_108_COUNTER
pattern SP800_108_Feedback  = BOTAN_KDF_SP800_108_FEEDBACK
pattern SP800_108_Pipeline  = BOTAN_KDF_SP800_108_PIPELINE
pattern SP800_56A           = BOTAN_KDF_SP800_56A
pattern SP800_56C           = BOTAN_KDF_SP800_56C

hkdf :: HashName -> KDFName
hkdf h = HKDF /$ h
hkdf_extract :: KDFName -> KDFName
hkdf_extract h = HKDF_Extract /$ h
hkdf_expand :: KDFName -> KDFName
hkdf_expand h = HKDF_Expand /$ h
kdf2 :: KDFName -> KDFName
kdf2 h = KDF2 /$ h
kdf1_18033 :: KDFName -> KDFName
kdf1_18033 h = KDF1_18033 /$ h
kdf1 :: KDFName -> KDFName
kdf1 h = KDF1 /$ h
tls_12_prf :: KDFName -> KDFName
tls_12_prf h = TLS_12_PRF /$ h
x9_42_prf :: KDFName -> KDFName
x9_42_prf h = X9_42_PRF /$ h
sp800_108_counter :: KDFName -> KDFName
sp800_108_counter h = SP800_108_Counter /$ HMAC /$ h
sp800_108_feedback :: KDFName -> KDFName
sp800_108_feedback h = SP800_108_Feedback /$ HMAC /$ h
sp800_108_pipeline :: KDFName -> KDFName
sp800_108_pipeline h = SP800_108_Pipeline /$ HMAC /$ h
sp800_56A :: KDFName -> KDFName
sp800_56A h = SP800_56A /$ HMAC /$ h
sp800_56C :: KDFName -> KDFName
sp800_56C h = SP800_56C /$ HMAC /$ h

kdfs :: [KDFName]
kdfs = concat
    [ [ hkdf h | h <- cryptohashes ]
    , [ hkdf_extract h | h <- cryptohashes ]
    , [ hkdf_expand h | h <- cryptohashes ]
    , [ kdf2 h | h <- allHashes ]
    , [ kdf1_18033 h | h <- allHashes ]
    , [ kdf1 h | h <- allHashes ]
    , [ tls_12_prf h | h <- cryptohashes ]
    , [ x9_42_prf SHA1 ]
    , [ sp800_108_counter h | h <- cryptohashes ]
    , [ sp800_108_feedback h | h <- cryptohashes ]
    , [ sp800_108_pipeline h | h <- cryptohashes ]
    , [ sp800_56A h | h <- cryptohashes ]
    , [ sp800_56C h | h <- cryptohashes ]
    ]

-- SEE: Algos here: https://botan.randombit.net/doxygen/classBotan_1_1KDF.html
kdf
    :: KDFName          -- ^ __kdf_algo__: KDF algorithm, e.g., "SP800-56C"
    -> Int              -- ^ __out_len__: the desired output length in bytes
    -> ByteString       -- ^ __secret[]__: the secret input
    -> ByteString       -- ^ __salt[]__: a diversifier
    -> ByteString       -- ^ __label[]__: purpose for the derived keying material
    -> IO ByteString    -- ^ __out[]__: buffer holding the derived key
kdf algo outLen secret salt label = allocBytes outLen $ \ outPtr -> do
    asCString algo $ \ algoPtr -> do
        asBytesLen secret $ \ secretPtr secretLen -> do
            asBytesLen salt $ \ saltPtr saltLen -> do
                asBytesLen label $ \ labelPtr labelLen -> do
                    throwBotanIfNegative_ $ botan_kdf
                        (ConstPtr algoPtr)
                        outPtr
                        (fromIntegral outLen)
                        (ConstPtr secretPtr)
                        secretLen
                        (ConstPtr saltPtr)
                        saltLen
                        (ConstPtr labelPtr)
                        labelLen
