# botan

Low-level Haskell bindings for the Botan cryptography library

These are bindings to Botan's [low-level C89 FFI module](https://botan.randombit.net/handbook/api_ref/ffi.html), which should pair excellently with Haskell's own `CApiFFI` - see [here](https://downloads.haskell.org/ghc/9.0.1/docs/html/users_guide/exts/ffi.html?highlight=capiffi#extension-CApiFFI) for more details.

- [Devlog](https://discourse.haskell.org/t/botan-bindings-devlog/6855?u=apothecalabs)
- [Github](https://github.com/apotheca/botan) - see a bug? [Open a ticket!](https://github.com/apotheca/botan/issues/new)

## Installing Botan

Botan 3 must be installed for this library to work.

> Botan is available already in nearly all [packaging systems](https://repology.org/project/botan/versions) so you probably only need to build from source if you need unusual options or are building for an old system which has out of date packages.
>
> - https://botan.randombit.net/handbook/building.html

### Windows

- TODO

### MacOS

Use homebrew: `brew install botan`

### Unix

See your appropriate package manager.

### Experimental support

Some features rely on experimental FFI code that will be contributed upstream to C++ Botan. To enable it:

1) Clone the experimental [botan fork](https://github.com/apotheca/botan-upstream)

2) [Build and install](https://github.com/randombit/botan/blob/master/doc/building.rst) from source

3) Set `extra-lib-dirs` and `extra-include-dirs`, either as a CLI parameter, or in the `*.cabal` or `cabal.project` file.

4) Use the `XFFI` flag to enable the experimental FFI modules.

So it'll look something like this:

```sh
# Clone
git clone https://github.com/apotheca/botan-upstream $BOTAN_CPP

# Build and install C++
cd $BOTAN_CPP
./configure.py --prefix=$BOTAN_OUT
make
make install

# Play around with it
cd $BOTAN_HASKELL
cabal repl botan-low -fXFFI --extra-lib-dirs=$BOTAN_OUT/lib --extra-include-dirs=$BOTAN_OUT/include
```

To check that you've done everything correctly, you can run the following:

```
import Botan.Bindings.Version 
import Foreign.C.String
import Prelude
botan_version_string >>= peekCString
```

The version will say `unreleased` if it is properly pointing to our built Botan.

# TODO LIST

- Documentation / fix existing documentation
- Consistent / better nomenclature - get rid of explicit 'botan' except for a few explicit things
- Use [the actual headers](https://github.com/randombit/botan/blob/release-3/src/lib/ffi/ffi.h) because [the documentation is sometimes wrong / missing](https://botan.randombit.net/handbook/api_ref/ffi.html).
- Use `MonadIO m => m a` instead of `IO a` wherever possible.
- Use `Text` and ~~`ByteArray`~~ `ByteString`.
- `{-# INLINE #-}` and `{-# NOINLINE #-}`
- `{-# UNPACK #-}`
- `HasCallStack`
- https://downloads.haskell.org/ghc/9.0.1/docs/html/users_guide/exts/ffi.html?highlight=capiffi#memory-allocations
- Complete documentation
- `Botan.Prelude` and `NoImplicitPrelude`
- Fix using `Ptr x` for everything from `const uint8_t *in` to `uint8_t out[]`
    - See if there are specific types for this.
- `ScrubbedBytes` using `botan_scrub_mem`
- Discuss: Patterns vs constants - 
    - `pattern BOTAN_FFI_SUCCESS = 0 :: BotanErrorCode` vs `data BotanErrorCode = Success | ...`
    - Possibly use `*.hsc` and a `Botan.Constants` file.
- Discuss: Initializing foreign pointers
    - Old way: `opaqueForeignPtr <- alloca $ newForeignPtr botan_hash_destroy`
        - likely was causing exceptions
        - I used alloc when replacing ByteArray.alloc, but that actually uses `Bytestring.mallocByteString`
    - New way: `opaqueForeignPtr <- malloc >>= newForeignPtr botan_hash_destroy`
        - Switched to `malloc `, now mostly just looking for sanity check / confirmation that this was the correct thing to do.
    - STALE - SEE Botan.Make
- Consistency (in particular, `Random` is bad with `randomFoo :: Int -> foo -> result` vs `foo -> Int -> result`)
- Replace some `Ptr CChar` with `CString` as appropriate (when null-terminated).
- Reusing data types / constants between modules: eg, some `MacType` expect a `HashType` a la `HMAC SHA256` / `HMAC(SHA-256)`
- Conditional compilation / support checks for algorithms.
- Discuss ffi `unsafe` and destructors
    - I do not remember why I did not mark them as `unsafe` in the first place
    - After reading this, I am inclined to believe that it is fine for them to be `unsafe`.
        - https://frasertweedale.github.io/blog-fp/posts/2022-09-23-ffi-safety-and-gc.html
- Vanish `Text` and then only reintroduce after safely wrapping types (Text is just in the way right now)
- Examine copy-safety regarding `withBytes` and `ByteString.unsafeUseAs...`
    - Use the faster unsafe variants as applicable.
- The terminology of `ByteString.useAsCString` vs `CString.withCString`
    - We will use `asCString` and `asBytes` to avoid colliding nomenclature
    - Having implemented the `as-` helpers, they probably do some unnecessary copying
        - We've likey overreached on the safety vs speed aspect, re: unnecessary copying
- Some `CString` trailing `NUL` handling, eg: `macName m` yields `"HMAC(SHA-384)\NUL"`
- Use `CString` / `Text` for null-terminated strings, bytestrings otherwise.
- `BlockCipher` encrypt / decrypt should throw an error upon improper length
    - Padding on encrypt is a stopgap
    - Requires remembering length to lop off padding on decrypt
- Turn this TODO list into github tickets
    - Also any specific issues mentioned by contributors, readers, and testers, such as [this](https://discourse.haskell.org/t/botan-bindings-devlog/6855/30?u=apothecalabs).
- Better `CSize` vs `Int` handling
    - Expose `Int` to haskell, `CSize` to c, use `fromIntegral` in the `mk-` functions
- Organization
    - Botan.Bindings.*
        - Lowest-level 1:1 bindings
        - Matches Botan FFI as closely as possible
        - Not wrapped with unsafePerformIO
    - Botan.Low.*
        - Low-level idiomatic bindings
        - Hides initialization / copying to preserve referential transparency
        - Wrap relevant things in unsafePerformIO
    - Botan.* - exports or re-exports highest-level bindings available (eg, Botan.Fundep or Botan.Tyfam)
- A [bcrypt-like](https://en.wikipedia.org/wiki/Bcrypt#Description) generalized format for hashes / digest / cryptexts
- Use `mask / bracket` in the right places (like `freeViewBytesLenFunPtr / freeViewCStringFunPtr`)
- Correct capitalization of algorithm names
- NOTE: Have discovered in `botan_privkey_export`
    -   -- * On input *out_len is number of bytes in out[]
        -- * On output *out_len is number of bytes written (or required)
        -- * If out is not big enough no output is written, *out_len is set and 1 is returned
        - 1 is INVALID_VERIFIER
    - Some other (including already-implemented) functions probably follow this rule
    - We have not encountered issues due to ignoring the outlen and calculating sizes explicitly so far
    - SEE: ignoring szPtr
- Conformance layers for libraries like `libsodium` and [raaz](https://hackage.haskell.org/package/raaz)
- Take advantage of size pointers properly, see docs:
    -   "If exporting a value (a string or a blob) the function takes a pointer to the output array and a read/write pointer to the length. If the length is insufficient, an error is returned. So passing nullptr/0 allows querying the final value."
    -   "... the application typically passes both an output buffer and a pointer to a length field. On entry, the length field should be set to the number of bytes available in the output buffer. If there is sufficient room, the output is written to the buffer, the actual number of bytes written is returned in the length field, and the function returns 0 (success). Otherwise, the number of bytes required is placed in the length parameter, and then BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE is returned."
    - Use `allocBytesQuerying` (or whatever it turns into)
    - Some functions differ slightly or greatly - see `botan_privkey_export`
- `withFoo` clashes with `withFooPtr` - the former signifies a temporary object, the latter as casting to its ptr
- Convenience functions for deprecated-because-specific-subset
- Prettier READMEs
    - https://readme.so/editor
    - https://shields.io/badges
- Differentiate throwBotanCatchingSuccess and throwBotanCatchingInvalidIdentifier
    - throwBotanCatchingSuccess should be (0 = True, _ = False)
    - throwBotanCatchingInvalidIdentifier should be (0 = True, 1 = False, _ = Error)
- Consideration of strict and lazy bytestring in APIs
- Swap module nomenclature `Botan.Low.Cipher`, `Botan.Bindings.Cipher` with `Botan.Cipher.Low`, `Botan.Cipher.Bindings`
- `Inline` and `NoInline` as appropriate
- Strictify / force-evaluate results as necesary
    - Example, bcryptGenerateIO (is bad function, needs cleanup anyway): 
        - return $! ByteString.copy $! ByteString.take (fromIntegral sz) out
- Use doxygen (https://botan.randombit.net/doxygen/) to dig into differentiating algo types
- A bcrypt-like format for marking cryptexts
    - `$h[hid]$...` for hashes, etc
- Found the best / easiest docs
    - https://botan.randombit.net/doxygen/ffi_8h.html
    - Make a `Botan.Bindings.Macro/Constants` module for constants
    - Cover all functions
- Make sure all `unsafeDupablePerformIO` is used properly
    - "It may even happen that one of the duplicated IO actions is only run partially, and then interrupted in the middle without an exception being raised. Therefore, functions like bracket cannot be used safely within unsafeDupablePerformIO."
- Rabin-Karp fingerprints, rolling hashes
- Backwards-compatibility for older compilers 
- Botan MAC FFI is missing query for nonce sizes.
- Getting some occasional InsufficientBufferSpaceException in mpToStrIO
- Testing is made difficult by the number of algorithms, and their particular quirks.
    - Testing each function separately will result in tens of thousands of tests, generating
      more noise than signal.

# Helpful References

- https://botan.randombit.net/handbook/api_ref/ffi.html#versioning

- NOTE: Regarding unsafeDupablePerormIO: https://botan.randombit.net/handbook/api_ref/footguns.html#multithreaded-access

- Botan test vectors: https://github.com/randombit/botan/tree/master/src/tests/data
    - We can parse these

# Issues

## CAPI vs CCALL

We should be trying to use `capi` instead of `ccall`, a la: 

https://wiki.haskell.org/Foreign_Function_Interface

However, this causes issues, eg:

```
error: call to undeclared function 'botan_version_string'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
--  warning: incompatible integer to pointer conversion returning 'int' from a function with result type 'char *' [-Wint-conversion]
```

Complicating things is (from the Foreign.ForeignPtr docs):

```
type FinalizerPtr a = FunPtr (Ptr a -> IO ())
-- ^ Note that the foreign function must use the ccall calling convention.
```

It is therefore possible that we must use `ccall`. Further investigation is needed.



