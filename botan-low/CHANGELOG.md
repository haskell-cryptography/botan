# Changelog

## ?.?.?.? -- ????-??-??

* PATCH: update the changelog to change the release date of version 0.0.1.0 from
  2024-02-05 to 2024-02-13.
* PATCH: transfer ownership to the Haskell Foundation.
* NON-BREAKING: remove a bunch of `WARNING` pragmas in favour of textual
  reminders in haddock comments. The `WARNING` pragmas are somewhat inconvenient
  in conjunction with `-Werror`. What would help is that since `ghc-9.12`,
  warnings can be assigned to categories, and those categories can be ignored
  more granularly. However, we support `ghc` versions down to and including
  `ghc-9.2`, so warning categories are not an option for now. The affected functions are:

  - `blockCipherEncryptBlocks`
  - `blockCipherDecryptBlocks`
  - `pwdhash`
  - `pwdhashTimed`
  - `mkCreateObjectCBytes`
  - `x509CertAllowedUsage`
  - `x509CertHostnameMatch`
  - `keyAgreement`
  - `signFinish`

## 0.0.1.0 - 2024-02-13

Initial release.
