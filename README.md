# botan

Low-level Haskell bindings for the Botan cryptography library

These are bindings to Botan's [low-level C89 FFI module](https://botan.randombit.net/handbook/api_ref/ffi.html), which should pair excellently with Haskell's own `CApiFFI` - see [here](https://downloads.haskell.org/ghc/9.0.1/docs/html/users_guide/exts/ffi.html?highlight=capiffi#extension-CApiFFI) for more details.

## Installing Botan

Botan 3 must be installed for this library to work.

> Botan is available already in nearly all [packaging systems](https://repology.org/project/botan/versions) so you probably only need to build from source if you need unusual options or are building for an old system which has out of date packages.
>
> - https://botan.randombit.net/handbook/building.html

### Windows

- TODO

### MacOS

Use homebrew: `brew install botan`

### Unix

See your appropriate package manager.



# TODO LIST

- Use `MonadIO m => m a` instead of `IO a` wherever possible.
- Use `Text` and `ByteArray`.
