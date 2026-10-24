{-|
Module      : Botan.Low.XOF
Description : eXtendable Output Functions (XOFs)
Copyright   : (c) 2026-2027, Haskell Foundation
License     : BSD-3-Clause
Maintainer  : joris@well-typed.com, leo@apotheca.io
Stability   : experimental
Portability : POSIX

An eXtendable Output Function (XOF) transforms an arbitrary length input message into an indefinite stream of output bits. Typically, it is illegal to call update() after the first call to output().
-}

module Botan.Low.XOF (

  -- * Usage

    XOF(..)
  , XOFName
  , XOFDigest
  , withXOF
  , xofInit
  , xofCopyState
  , xofBlockSize
  , xofName
  , xofAcceptsInput
  , xofClear
  , xofUpdate
  , xofOutput
  , xofDestroy

  -- * eXtendable Output Function algorithms

  , pattern ASCON_XOF128
  , pattern SHAKE128
  , pattern SHAKE256

  -- * Convenience

  , allXOFs
  ) where

import           Botan.Bindings.XOF
import           Botan.Low.Error.Internal
import           Botan.Low.Internal.ByteString
import           Botan.Low.Make
import           Botan.Low.Remake
import           Data.ByteString
import           Foreign.C.Types
import           Foreign.ForeignPtr
import           Foreign.Ptr

newtype XOF = MkXOF { foreignPtr :: ForeignPtr BotanXOFStruct }

withXOF :: XOF -> (BotanXOF -> IO a) -> IO a
xofDestroy :: XOF -> IO ()
createXOF :: (Ptr BotanXOF -> IO CInt) -> IO XOF
(withXOF, xofDestroy, createXOF)
    = mkBindings
        MkBotanXOF (.ptr)
        MkXOF (.foreignPtr)
        botan_xof_destroy

type XOFName = ByteString

pattern ASCON_XOF128
    ,   SHAKE128
    ,   SHAKE256
    :: XOFName

pattern ASCON_XOF128 = BOTAN_XOF_ASCON_XOF128
pattern SHAKE128     = BOTAN_XOF_SHAKE_256_XOF
pattern SHAKE256     = BOTAN_XOF_SHAKE_256_XOF

type XOFDigest = ByteString

allXOFs :: [XOFName]
allXOFs =
    [ ASCON_XOF128
    , SHAKE128
    , SHAKE256
    ]

xofInit
    :: XOFName -- ^ __xof_name__: name of the XOF, e.g., "SHAKE-128"
    -> IO XOF  -- ^ __xof__: XOF object
xofInit = mkCreateObjectCString createXOF $ \ out name ->
    botan_xof_init out name 0

xofCopyState
    :: XOF    -- ^ __source__: source XOF object
    -> IO XOF -- ^ __dest__: destination XOF object
xofCopyState source = withXOF source $ \ sourcePtr -> do
    createXOF $ \ dest -> botan_xof_copy_state dest sourcePtr

xofBlockSize
    :: XOF    -- ^ __xof__: XOF object
    -> IO Int -- ^ __block_size__: output buffer to hold the XOF's block size
xofBlockSize = mkGetSize withXOF botan_xof_block_size

xofName
    :: XOF          -- ^ __xof__: XOF object to read
    -> IO XOFDigest -- ^ __name__: output buffer
xofName = mkGetCString withXOF botan_xof_name

xofAcceptsInput
    :: XOF     -- ^ __xof__: XOF object
    -> IO Bool -- ^ __accepts_input__: true iff the XOF is still accepting input bytes
xofAcceptsInput = mkGetBoolCode withXOF botan_xof_accepts_input

xofClear
    :: XOF -- ^ __xof__: XOF object
    -> IO ()
xofClear = mkAction withXOF botan_xof_clear

xofUpdate
    :: XOF        -- ^ __xof__: XOF object
    -> ByteString -- ^ __in__: input buffer
    -> IO ()
xofUpdate = mkWithObjectSetterCBytesLen withXOF botan_xof_update

xofOutput
    :: XOF          -- ^ __xof__: XOF object
    -> Int          -- ^ __out_len__: number of bytes to write into the output buffer
    -> IO XOFDigest -- ^ __out__: output buffer
xofOutput xof sz = withXOF xof $ \ xofPtr -> do
    allocBytes sz $ \ digestPtr -> do
        throwBotanIfNegative_ $ botan_xof_output xofPtr digestPtr $ fromIntegral sz
