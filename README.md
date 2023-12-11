<!-- EXAMPLE: https://github.com/alichtman/stronghold#readme -->

# Welcome to botan

<!-- Badges (hackage, Haskell-CI)  -->

`botan` is a set of Haskell bindings for the [Botan](https://botan.randombit.net/) cryptography library.

> Botan's goal is to be the best option for cryptography in C++ by offering the tools necessary to implement a range of practical systems, such as TLS protocol, X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support, password hashing, and post quantum crypto schemes.

- [Welcome to botan](#Welcome-to-botan)
- [Introduction](#Introduction)
- [Installation](#Installation)
    - [Unix package](#Unix-package)
    - [MacOS package](#MacOS-package)
    - [From source](#From-source)
    - [Windows from source](#Windows-from-source)
- [License](#License)

# Introduction

This project has the goal of providing a set of safe and performant bindings to the Botan C++ cryptography library via its C FFI (Foreign Function Interface). It does this by providing 3 libraries at varying levels of complexity and abstraction:

- `botan-bindings` contains raw bindings with buffers and pointers, and is otherwise an almost a 1:1 translation of the C FFI into Haskell
- `botan-low` contains low-level bindings with imperative IO and exceptions, and safely wraps buffers and pointers into bytestrings and autoreleased objects
- `botan` contains high-level bindings with strong types and idiomatic Haskell, and provides algebraic data types and convenience functions

We suggest using the highest-level library possible, unless you wish to build your own abstraction over the Botan C++ library. The highest-level stable library is currently: `botan-low`

This library provides its bindings through the Botan C FFI, which does not currently cover the entire range of features available in C++. As such, it provides a sizeable yet limited subset of those features.

These bindings provide the following features:

- Random number generators
- Hashing and non-cryptographic checksums
- Message authentication codes
- Block, mode, and AEAD ciphers
- Password hashing and key derivation functions
- Hash- and time-based one-time passwords
- Post-quantum crypto schemes
- SRP6 password authenticated key exchange
- X.509 certificate systems (experimental)
- ZFEC forward error correction

> NOTE: This project includes efforts to expand this subset of features through a fork of the Botan C++ library - see [Enabling experimental support](#Enabling-experimental-support) for more details. This fork will be contributed back to the original library when it becomes sufficiently stable.

# Installation

This library requires Botan 3 to be installed in order to work. See [Building the Library](https://botan.randombit.net/handbook/building.html) in the handbook for more details.

## Unix package

Botan is available already in nearly all [packaging systems](https://repology.org/project/botan/versions) so you can probably install it through your distribution / system package manager.

```shell
sudo apt update
sudo apt install botan
```

## MacOS package

Botan is available through the [Homebrew](https://brew.sh/) package manager:

```shell
brew install botan
```

## From source

Botan can be built from source, for additional configuration options and customization.

Botan’s build configuration is controlled by `configure.py`, and requires Python 3.x or later.

This works for most systems:

```shell
./configure.py [--prefix=/some/directory]
make
make install
```

If you wish to run unit tests before installation, run `make check` before `make install`.

On platforms that do not understand the `#!` convention for beginning script files, or that have Python installed in an unusual spot, you might need to prefix the `configure.py` command with `python3` or `/path/to/python`:

```shell
python3 ./configure.py [arguments]
```

The `make install` target has a default directory in which it will install Botan (typically `/usr/local`). You can override this by using the `--prefix` argument to `configure.py`, like so:

```shell
./configure.py --prefix=/botan [arguments]
```

Some features rely on third party libraries which your system might not have or that you might not want the resulting binary to depend on. For instance to enable `sqlite3` support, add `--with-sqlite3` to your invocation of `configure.py`.

```shell
./configure.py --with-sqlite3 [arguments]
```

## Windows from source

Prebuilt botan is not available for windows, and it must be built from source. The process is similar to building from source in Unix or MacOS.

You need to have a copy of Python installed, and have both Python and your chosen compiler in your path. Open a command shell (or the SDK shell), and run:

```shell
python3 configure.py --cc=msvc --os=windows
nmake
nmake check
nmake install
```

Alternately, starting in Botan 3.2, there is additionally support for using the ninja build tool as an alternative to nmake:

```shell
python3 configure.py --cc=msvc --os=windows --build-tool=ninja
ninja
ninja check
ninja install
```

For MinGW, use:

```shell
python3 configure.py --cc=gcc --os=mingw
make
```

By default the install target will be `C:\botan`; you can modify this with the `--prefix` option.

When building your applications, all you have to do is tell the compiler to look for both include files and library files in C:\botan, and it will find both. Or you can move them to a place where they will be in the default compiler search paths (consult your documentation and/or local expert for details).

# License

This project is licensed under the [BSD 3-Clause License](https://github.com/apotheca/botan/blob/main/LICENSE) and is free, open-source software.
