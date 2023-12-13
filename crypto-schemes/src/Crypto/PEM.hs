module Crypto.PEM where

import Data.ByteString (ByteString)

-- NOTE: These are the newer base16, base64 packages
--  instead of the older base16-bytestring / base64-bytestring
import Data.ByteString.Base16
import Data.ByteString.Base64

import Crypto.Parser

-- PEM
-- https://www.rfc-editor.org/rfc/rfc7468
-- https://stackoverflow.com/questions/5355046/where-is-the-pem-file-format-specified

-- Examine: https://hackage.haskell.org/package/pem

type PEMLabel = ByteString
type PEMData = ByteString
type PEMHeaderKey = ByteString
type PEMHeaderValue = ByteString

data ExplanatoryText
    = NoExplanation
    | Blob ByteString
    | Headers [(ByteString,ByteString)]

data PEMEncoded a = MkPEM
    { pemLabel      :: PEMLabel
    , pemHeaders    :: [(PEMHeaderKey,PEMHeaderValue)]
    , pemData       :: PEMData
    }

class PEMEncodable a where

class PEMDecodable a where

-- encodePEM :: PEMEncodable a => a -> PEM a

-- PEM Parser

-- Section 3.  ABNF
-- https://www.rfc-editor.org/rfc/rfc7468#section-3

parsePEM = parsePEMWith explanatoryTextIgnore
parsePEMText = parsePEMWith explanatoryTextBlob
parsePEMHeaders = parsePEMWith explanatoryTextHeaders

parsePEMWith explanatoryText = do
    explain <- explanatoryText
    (label,obj) <- textualmsg
    return 

explanatoryTextIgnore :: Parser ()
explanatoryTextIgnore = undefined

explanatoryTextBlob :: Parser ByteString
explanatoryTextBlob = undefined

explanatoryTextHeaders :: Parser [(ByteString,ByteString)]
explanatoryTextHeaders = undefined

textualmsg :: Parser (PEMLabel,PEMData)
textualmsg = undefined

preeb :: Parser PEMLabel
preeb = undefined


{-
textualmsg = preeb *WSP eol
               *eolWSP
               base64text
               posteb *WSP [eol]

  preeb      = "-----BEGIN " label "-----" ; unlike [RFC1421] (A)BNF,
                                           ; eol is not required (but
  posteb     = "-----END " label "-----"   ; see [RFC1421], Section 4.4)

  base64char = ALPHA / DIGIT / "+" / "/"

  base64pad  = "="

  base64line = 1*base64char *WSP eol

  base64finl = *base64char (base64pad *WSP eol base64pad /
                            *2base64pad) *WSP eol
                       ; ...AB= <EOL> = <EOL> is not good, but is valid

  base64text = *base64line base64finl
         ; we could also use <encbinbody> from RFC 1421, which requires
         ; 16 groups of 4 chars, which means exactly 64 chars per
         ; line, except the final line, but this is more accurate

  labelchar  = %x21-2C / %x2E-7E    ; any printable character,
                                    ; except hyphen-minus

  label      = [ labelchar *( ["-" / SP] labelchar ) ]       ; empty ok

  eol        = CRLF / CR / LF

  eolWSP     = WSP / CR / LF                        ; compare with LWSP

-}