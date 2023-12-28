module Botan.Low.X509.CRL where

import Botan.Low.Error
import Botan.Low.Make
import Botan.Low.Prelude
import Botan.Low.X509
import Botan.Low.X509.Extensions

import Botan.Bindings.X509
import Botan.Bindings.X509.Extensions
import Botan.Bindings.X509.CRL
import Botan.Low.X509.CSR (X509IssuerDN)

--
-- CRL
--

--  TODO: Eventually move original / read-only CRL functions here too

x509CRLGetRevoked :: X509CRL -> IO [X509CRLEntry]
x509CRLGetRevoked crl = withX509CRL crl $ \ crlPtr -> do
    -- TODO: Some sort of allocArrayQuerying
    undefined

x509CRLGetIssuerDN :: X509CRL -> ByteString -> Int -> IO X509IssuerDN
x509CRLGetIssuerDN crl key index = withX509CRL crl $ \ crlPtr -> do
    asBytes key $ \ keyPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_x509_crl_get_issuer_dn
            outPtr
            outLen
            crlPtr
            keyPtr
            (fromIntegral index)

x509CRLExtensions :: X509CRL -> IO X509Extensions
x509CRLExtensions crl = withX509CRL crl $ \ crlPtr -> mkInit
        MkX509Extensions
        (\ ptr -> botan_x509_crl_extensions ptr crlPtr)
        botan_x509_exts_destroy

x509CRLAuthorityKeyId :: X509CRL -> IO ByteString
x509CRLAuthorityKeyId crl = withX509CRL crl $ \ crlPtr -> do
    allocBytesQuerying $ \ outPtr outLen -> botan_x509_crl_authority_key_id
        outPtr outLen
        crlPtr

x509CRLSerialNumber :: X509CRL -> IO Word32
x509CRLSerialNumber crl = withX509CRL crl $ \ crlPtr -> do
    alloca $ \ snPtr -> do
        throwBotanIfNegative_ $ botan_x509_crl_serial_number snPtr crlPtr
        peek snPtr

x509CRLThisUpdate :: X509CRL -> IO Word64
x509CRLThisUpdate crl = withX509CRL crl $ \ crlPtr -> do
    alloca $ \ timePtr -> do
        throwBotanIfNegative_ $ botan_x509_crl_this_update timePtr crlPtr
        peek timePtr

x509CRLNextUpdate :: X509CRL -> IO Word64
x509CRLNextUpdate crl = withX509CRL crl $ \ crlPtr -> do
    alloca $ \ timePtr -> do
        throwBotanIfNegative_ $ botan_x509_crl_next_update timePtr crlPtr
        peek timePtr

x509CRLIssuingDistributionPoint :: X509CRL -> IO ByteString
x509CRLIssuingDistributionPoint crl = withX509CRL crl $ \ crlPtr -> do
    allocBytesQuerying $ \ outPtr outLen -> botan_x509_crl_issuing_distribution_point
        outPtr outLen
        crlPtr

x509CRLCreateDER :: ByteString -> IO X509CRL
x509CRLCreateDER der = do
    asBytesLen der $ \ derPtr derLen -> mkInit
        MkX509CRL
        (\ptr -> botan_x509_crl_create_der ptr derPtr derLen)
        botan_x509_crl_destroy

x509CRLCreate :: X509IssuerDN -> Word64 -> Word64 -> [X509CRLEntry] -> IO X509CRL
x509CRLCreate der this next entries = do
    -- TODO: withArray, ownership transfer
    -- asBytesLen der $ \ derPtr derLen -> mkInit
    --     MkX509CRL
    --     (\ptr -> botan_x509_crl_create ptr derPtr derLen)
    --     botan_x509_crl_destroy
    undefined

x509CRLAddEntry :: X509CRL -> X509CRLEntry -> IO ()
x509CRLAddEntry crl entry = undefined

x509CRLRevokeCert :: X509CRL -> X509Cert -> X509CRLCode -> IO ()
x509CRLRevokeCert crl entry reason = undefined

--
-- CRL Entry
--

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
    withX509Cert cert $ \ certPtr -> mkInit
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
