# botan-bindings

Raw bindings with buffers and pointers, an almost a 1:1 translation of the Botan C FFI into Haskell.

This library makes use of the `CApiFFI` language extension, and where necessary, the `*.hsc` file extension.

`ConstPtr` should be used where appropriate.

Almost all Botan C FFI functions return an error code, and must return any values indirectly. Exceptions are rare and should be noted.

> NOTE: At this time, `BotanErrorCode` (and other type aliases) are now the responsibility of `botan-low`

## Module style guide

Every module should have haddock documentation, and start with a full blurb:

```haskell
{-|
Module      : Botan.Bindings.Thing
Description : Short module description
Copyright   : (c) Leo D, 2023
License     : BSD-3-Clause
Maintainer  : leo@apotheca.io
Stability   : experimental
Portability : POSIX

A longer module description.
-}
```

The `CApiFFI` language extension is enabled on a per-file basis to keep it prominent:

```haskell
{-# LANGUAGE CApiFFI #-}
```

Module names are of the format `Botan.Bindings.*`:

```haskell
module Botan.Bindings.Thing where
```

This library has `NoImplicitPrelude` enabled, so imports start with the local custom `Prelude` which contains almost everything we need for a given bindings module. Dependencies on other local modules may follow.

```haskell
import Botan.Bindings.Prelude
import Botan.Bindings.Other
```

If the module uses an `*.hsc` file extension, it will be necessary to import the `botan.ffi.h` header manually:

```haskell
#include <botan/ffi.h>
```

> NOTE: `*.hs` files may instead rely on the `includes: botan/ffi.h` stanza in the project `*.cabal` file.

Most modules will focus on bindings to a specific object type, which is declared first, before any functions. Botan bindings represent objects using pointers to opaque structs.

```haskell
data {-# CTYPE "botan/ffi.h" "struct botan_thing_struct" #-} BotanThingStruct

newtype {-# CTYPE "botan/ffi.h" "botan_thing_t" #-} BotanThing
    = MkBotanThing { runBotanThing :: Ptr BotanRNGStruct }
        deriving newtype (Eq, Ord, Storable)
```

The `CApiFFI` allows us to directly link to the C types and use them in `capi` declarations, and the naming convention matches that of the original `Botan` C++ library: `BotanThingStruct` is the opaque struct being pointed to that we know nothing of the internals, and `BotanThing` is the newtype pointer wrapper.

The destructor is the first C function we. Note that it is imported as a `FinalizerPtr` with a `&` static / stable address.

```haskell
foreign import capi safe "botan/ffi.h &botan_thing_destroy"
    botan_thing_destroy
        :: FinalizerPtr BotanThingStruct
```

> NOTE: In the future, the destructor may be directly exposed:
>
> ```haskell
> foreign import capi safe "botan/ffi.h botan_rng_destroy"
>     botan_rng_destroy
>         :: BotanRNG -- ^ rng
>         -> IO CInt
> 
> foreign import capi safe "botan/ffi.h &botan_rng_destroy"
>     botan_rng_finalizer
>         :: FinalizerPtr BotanRNGStruct
> ```
>
> This may be necessary to allow for manual freeing without requiring use of `ForeignPtr`

After the destructor, then initializers are imported:

```haskell
foreign import capi safe "botan/ffi.h botan_thing_init"
    botan_thing_init
        :: Ptr BotanThing   -- ^ thing
        -> IO CInt          -- ^ error_code
```

The Botan C FFI initializes objects by taking an indirect pointer as an argument, and filling it. The lifecycle of this new object is then owned / managed by the calling environment.

> NOTE: Most initializers take this indirect pointer as the first argument, but not always. Getters that initialize an object may not ta.

After destructors and initializers, we may begin implementing object getters / setters / accessors:

```haskell
foreign import capi safe "botan/ffi.h botan_thing_get_bytes"
    botan_thing_get_bytes
        :: BotanThing   -- ^ thing
        -> Ptr Word8    -- ^ out
        -> CSize        -- ^ out_len
        -> IO CInt
```

At some points, we will need to define patterns for C constants. This will require use of the `*.hsc file extension`, and manually importing `botan/ffi.h`. Patterns are defined using variable types, should include either `Num` or `IsString` as constraints, and should be defined above the function that they are used with (or at the top beneath the related object if used in multiple functions)

```haskell
pattern BOTAN_THING_TYPE_SYSTEM
    ,   BOTAN_THING_TYPE_USER
    ::  (Eq a, IsString a) => a
pattern BOTAN_THING_TYPE_SYSTEM            = "this"
pattern BOTAN_THING_TYPE_USER              = "that"

pattern BOTAN_FFI_THING_NONE
    ,   BOTAN_FFI_THING_FOO
    ,   BOTAN_FFI_THING_BAR
    ::  (Eq a, Num a) => a
pattern BOTAN_FFI_THING_NONE    = 0                             -- Not a real flag
pattern BOTAN_FFI_THING_FOO     = #const BOTAN_FFI_THING_FOO
pattern BOTAN_FFI_THING_BAR     = #const BOTAN_FFI_THING_BAR

foreign import capi safe "botan/ffi.h botan_thing_init_flags"
    botan_thing_init_flags
        :: Ptr BotanThing   -- ^ thing
        -> ConstPtr CChar   -- ^ thing_type
        -> Word32           -- ^ flags
        -> IO CInt          -- ^ error_code
```

> NOTE: Constants for `0` values are often omitted in Botan; we have opted to define patterns for `0` values for completeness.

> NOTE: Patterns are being used for string constants, in lieu of direct constant pointers a la `MagicHash`:
>   
>   ```haskell
>   BOTAN_FOO :: ConstPtr CChar
>   BOTAN_FOO = ConstPtr (Ptr "Foo\0"#)
>   ```
>
> A future improvement would be to use both, though care should be taken to ensure
> that a bunch of extra marshalling does not occur:
>
>   ```haskell
>   -- Bindings
>   BOTAN_FOO :: ConstPtr CChar
>   BOTAN_FOO = ConstPtr (Ptr "Foo\0"#)
>
>   -- Low
>   pattern Foo
>       ::  (Eq a, IsString a) => a
>   pattern Foo = fromString (unsafeDupablePerformIO (peekCString BOTAN_FOO))
>   {-# NOINLINE Foo #-}
>   -- Or (dropping the polymorphic IsString for ByteString and unsafePackAddress)
>   pattern Foo :: ByteString
>   pattern Foo = unsafeDupablePerformIO (unsafePackAddress BOTAN_FOO)
>   {-# NOINLINE Foo #-}
>
>   -- High
>   data Foo
>       = Foo
>   instance IsString Foo where
>       fromString (Low.Foo)
>   ```
>