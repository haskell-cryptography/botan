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

import Botan.Bindings.X509.CA
import Botan.Bindings.X509.Ext

-- /*
-- * X.509 certificate authority
-- **************************/

newtype X509CA = MkX509CA { getX509CAForeignPtr :: ForeignPtr X509CAStruct }

withX509CAPtr :: X509CA -> (X509CAPtr -> IO a) -> IO a
withX509CAPtr = withForeignPtr . getX509CAForeignPtr

x509CADestroy :: X509CA -> IO ()
x509CADestroy ca = finalizeForeignPtr (getX509CAForeignPtr ca)

newtype X509Extensions = MkX509Extensions { getX509ExtensionsForeignPtr :: ForeignPtr X509ExtensionsStruct }

withX509ExtensionsPtr :: X509Extensions -> (X509ExtensionsPtr -> IO a) -> IO a
withX509ExtensionsPtr = withForeignPtr . getX509ExtensionsForeignPtr

x509ExtensionsDestroy :: X509Extensions -> IO ()
x509ExtensionsDestroy exts = finalizeForeignPtr (getX509ExtensionsForeignPtr exts)

type X509DN = ByteString

-- NOTE: It is unknown which paddings are accepted (eg, compare cbc vs pk padding)
type X509PaddingName = ByteString
type X509Challenge = ByteString

x509CACreate :: X509Cert -> PrivKey -> HashName -> RNGCtx -> IO X509CA
x509CACreate = undefined

x509CACreatePadding :: X509Cert -> PrivKey -> HashName -> X509PaddingName -> RNGCtx -> IO X509CA
x509CACreatePadding = undefined

x509CASignRequest :: X509CA -> X509CSR -> RNGCtx -> Word64 -> Word64 -> IO X509Cert
x509CASignRequest = undefined

-- NOTE: This is a static function on X509CA, so it doesn't take an actual X509CA object
x509CAMakeCertSerial :: SignCtx -> RNGCtx -> MP -> SignAlgoName -> PubKey -> Word64 -> Word64 -> X509DN -> X509DN -> X509Extensions -> IO X509Cert
x509CAMakeCertSerial = undefined

x509CAChooseExtensions :: X509CSR -> X509Cert -> HashName -> IO X509Extensions
x509CAChooseExtensions = undefined

-- TODO: Move to Botan.Bindings.X509.CSR   

-- /*
-- * X.509 certificate signing request
-- **************************/

-- PKCS10Request
newtype X509CSR = MkX509CSR { getX509CSRForeignPtr :: ForeignPtr PKCS10RequestStruct }

withX509CSRPtr :: X509CSR -> (PKCS10RequestPtr -> IO a) -> IO a
withX509CSRPtr = withForeignPtr . getX509CSRForeignPtr

x509CSRDestroy :: X509CSR -> IO ()
x509CSRDestroy csr = finalizeForeignPtr (getX509CSRForeignPtr csr)

x509CreateCertReq :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509CSR
x509CreateCertReq = undefined

x509CSRCreate :: PrivKey -> X509DN -> X509Extensions -> HashName -> RNGCtx -> X509PaddingName -> X509Challenge -> IO X509CSR
x509CSRCreate privKey subjectDn exts hash_fn rng padding_fn challenge = undefined

x509CreateSelfSignedCert :: X509CertOptions -> PrivKey -> HashName -> RNGCtx -> IO X509Cert
x509CreateSelfSignedCert = undefined

-- /*
-- * X.509 certificate options
-- **************************/

-- TODO: Probably move to Botan.Low.X509.Options

newtype X509CertOptions = MkX509CertOptions { getX509CertOptionsForeignPtr :: ForeignPtr X509CertOptionsStruct }

withX509CertOptionsPtr :: X509CertOptions -> (X509CertOptionsPtr -> IO a) -> IO a
withX509CertOptionsPtr = withForeignPtr . getX509CertOptionsForeignPtr

x509CertOptionsDestroy :: X509CertOptions -> IO ()
x509CertOptionsDestroy opts = finalizeForeignPtr (getX509CertOptionsForeignPtr opts)

x509CertOptionsCreate :: IO X509CertOptions
x509CertOptionsCreate = mkInit MkX509CertOptions botan_x509_cert_options_create botan_x509_cert_options_destroy

x509CertOptionsCreateCommon
    :: ByteString
    -> ByteString
    -> ByteString
    -> ByteString
    -> Word32
    -> IO X509CertOptions
x509CertOptionsCreateCommon common_name country org org_unit expiration_time = do
    alloca $ \ outPtr -> do
        asCString common_name $ \ cnPtr -> do
            asCString country $ \ countryPtr -> do
                asCString org $ \ orgPtr -> do
                    asCString org_unit $ \ orgUnitPtr -> do
                        throwBotanIfNegative_ $ botan_x509_cert_options_create_common outPtr
                            cnPtr
                            countryPtr
                            orgPtr
                            orgUnitPtr
                            expiration_time
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_x509_cert_options_destroy out
        return $ MkX509CertOptions foreignPtr

x509CertOptionsSetCommonName :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetCommonName = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_common_name

x509CertOptionsSetCountry :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetCountry = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_country

x509CertOptionsSetOrg :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetOrg = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_organization

x509CertOptionsSetOrgUnit :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetOrgUnit = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_org_unit

x509CertOptionsSetMoreOrgUnits :: X509CertOptions -> [ByteString] -> IO ()
x509CertOptionsSetMoreOrgUnits opts more_org_units = withX509CertOptionsPtr opts $ \ optsPtr -> do
    withPtrs asCString more_org_units $ \ morePtrs -> do
        allocaArray moreLen $ \ (morePtrArrayPtr :: Ptr (Ptr CChar)) -> do
            pokeArray morePtrArrayPtr morePtrs
            throwBotanIfNegative_ $ botan_x509_cert_options_set_more_org_units
                optsPtr
                morePtrArrayPtr
                (fromIntegral moreLen)
    where
        moreLen = length more_org_units

x509CertOptionsSetLocality :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetLocality = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_locality

x509CertOptionsSetState :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetState = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_state

x509CertOptionsSetSerialNumber :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetSerialNumber = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_serial_number

x509CertOptionsSetEmail :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetEmail = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_email

x509CertOptionsSetURI :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetURI = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_uri

x509CertOptionsSetIP :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetIP = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_ip

x509CertOptionsSetDNS :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetDNS = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_dns

x509CertOptionsSetMoreDNS :: X509CertOptions -> [ByteString] -> IO ()
x509CertOptionsSetMoreDNS opts more_dns = withX509CertOptionsPtr opts $ \ optsPtr -> do
    withPtrs asCString more_dns $ \ morePtrs -> do
        allocaArray moreLen $ \ (morePtrArrayPtr :: Ptr (Ptr CChar)) -> do
            pokeArray morePtrArrayPtr morePtrs
            throwBotanIfNegative_ $ botan_x509_cert_options_set_more_dns
                optsPtr
                morePtrArrayPtr
                (fromIntegral moreLen)
    where
        moreLen = length more_dns

x509CertOptionsSetXMPP :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetXMPP = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_xmpp

x509CertOptionsSetChallenge :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetChallenge = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_challenge

x509CertOptionsSetStart :: X509CertOptions -> Word64 -> IO ()
x509CertOptionsSetStart = mkSet withX509CertOptionsPtr botan_x509_cert_options_set_start

x509CertOptionsSetEnd :: X509CertOptions -> Word64 -> IO ()
x509CertOptionsSetEnd = mkSet withX509CertOptionsPtr botan_x509_cert_options_set_end

-- // TODO: Convenience functions for set_start_duration, set_expires

x509CertOptionsSetIsCA :: X509CertOptions -> Bool -> IO ()
x509CertOptionsSetIsCA = mkSetOn withX509CertOptionsPtr (CBool . bool 0 1) botan_x509_cert_options_set_is_ca

x509CertOptionsSetPathLimit :: X509CertOptions -> Int -> IO ()
x509CertOptionsSetPathLimit = mkSetCSize withX509CertOptionsPtr botan_x509_cert_options_set_path_limit

x509CertOptionsSet_padding_scheme :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSet_padding_scheme = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_padding_scheme

-- NOTE: Should probably be Word rather than Int
x509CertOptionsSetKeyConstraints :: X509CertOptions -> Int -> IO ()
x509CertOptionsSetKeyConstraints = mkSetOn withX509CertOptionsPtr fromIntegral botan_x509_cert_options_set_key_constraints

x509CertOptionsSetExConstraints :: X509CertOptions -> [ByteString] -> IO ()
x509CertOptionsSetExConstraints opts exConstraints = withX509CertOptionsPtr opts $ \ optsPtr -> do
    withPtrs asCString exConstraints $ \ exPtrs -> do
        allocaArray exLen $ \ (exPtrArrayPtr :: Ptr (Ptr CChar)) -> do
            pokeArray exPtrArrayPtr exPtrs
            throwBotanIfNegative_ $ botan_x509_cert_options_set_ex_constraints
                optsPtr
                exPtrArrayPtr
                (fromIntegral exLen)
    where
        exLen = length exConstraints

x509CertOptionsSetExtensions :: X509CertOptions -> X509Extensions -> IO ()
x509CertOptionsSetExtensions opts extensions = withX509CertOptionsPtr opts $ \ optsPtr -> do
    withX509ExtensionsPtr extensions $ \ extensionPtr -> do
        throwBotanIfNegative_ $ botan_x509_cert_options_set_extensions
            optsPtr
            extensionPtr

-- TODO: botan_x509_cert_options getters

-- TODO: botan_x509_cert_options functions (above is just members)
-- There's only a few though so its easy

