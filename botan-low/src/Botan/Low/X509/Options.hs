module Botan.Low.X509.Options where

import Data.Bool

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.X509
import Botan.Low.X509.Extensions

import Botan.Bindings.X509.Options

-- /*
-- * X.509 certificate options
-- **************************/

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

x509CertOptionsSetPaddingScheme :: X509CertOptions -> ByteString -> IO ()
x509CertOptionsSetPaddingScheme = mkSetCString withX509CertOptionsPtr botan_x509_cert_options_set_padding_scheme

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
