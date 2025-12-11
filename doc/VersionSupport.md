# Version support

The Botan Haskell packages aim to provide low- and high-level bindings for the
Botan C++ library, with support for at least version 3.0.0 of the C++ library up
to (and not including) a future version 4. The C++ library has had numerous
releases since then. The question arises: how should the Haskell packages
support multiple versions of the C++ library? This document describes how we do
this.

## Haskell package versions vs. C++ library versions

For versioning Haskell packages with respect to the C++ library versions that it
supports, there are two main options we considered:

1. One Haskell packages release for one C++ library release
2. One Haskell packages release for many C++ library releases

In the first option for example, if version `x.y.z` of the C++ library is
released, then we release version `x.y.z` of the Haskell packages *in lockstep*.
What is nice about this approach is that depending on version `x.y.z` of the
Haskell packages would give you exactly the features of version `x.y.z` of the
Botan library. The main downside is that the Haskell packages can not easily
evolve separately from the C++ library. If a Haskell package makes any change
(breaking, non-breaking, bug-fix) that is not related to changes in the C++
library, what new version should the Haskell package get? If we do come up with
a versioning policy that we could use to signal Haskell-package-only changes,
then it would be a non-standard versioning policy that would likely be confusing
to users. Moreover, the fact that there are three separate packages exacerbate
the problem, because each package might want to make its own
Haskell-package-only changes, and it is highly likely that the higher-level
packages would so more frequently than the lower-level packages. Lastly, the
versioning policy would be rather constraining for developers, which could hurt
development of the Haskell packages.

In the second option, the version of the Haskell packages is completely
decoupled from the version of the C++ library. Because the same Haskell package
now supports many C++ library versions, we would have to make sure that we (or
users) can guard against using C++ library features that are not available. In
option 1, this would be as simple as using proper version constraints in the
`build-depends` fields of a cabal file. In option 2, we can achieve this at
compile-time using conditional compilation with CPP based on the C++ library
version. The higher-level libraries can likely do the conditional compilation
themselves so that users do not have to deal with CPP. Users of lower-level
libraries would likely still have to use CPP.

We opted to go with option 2: it is more flexible than option 1, and the cost of
having to use CPP seems minor, specially considering that the CPP can be hidden
in higher-level libraries.

## Design overview

For `botan-bindings`, we use `hs-bindgen` to pre-generate the Haskell bindings
for each C++ library version that we know about. These pre-generated modules are
included in the package's distributed files. When `botan-bindings` is built, it
runs a custom setup-hooks script that augments the package's configuration
phase. This script detect the installed C++ library version, and it includes the
pre-generated bindings corresponding to that version if possible. If the
installed C++ library version is a version that `botan-bindings` does not
recognize yet, then we have no pre-generated bindings for this version. In such
cases, the script tries to find the most recent compatible version that it does
have pre-generated bindings for, and the script includes those bindings instead.
This facilitates `botan-bindings` having some degree of forward compatibility
with respect to the C++ library. Moreover, the custom script generates and
includes a C header file that contains C macros for the installed C++ library
version *and* the C++ library version that we included pre-generated bindings
for. These two versions might not match, as explained before. These macros can
then be used with CPP for conditional compilation.

`botan-bindings` conditionally exports bindings based on the installed C++
library version. If a feature is only available on certain versions of the C++
library, then it will also only be available in `botan-bindings` if the right
version of the C++ library is installed. For this reason, any users of
`botan-bindings` should use conditional compilation to make sure the feature is
available.

## Adding support for new versions

Let's assume `botan-X-Y-Z` has been released for the C++ library and we want to
support it in `botan-bindings`. Follow these steps to add suport for the new
version:

* Add the new version to the `botan-bindings/KnownVersions.cfg` file. This file
  is used by the setup-hooks script. The contents of the file are parsed as a
  Haskell list, and so the syntax should match that of a Haskell list. The
  syntax of a single version in this list is:

```hs
Version X Y Z
```

* Update `./scripts/generate-bindings.sh` with an invocation of the
  `./scripts/generate-bindings.hs` script for the new version. For example:

```sh
cabal run ./scripts/generate-bindings.hs -- generate -v X.Y.Z -m "Botan.Bindings.Generated.Botan_X_Y_Z"
```

* Run `./scripts/generate-bindings.sh` to generate bindings for the new version.
  This will re-generate bindings for all previously known versions as well, but
  those should not change unless a new version of `hs-bindgen` is used (see
  [Using a new version of `hs-bindgen`](#using-a-new-version-of-hs-bindgen)).

```sh
./scripts/generate-bindings.sh
```

* Run `./scripts/format-stylish-haskell.sh` to format the generated bindings.

```sh
./scripts/format-stylish-haskell.sh
```

We use re-export modules to aggregate conditional imports of bindings for
specific versions, so that other modules in `botan-bindings` can just import the
aggregate module. The following steps make sure these re-export modules are
updated with the new version:

* Add a new conditional import to the list of conditional imports in the
  `Botan.Binding.Generated` module. The list conditional imports should be
  sorted in descending order of version number. This would look something like
  this if the new version is the highest version number:

```hs
#if MIN_BOTAN_VERSION_BINDINGS(X,Y,Z)
import           Botan.Bindings.Generated.Botan_X_Y_Z as Reexports
#elif ...
```

* Do a similar thing in the `Botan.Bindings.Generated.FunPtr` module:

```hs
#if MIN_BOTAN_VERSION_BINDINGS(X,Y,Z)
import           Botan.Bindings.Generated.Botan_X_Y_Z.FunPtr as Reexports
#elif ...
```

* Do a similar thing in the `Botan.Bindings.Generated.Safe` module:

```hs
#if MIN_BOTAN_VERSION_BINDINGS(X,Y,Z)
import           Botan.Bindings.Generated.Botan_X_Y_Z.Safe as Reexports
#elif ...
```

* Do a similar thing in the `Botan.Bindings.Generated.Unsafe` module:

```hs
#if MIN_BOTAN_VERSION_BINDINGS(X,Y,Z)
import           Botan.Bindings.Generated.Botan_X_Y_Z.Unsafe as Reexports
#elif ...
```

At this point, there are now Haskell bindings for the new version in the
package, their definitions are re-exported by the aggregate modules, and the
setup-hooks script will automatically include them in the build plan and compile
them based on the installed version of the C++ library. However, any new
features (functions / types) in the new bindings are not publicly exported yet.

* TODO: describe how to publicy export new features.

* TODO: the C FFI uses strings to select algorithms, but these strings are not
  exported as values or macros by the FFI. Instead, we should manually add
  pattern synonyms for such strings to botan-bindings. Describe how this should
  work.

* TODO: describe how to test the new version in CI

## Using a new version of `hs-bindgen`

* TODO: describe how to handle upgrading `hs-bindgen`, which might change the
  pre-generated bindings.