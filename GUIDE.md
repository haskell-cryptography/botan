# Guide

## Wrapping botan initializers and destructors

`Botan` uses a double-pointer method of initializing objects, as the return value is already used for a success / error code.

Given the following `C++` declarations:

```cpp
typedef struct botan_foo_struct* botan_foo_t;                               // The opaque type

int botan_foo_init(botan_foo_t* foo, const char* foo_name, uint32_t flags); // The initializer
int botan_foo_destroy(botan_foo_t foo);                                     // The destructor

int botan_foo_do_something(botan_foo_t foo);                                // An action
```

We can declare the following types and foreign imports to match:

```haskell
data FooStruct              -- botan_foo_struct*
type FooPtr = Ptr FooStruct -- botan_foo_t

foreign import ccall unsafe botan_foo_init :: Ptr FooObj -> IO BotanErrorCode
foreign import ccall unsafe "&botan_foo_destroy" botan_foo_destroy :: FinalizerPtr FooStruct

foreign import ccall unsafe botan_foo_do_something :: FooPtr -> IO BotanErrorCode
```

> NOTE: I have opted to adopt [glguy's terminology](https://discourse.haskell.org/t/questions-about-ffi-foreignptr-and-opaque-types/6914/12?u=apothecalabs). Note that `FooPtr` represents `botan_foo_t`, which *is* `botan_foo_struct*`, but is confusing when foreign calls only mention `botan_foo_t`. I am considering changing `type FooPtr = Ptr FooStruct` to `FooInst` or `FooRef` or `FooObj` to reflect this. For now, this terminology is fine.

This allows us to define the following type and initializer, which will create objects that are safely destroyed when garbage-collected:

```haskell
newtype Foo = Foo { getFooForeignPtr :: ForeignPtr FooStruct }  -- Haskell newtype wrapper

withFooPtr :: Foo -> (FooPtr -> IO a) -> IO a                   -- Convenience function
withFooPtr = withForeignPtr . getFooForeignPtr

fooInit :: IO Foo                                               -- Initializer AND destructor
fooInit = do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_foo_init outPtr
        out <- peek outPtr
        fooForeignPtr <- newForeignPtr botan_foo_destroy out
        return $ Foo fooForeignPtr

fooDoSomething :: Foo -> IO ()                                  -- An action
fooDoSomething foo = withFooPtr foo $ \ fooPtr -> do
    throwBotanIfNegative_ $ botan_foo_do_something fooPtr
```

This pattern should be followed, unless we come across an construct that is initialized in a different manner. If any portion of it is found unsafe, the fix may then be readily applied to all constructs.

# Temporary objects with guaranteed immediate cleanup

The above pattern creates objects that will stay alive as long as they are referenced, and will eventually destroy themselves safely when they are not. However, they do not guarantee prompt cleanup.

For temporary objects with guaranteed immediate cleanup, we may simply wrap them as such.

```haskell
-- TODO: Generalize / reuse pattern
withCipher :: CipherName -> CipherInitFlags -> (Cipher -> IO a) -> IO a
withCipher name flags act = do
    cipher <- cipherInit name flags
    act cipher <* cipherDestroy cipher
-- or withCipher = mkWithTemp2 cipherInit cipherDestroy

cipherDestroy :: Cipher -> IO ()
cipherDestroy cipher = finalizeForeignPtr (getCipherForeignPtr cipher)
```
