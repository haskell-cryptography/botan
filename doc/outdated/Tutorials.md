# Tutorials

<details><summary>Botan.Low.Bcrypt</summary>

`bcrypt` is a password-hashing algorithm designed to protect your passwords against hackers using an expensive key setup phase. Instead of storing a user's password in plaintext in the database, the server may instead generate a salted bcrypt digest upon signup, and verify it upon login.

The `bcrypt` implementation provided by `botan` generates a random salt for you automatically. A work factor of 12 or greater is recommended.

To generate a bcrypt digest:

```haskell
import Botan.Low.RNG
import Botan.Low.Bcrypt

-- The user has sent us a username and password in order to sign up
onUserSignup :: ByteString -> ByteString -> IO ()
onUserSignup username password = do
    rng <- rngInit "user"
    digest <- bcryptGenerate password rng 12
    createAndStoreNewUser username digest
```

To validate a bcrypt digest:

```haskell
import Botan.Low.RNG
import Botan.Low.Bcrypt

-- The user has sent us a username and password in order to log in
onUserLogin :: ByteString -> ByteString -> IO Bool
onUserLogin username password = do
    rng <- rngInit "user"
    digestMaybe <- getStoredUserDigest username
    case digestMaybe of
        Nothing     -> return False
        Just digest -> bcryptIsValid password digest
```

</details>

<details><summary>Botan.Low.BlockCipher</summary>

See the executable example in the Haddock documentation of the `Botan.Low.BlockCipher` module.

</details>

<details><summary>Botan.Low.Cipher</summary>

A `cipher` mode is a cryptographic algorithm suitable for encrypting and decrypting large quantities of arbitrarily-sized data. An `aead` is a cipher mode that also used to provide authentication of the ciphertext, potentially with plaintext `associated data`.

Unless you need a specific `cipher` or `aead`, it is strongly recommended that you use the `cbcMode AES256 PKCS7` and `gcmMode AES256` (or `ChaCha20Poly1305`) algorithms respectively.

```haskell
import Botan.Low.Cipher
encrypter <- cipherInit ChaCha20Poly1305 Encrypt
```

To use a cipher, we first need to generate (if we haven't already) a secret key.

```haskell
import Botan.Low.RNG
rng <- rngInit "user"
-- We will use the maximum key size; ChaCha20Poly1305 keys are always 32 bytes
(_,keySize,_) <- cipherGetKeyspec encrypter
-- Block cipher keys are randomly generated
key <- rngGet rng keySize
```

After the key is generated, we must set it as the cipher key:

```haskell
cipherSetKey encrypter key
```

If the cipher is an `aead`, we may also set the `associated data`:

```haskell
cipherSetAssociatedData encrypter "Fee fi fo fum!"
```

To ensure that the key is not leaked, we should generate a new nonce for every encryption. The range of allowed nonce sizes depends on the specific algorithm.

```haskell
import Botan.Low.RNG
-- The default ChaCha20Poly1305 nonce is always 12 bytes.
nonceSize <- cipherGetDefaultNonceLength encrypter
nonce <- rngGet rng nonceSize
```

To encrypt a message, it must be a multiple of the block size. If the cipher was an aead, the authentication tag will automatically be included in the ciphertext

```haskell
-- Rarely, some cipher modes require that the message size be aligned to the block size
-- Consult algorithm-specific documentation if this occurs.
message = "I smell the blood of an Englishman!"
cipherStart encrypter nonce
ciphertext <- cipherEncrypt encrypter message
```

To decrypt a message, we run the same process with a decrypter, using the same `key` and `nonce` to decode the `ciphertext`:

```haskell
decrypter <- cipherInit ChaCha20Poly1305 Decrypt
cipherSetKey decrypter key
cipherSetAssociatedData decrypter "Fee fi fo fum!"
cipherStart decrypter nonce
plaintext <- cipherDecrypt decrypter ciphertext
message == plaintext -- True
```

You can completely clear a cipher's state, leaving it ready for reuse:

```haskell
cipherClear encrypter
-- You'll have to set the key, nonce, (and ad, if aead) again.
cipherSetKey encrypter anotherKey
cipherStart encrypter anotherNonce
cipherSetAssociatedData encrypter anotherAD
-- Process another message
anotherCiphertext <- cipherEncrypt encrypter anotherMessage
```

If you are encrypting or decrypting multiple messages with the same key, you can reset the cipher instead of clearing it, leaving the key set:

```haskell
cipherClear encrypter
-- This is equivalent to calling cipherClear followed by cipherSetKey with the original key.
-- You'll have to set the nonce  (and ad, if aead) again, but not the key.
cipherStart encrypter anotherNonce
cipherSetAssociatedData encrypter anotherAD
-- Process another message with the same key
anotherCiphertext <- cipherEncrypt encrypter anotherMessage
```


</details>

<!-- <details><summary>Botan.Low.FPE</summary>

</details> -->

<details><summary>Botan.Low.Hash</summary>

A `hash` is deterministic, one-way function suitable for producing a deterministic, fixed-size digest from an arbitrarily-sized message, which is used to verify the integrity of the data.

Unless you need a specific `hash`, it is strongly recommended that you use the `SHA3` algorithm.

```haskell
import Botan.Low.Hash
hash <- hashInit SHA3
message = "Fee fi fo fum!"
hashUpdate hash message
digest <- hashFinal hash
```

You can verify a digest by hashing the message a second time, and comparing the two:

```haskell
rehash <- hashInit SHA3
hashUpdate rehash message
redigest <- hashFinal rehash
digest == redigest -- True
```

You can clear a hash's state, leaving it ready for reuse:

```haskell
hashClear hash
-- Process another message
hashUpdate hash anotherMessage
anotherDigest <- hashFinal hash
```

</details>

<details><summary>Botan.Low.HOTP</summary>

To use HOTP for MFA / 2FA, the client authenticator must generate a
client-specific shared secret and counter value, and securely communicate
them to the server authenticator.

The secret key may be any bytestring value with more than 160 bits, such as
a Bcrypt digest or SRP6 shared key. The counter value is not required to be
a secret; it may start at 0 for simplicity, or it may start at a value that
was selected at random.

```haskell
import Botan.Low.HOTP
import Botan.Low.RNG
import Botan.Low.MPI
import Data.Bits
sharedSecret <- systemRNGGet 16
-- TODO: Use random:System.Random.Stateful.Uniform instead of MPI in `botan`
(hi :: Word32) <- mpInit >>= \ w -> mpRandBits w rng 32 >> mpToWord32 w
(lo :: Word32) <- mpInit >>= \ w -> mpRandBits w rng 32 >> mpToWord32 w
(counter :: Word64) = shiftL (fromIntegral hi) 32 `xor` fromIntegral lo
```

The client and server authenticators are now in a shared state, and any login
attempts from a new device may be authenticated using HOTP as MFA.

A client has requested a new connection, and HOTP is being used as MFA/2FA to
authenticate their request. The server authenticator receives the client connection
request and initializes a HOTP session using the stored client-specific shared
secret, and then sends an authentication request to the client authenticator:

```haskell
-- (serverSharedSecret, serverCounter) <- lookupServerSharedSecretAndCounter
serverSession <- hotpInit serverSharedSecret HOTP_SHA512 8
-- sendMFAAuthenticationRequest
```

The client authenticator receives the authentication request, generates a
client-side code, increments their counter, and displays the HOTP code to
the user:

```haskell
-- (clientSharedSecret, clientCounter) <- lookupClientSharedSecretAndCounter
clientSession <- hotpInit clientSharedSecret HOTP_SHA512 8
clientCode <- hotpGenerate clientSession clientCounter
-- incrementAndPersistClientCounter
-- displayClientCode clientCode
```

> NOTE: The client authenticator is responsible for incrementing and persisting
> their own counter manually.

The client then sends the client code to the server authenticator using the
unauthenticated / requested connection:

```haskell
-- clientCode <- readClientCode
-- sendMFAAuthenticationResponse clientCode
```

The server authenticator receives the authentication response, and performs
a check of the key, with a resync range of R in case the client has generated
a few codes without logging in successfully:

```haskell
-- serverClientCode <- didreceiveMFAAuthenticationResponse
(isValid,nextCounter) <- hotpCheck serverSession serverClientCode serverCounter 10
persistClientCounter nextCounter
```

> NOTE: The server authentication check returns an incremented and resynced
> counter which must be persisted manually. If the authentication check fails,
> the counter value is return unchanged.

If the code is valid, then the signin may be completed on the new connection
as normal.

The server should discontinue the session and refuse any new connections
to the account after T unsuccessful authentication attempts, where T < R.
The user should then be notified.

</details>

<!-- <details><summary>Botan.Low.KDF</summary>

</details> -->

<!-- <details><summary>Botan.Low.KeyWrap</summary>

</details> -->

<details><summary>Botan.Low.MAC</summary>

A `mac` (or message authentication code) is a cryptographic algorithm that uses a secret key to produce a fixed-size digest from an arbitrarily-sized message, which is then used to verify the integrity and authenticity of the data.

Unless you need a specific `mac`, it is strongly recommended that you use the `hmac SHA3` algorithm.

```haskell
import Botan.Low.MAC
import Botan.Low.Hash
mac <- macInit (hmac SHA3)
```

To use a MAC, we first need to generate (if we haven't already) a secret key.

```haskell
import Botan.Low.RNG
rng <- rngInit "user"
-- HMAC allows for an arbitrary key size, but we can check the key spec if necessary
(keyMin,keyMax,keyMod) <- macGetKeyspec mac
-- MAC are randomly generated; 32 bytes is acceptable
key <- rngGet rng 32
```

After the key is generated, we must set it as the mac key:

```haskell
macSetKey mac key
```

Then, we may produce an authentication code from a message using the secret key:

```haskell
macUpdate mac "Fee fi fo fum!"
auth <- macFinal mac
```

To verify an message authentication code, we can reproduce it using the secret key and message, and then check for equality:

```haskell
verify <- macInit (hmac SHA3)
macSetKey verify key
macUpdate verify "Fee fi fo fum!"
verifyAuth <- macFinal verify
auth == verifyAuth -- True
```

You can completely clear a mac's state, leaving it ready for reuse:

```haskell
macClear mac
-- You'll have to set the key again
macSetKey mac anotherKey
-- Process another message
macUpdate mac anotherMessage
anotherAuth <- macFinal mac
```

Some algorithms (GMAC, Poly1305) have additional requirements for use. Avoid if possible, and consult algorithm-specific documentation for GMAC and Poly1305. If you must use GMAC, a nonce needs to be set:

```haskell
mac <- macInit (gmac AES256)
k <- systemRNGGet 32
n <- systemRNGGet 32    -- Here
macSetKey mac k
macSetNonce mac n       -- Here
macUpdate mac "Fee fi fo fum!"
auth <- macFinal mac
```

</details>

<!-- <details><summary>Botan.Low.MPI</summary>

</details> -->

<details><summary>Botan.Low.PubKey</summary>

Unless you need a specific `public key cryptosystem`, it is strongly recommended that you use the `RSA`, `Ed25519`, or `Curve25519` algorithms, depending on your desired operation.

Create an RSA keypair:

```haskell
import Botan.Low.RNG
import Botan.Low.PubKey
rng <- rngInit "user"
-- Alice generates her keys
alicePrivKey <- privKeyCreate RSA "4096" rng
alicePubKey <- privKeyExportPubKey alicePrivKey
```

> NOTE: For algorithm-specific parameters, consult the Botan documentation and source

</details>

<details><summary>Botan.Low.PubKey.Encrypt</summary>

Encrypt a message:

```haskell
import Botan.Low.PubKey.Encrypt
message = "Fee fi fo fum!"
-- Bob encrypts a message for Alice using her public key
-- Unlike `Crypto.Saltine.Core.Box`, the message is only encrypted, not signed.
encrypter <- encryptCreate alicePubKey EME_PKCS1_v1_5
ciphertext <- encrypt encrypter rng message
```

> NOTE: For algorithm-specific padding parameters, consult the Botan documentation and source

Decrypt a message:

```haskell
import Botan.Low.PubKey.Decrypt
-- Alice decrypts the message from Bob using her private key
decrypter <- decryptCreate alicePrivKey EME_PKCS1_v1_5
plaintext <- decrypt decrypter ciphertext
message == plaintext -- True
```

> NOTE: The same padding must be used for both encryption and decryption

</details>

<details><summary>Botan.Low.PubKey.Sign</summary>

Sign a message:

```haskell
import Botan.Low.PubKey.Sign
import Botan.Low.Hash
message = "Fee fi fo fum!"
-- Alice signs the message using her private key
signer <- signCreate alicePrivKey (emsa_emsa4 SHA3) StandardFormatSignature
signUpdate signer message
sig <- signFinish signer rng
```

> NOTE: Signing uses a different set of padding algorithms `EMSA` from encryption `EME`, and different signing / encryption algorithms support different specific padding algorithms

> NOTE: Signing does not yet have proper constants for selecting a padding mechanism. For more information, refer to the `Botan.PubKey`, `Botan.PubKey.Sign`, or the Botan C++ documentation. This area will be improved in the near future.

Verify a message:

```haskell
import Botan.Low.PubKey.Verify
-- Bob verifies the message using Alice's public key
verifier <- verifyCreate alicePubKey (emsa_emsa4 SHA3) StandardFormatSignature
verifyUpdate verifier message
verified <- verifyFinish verifier sig
verified -- True
```

> NOTE: The same padding must be used for both encryption and decryption

</details>

<details><summary>Botan.Low.PubKey.KeyAgreement</summary>

First, Alice and Bob generate their private keys:

```haskell
import Botan.Low.PubKey
import Botan.Low.PubKey.KeyAgreement
import Botan.Low.RNG
import Botan.Low.Hash
import Botan.Low.KDF
rng <- rngInit "system"
-- Alice creates her private key
alicePrivKey <- privKeyCreate ECDH Secp521r1 rng
-- Bob creates his private key
bobPrivKey <-  privKeyCreate ECDH Secp521r1 rng
```

Then, they exchange their public keys using any channel, private or public:

```haskell
-- Alice and Bob exchange public keys
alicePubKey <- keyAgreementExportPublic alicePrivKey
bobPubKey <- keyAgreementExportPublic bobPrivKey
-- ...
```

Then, they may separately generate the same agreed-upon key and a randomized,
agreed-upon salt:

```haskell
salt <- rngGet rng 4
-- Alice generates her shared key:
aliceKeyAgreement <- keyAgreementCreate alicePrivKey (kdf2 SHA256)
aliceSharedKey    <- keyAgreement aliceKeyAgreement bobPubKey salt
-- Bob generates his shared key:
bobKeyAgreement   <- keyAgreementCreate bobPrivKey (kdf2 SHA256)
bobSharedKey      <- keyAgreement bobKeyAgreement alicePubKey salt
-- They are the same
aliceSharedKey == bobSharedKey
-- True
```

</details>

<details><summary>Botan.Low.PubKey.KeyEncapsulation</summary>

First, Alice generates her private and public key pair:

```haskell
import Botan.Low.PubKey
import Botan.Low.PubKey.KeyEncapsulation
import Botan.Low.Hash
import Botan.Low.KDF
import Botan.Low.RNG
rng <- rngInit UserRNG
-- Alice generates her private and public keys
alicePrivKey <- privKeyCreate RSA "2048" rng
alicePubKey <- privKeyExportPubKey alicePrivKey
```

Then, Alice shares her public key somewhere where others can see. When Bob
wants to create a shared key with Alice, they choose a KDF algorithm, generate
a salt, and choose a shared key length.

```haskell
kdfAlg = hkdf SHA256
salt <- rngGet rng 4
sharedKeyLength = 256
```

Then, Bob generates the shared + encapsulated key, and sends the
encapsulated key to Alice:

```haskell
encryptCtx <- kemEncryptCreate alicePubKey kdfAlg
(bobSharedKey, encapsulatedKey) <- kemEncryptCreateSharedKey encryptCtx rng salt sharedKeyLength
-- sendToAlice encapsulatedKey
```

Upon receiving the encapsulated key, Alice can decrypt and extract the shared
key using her private key:

```haskell
decryptCtx <- kemDecryptCreate alicePrivKey kdfAlg
aliceSharedKey <- kemDecryptSharedKey decryptCtx salt encapsulatedKey sharedKeyLength
bobSharedKey == aliceSharedKey
-- True
```

Then, this shared key may be used for any suitable purpose.


</details>

<!--  <details><summary>Botan.Low.PwdHash</summary>

</details> -->

<details><summary>Botan.Low.RNG</summary>

A `random number generator` is used to generate uniform samples of pseudorandom bytes.

You can always use the system `RNG`:

```haskell
import Botan.Low.RNG
randomBytes <- systemRNGGet 16
```

Unless you need a specific `RNG`, it is strongly recommended that you use the autoseeded `user` RNG.

```haskell
import Botan.Low.RNG
rng <- rngInit "user"
randomBytes <- rngGet rng 16
```

You can reseed a generator using the system generator:

```haskell
rngReseed rng 64
```

You can also reseed a generator using a specific generator:

```haskell
systemRNG <- rngInit "system"
rngReseedFromRNG rng systemRNG 64
```

You can also seed it with your own entropy; this is safe and can never *decrease* the amount of entropy in the generator.

```haskell
rngAddEntropy rng "Fee fi fo fum!"
```

</details>

<details><summary>Botan.Low.SRP6</summary>

See the executable example in the Haddock documentation of the `Botan.Low.SRP6` module.

</details>

<details><summary>Botan.Low.TOTP</summary>

To use TOTP for MFA / 2FA, the client authenticator must generate a
client-specific shared secret, and securely communicate it to the
server authenticator.

The secret key may be any bytestring value with more than 160 bits, such as
a Bcrypt digest or SRP6 shared key.

```haskell
import Botan.Low.TOTP
import Botan.Low.RNG
import Data.Time.Clock.POSIX
timestep = 30
drift = 3
sharedSecret <- systemRNGGet 16
```

The client and server authenticators are now in a shared state, and any login
attempts from a new device may be authenticated using TOTP as MFA.

A client has requested a new connection, and TOTP is being used as MFA/2FA to
authenticate their request. The server authenticator receives the client connection
request and initializes a TOTP session using the stored client-specific shared
secret, and then sends an authentication request to the client authenticator:

```haskell
-- serverSharedSecret <- lookupServerSharedSecret
serverSession <- totpInit serverSharedSecret TOTP_SHA512 8 timestep
-- sendMFAAuthenticationRequest
```

> NOTE: We are using a timestep value of 30 seconds, which means that the
> code will refresh every 30 seconds

The client authenticator receives the authentication request, generates a
client-side code using their timestamp, and displays the TOTP code to
the user:

```haskell
-- clientSharedSecret <- lookupClientSharedSecret
clientSession <- totpInit clientSharedSecret TOTP_SHA512 8 timestep
(clientTimestamp :: TOTPTimestamp) <- round <$> getPOSIXTime
clientCode <- totpGenerate clientSession clientTimestamp
-- displayClientCode clientCode
```

The client then sends the client code to the server authenticator using the
unauthenticated / requested connection:

```haskell
-- clientCode <- readClientCode
-- sendMFAAuthenticationResponse clientCode
```

The server authenticator receives the authentication response, and performs
a check of the key, with an acceptable clock drift in steps, in case the client
and server are slightly desynchronized.

```haskell
-- serverClientCode <- didreceiveMFAAuthenticationResponse
(serverTimestamp :: TOTPTimestamp) <- round <$> getPOSIXTime
isValid <- totpCheck serverSession serverClientCode serverTimestamp drift
```

> NOTE: We are using a acceptable clock drift value of 3, which means that the
> codes for the previous 3 time steps are still valid.

If the code is valid, then the signin may be completed on the new connection
as normal.

The server should discontinue the session and refuse any new connections
to the account after multiple unsuccessful authentication attempts.
The user should then be notified.

</details>

<!-- <details><summary>Botan.Low.X509</summary>

</details> -->

<details><summary>Botan.Low.ZFEC</summary>

Forward error correction takes an input and creates multiple
“shares”, such that any K of N shares is sufficient to recover
the entire original input.

First, we choose a K value appropriate to our message - the higher K is,
the smaller (but more numerous) the resulting shares will be:

```haskell
k = 7
message = "The length of this message must be divisible by K"
```

> NOTE: ZFEC requires that the input length be exactly divisible by K; if
needed define a padding scheme to pad your input to the necessary
size.

We can calculate N = K + R, where R is the number of redundant shares,
meaning we can tolerate the loss of up to R shares and still recover
the original message.

We want 2 additional shares of redundancy, so we set R and N appropriately:

```haskell
r = 2
n = k + r -- 7 + 2 = 9
```

Then, we encode the message into N shares:

```haskell
shares <- zfecEncode k n message
length shares
-- 9
```

Then, we can recover the message from any K of N shares:

```haskell
someShares <- take k <$> shuffle shares
recoveredMessage <- zfecDecode k n someShares
message == recoveredMessage
-- True
```

</details>