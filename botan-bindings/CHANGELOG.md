# Changelog

## ?.?.?.? -- ????-??-??

* BREAKING: remove experimental FFI code related to `x509`. This code might be
  restored in some form in the future, but as of now it does not compile any
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
* BREAKING: remove the `XFFI` cabal flag. It has no effect now that the
  experimental `x509` code is moved.
* PATCH: enable `-Wall` in addition to a number of other GHC warnings.
* PATCH: use `GHC2021` as the default language.
* PATCH: update documentation in the `Botan.Bindings.Error` module.
* PATCH: update documentation in the `Botan.Bindings.Utility` module.
* PATCH: update documentation in the `Botan.Bindings.Version` module.
* PATCH: update documentation in the `Botan.Bindings.View` module.
* PATCH: update documentation in the `Botan.Bindings.PwdHash` module.
* PATCH: update documentation in the `Botan.Bindings.SRP6` module.
* PATCH: update documentation in the `Botan.Bindings.BlockCipher` module.
* BREAKING: in the `BlockCipher` module, remove `_128` from the identifiers of
  pattern synonyms that start with `BOTAN_BLOCK_CIPHER_128`.
* NON-BREAKING: in the `BlockCipher` module, add new pattern synonyms
  `BOTAN_BLOCK_CIPHER_LION` and `BOTAN_BLOCK_CIPHER_CASCADE` for the "Lion" and
  "Cascade" ciphers respectively.
* PATCH: restrict the version of the C++ library to `<4`. See PR
  [#103](https://github.com/haskell-cryptography/botan/pull/103).

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
