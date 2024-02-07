# Welcome to botan

<!-- TODO: Badges: hackage)  -->

![CI](https://github.com/apotheca/botan/actions/workflows/CI.yml/badge.svg)

`botan` is a set of Haskell bindings for the [Botan](https://botan.randombit.net/) cryptography library.

> Botan's goal is to be the best option for cryptography in C++ by offering the tools necessary to implement a range of practical systems, such as TLS protocol, X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support, password hashing, and post quantum crypto schemes.

# Acknowledgements

This project has received support from the [Haskell Foundation](https://haskell.foundation/), and was made possible through funding provided by [Mercury](https://mercury.com/).

<a href="https://mercury.com/" alt="Mercury"><img src="https://github.com/apotheca/botan/blob/main/contributors/mercury.svg" width="320"></a>

# Navigation

<details open><summary>Expand / Collapse Navigation</summary>

- [Welcome to botan](#Welcome-to-botan)
- [Acknowledgements](#Acknowledgements)
- [Introduction](#Introduction)
- [Installation](#Installation)
    - [Unix package](#Unix-package)
    - [MacOS package](#MacOS-package)
    - [From source](#From-source)
    - [Windows from source](#Windows-from-source)
- [Usage](#Usage)
- [Tutorials](#Tutorials)
- [Enabling experimental support](#Enabling-experimental-support)
- [Resources](#Resources)
- [License](#License)
- [Contributing](#Contributing)
    - [Reporting Bugs](#Reporting-Bugs)
    - [Assist in Development](#Assist-in-Development)
- [Donations](#Donations)

</details>

# Introduction

This project has the goal of providing a set of safe and performant bindings to the Botan C++ cryptography library via its C FFI (Foreign Function Interface). It does this by providing 3 libraries at varying levels of complexity and abstraction:

- `botan-bindings` contains raw bindings with buffers and pointers, and is otherwise an almost a 1:1 translation of the C FFI into Haskell
- `botan-low` contains low-level bindings with imperative IO and exceptions, and safely wraps buffers and pointers into bytestrings and autoreleased objects
- `botan` contains high-level bindings with strong types and idiomatic Haskell, and provides algebraic data types and convenience functions

We suggest using the highest-level library possible, unless you wish to build your own abstraction over the Botan C++ library. The highest-level stable library is currently: `botan-low`

<details>

<summary>Features</summary>

This library provides its bindings through the Botan C FFI, which does not currently cover the entire range of features available in C++. As such, it provides a sizeable yet limited subset of those features.

These bindings provide the following features:

- Random number generators
- Hashing and non-cryptographic checksums
- Message authentication codes
- Block, mode, and AEAD ciphers
- Password hashing and key derivation functions
- Hash- and time-based one-time passwords
- Post-quantum crypto schemes
- SRP6 password authenticated key exchange
- X.509 certificate systems (experimental)
- ZFEC forward error correction

> NOTE: This project includes efforts to expand this subset of features through a fork of the Botan C++ library - see [Enabling experimental support](#Enabling-experimental-support) for more details. This fork will be contributed back to the original library when it becomes sufficiently stable.
    
</details>

# Installation

This library requires Botan 3 to be installed in order to work. See [Building the Library](https://botan.randombit.net/handbook/building.html) in the handbook for more details.

## Unix package

~~Botan is available already in nearly all [packaging systems](https://repology.org/project/botan/versions) so you can probably install it through your distribution / system package manager.~~

At current, Botan **2** is readily available, but Botan **3** is not yet available as a prebuilt linux package. Please see 'Building from source'.

<details><summary>Arch</summary>

> Untested.

```shell
pacman -S botan
# or maybe
pacman -S botan3
```
    
</details>

<details><summary>Debian</summary>

> Untested.

```shell
apt-get update
apt-get install botan
```

</details>

<details><summary>Red Hat</summary>

> Untested.

```shell
yum update
yum install botan
```

</details>

<details><summary>Ubuntu</summary>

> Untested.

```shell
sudo apt update
sudo apt install botan
```

</details>

## MacOS package

Botan is available through the [Homebrew](https://brew.sh/) package manager:

<details><summary>Homebrew</summary>

```shell
brew install botan
```

</details>

## From source

Botan can be built from source, for additional configuration options and customization.

<details><summary>Build from source</summary>

First, clone the Botan C++ repository:

```shell
git clone https://github.com/randombit/botan
```

Botan’s build configuration is controlled by `configure.py`, and requires Python 3.x or later.

This works for most systems:

```shell
./configure.py [--prefix=/some/directory]
make
make install
```

If you wish to run unit tests before installation, run `make check` before `make install`.

On platforms that do not understand the `#!` convention for beginning script files, or that have Python installed in an unusual spot, you might need to prefix the `configure.py` command with `python3` or `/path/to/python`:

```shell
python3 ./configure.py [arguments]
```

The `make install` target has a default directory in which it will install Botan (typically `/usr/local`). You can override this by using the `--prefix` argument to `configure.py`, like so:

```shell
./configure.py --prefix=/botan [arguments]
```

Some features rely on third party libraries which your system might not have or that you might not want the resulting binary to depend on. For instance to enable `sqlite3` support, add `--with-sqlite3` to your invocation of `configure.py`.

```shell
./configure.py --with-sqlite3 [arguments]
```

</details>

## Windows from source

Prebuilt botan is not available for windows, and it must be built from source. The process is similar to building from source in Unix or MacOS.

<details><summary>Windows from source</summary>

> Untested.

You need to have a copy of Python installed, and have both Python and your chosen compiler in your path. Open a command shell (or the SDK shell), and run:

```shell
python3 configure.py --cc=msvc --os=windows
nmake
nmake check
nmake install
```

Alternately, starting in Botan 3.2, there is additionally support for using the ninja build tool as an alternative to nmake:

```shell
python3 configure.py --cc=msvc --os=windows --build-tool=ninja
ninja
ninja check
ninja install
```

For MinGW, use:

```shell
python3 configure.py --cc=gcc --os=mingw
make
```

By default the install target will be `C:\botan`; you can modify this with the `--prefix` option.

When building your applications, all you have to do is tell the compiler to look for both include files and library files in C:\botan, and it will find both. Or you can move them to a place where they will be in the default compiler search paths (consult your documentation and/or local expert for details).

</details>

# Usage

You will need to add `botan` as a package dependency in order to use it.

<details><summary>Cabal</summary>

This package is not yet available on hackage, so you'll have to add the repo to your `cabal.project` file using a `source-repository-package` stanza:

```
source-repository-package
    type: git
    location: git://github.com/apotheca/botan.git
    tag: [commit-hash]
```

Then, add it to your `[project].cabal` under the `build-depends` stanza:

```
build-depends:
    botan-low
```

If you installed botan in a non-standard location, you may need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags:

```shell
cabal repl TARGET --extra-include-dirs /botan/include --extra-lib-dirs /botan/lib
```

You can add these flags permanently to your `cabal.project` or `cabal.project.local` file:

```
extra-include-dirs:
- /botan/include
extra-lib-dirs:
- /botan/lib
```

</details>

<details><summary>Stack</summary>

> Untested.

This package is not yet available on stackage, so you'll have to add the repo to your `stack.yaml` file under the `extra-deps` stanza:

```
extra-deps:
- github: apotheca/botan
  commit: [commit-hash]
```

Then, add it to your `package.yaml` file under the `dependencies` stanza:

```
dependencies:
- botan-low
```

If you installed botan in a non-standard location, you may need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags:

```shell
stack repl TARGET --extra-include-dirs /botan/include --extra-lib-dirs /botan/lib
```

You can add these flags permanently to your `stack.yaml` or global `config.yaml` file:

```
extra-include-dirs:
- /botan/include
extra-lib-dirs:
- /botan/lib
```

</details>

After you have added `botan` as a dependency, you can begin importing modules and using them in your code.

```haskell
import Botan.Low.Hash

main = do
    hash <- hashInit "SHA-256"
    digest <- hashUpdateFinalize hash "Fee fi fo fum!"
    print digest
```

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

A `block cipher` is a deterministic, cryptographic primitive suitable for encrypting or decrypting a single, fixed-size block of data at a time. Block ciphers are used as building blocks for more complex cryptographic operations. If you are looking to encrypt user data, you are probably looking for `Botan.Low.Cipher` instead.

Unless you need a specific block cipher, it is strongly recommended that you use the `AES256` algorithm.

```haskell
import Botan.Low.BlockCipher
blockCipher <- blockCipherInit AES256
```

To use a block cipher, we first need to generate (if we haven't already) a secret key.

```haskell
import Botan.Low.RNG
rng <- rngInit "user"
-- We will use the maximum key size; AES256 keys are always 16 bytes
(_,keySize,_) <- blockCipherGetKeyspec blockCipher
-- Block cipher keys are randomly generated
key <- rngGet rng keySize
```

After the key is generated, we must set it as the block cipher key:

```haskell
blockCipherSetKey blockCipher key
```

To encrypt a message, it must be a multiple of the block size.

```haskell
blockSize <- blockCipherBlockSize blockCipher
-- AES256 block size is always 16 bytes
message = "0000DEADBEEF0000" :: ByteString
ciphertext <- blockCipherEncryptBlocks blockCipher message
```

To decrypt a message, simply reverse the process:

```haskell
plaintext <- blockCipherDecryptBlocks blockCipher ciphertext
message == plaintext -- True
```

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

<!-- <details><summary>Botan.Low.HOTP</summary>

</details> -->

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

Sign a message:

```haskell
import Botan.Low.PubKey.Sign
import Botan.Low.Hash
message = "Fee fi fo fum!"
-- Alice signs the message using her private key
signer <- signCreate alicePrivKey (emsa_emsa4 SHA3) SigningPEMFormatSignature
signUpdate signer message
sig <- signFinish signer rng
```

> NOTE: Signing uses a different set of padding algorithms `EMSA` from encryption `EME`, and different signing / encryption algorithms support different specific padding algorithms

> NOTE: Signing does not yet have proper constants for selecting a padding mechanism. For more information, refer to the `Botan.PubKey`, `Botan.PubKey.Sign`, or the Botan C++ documentation. This area will be improved in the near future.

Verify a message:

```haskell
import Botan.Low.PubKey.Verify
-- Bob verifies the message using Alice's public key
verifier <- verifyCreate alicePubKey (emsa_emsa4 SHA3) SigningPEMFormatSignature
verifyUpdate verifier message
verified <- verifyFinish verifier sig
verified -- True
```

> NOTE: The same padding must be used for both encryption and decryption

</details>

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

<!-- <details><summary>Botan.Low.SRP6</summary>

</details> -->

<!-- <details><summary>Botan.Low.TOTP</summary>

</details> -->

<!-- <details><summary>Botan.Low.X509</summary>

</details> -->

<!-- <details><summary>Botan.Low.ZFEC</summary>

</details> -->

# Enabling experimental support

Some features rely on an experimental fork of the Botan C++ library, which will be contributed back upstream to Botan C++ when it is stable.

<details><summary>Build with experimental features</summary>

1.  Clone the experimental [fork](https://github.com/apotheca/botan-upstream)

```shell
git clone https://github.com/apotheca/botan-upstream $BOTAN_CPP
```

2.  Build and install the experimental fork as [from source](#From-source). You may wish to install to a non-standard location using `--prefix` during configuration, to avoid overwriting any pre-existing install.

```shell
cd $BOTAN_CPP
./configure.py --prefix=$BOTAN_OUT
make
make install
```

3.  Use the `XFFI` flag to enable the experimental FFI modules. If you installed the experimental fork to a non-standard location, you may also need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags.

```shell
cd $BOTAN_HASKELL
cabal build TARGET -fXFFI --extra-include-dirs $BOTAN_OUT/include --extra-lib-dirs $BOTAN_OUT/lib
# or
stack build TARGET --flag XFFI --extra-include-dirs $BOTAN_OUT/include --extra-lib-dirs $BOTAN_OUT/lib
```

To check that you've done everything correctly, you can run the following:

```
import Botan.Bindings.Version 
import Foreign.C.String
import Prelude
botan_version_string >>= peekCString
```

The version will say `unreleased` if it is properly pointing to our built Botan.

</details>

# Resources

There are several resources for this project that might be helpful:

- **[Devlog](https://discourse.haskell.org/t/botan-bindings-devlog/6855?u=apothecalabs)** for project status and updates.
- **[GitHub](https://github.com/apotheca/botan)** for Haskell source code, issues, and pull requests.
- **[Upstream C++ Github](https://github.com/apotheca/botan-upstream)** experimental fork of Botan C++
- **[Proposal](https://github.com/haskellfoundation/tech-proposals/pull/57)** Haskell Foundation funding proposal submission thread.

As well, there are resources for the original Botan C++ library:

- **[Botan](https://botan.randombit.net/)** Crypto and TLS for Modern C++
- **[Botan C++ Github](https://github.com/randombit/botan/)** for original Botan C++ source code, issues, and pull requests.
- **[Botan Handbook](https://botan.randombit.net/handbook/)** for documentation on the original library
- **[Botan FFI](https://botan.randombit.net/handbook/api_ref/ffi.html)** for documentation on the Botan C FFI
- **[Issue](https://github.com/randombit/botan/issues/3627)** FFI APIs for X.509 are insufficient

# License

This project is licensed under the [BSD 3-Clause License](https://github.com/apotheca/botan/blob/main/LICENSE) and is free, open-source software.

# Contributing

There are several ways to contribute to the development of this project, and we are happy to receive any bug reports, fixes, documentation, and any other improvements to this project. 

## Reporting Bugs

See a bug? 

1. Describe the issue

2. Write down the steps required to reproduce the issue

3. Report the issue by [opening a ticket!](https://github.com/apotheca/botan/issues/new)

## Assist in Development

Want to help?

1. Fork or clone the repo, and create a new branch:

```shell
git checkout https://github.com/apotheca/botan -b some_new_branch
```

2. Make your changes, and test them

3. Submit a pull request with a comprehensive description of the changes

<!-- # Contributors -->

<!-- TODO: Acknowlege code contributors -->
<!-- TODO: Adding a CONTRIBUTING file: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors -->

# Donations

This is free, open-source software. If you'd like to support the continued development of this project and future projects like this, or just to say thanks, you can donate directly using the following link(s):

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V1S5JTG)
