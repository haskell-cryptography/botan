# Contributing

There are several ways to contribute to the development of this project, and we
are happy to receive any bug reports, fixes, documentation, and other
improvements to this project.

Tickets can be created in the GitHub repository:
https://github.com/haskell-cryptography/botan/issues/new

Want to contribute by developing code? Follow the next few sections to get
yourself started. If you have questions, feel free to contact any of the code
owners.

## Installation requirements

See the section of the same name in the [README](README.md#Installation).

## Configuration

See the section of the same name in the [README](README.md#Configuration).

## Building

The project is built using `ghc` and `cabal`.

```
cabal update
cabal build all
```

## Testing

Tests are run using `cabal`.

```
cabal build all
cabal test all
```

## Code style

There is no strict code style, but try to keep the code style consistent
throughout the repository and favour readability. Code should be well-documented
and well-tested.

## Formatting

We use `stylish-haskell` to format Haskell files, and we use `cabal-gild` to
format `*.cabal` files. We also use `cabal check` to sanity check our cabal
files. Trailing whitespace should be removed and we check this using
`fix-whitespace`. See the helpful scripts in the [scripts folder](./scripts/).

To perform a pre-commit code formatting pass, run all the following:

```console
./scripts/format-cabal-gild.sh
./scripts/format-fix-whitespace.sh
./scripts/format-stylish-haskell
./scripts/lint-cabal
./scripts/test-cabal-docspec
```

## Pull requests

The following are requirements for merging a PR into `main`:
* Each commit should be small and should preferably address one thing. Commit
  messages should be useful.
* Document and test your changes.
* The PR should have a useful description, and it should link issues that it
  resolves (if any).
* Changes introduced by the PR should be recorded in the relevant changelog
  files. Ideally, each changelog entry should link to the PR that introduced the
  changes, and it should have a `BREAKING`, `NON-BREAKING`, or `PATCH` level.
* PRs should not bundle many unrelated changes.
* PRs should be approved by at least 1 code owner.
* The PR should pass all CI checks.

## Releases

Releases follow the [Haskell Package Versioning
Policy](https://pvp.haskell.org/). We use version numbers consisting of 4 parts,
like `A.B.C.D`.
* `A.B` is the *major* version number. A bump indicates a breaking change.
* `C` is the *minor* version number. A bump indicates a non-breaking change.
* `D` is the *patch* version number. A bump indicates a small, non-breaking
  patch.

To publish a release for a package, follow the steps below:

* Changelog checks (`CHANGELOG.md`):
  * Check that all user-facing changes have been recorded.
  * Check that each changelog entry has a `BREAKING`, `NON-BREAKING`, or `PATCH`
    level.
  * Check that each changelog entry links to a PR, if applicable.
  * Add or update the changelog's section header with the package version that
    is going to be released, and the date of the release. The version should be
    picked based on our package versioning policy.

* Cabal file checks (`*.cabal`):
  * Update the `version` field.
  * Update the `tag` field of the `source-repository this` stanza.

* Cabal project file checks (`cabal.project*`):
  * Update the `index-state` in the `cabal.project.release` file to the current
    date-time, or the closest valid date-time to the current date-time, so that
    CI builds and tests the libraries with the newest versions of dependencies.
