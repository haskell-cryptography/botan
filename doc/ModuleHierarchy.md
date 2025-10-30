# Module hierarchy

The three Haskell Botan packages provide bindings at varying levels of
complexity and abstraction (see [the README][hs-botan:README]). `botan-bindings`
is the most low-level package, `botan` is the most high-level package, and
`botan-low` sits somewhere in between. Each of these packages places module in
its own hierarchy. For each package, its modules start with a common prefix:

* `botan-bindings`: `Botan.Bindings`
* `botan-low`: `Botan.Low`
* `botan`: `Botan`

The C++ Botan library offers a single `ffi.h` C header file that the Haskell
Botan packages import and build on top of. The Haskell Botan packages do not
export a single monolothic module, however. Each package exports a number of
modules that capture encapsulate a category of functionality provided by the C++
Botan library. For the most parts, the sub-division into these modules roughly
follows how the [C FFI documentation][botan:ffi] and [C++ API
reference][botan:api] divide the exported C entities into categories.

The FFI documentation is not complete however, so some Haskell modules export
bindings to C entities that are described only in the C++ API reference.

Some modules export Haskell-only definitions that do not correspond directly to
C entities, and some modules do not directly correspond to a C FFI or C++
documentation section. Such is the case specially in the higher-level packages
`botan-low` and `botan`, but it is true for `botan-bindings` to a lesser degree
as well.

For each category of functionality, the same module suffix is combined with each
package's module prefix. For example, the following modules correspond to the
section on [return codes][botan:ffi:return-codes] in the C FFI documentation:

* `botan-bindings`: `Botan.Bindings.Error`
* `botan-low`: `Botan.Low.Error`
* `botan`: `Botan.Error`

Below is a list of modules paired with links to the documentation that the
modules are based on:

* Return codes : `Error`
  * [ffi][botan:ffi:return-codes]
* Versioning: `Version`
  * [ffi][botan:ffi:versioning]
* View Functions: `View`
  * [ffi][botan:ffi:view-functions]
* Utility Functions: `Utility`
  * [ffi][botan:ffi:utility-functions]
* Password Based Key Derivation: `PwdHash`
  * [api][botan:api:pwdhash]
* Secure Remote Password: `SRP6`
  * [api][botan:api:srp6]
* Block ciphers: `BlockCipher`
  * [ffi][botan:ffi:block-cipher]
  * [api][botan:api:block-cipher]

[hs-botan:README]: ../README.md

[botan:ffi]: https://botan.randombit.net/handbook/api_ref/ffi.html
[botan:ffi:return-codes]: https://botan.randombit.net/handbook/api_ref/ffi.html#return-codes
[botan:ffi:versioning]: https://botan.randombit.net/handbook/api_ref/ffi.html#versioning
[botan:ffi:view-functions]: https://botan.randombit.net/handbook/api_ref/ffi.html#view-functions
[botan:ffi:utility-functions]: https://botan.randombit.net/handbook/api_ref/ffi.html#utility-functions
[botan:ffi:block-cipher]: https://botan.randombit.net/handbook/api_ref/ffi.html#block-ciphers

[botan:api]: https://botan.randombit.net/handbook/api_ref/contents.html
[botan:api:pwdhash]: https://botan.randombit.net/handbook/api_ref/pbkdf.html
[botan:api:srp6]: https://botan.randombit.net/handbook/api_ref/srp.html
[botan:api:block-cipher]: https://botan.randombit.net/handbook/api_ref/block_cipher.html