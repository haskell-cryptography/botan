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

import Botan.Bindings.X509
import Botan.Bindings.X509.CA
import Botan.Bindings.X509.Extensions

-- /*
-- * X.509 certificate authority
-- **************************/

newtype X509CA = MkX509CA { getX509CAForeignPtr :: ForeignPtr X509CAStruct }

withX509CAPtr :: X509CA -> (X509CAPtr -> IO a) -> IO a
withX509CAPtr = withForeignPtr . getX509CAForeignPtr

x509CADestroy :: X509CA -> IO ()
x509CADestroy ca = finalizeForeignPtr (getX509CAForeignPtr ca)

x509CACreate :: X509Cert -> PrivKey -> HashName -> RNG -> IO X509CA
x509CACreate cert key hash_fn rng = do
    withX509CertPtr cert $ \ certPtr -> do
        withPrivKey key $ \ keyPtr -> do
            asCString hash_fn $ \ hashPtr -> do
                withRNG rng $ \ botanRNG -> do
                    mkInit
                        MkX509CA
                        (\ caPtr -> botan_x509_ca_create
                            caPtr
                            certPtr
                            keyPtr
                            hashPtr
                            botanRNG
                        )
                        botan_x509_ca_destroy

x509CACreatePadding :: X509Cert -> PrivKey -> HashName -> X509PaddingName -> RNG -> IO X509CA
x509CACreatePadding cert key hash_fn padding_fn rng = do
    withX509CertPtr cert $ \ certPtr -> do
        withPrivKey key $ \ keyPtr -> do
            asCString hash_fn $ \ hashPtr -> do
                asCString padding_fn $ \ paddingPtr -> do
                    withRNG rng $ \ botanRNG -> do
                        mkInit
                            MkX509CA
                            (\ caPtr -> botan_x509_ca_create_padding
                                caPtr
                                certPtr
                                keyPtr
                                hashPtr
                                paddingPtr
                                botanRNG
                            )
                            botan_x509_ca_destroy

x509CASignRequest :: X509CA -> X509CSR -> RNG -> Word64 -> Word64 -> IO X509Cert
x509CASignRequest ca csr rng not_before not_after = do
    withX509CAPtr ca $ \ caPtr -> do
        withX509CSRPtr csr $ \ csrPtr -> do
            withRNG rng $ \ botanRNG -> do
                mkInit
                    MkX509Cert
                    (\ certPtr -> botan_x509_ca_sign_request certPtr caPtr csrPtr botanRNG not_before not_after)
                    botan_x509_cert_destroy

-- NOTE: This is a static function on X509CA, so it doesn't take an actual X509CA object
x509CAMakeCertSerial :: SignCtx -> RNG -> MP -> SignAlgoName -> PubKey -> Word64 -> Word64 -> X509SubjectDN -> X509IssuerDN -> X509Extensions -> IO X509Cert
x509CAMakeCertSerial signer rng serial signalgo pubkey not_before not_after subject_dn issuer_dn exts = do
    withSignPtr signer $ \ signerPtr -> do
        withRNG rng $ \ botanRNG -> do
            withMP serial $ \ serialPtr -> do
                asCString signalgo $ \ signalgoPtr -> do
                    withPubKey pubkey $ \ pubkeyPtr -> do
                        asBytesLen subject_dn $ \ subject_dn_ptr subject_dn_len -> do
                            asBytesLen issuer_dn $ \ issuer_dn_ptr issuer_dn_len -> do
                                withX509ExtensionsPtr exts $ \ extsPtr -> do
                                    mkInit
                                        MkX509Cert
                                        (\ certPtr -> botan_x509_ca_make_cert_serial
                                            certPtr
                                            signerPtr
                                            botanRNG
                                            serialPtr
                                            signalgoPtr
                                            pubkeyPtr
                                            not_before
                                            not_after
                                            subject_dn_ptr subject_dn_len
                                            issuer_dn_ptr issuer_dn_len
                                            extsPtr
                                        )
                                        botan_x509_cert_destroy

x509CAChooseExtensions :: X509CSR -> X509Cert -> HashName -> IO X509Extensions
x509CAChooseExtensions csr cert hash_fn = do
    withX509CSRPtr csr $ \ csrPtr -> do
        withX509CertPtr cert $ \ certPtr -> do
            asCString hash_fn $ \ hashPtr -> do
                mkInit
                    MkX509Extensions
                    (\ extsPtr -> botan_x509_ca_choose_extensions extsPtr csrPtr certPtr hashPtr)
                    botan_x509_exts_destroy
