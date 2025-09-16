# Changelog

## ?.?.?.? -- ????-??-??

* PATCH: update the changelog to change the release date of version 0.0.1.0 from
  2024-02-05 to 2024-02-13.
* PATCH: transfer ownership to the Haskell Foundation.
* BREAKING: Fix a few FFI bindings that have `FunPtr`s in their type where they
  should not. This is considered a breaking change because the types of the FFI
  bindings were changed as a result.

## 0.0.1.0 -- 2024-02-13

Initial release.
