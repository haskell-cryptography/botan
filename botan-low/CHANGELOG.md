# Changelog

## ?.?.?.? -- ????-??-??

* BREAKING: change more flags from numbers into datatypes. See PR
  [#113](https://github.com/haskell-cryptography/botan/pull/113). The flag
  datatypes come with new helper functions to convert the datatype into a
  number. The changed flag types are:
  - `SigningFlags`
  - `X509KeyConstraints`
* BREAKING: `x509CertAllowedUsage` now takes a list of `X509KeyConstraints`
  instead of a single value. See PR
  [#113](https://github.com/haskell-cryptography/botan/pull/113).

## 0.1.0.0 -- 2025-12-30

* BREAKING: remove experimental FFI code related to `x509`. See PR
  [#49](https://github.com/haskell-cryptography/botan/pull/49). This code might
  be restored in some form in the future, but as of now it does not compile any
  more, so it is removed. The modules that are removed are:
  - `Botan.Low.X509.CA`
  - `Botan.Low.X509.CRL`
  - `Botan.Low.X509.CSR`
  - `Botan.Low.X509.DN`
  - `Botan.Low.X509.Extensions`
  - `Botan.Low.X509.Options`
  - `Botan.Low.X509.Path`
  - `Botan.Low.X509.Store`
* BREAKING: remove the `XFFI` cabal flag. See PR
  [#49](https://github.com/haskell-cryptography/botan/pull/49). It has no effect
  now that the experimental `x509` code is moved.
* PATCH: enable `-Wall` in addition to a number of other GHC warnings. See PR
  [#52](https://github.com/haskell-cryptography/botan/pull/52).
* PATCH: use `GHC2021` as the default language. See PR
  [#52](https://github.com/haskell-cryptography/botan/pull/52).
* PATCH: update documentation in the `Botan.Low.Error` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Low.Utility` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Low.Version` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Low.View` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* BREAKING: `Botan.Low.PwdHash.pbkdf2` now takes a `HashName` instead of a
  `MacName`. See PR
  [#63](https://github.com/haskell-cryptography/botan/pull/63).
* PATCH: update documentation in the `Botan.Low.PwdHash` module. See PR
  [#63](https://github.com/haskell-cryptography/botan/pull/63).
* PATCH: introduce a work-around for a bug found in
  `Botan.Low.SRP6.srp6ServerSessionStep1`, which would always throw an
  exception. See PR
  [#65](https://github.com/haskell-cryptography/botan/pull/65).
* BREAKING: add a `DLGroupName` function argument to
  `Botan.Low.SRP6.srp6ServerSessionStep2`. See PR
  [#65](https://github.com/haskell-cryptography/botan/pull/65).
* PATCH: update documentation in the `Botan.Low.SRP6` module. See PR
  [#65](https://github.com/haskell-cryptography/botan/pull/65).
* PATCH: update documentation in the `Botan.Low.BlockCipher` module. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* BREAKING: remove the `BlockCipher128Name` type synonym from
  `Botan.Low.BlockCipher`. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* NON-BREAKING: in the `BlockCipher` module, add new pattern synonyms `Lion` and
  `Cascade` and accompanying utility functions `lion` and `cascade` for the
  "Lion" and "Cascade" ciphers respectively. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* PATCH: fix an "address out of bounds" bug in `blockCipherEncryptBlocks` and
  `blockCipherDecryptBlocks` that occasionally caused segfaults. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* PATCH: fix an "insufficient buffer space" bug in
  `Botan.Low.PubKey.Encrypt.encrypt` and `Botan.Low.PubKey.Decrypt.decrypt`. See
  PR [#79](https://github.com/haskell-cryptography/botan/pull/79), PR
  [#87](https://github.com/haskell-cryptography/botan/pull/87).
* PATCH: Fix an "insufficient buffer space" bug in
  `Botan.Low.Cipher.cipherUpdate`. See PR
  [#84](https://github.com/haskell-cryptography/botan/pull/84).
* BREAKING: rework errors. See PR
  [#94](https://github.com/haskell-cryptography/botan/pull/94).
  - Change `BotanErrorCode` from a type synonym to a newtype around `CInt`.
  - Add a new `BotanErrorMessage` newtype around `ByteString`, and use it in
    `botanErrorLastExceptionMessage`.
  - Remove pattern synonyms for `BotanErrorCode`. Use `BOTAN_FFI_ERROR` from
    `botan-bindings` instead.
  - Hide functions related to error number handling in the internals of the
    library. This includes all function names starting with `throwBotan`.
  - Remove `tryBotan`, `catchBotan`, and `handleBotan`.
* BREAKING: change flags from numbers into datatypes. See PR
  [#95](https://github.com/haskell-cryptography/botan/pull/95) The flag
  datatypes come with new helper functions to convert the datatype into a
  number. For example, `CipherInitFlags` gets a `cipherInitFlags` function. The
  changed flag types are:
  - `CipherInitFlags`
  - `CipherUpdateFlags`
  - `FPEFlags`
  - `CheckKeyFlags`
  - `PrivKeyExportFlags`
  - `HexEncodingFlags`
* BREAKING: remove the `botan-low-bench` benchmark. See PR
  [#98](https://github.com/haskell-cryptography/botan/pull/98).
* PATCH: fix a bug where some functions returning a `Bool` were returning
  `False` instead of throwing an exception and vice versa. See PR
  [#105](https://github.com/haskell-cryptography/botan/pull/105). These
  functions are:
  - `pubKeyCheckKey`
  - `x509CertHostnameMatch`
  - `x509IsRevoked`
* BREAKING: enable `NoFieldSelectors`. See PR
  [#106](https://github.com/haskell-cryptography/botan/pull/106). As a result,
  this package no longer exports field selectors for datatypes defined in the
  package.

## 0.0.2.0 -- 2025-09-17

* PATCH: update the changelog to change the release date of version 0.0.1.0 from
  2024-02-05 to 2024-02-13.
* PATCH: transfer ownership to the Haskell Foundation.
* NON-BREAKING: remove a bunch of `WARNING` pragmas in favour of textual
  reminders in haddock comments. The `WARNING` pragmas are somewhat inconvenient
  in conjunction with `-Werror`. What would help is that since `ghc-9.12`,
  warnings can be assigned to categories, and those categories can be ignored
  more granularly. However, we support `ghc` versions down to and including
  `ghc-9.2`, so warning categories are not an option for now. The affected
  functions are:

  - `blockCipherEncryptBlocks`
  - `blockCipherDecryptBlocks`
  - `pwdhash`
  - `pwdhashTimed`
  - `mkCreateObjectCBytes`
  - `x509CertAllowedUsage`
  - `x509CertHostnameMatch`
  - `keyAgreement`
  - `signFinish`
* PATCH: include a license file (with copyright info)
* PATCH: make dependency bounds on `base` tighter. Now they coincide with the
  `tested-with` versions of GHC.

## 0.0.1.0 - 2024-02-13

Initial release.
