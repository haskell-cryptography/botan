# Hashing

## Hashing at-a-glance

The easiest way to hash is to use a fixed hash algorithm directly. `sha3_512` is the suggested hash algorithm, unless you specifically need another, different algorithm.

```haskell
import Botan.Hash.SHA3
sha3_512 "Fee fi fo fum!"
-- 03a240a26674994a...
```

Sometimes a hash algorithm has variants, which is reflected in the type system. You can see that `sha3` has several variants.

```haskell
:t sha3_512
-- sha3_512 :: ByteString -> SHA3_512Digest
:i SHA3_512Digest
-- type SHA3_512Digest = SHA3Digest 512
:i SHA3Digest
-- type SHA3Digest n = Digest (SHA3 n)
:t sha3
-- sha3 :: SHA3Size n => ByteString -> SHA3Digest n
```

If an algorithm has variants, you may use the `sha3` family hash algorithm and select the variant with type applications:

```haskell
sha3 @512 "Fee fi fo fum!"
-- 03a240a26674994a...
sha3 @256 "Fee fi fo fum!"
-- d6b42db6a2360555...
```

So does explicit typing:

```haskell
sha3 "Fee fi fo fum!" :: SHA3Digest 512
-- 03a240a26674994a...
```

These functions are implemented via a more generic, classy `Hash` interface which uses the `Digest` data family to ensure that different algorithms and variants have different types while still being inferred properly.

```haskell
import Botan.Hash.Class
:i Hash
-- class Hash h where
--   hash :: ByteString -> Digest h
:i Digest
-- data family Digest h
```

This interface affords a great deal of flexibility and specificity. The following lines are all equivalent:

```haskell
sha3_512 "Fee fi fo fum!"
sha3 @512 "Fee fi fo fum!"
sha3 "Fee fi fo fum!" :: SHA3_512Digest
sha3 "Fee fi fo fum!" :: SHA3Digest 512
sha3 "Fee fi fo fum!" :: Digest (SHA3 512)
hash @(SHA3 512) "Fee fi fo fum!"
hash "Fee fi fo fum!" :: SHA3_512Digest
hash "Fee fi fo fum!" :: SHA3Digest 512
hash "Fee fi fo fum!" :: Digest (SHA3 512)
-- 03a240a26674994a...
```

> NOTE: The classy interface will eventually be split off into its own `cryptography` library


## What is hashing?

https://en.wikipedia.org/wiki/Checksum
https://en.wikipedia.org/wiki/Hash_function
https://en.wikipedia.org/wiki/Cryptographic_hash_function

Hashing is the process of taking a plaintext input of arbitrary length and producing a digest output of fixed size, using a one-way function. This means that any data, no matter how long, can be turned into a much shorter piece of data based on its content.

You can imagine each hash algorithm (such as MD5 or SHA2) as their own little black box - you insert a string like "hello" into the algorithm, and out comes a bunch of random letters and numbers, and, depending on the algorithm, it should have several properties.

1) Each time that enter "hello" into that algorithm, you will get the same hash, no matter how many times you do it - this is the first important property: it is deterministic.

2) The second important property is that while you can easily go from "hello" to the digest, it is nearly impossible to go from the digest back to "hello" - the hash function is one-way.

3) Next, a small change in input should lead to a large change in output - this means that the output digest should not be easily predictable from the input plaintext without actually hashing it. This third propery is called the "avalance effect".

4) Finally: Uniform distribution / collision resistance / uniqueness - like a fingerprint

5) Cryptographic hashes have the much more stringent requirement that given a digest, you cannot construct an input that produces this digest.

> Although hashing and checksums are similar in that they both create a value based on the contents of a file, hashing is not the same as creating a checksum. A checksum is intended to verify (check) the integrity of data and identify data-transmission errors, while a hash is designed to create a unique digital fingerprint of the data.

## Use cases

- Integrity
- Identification
- Password storage

# Types of hashes


- Checksums
    - Checks for integrity, but does not guarantee unique identification
    - Deterministic, one-way

- (Table) hash functions

- Cryptographically-secure hashes
    - It should be effectively impossible for a user to generate
