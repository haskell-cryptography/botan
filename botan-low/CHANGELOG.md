# Changelog

## ?.?.?.? -- ????-??-??

* BREAKING: remove experimental FFI code related to `x509`. This code might be
  restored in some form in the future, but as of now it does not compile any
  more, so it is removed. The modules that are removed are:
  - `Botan.Low.X509.CA`
  - `Botan.Low.X509.CRL`
  - `Botan.Low.X509.CSR`
  - `Botan.Low.X509.DN`
  - `Botan.Low.X509.Extensions`
  - `Botan.Low.X509.Options`
  - `Botan.Low.X509.Path`
  - `Botan.Low.X509.Store`
* BREAKING: remove the `XFFI` cabal flag. It has no effect now that the
  experimental `x509` code is moved.
* PATCH: enable `-Wall` in addition to a number of other GHC warnings.
* PATCH: use `GHC2021` as the default language.
* BREAKING: `Botan.Low.PwdHash.pbkdf2` now takes a `HashName` instead of a
  `MacName`.
* PATCH: update documentation in the `Botan.Low.PwdHash` module.
* PATCH: introduce a work-around for a bug found in
  `Botan.Low.SRP6.srp6ServerSessionStep1`, which would always throw an
  exception. See issue
  [#28](https://github.com/haskell-cryptography/botan/issues/28).
* BREAKING: add a `DLGroupName` function argument to
  `Botan.Low.SRP6.srp6ServerSessionStep2`.
* PATCH: update documentation in the `Botan.Low.SRP6` module.

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
