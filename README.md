# Welcome to botan

[![Hackage: botan-bindings](https://img.shields.io/hackage/v/botan-bindings?label=Hackage:%20botan-bindings)](https://hackage.haskell.org/package/botan-bindings)
[![Hackage: botan-low](https://img.shields.io/hackage/v/botan-low?label=Hackage:%20botan-low)](https://hackage.haskell.org/package/botan-low)
[![Hackage: botan](https://img.shields.io/hackage/v/botan?label=Hackage:%20botan)](https://hackage.haskell.org/package/botan)
[![Build](https://img.shields.io/github/actions/workflow/status/haskell-cryptography/botan/ci.yml?label=Build)](https://github.com/haskell-cryptography/botan/actions/workflows/ci.yml)
[![Haddocks](https://img.shields.io/badge/documentation-Haddocks-purple)](https://haskell-cryptography.github.io/botan/)

# Acknowledgements

This project has received support from the [Haskell
Foundation](https://haskell.foundation/), and was made possible through funding
provided by [Mercury](https://mercury.com/).

<a href="https://mercury.com/" alt="Mercury"><img src="./doc/mercury.svg" width="320"></a>

# Introduction

`botan` is a set of Haskell bindings for the [Botan](https://botan.randombit.net/) cryptography library.

> Botan's goal is to be the best option for cryptography in C++ by offering the
> tools necessary to implement a range of practical systems, such as TLS
> protocol, X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware
> support, password hashing, and post quantum crypto schemes.

This project has the goal of providing a set of safe and performant bindings to
the Botan C++ cryptography library via its C FFI (Foreign Function Interface).
It does this by providing 3 libraries at varying levels of complexity and
abstraction:

- `botan-bindings` contains raw bindings with buffers and pointers, and is
  otherwise an almost a 1:1 translation of the C FFI into Haskell
- `botan-low` contains low-level bindings with imperative IO and exceptions, and
  safely wraps buffers and pointers into bytestrings and autoreleased objects
- `botan` contains high-level bindings with strong types and idiomatic Haskell,
  and provides algebraic data types and convenience functions

We suggest using the highest-level library possible, unless you wish to build
your own abstraction over the Botan C++ library. The highest-level stable
library is currently: `botan-low`

> [!WARNING]
> The `botan` Haskell package is currently still work in progress, and so it is
> not available yet on Hackage.

# Features

The C++ library provides its bindings through the Botan C FFI, which does not
currently cover the entire range of features available in C++. As such, it
provides a sizeable yet limited subset of those features, and therefore the
Haskell packages support that same subset of features.

These bindings provide the following features:

- Random number generators
- Hashing and non-cryptographic checksums
- Message authentication codes
- Block, mode, and AEAD ciphers
- Password hashing and key derivation functions
- Hash- and time-based one-time passwords
- Post-quantum crypto schemes
- SRP6 password authenticated key exchange
- X.509 certificate systems
- ZFEC forward error correction

# Installation

This library requires the C++ library called Botan 3 to be installed in order to
work. It is available through nearly all [packaging
systems](https://repology.org/project/botan/versions) so it should suffice to
install it through your distribution / system package manager if a compatible
version is provided.

> [!WARNING]
> The Botan Haskell packages only work with versions >=3 and <4 of the C++ library!

If installing via a package manager is not an option, then the library can also
be built from source. See [Building the
Library](https://botan.randombit.net/handbook/building.html) in the handbook for
more details.

We recommend installing the `pkg-config` system package using your package
manager of choice. `pkg-config` is not required, but recommended for the easiest
development experience.

# Configuration

`botan-bindings` will use `pkg-config` by default to find the installed C++
library. This can be disabled using the `-pkg-config` Cabal flag, but then you
should provide `--extra-include-dirs` and `--extra-lib-dirs` options that point
to the C++ library's installed header and library files respectively.

The following example `cabal` invocation would configure a local build of the
packages to not use `pkg-config`, to find C header files in
`/usr/local/include`, and to find library files in `/usr/local/lib`.

```console
cabal configure --flag=-pkg-config --extra-include-dirs=/usr/local/include --extra-lib-dirs=/usr/local/lib
```

# Usage

If you followed the installation and configuration steps, then you can add any
of the Haskell packages (`botan`/`botan-low`/`botan-bindings`) as a dependency
to your cabal file in order to use it.

After you have added one of the packages as a dependency, you can begin
importing modules and using them in your code. For example, we could depend on
`botan-low` and then write code such as:

```haskell
import Botan.Low.Hash

main = do
    hash <- hashInit "SHA-256"
    digest <- hashUpdateFinalize hash "Fee fi fo fum!"
    print digest
```

# Contributing

There are several ways to contribute to the development of this project, and we
are happy to receive any bug reports, fixes, documentation, and other
improvements to this project.

See the [CONTRIBUTING](CONTRIBUTING.md) file for more information.

# Resources

There are several resources for this project that might be helpful. First and
foremost, the [doc](./doc/) folder contains documentation about a range of
topics that might be of interest to you.

The following are resources related to the Botan Haskell packages:

- **[Devlog](https://discourse.haskell.org/t/botan-bindings-devlog/6855?u=apothecalabs)**
  for project status and updates.
- **[GitHub](https://github.com/haskell-cryptography/botan)** for Haskell source
  code, issues, and pull requests.
- **[Proposal](https://github.com/haskellfoundation/tech-proposals/pull/57)**
  Haskell Foundation funding proposal submission thread.

And there are resources related to the original Botan C++ library:

- **[Botan](https://botan.randombit.net/)** Crypto and TLS for Modern C++
- **[Botan C++ Github](https://github.com/randombit/botan/)** for original Botan
  C++ source code, issues, and pull requests.
- **[Botan Handbook](https://botan.randombit.net/handbook/)** for documentation
  on the original library
- **[Botan FFI](https://botan.randombit.net/handbook/api_ref/ffi.html)** for
  documentation on the Botan C FFI
- **[Issue](https://github.com/randombit/botan/issues/3627)** FFI APIs for X.509
  are insufficient

# License

This project is licensed under the BSD 3-Clause License and is free, open-source
software.

# Donations

This is free, open-source software. If you'd like to support the continued
development of this project and future projects like this, or just to say
thanks, you can donate directly using the following link(s):

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V1S5JTG)
