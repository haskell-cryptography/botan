# Cryptography Community Project Proposal

<!-- _This template is for Haskell Foundation Technical Proposals that are community projects asking for support.
Community project proposals are requests that the Haskell Foundation allocate funding to a particular project or goal to be executed by community members._

_Please delete the italic text before submitting._ -->

This is a community project proposal for the construction of a set of cryptographic Haskell libraries suitable a wide range of uses including data integrity, privacy, security, and networking.

## Goals and Non-goals

## Abstract

<!-- _This section should provide a summary of the proposal that identifies the key problems to be solved and summarizes the solution._ -->

Cryptography in Haskell lacks significant capability beyond the basic primitives. Some companies have built their own solution to this, but there is no community-driven, community-owned solution.

- Implementations are very concrete
- We don't even have a working set of abstract cryptographic primitives, let alone higher algorithms like merkle structures
- Distributed computing and cryptography should be the de jure of Haskell, but it is not
    - Part of this is because cryptography involves a lot of stateful bit twiddling, and
      the `Bits` and `FiniteBits` class is terrible (and `ByteString` does not implement it for nuanced reasons)

Cryptography is more than just the usual primitives of ciphers, public and private keys, hashes, and MACs. This document proposes a project targeted at developing a suite of cryptographic libraries, including:
- An abstract cryptography interface library (`crypto-schemes`)
- Bindings to an acceptable popular cryptography library (`botan`)
- An backend for the abstract interface using those bindings (`crypto-schemes-botan`)
- Compatibility or migration libraries for `saltine` (`botanium`) and `crypton` (`botanite`)

## Background

<!-- _This section should explain any background (targeting a casual audience) needed to understand the proposal’s motivation (e.g. a high level overview of the technical details and some history)._ -->

## Problem Statement

<!-- _This section should describe the problem that the proposal intends to solve and how solving the problem will benefit the Haskell community.
It should also enumerate the requirements against which a solution should be evaluated._ -->
    
- Cryptography support is critical (eg, in `tls` and `x509`)
- Crypton / cryptonite is good for specific algorithms, but its classes don't necessarily fully encapsulate the desired concepts well (eg, the classes generalize the implementation in the crypton/ite library, instead of abstracting them completely - botan's non-copyable types don't fit) - the cipher classes are especially tight and inflexible.

- `crypton` ecosystem was forked from `cryptonite` ecosystem, but remains related
- `crypton` / `cryptonite` has minimal classes
    - cryptography is hard, and making typeclasses is complex
- on the other hand there's `libsodium` / `saltine` on the opposite side of the spectrum
    - only provides fixed algorithms making it really easy
- There is no in between
    - We need type classes, for cryptography, to allow for user-defined instances.
    - `crypton/ite`'s classes really only cover hash and cipher algorithms and I think we can do much better
- There is a difference between a concrete `protocol` and an abstract `typeclass`
    - This makes class-y crypto oddly difficuly, since most crypto is concrete protocols
    - Only higher constructs / the way that they are used (and the way higher constructs use primitives) are useful for defining classes
        - One-off unique protocols are better kept as concrete / instances
        - Classes are better suited for use cases
    - Crypto combinators is probably a good idea to bridge this gap because the problem is not dissimilar to parsers.
- Crypto primitives have expectations about how their data is treated (see; displacement types)
    - Often expect something in the context to be unique or used only once (linear types might be useful)
    - Might require zeroing after use
    - Might depend on unproven properties (eg, algorithm safety)
    - This makes defining a class hierarchy difficult, especially a pure one
    - Aiming for a Pure -> IO -> Granular hierarchy, eg:
        - class Hash a => class IncrementalHash => class HashIO

- botan can support much of `cryptonite` and `memory`
- botan supports post-quantum cryptography

- Will need to design a suite of classes (see `crypto-schemes`), that we can use arbitrary backing classes for, and then use those classes in more complex structures like merkle structures
- Sized byte vectors are essential to much of cryptography
    - They do not act the same as bigints, there are differences when rotating and shifting, and have a fixed size

- Things requiring unique values (poly1305 keys, all nonces) can either take a value (deterministic), take an RNG generator (pseudorandom), or be an IO action (random), so there are stylistic choices to be made (or multiple variants).

## Prior Art and Related Efforts

<!-- _This section should describe prior attempts to solve the problem, other relevant prior work, and what others in the community are doing to address the problem.
It should describe the relationship between the proposed work and the existing efforts.
If past attempts did not succeed, this section should provide a theory of why not._ -->

- `cryptonite`, `memory`, and a lot of haskell crypto has been maintained by Vincent Hanquez
    - We appreciate his past efforts and thank him deeply for them
    - We still need to keep things up to date, `crypton` ecosystem was forked from `cryptonite` because of this?
        - some (like `memory`) remains unforked
    
- `libsodium` fulfills a lot of the functional need in haskell, but it is very limited.

- blockchain / for-profit companies fill the rest of the haskell crypto niche, and they make you use their system / environment.

- It would be ideal to have stronger safety regarding confidentiality, authenticity, non-repudiability, and standards of strength (eg whether broken and kept for backwards compat, or up-to-date modern choice), universal hashing, etc
    - We cannot always prove cryptographic strength (so its not quite like mathematical law)
    - Standards change over time
    - Can use the same methods as `algebraic-constraints` to manually annotate cryptographic properties

## Technical Content

<!-- _This section should describe the work that is being proposed to the community for comment, including both technical aspects (choices of system architecture, integration with existing tools and workflows) and community governance (how the developed project will be administered, maintained, and otherwise cared for in the future). 
It should also describe the benefits, drawbacks, and risks that are associated with these decisions.
It can be a good idea to describe alternative approaches here as well, and why the proposer prefers the current approach._ -->

- Can either make `crypton/ite` compatible `botanite`, or we make a classy `crypto-schemes` and replace `crypton/ite`
    - We could make some attempt to blend `crypton` into this new hierarchy, eg use `botan` to back `crypton` 
        - This might be difficult because of structural differences in `botan` vs `crypton`
    - It might just be better use `crypton` to back `crypto-schemes`, same as `botan`

- Using `libsodium / saltine` as a guide for high-level crypto classes in `crypto-schemes` seems viable.

- Will need to do lost of things like memory safety (scrubbing), testing each individual protocol / scheme, inlining stable data like algorithm key sizes (botan requires initializing a context to access).

Libraries are separated by use / intent

- `botan-bindings` - raw FFI bindings
- `botan-low` - low-level ByteString / IO functions
- `botan` - high-level idiomatic functions and data types
- `botanium` - simple cryptography interface with pre-selected algorithms
- `botanite` - crypton/ite compatibility layer
- `crypto-schemes` - abstract cryptographic classes and utilities
- `crypto-schemes-botan` - Botan backend for `crypto-schemes`

## Timeline

<!-- _When will the project be completed?
What are the intermediate steps and intermediate concrete deliverables for the community?_ -->

- Full project has too large of a scope
- Could easily spend several years building this out
- Small bites first
- Prefer to focus on the immediate problem of binding `botan` sufficiently first
- Cryptographic classes will take some time
- Once the base bindings are done we can focus on generalizing
- There's a difference between getting it working functionally, and the same safely
    - Properly seeding inlined RNGs (eg the systemRNGGetIO calls...)
    - Scrubbing memory after use
    - Inline / no-inline pragmas
    - Lots of small stuff, like ensuring seeding of RNGs, optimizing
- We're getting a lot of the happy path done fairly quickly, but that will slow down as we get into the fine tuning and safety

### Expected project duration

- 1 month to get `botan` finished
    - Includes more advanced ergonomics
- 1 month for safety improvements
- 1 month for documentation and tutorials
- Not necessarily in that order, probably more mixed about

### Intermediate deliverables

- Frequent (2-3x weekly) activity update on devlog
- Weekly major update that includes github push
- Questions / polls will be posed to the community for input on ergonomics

### Deliverables

- Libraries
- Project site
- Project repo
    - Will fork my github repo and make the project repo the official repo owned by the community
        - Will keep my own repo as my own personal fork, push from there to official
    - Other project members get access to the official repo.
    - No worries about ownership or maintenance

- `botan-bindings`, `botan-low`, `botan`, (and maybe `botanium`) should be beta- or / production-ready
    - Unit tests
    - Ticket system
    - Repo README
    - Style / Nomenclature GUIDE
    - Package documentation
    - Tutorials

## Budget

<!-- _How much money is needed to accomplish the goal?
How will it be used?_ -->

- 3 months of work, 6000 per month, to get something stable and friendly enough for deployment

- Will be enough for full time development on
    - `botan-bindings`
    - `botan-low`
    - `botan`
    - `botanium`
    - `crypto-schemes`
    - `crypto-schemes-botan`

- Will not finish all within the timeline, so choosing to focus on `botan-bindings`, `botan-low`, `botan` though work on the others will continue

- Is roughly equivalent to $35 / hr or $72k / yr at full-time of 40 hrs / wk

- Project site hosting, mortgage, student loans, food

- Revisit future funding in 3 months for extended / future work
    - Choose direction again
    - Optimizing (strictly extinguishing memory leaks, handling lazy byte streams,)
    - Higher-order cryptography



## Stakeholders

<!-- _Who stands to gain or lose from the implementation of this proposal?
Proposals should identify stakeholders so that they can be contacted for input, and a final decision should not occur without having made a good-faith effort to solicit representative feedback from important stakeholder groups._ -->

- Me (personally)
- Haskell Foundation
- Anyone using `crypton`, `cryptonite`, `libsodium / saltine`.
- Crypto / blockchain companies stand to lose, as we can obviate what makes them 'special'.

## Success

<!-- _Under what conditions will the project be considered a success?_ -->

This leg of the project will be considered a success if it results a production-ready bindings to the botan libraries.