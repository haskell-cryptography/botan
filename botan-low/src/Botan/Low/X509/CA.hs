module Botan.Low.X509.CA where

import Data.Bool

import Botan.Low.Error
import Botan.Low.Prelude
import Botan.Low.Hash
import Botan.Low.Make
import Botan.Low.MPI
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.RNG
import Botan.Low.X509
import Botan.Low.X509.CSR
import Botan.Low.X509.Extensions

import Botan.Bindings.X509.CA

-- /*
-- * X.509 certificate authority
-- **************************/

newtype X509CA = MkX509CA { getX509CAForeignPtr :: ForeignPtr X509CAStruct }

withX509CAPtr :: X509CA -> (X509CAPtr -> IO a) -> IO a
withX509CAPtr = withForeignPtr . getX509CAForeignPtr

x509CADestroy :: X509CA -> IO ()
x509CADestroy ca = finalizeForeignPtr (getX509CAForeignPtr ca)

x509CACreate :: X509Cert -> PrivKey -> HashName -> RNGCtx -> IO X509CA
x509CACreate = undefined

x509CACreatePadding :: X509Cert -> PrivKey -> HashName -> X509PaddingName -> RNGCtx -> IO X509CA
x509CACreatePadding = undefined

x509CASignRequest :: X509CA -> X509CSR -> RNGCtx -> Word64 -> Word64 -> IO X509Cert
x509CASignRequest = undefined

-- NOTE: This is a static function on X509CA, so it doesn't take an actual X509CA object
x509CAMakeCertSerial :: SignCtx -> RNGCtx -> MP -> SignAlgoName -> PubKey -> Word64 -> Word64 -> X509SubjectDN -> X509IssuerDN -> X509Extensions -> IO X509Cert
x509CAMakeCertSerial = undefined

x509CAChooseExtensions :: X509CSR -> X509Cert -> HashName -> IO X509Extensions
x509CAChooseExtensions = undefined
