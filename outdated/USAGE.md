# Usage examples

> WARNING: OUT OF DATE since refactor

<!-- TODO: Refactor this into TUTORIALS.md -->

## Cipher

### ChaCha

```haskell
import Botan.Bindings.Cipher
import Botan.Low.Cipher
import Botan.Low.Random
c <- cipherInit "ChaCha(20)" BOTAN_CIPHER_INIT_FLAG_ENCRYPT
(min,_,_) <- cipherGetKeyspec c
k <- systemRandomGet min
cipherSetKey c k
ad <- cipherSetAssociatedData c "Fee fi fo fum!"
n <- cipherGetDefaultNonceLength c >>= systemRandomGet
cipherStart c n
cipherUpdate c BOTAN_CIPHER_UPDATE_FLAG_FINAL 64 =<< systemRandomGet 64
```

### AES-CTR

```haskell
c <- cipherInit "AES-256/CTR" BOTAN_CIPHER_INIT_FLAG_ENCRYPT
(min,_,_) <- cipherGetKeyspec c
k <- systemRandomGet min
cipherSetKey c k
n <- cipherGetDefaultNonceLength c >>= systemRandomGet
g = 197
cipherStart c n
cipherUpdate c BOTAN_CIPHER_UPDATE_FLAG_FINAL g =<< systemRandomGet g
```

> NOTE: There is also AES-128/CBC/PKCS7 mode

A full round-trip

```haskell
encrypt <- cipherInit "AES-256/CTR" BOTAN_CIPHER_INIT_FLAG_ENCRYPT
cipherName encrypt
(minKeyLen,_,_) <- cipherGetKeyspec encrypt
key <- systemRandomGet minKeyLen
nonce <- cipherGetDefaultNonceLength encrypt >>= systemRandomGet
message = "Fee fi fo fum I smell the blood of an Englishman! Be he alive, or be he dead, I'll grind his bones to make my bread!" :: ByteString
cipherSetKey encrypt key
cipherStart encrypt nonce
(_,ciphertext) <- cipherUpdate encrypt BOTAN_CIPHER_UPDATE_FLAG_FINAL (ByteString.length message) message
hexEncode True ciphertext
decrypt <- cipherInit "AES-256/CTR" BOTAN_CIPHER_INIT_FLAG_DECRYPT
cipherSetKey decrypt key
cipherStart decrypt nonce
(_,plaintext) <- cipherUpdate decrypt BOTAN_CIPHER_UPDATE_FLAG_FINAL (ByteString.length ciphertext) ciphertext
plaintext
```

## PubKey Encrypt / Decrypt

> NOTE: Padding can be many things:
> - "OAEP(SHA-256)"
> - "PKCS1v15"
> NOTE: Can't use "Ed25519" - needed to be more general, used "RSA"

```haskell
import Botan.Low.Random
import Botan.Low.PubKey
import Botan.Low.PubKey.Encrypt
import Botan.Low.PubKey.Decrypt
import Botan.Low.Utility
r <- randomInit System
sk <- privKeyCreate "RSA" "" r
pk <- privKeyExportPubKey sk
padding = "PKCS1v15"
enc <- encryptCreate pk padding EncryptNoFlags
msg = "Fee fi fo fum! I smell the blood of an Englishman!"
ctext <- encrypt enc r msg
dec <- decryptCreate sk padding EncryptNoFlags
ptext <- decrypt dec ctext
ptext
```

## PubKey Sign / Verify

```haskell
import Botan.Low.Random
import Botan.Low.PubKey
import Botan.Low.PubKey.Sign
import Botan.Low.PubKey.Verify
import Botan.Low.Utility
r <- randomInit System
sk <- privKeyCreate "Ed25519" "" r
privKeyAlgoName sk
privKeyExport sk PrivKeyExportPEM
s <- signCreate sk "SHA-256" SigningNoFlags
signUpdate s "Fee fi fo fum! I smell the blood of an Englishman!"
sig <- signFinish s r
hexEncode sig Lower
pk <- privKeyExportPubKey sk
v <- verifyCreate pk "SHA-256" SigningNoFlags
verifyUpdate v "Fee fi fo fum! I smell the blood of an Englishman!"
verified <- verifyFinish v sig
verified
```

## X509 Certs

You might need to generate a cert first:

```
openssl genrsa -out key.pem 2048
openssl req -new -sha256 -key key.pem -out csr.csr
openssl req -x509 -sha256 -days 365 -key key.pem -in csr.csr -out certificate.pem
```

```haskell
import Botan.Low.Utility
import Botan.Low.X509
cert <- x509CertLoadFile "certificate.pem"
fprn <- x509CertGetPubKeyFingerprint cert "SHA-256"
hexEncode fprn Lower
```

## ZFEC

> NOTE: NOT WORKING

```haskell
import Prelude
import Data.ByteString (ByteString)
import Botan.Low.ZFEC
msg = "Fee fi fo fum! I smell the blood of an Englishman!" :: ByteString
[a,b,c,d,e,f,g] <- zfecEncode 5 7 msg
recovered <- zfecDecode 5 7 [a,c,e,f,g] 10
recovered
```