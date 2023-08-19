module Crypto.ErrorCorrection where

import Crypto.Prelude

class ErrorCorrectionCode ec where

class ErrorCorrectionCode bec => BlockErrorCorrectionCode bec where

-- Reed-solomon
-- Golay
-- BCH
-- Multidimensional parity
-- Hamming codes
-- SPC (single parity check)
-- LDPC (low-density parity check)

class ErrorCorrectionCode cec => ConvolutionalErrorCorrectionCode cec where

class ErrorCorrectionCode cec => CConcatenatedErrorCorrectionCode cec where


data family Shard fec

class ForwardErrorCorrection fec where
    
    fecEncode :: Message -> [Shard fec]

    fecDecode :: [Shard fec] -> Message
