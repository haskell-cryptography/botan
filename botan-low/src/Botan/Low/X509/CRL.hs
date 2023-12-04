module Botan.Low.X509.CRL where

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.X509
import Botan.Low.X509.Extensions

import Botan.Bindings.X509.Extensions
import Botan.Bindings.X509.CRL

-- TODO: Missing CRL functions in C++ side

newtype X509CRLEntry = MkX509CRLEntry { getX509CRLEntryForeignPtr :: ForeignPtr X509CRLEntryStruct }

withX509CRLEntryPtr :: X509CRLEntry -> (X509CRLEntryPtr -> IO a) -> IO a
withX509CRLEntryPtr = withForeignPtr . getX509CRLEntryForeignPtr

x509CRLEntryDestroy :: X509CRLEntry -> IO ()
x509CRLEntryDestroy crl = finalizeForeignPtr (getX509CRLEntryForeignPtr crl)

type X509CRLCode = Word32

-- Must match values of CRL_Code in pkix_enums.h
pattern BOTAN_X509_CRL_CODE_UNSPECIFIED = 0 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_KEY_COMPROMISE = 1 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_CA_COMPROMISE = 2 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_AFFILIATION_CHANGED = 3 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_SUPERCEDED = 4 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_CESSATION_OF_OPERATION = 5 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_CERTIFICATE_HOLD = 6 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_REMOVE_FROM_CRL = 8 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_PRIVILEGE_WITHDRAWN = 9 :: X509CRLCode
pattern BOTAN_X509_CRL_CODE_AA_COMPROMISE = 10 :: X509CRLCode

x509CRLEntryCreate :: X509Cert -> X509CRLCode -> IO X509CRLEntry
x509CRLEntryCreate cert crl_code = do
    withX509CertPtr cert $ \ certPtr -> mkInit
        MkX509CRLEntry
        (\ptr -> botan_x509_crl_entry_create ptr certPtr crl_code)
        botan_x509_crl_entry_destroy

-- -- TODO: CRL_Entry PEM / BER encode / decode (and for CRL too)

-- NOTE: Is bytestring serial number vs MP serial number elsewhere - need to consistentize
x509CRLEntryGetSerialNumber :: X509CRLEntry -> IO ByteString
x509CRLEntryGetSerialNumber entry = withX509CRLEntryPtr entry $ \ entryPtr -> do
    allocBytesQuerying $ \ outPtr szPtr -> do
        botan_x509_crl_entry_get_serial_number outPtr szPtr entryPtr

x509CRLEntryGetExpireTime :: X509CRLEntry -> IO Word64
x509CRLEntryGetExpireTime entry = withX509CRLEntryPtr entry $ \ entryPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_x509_crl_entry_get_expire_time outPtr entryPtr
        peek outPtr

x509CRLEntryGetReasonCode :: X509CRLEntry -> IO X509CRLCode
x509CRLEntryGetReasonCode entry = withX509CRLEntryPtr entry $ \ entryPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_x509_crl_entry_get_reason_code outPtr entryPtr
        peek outPtr

x509CRLEntryGetExtensions :: X509CRLEntry -> IO X509Extensions
x509CRLEntryGetExtensions entry = withX509CRLEntryPtr entry $ \ entryPtr -> do
    mkInit
        MkX509Extensions
        (\ ptr -> botan_x509_crl_entry_get_extensions ptr entryPtr)
        botan_x509_exts_destroy
