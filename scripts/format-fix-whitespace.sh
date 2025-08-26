#!/bin/sh

export LC_ALL=C.UTF-8

# POSIX compliant method for 'pipefail':
warn=$(mktemp)

# Remove temporary file and exit 1
fail () {
  rm "$warn"
  exit 1
}

# Remove temporary file and exit 0
success () {
  rm "$warn"
  exit 0
}

# Check fix-whitespace version
fix_whitespace_expect_version="0.1"
if [ "${fix_whitespace}" = "" ]; then
    fix_whitespace=$(which "fix-whitespace")
    if [ "${fix_whitespace}" = "" ]; then
        echo "Requires fix-whitespace ${fix_whitespace_expect_version}; no version found"
        fail
    fi
fi

fix_whitespace_actual_version="$($fix_whitespace --version | head -n 1 | cut -d' ' -f2)"
if [ ! "${fix_whitespace_actual_version}" = "${fix_whitespace_expect_version}" ]; then
    echo "Expected fix-whitespace ${fix_whitespace_expect_version}; version ${fix_whitespace_actual_version} found"
    echo > "$warn"
fi

# Format Haskell files with fix-whitespace
echo "Formatting Haskell source files with fix-whitespace version ${fix_whitespace_actual_version}..."
if [ "${CHECK}" = "true" ]; then
  fix-whitespace --check --verbose -- **/*.hs || fail
else
  fix-whitespace -- **/*.hs
fi

# Check whether any warning was issued; on CI, warnings are errors
if [ "${CI}" = "true" ] && [ -s "$warn" ]; then
    fail
else
    success
fi
