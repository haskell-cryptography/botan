# Boolean Typeclass Proposal

# What

I believe that we should split off a `Boolean` typeclass from `Bits`, and potentially rework the remaining functions in `Bits` and `FiniteBits` to reflect their nature as Fields and FiniteFields of Booleans (and predicates mapped over fields and finitefields).


```haskell
-- "A Boolean algebra is a set A, equipped with two binary operations ∧ (called "meet" or "and"), ∨ (called "join" or "or"), a unary operation ¬ (called "complement" or "not") and two elements 0 and 1 in A (called "bottom" and "top", or "least" and "greatest" element)" - Wiki
-- NOTE: Bounded may be too strong here, we need a top and bottom / maxbound and minbound
--  but it is weaker - we simply need the top and bottom to be 'filled' with `True` and `False`
--  and there is no requirement of `Ord` (or `PartialOrd`) but `Bounded` does not imply `Ord` anyway.
-- Relevant: https://en.wikipedia.org/wiki/Field_(mathematics)#A_field_with_four_elements
--           https://en.wikipedia.org/wiki/Finite_field#Field_with_four_elements
-- We could drop the Bounded in favor of supplying a false and true element
class (Equality a, Bounded a) => Boolean a where
    complement :: a -> a -- aka not
    and :: a -> a -> a
    or :: a -> a -> a
    xor :: a -> a -> a
    -- Per bounded note, if we get rid of Bounded
    false :: a -- zeroBits
    true :: a  -- complement zeroBits
```

- could even ditch the `complement` nomenclature and move `not` to the `Boolean` class, re-exporting a Bool-monomorphic `not` at the appropriate places.

Remaining functions are:

- `shift`, `rotate`
    - related to fields / finite fields
    - can be affected by signedness, but sign extension can be constructed or ignored
- `zeroBits`
    - can be considered replaced by `false`,
    - related to fields / finite fields kinda?
- `bit`, 
    - related to fields / finite fields and indexing / representable
- `setBit`, `clearBit`, `complementBit`
    - derived from `bit` for convenience / efficiency
- `testBit`
    - derived from `zeroBits` and `bit` for convenience / efficiency
- `finiteBitSize` / `bitSizeMaybe`
    - related to finiteness / size of field
- `isSigned`
    - related to binary logic, sign extension
- `popCount`, `countLeadingZeroes`, `countTrailingZeroes`
    - Sum / fold over fields?

We can sort of classify these remaining functions into logic being related to boolean fields and finite fields, plus logic specifically related to unsigned and signed binary representations, and finally a few functions that can be derived in terms of the others (eg, `setBit`, `clearBit`, `complementBit`, `testBit`, and technically `xor` is one as well)

# Why

- `Bits` and `FiniteBits` are large, unwieldy classes
    - Second only to `Num` in complexity
    - Deprecated `bitSize` is still around
- Lots of goodies we can extract out of a `Boolean` class
    - Relevance to predicates over fields and finite fields in general
    - Fields as functors, law preservation between functors and fields
        - Eg, `and xs ys == fmap and xs <*> ys`
        - At some point `Representable` gets involved, yet another deep connection
    - `false` and `true` functions which are equivalent to `fmap (const False)` / `fmap (const True)` for fields
- Splitting out Boolean from Bits allows us to also distinguish the properties that come from fields and finite fields
    - Eg, shift, rotate, bitSize
- Can deal with the awkward splitting off of `FiniteBits` and the deprecated `bitSize` vs `bitSizeMaybe`
- Its also very useful for cryptography and order / lattice theory
- It is ridiculous that operations as fundamentally important as `and`, `or`, `xor` are bound to such a big complicated class.
- It would result in an ergonomic improvment for low-level binary operations, which Haskell is sometimes lacking
- If it is easier to adhere to the proposed classes (as compared to the monolithic existing `Bits` class), then it promotes use of complete class instances, instead of monomorphic functions and broken / half-filled instances that we often see. 
    - Example: `ByteString` does not have a `Bits` instance. This alone is a huge inconvenience, and is done only for extremely technical reasons (endianness, representation) that would be sidestepped or lessened by implementing the new hierarchy appropriatly (eg, instance Boolean ByteString, instance BitField BigEndianByteString)
- Could use rewrite / specialization rules for convenience / efficiency functions rather than including them in the typeclass, but probably overkill, but the alternative is including functions into classes solely for optimization. (Haskell needs some sort of optimization-classes?)