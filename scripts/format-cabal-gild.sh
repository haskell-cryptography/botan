#!/bin/sh

export LC_ALL=C.UTF-8

# POSIX compliant method for 'pipefail':
warn=$(mktemp)

# Check cabal-gild version
cabal_gild_expect_version="1.5.0.1"
if [ "${cabal_gild}" = "" ]; then
    cabal_gild=$(which "cabal-gild")
    if [ "${cabal_gild}" = "" ]; then
        echo "Requires cabal-gild ${cabal_gild_expect_version}; no version found"
        exit 1
    fi
fi
cabal_gild_actual_version="$($cabal_gild --version | head -n 1 | cut -d' ' -f2)"
if [ ! "${cabal_gild_actual_version}" = "${cabal_gild_expect_version}" ]; then
    echo "Expected cabal-gild ${cabal_gild_expect_version}; version ${cabal_gild_actual_version} found"
    echo > "$warn"
fi

# Format Cabal files with cabal-gild
echo "Formatting Cabal source files with cabal-gild version ${cabal_gild_actual_version}"
# shellcheck disable=SC2016
if ! git ls-files --exclude-standard --no-deleted --deduplicate '*.cabal' | xargs -L 1 sh -c 'echo "$0" && cabal-gild -mcheck -i "$0" 2>/dev/null || (cabal-gild -i "$0" -o "$0" && exit 1)'; then
    exit 1
fi

# Check whether any warning was issued; on CI, warnings are errors
if [ "${CI}" = "true" ] && [ -s "$warn" ]; then
    rm "$warn"
    exit 1
else
    rm "$warn"
    exit 0
fi
