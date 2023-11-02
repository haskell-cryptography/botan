module Botan.X509 where

import Botan.Prelude

import Data.Bits

import qualified Botan.Low.X509 as Low
import Data.List (nub)

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
