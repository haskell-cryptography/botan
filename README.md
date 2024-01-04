# Welcome to botan

<!-- TODO: Badges: hackage)  -->

![CI](https://github.com/apotheca/botan/actions/workflows/CI.yml/badge.svg)

`botan` is a set of Haskell bindings for the [Botan](https://botan.randombit.net/) cryptography library.

> Botan's goal is to be the best option for cryptography in C++ by offering the tools necessary to implement a range of practical systems, such as TLS protocol, X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support, password hashing, and post quantum crypto schemes.

<details open>

<summary>Navigation</summary>

- [Welcome to botan](#Welcome-to-botan)
- [Introduction](#Introduction)
- [Installation](#Installation)
    - [Unix package](#Unix-package)
    - [MacOS package](#MacOS-package)
    - [From source](#From-source)
    - [Windows from source](#Windows-from-source)
- [Usage](#Usage)
- [Tutorials](#Tutorials)
- [Enabling experimental support](#Enabling-experimental-support)
- [Resources](#Resources)
- [License](#License)
- [Contributing](#Contributing)
    - [Reporting Bugs](#Reporting-Bugs)
    - [Assist in Development](#Assist-in-Development)
- [Acknowledgements](#Acknowledgements)
- [Donations](#Donations)

</details>

# Introduction

This project has the goal of providing a set of safe and performant bindings to the Botan C++ cryptography library via its C FFI (Foreign Function Interface). It does this by providing 3 libraries at varying levels of complexity and abstraction:

- `botan-bindings` contains raw bindings with buffers and pointers, and is otherwise an almost a 1:1 translation of the C FFI into Haskell
- `botan-low` contains low-level bindings with imperative IO and exceptions, and safely wraps buffers and pointers into bytestrings and autoreleased objects
- `botan` contains high-level bindings with strong types and idiomatic Haskell, and provides algebraic data types and convenience functions

We suggest using the highest-level library possible, unless you wish to build your own abstraction over the Botan C++ library. The highest-level stable library is currently: `botan-low`

<details>

<summary>Features</summary>

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
    
</details>

# Installation

This library requires Botan 3 to be installed in order to work. See [Building the Library](https://botan.randombit.net/handbook/building.html) in the handbook for more details.

## Unix package

Botan is available already in nearly all [packaging systems](https://repology.org/project/botan/versions) so you can probably install it through your distribution / system package manager.

<details><summary>Arch</summary>

> Untested.

```shell
pacman -S botan
# or maybe
pacman -S botan3
```
    
</details>

<details><summary>Debian</summary>

> Untested.

```shell
apt-get update
apt-get install botan
```

</details>

<details><summary>Red Hat</summary>

> Untested.

```shell
yum update
yum install botan
```

</details>

<details><summary>Ubuntu</summary>

> Untested.

```shell
sudo apt update
sudo apt install botan
```

</details>

## MacOS package

Botan is available through the [Homebrew](https://brew.sh/) package manager:

<details><summary>Homebrew</summary>

```shell
brew install botan
```

</details>

## From source

Botan can be built from source, for additional configuration options and customization.

<details><summary>Build from source</summary>

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

</details>

## Windows from source

Prebuilt botan is not available for windows, and it must be built from source. The process is similar to building from source in Unix or MacOS.

<details><summary>Windows from source</summary>

> Untested.

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

</details>

# Usage

You will need to add `botan` as a package dependency in order to use it.

<details><summary>Cabal</summary>

This package is not yet available on hackage, so you'll have to add the repo to your `cabal.project` file using a `source-repository-package` stanza:

```
source-repository-package
    type: git
    location: git://github.com/apotheca/botan.git
    tag: [commit-hash]
```

Then, add it to your `[project].cabal` under the `build-depends` stanza:

```
build-depends:
    botan-low
```

If you installed botan in a non-standard location, you may need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags:

```shell
cabal repl TARGET --extra-include-dirs /botan/include --extra-lib-dirs /botan/lib
```

You can add these flags permanently to your `cabal.project` or `cabal.project.local` file:

```
extra-include-dirs:
- /botan/include
extra-lib-dirs:
- /botan/lib
```

</details>

<details><summary>Stack</summary>

> Untested.

This package is not yet available on stackage, so you'll have to add the repo to your `stack.yaml` file under the `extra-deps` stanza:

```
extra-deps:
- github: apotheca/botan
  commit: [commit-hash]
```

Then, add it to your `package.yaml` file under the `dependencies` stanza:

```
dependencies:
- botan-low
```

If you installed botan in a non-standard location, you may need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags:

```shell
stack repl TARGET --extra-include-dirs /botan/include --extra-lib-dirs /botan/lib
```

You can add these flags permanently to your `stack.yaml` or global `config.yaml` file:

```
extra-include-dirs:
- /botan/include
extra-lib-dirs:
- /botan/lib
```

</details>

After you have added `botan` as a dependency, you can begin importing modules and using them in your code.

```haskell
import Botan.Low.Hash

main = do
    hash <- hashInit "SHA-256"
    digest <- hashUpdateFinalize hash "Fee fi fo fum!"
    print digest
```

# Tutorials

There are no tutorials available at this time. For the moment, the unit tests are your best bet for an example of working code.

# Enabling experimental support

Some features rely on an experimental fork of the Botan C++ library, which will be contributed back upstream to Botan C++ when it is stable.

<details><summary>Build with experimental features</summary>

1.  Clone the experimental [fork](https://github.com/apotheca/botan-upstream)

```shell
git clone https://github.com/apotheca/botan-upstream $BOTAN_CPP
```

2.  Build and install the experimental fork as [from source](#From-source). You may wish to install to a non-standard location using `--prefix` during configuration, to avoid overwriting any pre-existing install.

```shell
cd $BOTAN_CPP
./configure.py --prefix=$BOTAN_OUT
make
make install
```

3.  Use the `XFFI` flag to enable the experimental FFI modules. If you installed the experimental fork to a non-standard location, you may also need to specify where using `--extra-include-dirs` and `--extra-lib-dirs` flags.

```shell
cd $BOTAN_HASKELL
cabal build TARGET -fXFFI --extra-include-dirs $BOTAN_OUT/include --extra-lib-dirs $BOTAN_OUT/lib
# or
stack build TARGET --flag XFFI --extra-include-dirs $BOTAN_OUT/include --extra-lib-dirs $BOTAN_OUT/lib
```

To check that you've done everything correctly, you can run the following:

```
import Botan.Bindings.Version 
import Foreign.C.String
import Prelude
botan_version_string >>= peekCString
```

The version will say `unreleased` if it is properly pointing to our built Botan.

</details>

# Resources

There are several resources for this project that might be helpful:

- **[Devlog](https://discourse.haskell.org/t/botan-bindings-devlog/6855?u=apothecalabs)** for project status and updates.
- **[GitHub](https://github.com/apotheca/botan)** for Haskell source code, issues, and pull requests.
- **[Upstream C++ Github](https://github.com/apotheca/botan-upstream)** experimental fork of Botan C++
- **[Proposal](https://github.com/haskellfoundation/tech-proposals/pull/57)** Haskell Foundation funding proposal submission thread.

As well, there are resources for the original Botan C++ library:

- **[Botan](https://botan.randombit.net/)** Crypto and TLS for Modern C++
- **[Botan C++ Github](https://github.com/randombit/botan/)** for original Botan C++ source code, issues, and pull requests.
- **[Botan Handbook](https://botan.randombit.net/handbook/)** for documentation on the original library
- **[Botan FFI](https://botan.randombit.net/handbook/api_ref/ffi.html)** for documentation on the Botan C FFI
- **[Issue](https://github.com/randombit/botan/issues/3627)** FFI APIs for X.509 are insufficient

# License

This project is licensed under the [BSD 3-Clause License](https://github.com/apotheca/botan/blob/main/LICENSE) and is free, open-source software.

# Contributing

There are several ways to contribute to the development of this project, and we are happy to receive any bug reports, fixes, documentation, and any other improvements to this project. 

## Reporting Bugs

See a bug? 

1. Describe the issue

2. Write down the steps required to reproduce the issue

3. Report the issue by [opening a ticket!](https://github.com/apotheca/botan/issues/new)

## Assist in Development

Want to help?

1. Fork or clone the repo, and create a new branch:

```shell
git checkout https://github.com/apotheca/botan -b some_new_branch
```

2. Make your changes, and test them

3. Submit a pull request with a comprehensive description of the changes

# Acknowledgements

This project has received funding from the Haskell Foundation, with support from Mercury.

<!-- TODO: Acknowlege code contributors -->
<!-- TODO: Adding a CONTRIBUTING file: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors -->

# Donations

This is free, open-source software. If you'd like to support the continued development of this project and future projects like this, or just to say thanks, you can donate directly using the following link(s):

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V1S5JTG)
