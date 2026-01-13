# Changelog

## ?.?.?.? -- ????-??-??

* BREAKING: for all newtypes with a record field name like `run*`, change the
  name to `ptr`. See PR's
  [#114](https://github.com/haskell-cryptography/botan/pull/114) and
  [#117](https://github.com/haskell-cryptography/botan/pull/117). For example.
  `runBotanBlockCipher` is changed to `ptr`.
* BREAKING: re-enable `FieldSelectors` for the `ConstPtr` module. See PR
  [#117](https://github.com/haskell-cryptography/botan/pull/117).

## 0.2.0.0 -- 2025-12-30

* BREAKING: remove experimental FFI code related to `x509`. See PR
  [#49](https://github.com/haskell-cryptography/botan/pull/49). This code might
  be restored in some form in the future, but as of now it does not compile any
  more, so it is removed. The modules that are removed are:
  - `Botan.Bindings.X509.CA`
  - `Botan.Bindings.X509.CRL`
  - `Botan.Bindings.X509.CSR`
  - `Botan.Bindings.X509.DN`
  - `Botan.Bindings.X509.Extensions`
  - `Botan.Bindings.X509.OCSP`
  - `Botan.Bindings.X509.Options`
  - `Botan.Bindings.X509.Path`
  - `Botan.Bindings.X509.Store`
* BREAKING: remove the `XFFI` cabal flag. See PR
  [#49](https://github.com/haskell-cryptography/botan/pull/49). It has no effect
  now that the experimental `x509` code is moved.
* PATCH: enable `-Wall` in addition to a number of other GHC warnings. See PR
  [#52](https://github.com/haskell-cryptography/botan/pull/52).
* PATCH: use `GHC2021` as the default language. See PR
  [#52](https://github.com/haskell-cryptography/botan/pull/52).
* PATCH: update documentation in the `Botan.Bindings.Error` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Bindings.Utility` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Bindings.Version` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Bindings.View` module. See PR
  [#62](https://github.com/haskell-cryptography/botan/pull/62).
* PATCH: update documentation in the `Botan.Bindings.PwdHash` module. See PR
  [#63](https://github.com/haskell-cryptography/botan/pull/63).
* PATCH: update documentation in the `Botan.Bindings.SRP6` module. See PR
  [#65](https://github.com/haskell-cryptography/botan/pull/65).
* PATCH: update documentation in the `Botan.Bindings.BlockCipher` module. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* BREAKING: in the `BlockCipher` module, remove `_128` from the identifiers of
  pattern synonyms that start with `BOTAN_BLOCK_CIPHER_128`. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* NON-BREAKING: in the `BlockCipher` module, add new pattern synonyms
  `BOTAN_BLOCK_CIPHER_LION` and `BOTAN_BLOCK_CIPHER_CASCADE` for the "Lion" and
  "Cascade" ciphers respectively. See PR
  [#74](https://github.com/haskell-cryptography/botan/pull/74).
* PATCH: restrict the version of the C++ library to `<4`. See PR
  [#103](https://github.com/haskell-cryptography/botan/pull/103).
* BREAKING: enable `NoFieldSelectors`. See PR
  [#106](https://github.com/haskell-cryptography/botan/pull/106). As a result,
  this package no longer exports field selectors for datatypes defined in the
  package.

## 0.1.0.0 -- 2025-09-17

* PATCH: update the changelog to change the release date of version 0.0.1.0 from
  2024-02-05 to 2024-02-13.
* PATCH: transfer ownership to the Haskell Foundation.
* BREAKING: Fix a few FFI bindings that have `FunPtr`s in their type where they
  should not. This is considered a breaking change because the types of the FFI
  bindings were changed as a result.
* PATCH: include a license file (with copyright info)
* PATCH: make dependency bounds on `base` tighter. Now they coincide with the
  `tested-with` versions of GHC.

## 0.0.1.0 -- 2024-02-13

Initial release.
