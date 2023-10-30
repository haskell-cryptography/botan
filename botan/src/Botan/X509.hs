module Botan.X509 where

import Botan.Prelude

import Data.Bits

import qualified Botan.Low.X509 as Low

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
    