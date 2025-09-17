#!/bin/sh

# Check for cabal
cabal="$(which cabal)"
if [ "${cabal}" = "" ]; then
    echo "Requires cabal; no version found"
    exit 1
fi

# Extract the prologue from the package description
# shellcheck disable=SC1007
SCRIPTS_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)"
cabal build --only-dependencies "${SCRIPTS_DIR}/generate-haddock-prologue.hs" || exit 1
"${SCRIPTS_DIR}/generate-haddock-prologue.hs" || exit 1

# Build haddock-project documentation
cabal haddock-project --prologue="prologue.haddock"

# Clean up prologue
if [ -f "./prologue.haddock" ]; then
    rm ./prologue.haddock
fi
