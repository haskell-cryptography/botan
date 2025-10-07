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
modules that capture a section of the `ffi.h` header file. The sub-division into
these modules roughly follows how the [C FFI documentation][botan:ffi] divides
the exported C entities into categories. For example, the documentation starts
with a section on [return codes][botan:ffi:return-codes]. The corresponding
Haskell modules in the three packages are called:

* `botan-bindings`: `Botan.Bindings.Error`
* `botan-low`: `Botan.Low.Error`
* `botan`: `Botan.Error`

Note that all three packages use the same suffix `.Error`. What follows below is
a list of how sections in the C FFI documentation correspond to such module
suffixes.

* [Return codes][botan:ffi:return-codes]: `Error`
* [Versioning][botan:ffi:versioning]: `Version`
* [View Functions][botan:ffi:view-functions]: `View`
* [Utility Functions][botan:ffi:utility-functions]: `Utility`

Note that the C FFI documentation is not complete, so some Haskell modules
export bindings to C entities that are not described in the C FFI documentation.
Such modules are instead based on the [C++ API reference][botan:api].
Again, all three packages use the same module suffixes:

* [Password Based Key Derivation][botan:api:pwdhash]: `PwdHash`
* [Secure Remote Password][botan:api:srp6]: `SRP6`

Moreover, some modules export Haskell-only definitions that do not correspond
directly to C entities, and some modules do not directly correspond to a C FFI or C++
documentation section. Such is the case specially in the higher-level packages
`botan-low` and `botan`, but it is true for `botan-bindings` to a lesser degree
as well.

[hs-botan:README]: ../README.md

[botan:ffi]: https://botan.randombit.net/handbook/api_ref/ffi.html
[botan:ffi:return-codes]: https://botan.randombit.net/handbook/api_ref/ffi.html#return-codes
[botan:ffi:versioning]: https://botan.randombit.net/handbook/api_ref/ffi.html#versioning
[botan:ffi:view-functions]: https://botan.randombit.net/handbook/api_ref/ffi.html#view-functions
[botan:ffi:utility-functions]: https://botan.randombit.net/handbook/api_ref/ffi.html#utility-functions

[botan:api]: https://botan.randombit.net/handbook/api_ref/contents.html
[botan:api:pwdhash]: https://botan.randombit.net/handbook/api_ref/pbkdf.html
[botan:api:srp6]: https://botan.randombit.net/handbook/api_ref/srp.html
