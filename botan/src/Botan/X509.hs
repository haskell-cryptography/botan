module Botan.X509 where

import Botan.Prelude

import Data.Bits

import qualified Botan.Low.X509 as Low
import Data.List (nub)

-- TODO: Use https://botan.randombit.net/handbook/api_ref/x509.html
--  to fill in the blanks, or write a new C FFI for Botan C++ X509
--  that may be contributed upstream
-- SEE: https://github.com/randombit/botan/issues/3627
--  "FFI APIs for X.509 are insufficient"

-- https://www.ibm.com/docs/en/ibm-mq/7.5?topic=certificates-distinguished-names
data DistinguishedName
    = SerialNumber
    | Mail
    | UserID
    | CommonName
    | Title
    | OrganizationalUnit
    | DomainComponent
    | Organization
    | Street
    | Locality
    | StateOrProvince
    | PostalCode
    | Country
    | UnstructuredName
    | UnstructuredAddress
    | ExtensionDN ByteString

fromDN :: DistinguishedName -> Low.DistinguishedName
fromDN = undefined

toDN :: DistinguishedName -> Low.DistinguishedName
toDN = undefined

-- TODO: Better / proper / more idiomatic flag set / bit mask / enum
--  Separate into KeyConstraint and KeyConstraintSet?

data KeyConstraint
    = NoConstraints
    | DigitalSignature
    | NonRepudiation
    | KeyEncipherment
    | DataEncipherment
    | KeyAgreement
    | KeyCertSign
    | CRLSign
    | EncipherOnly
    | DecipherOnly
    | KeyConstraints [KeyConstraint]
    deriving (Eq)

allKeyConstraints :: [KeyConstraint]
allKeyConstraints = 
    [ DigitalSignature
    , NonRepudiation
    , KeyEncipherment
    , DataEncipherment
    , KeyAgreement
    , KeyCertSign
    , CRLSign
    , EncipherOnly
    , DecipherOnly
    ]

allConstraints :: KeyConstraint
allConstraints = KeyConstraints allKeyConstraints

instance Semigroup KeyConstraint where
  (<>) :: KeyConstraint -> KeyConstraint -> KeyConstraint
  (<>) NoConstraints        kc                      = kc
  (<>) kc                   NoConstraints           = kc
  (<>) (KeyConstraints a)   (KeyConstraints b)      = KeyConstraints $ nub $ a ++ b
  (<>) (KeyConstraints kcs) kc                      = KeyConstraints (kc:kcs)
  (<>) kc                   (KeyConstraints kcs)    = KeyConstraints (kc:kcs)
  (<>) a                    b                       = KeyConstraints [a,b]

instance Monoid KeyConstraint where

  mempty :: KeyConstraint
  mempty = NoConstraints

instance (Enum KeyConstraint) where

    toEnum :: Int -> KeyConstraint
    toEnum 0        = NoConstraints
    toEnum 32768    = DigitalSignature
    toEnum 16384    = NonRepudiation
    toEnum 8192     = KeyEncipherment
    toEnum 4096     = DataEncipherment
    toEnum 2048     = KeyAgreement
    toEnum 1024     = KeyCertSign
    toEnum 512      = CRLSign
    toEnum 256      = EncipherOnly
    toEnum 128      = DecipherOnly
    toEnum n        = KeyConstraints $ filter (\ kc -> (n .&. fromEnum kc) == fromEnum kc) allKeyConstraints

    fromEnum :: KeyConstraint -> Int
    fromEnum NoConstraints              = 0
    fromEnum DigitalSignature           = fromIntegral Low.DigitalSignature -- 32768
    fromEnum NonRepudiation             = fromIntegral Low.NonRepudiation   -- 16384
    fromEnum KeyEncipherment            = fromIntegral Low.KeyEncipherment  -- 8192
    fromEnum DataEncipherment           = fromIntegral Low.DataEncipherment -- 4096
    fromEnum KeyAgreement               = fromIntegral Low.KeyAgreement     -- 2048
    fromEnum KeyCertSign                = fromIntegral Low.KeyCertSign      -- 1024
    fromEnum CRLSign                    = fromIntegral Low.CRLSign          -- 512
    fromEnum EncipherOnly               = fromIntegral Low.EncipherOnly     -- 256
    fromEnum DecipherOnly               = fromIntegral Low.DecipherOnly     -- 128
    fromEnum (KeyConstraints (kc:kcs))  = fromEnum kc .|. fromEnum (KeyConstraints kcs)

-- TODO: https://x509errors.org/
data X509VerifyStatusCode
{-
enum class Certificate_Status_Code {
   OK = 0,
   VERIFIED = 0,

   // Revocation status
   OCSP_RESPONSE_GOOD = 1,
   OCSP_SIGNATURE_OK = 2,
   VALID_CRL_CHECKED = 3,
   OCSP_NO_HTTP = 4,

   // Warnings
   FIRST_WARNING_STATUS = 500,
   CERT_SERIAL_NEGATIVE = 500,
   DN_TOO_LONG = 501,
   OCSP_NO_REVOCATION_URL = 502,
   OCSP_SERVER_NOT_AVAILABLE = 503,

   // Errors
   FIRST_ERROR_STATUS = 1000,

   SIGNATURE_METHOD_TOO_WEAK = 1000,
   UNTRUSTED_HASH = 1001,
   NO_REVOCATION_DATA = 1002,
   NO_MATCHING_CRLDP = 1003,
   OCSP_ISSUER_NOT_TRUSTED = 1004,

   // Time problems
   CERT_NOT_YET_VALID = 2000,
   CERT_HAS_EXPIRED = 2001,
   OCSP_NOT_YET_VALID = 2002,
   OCSP_HAS_EXPIRED = 2003,
   CRL_NOT_YET_VALID = 2004,
   CRL_HAS_EXPIRED = 2005,
   OCSP_IS_TOO_OLD = 2006,

   // Chain generation problems
   CERT_ISSUER_NOT_FOUND = 3000,
   CANNOT_ESTABLISH_TRUST = 3001,
   CERT_CHAIN_LOOP = 3002,
   CHAIN_LACKS_TRUST_ROOT = 3003,
   CHAIN_NAME_MISMATCH = 3004,

   // Validation errors
   POLICY_ERROR = 4000,
   INVALID_USAGE = 4001,
   CERT_CHAIN_TOO_LONG = 4002,
   CA_CERT_NOT_FOR_CERT_ISSUER = 4003,
   NAME_CONSTRAINT_ERROR = 4004,

   // Revocation errors
   CA_CERT_NOT_FOR_CRL_ISSUER = 4005,
   OCSP_CERT_NOT_LISTED = 4006,
   OCSP_BAD_STATUS = 4007,

   // Other problems
   CERT_NAME_NOMATCH = 4008,
   UNKNOWN_CRITICAL_EXTENSION = 4009,
   DUPLICATE_CERT_EXTENSION = 4010,
   OCSP_SIGNATURE_ERROR = 4501,
   OCSP_ISSUER_NOT_FOUND = 4502,
   OCSP_RESPONSE_MISSING_KEYUSAGE = 4503,
   OCSP_RESPONSE_INVALID = 4504,
   EXT_IN_V1_V2_CERT = 4505,
   DUPLICATE_CERT_POLICY = 4506,
   V2_IDENTIFIERS_IN_V1_CERT = 4507,

   // Hard failures
   CERT_IS_REVOKED = 5000,
   CRL_BAD_SIGNATURE = 5001,
   SIGNATURE_ERROR = 5002,
   CERT_PUBKEY_INVALID = 5003,
   SIGNATURE_ALGO_UNKNOWN = 5004,
   SIGNATURE_ALGO_BAD_PARAMS = 5005
};

/**
* X.509v2 CRL Reason Code.
*/
enum class CRL_Code : uint32_t {
   Unspecified = 0,
   KeyCompromise = 1,
   CaCompromise = 2,
   AffiliationChanged = 3,
   Superseded = 4,
   CessationOfOperation = 5,
   CertificateHold = 6,
   RemoveFromCrl = 8,
   PrivilegeWithdrawn = 9,
   AaCompromise = 10,
};
-}

-- TODO: Missing functionality: Certificate Authority
data X509CertificateAuthority

-- TODO: Missing functionality: Certificate Ítore
data X509CertificateStore

-- TODO: Missing functionality: CRL
--  Barest minimal functionality of only checking if a cert is revoked by a pre-existing CRL
--  Cannot create or write them
data X509CRL