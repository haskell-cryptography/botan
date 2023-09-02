# Cryptography Community Project: Leg 1 Proposal

<!-- _This template is for Haskell Foundation Technical Proposals that are community projects asking for support.
Community project proposals are requests that the Haskell Foundation allocate funding to a particular project or goal to be executed by community members._

_Please delete the italic text before submitting._ -->

# Abstract

<!-- _This section should provide a summary of the proposal that identifies the key problems to be solved and summarizes the solution._ -->

<!-- Overall proposal -->
This community project proposal is for full-time funding for the development of a suite of Haskell cryptography libraries and tooling suitable a wide range of uses including data integrity, privacy, security, and networking. <!-- Necessity of relieving burden --> This is necessary to relieve the burden [of correctly implementing cryptography] from Haskell developers seeking to provide privacy and security to their users. <!-- Long term goals --> We propose the development of a community-owned set of cryptography libraries of increasing capability, starting with bindings to a compatible open-source cryptography library. <!-- Timeline and Legs -->
This is expected to require a considerable effort over time, and if accepted will be broken up into several legs, each of which will be accompanied by its own specific proposal and set of goals.

<!-- First leg proposal -->
The first leg of this proposal is for the development of high-quality, production-ready bindings to the Botan C++ cryptography library, and from acceptance to release on Hackage is estimated to take 3 months of full-time development. <!-- Risk --> We see several challenges but no significant technical risk to this proposal; known challenges involve strictness and developing additional bindings to C++; these items are of high-value and may take significant effort to resolve, but are known to be solvable. <!-- Effort is already underway --> Considerable progress has already been made, and the proposed funding will help ensure its completion.

# Background

<!-- _This section should explain any background (targeting a casual audience) needed to understand the proposal’s motivation (e.g. a high level overview of the technical details and some history)._ -->

<!-- Cryptography is hard -->
Cryptography is an essential part of modern computing and information security, but it requires care, nuance, and knowledge to properly implement, and is extremely easy to mess up. <!-- Cryptography is diverse --> It covers a diverse range of functions, with individual algorithms often having their own particular quirks that must be acknowledged to properly and safely use. <!-- Failure has a high cost --> Failure to properly implement cryptography carries the risk of severely compromising the security of any system in which it is used. <!-- Dissuade hand-written crypto --> Manually implementing common cryptographic primitives such as hashes, ciphers, digital signatures, big-integer arithmetic is thus considered extremely unwise, both in terms of security and performance.

<!-- Functional cryptography is harder -->
Cryptography is even harder for functional programming languages. Properly implementing techniques such as sanitizing memory, performing operations in constant time, are already difficult enough in languages such as C, and in a lazy functional language it is made even more difficult by such things as the potential for references to be kept alive within thunks. <!-- Fun crypt is under-developed --> As a result, the space of functional cryptography is relatively under-explored and under-developed, having favored other languages where such things are easier to manage.

<!-- There is a tradeoff -->
However, if we accept this downside as a part of a trade-off, and explore the ways that functional programming is beneficial to cryptography (monads, type systems, referential transparency), there is then also the potential for functional cryptography to be made *easier*. The functional machinery of Haskell is well-suited for adding important contextual control to cryptography, and can help prevent or eliminate many issues and errors in ways that languages such as C cannot. <!-- Explore to improve --> I believe that there is room for significant improvement, given a directed effort to develop the space.

# Problem Statement

<!-- _This section should describe the problem that the proposal intends to solve and how solving the problem will benefit the Haskell community.
It should also enumerate the requirements against which a solution should be evaluated._ -->

<!-- Haskell cryptography is weak / has churn -->
Cryptography in Haskell lacks significant capability beyond basic primitives. This places a significant burden on developers to properly implement various security techniques, and exposes end users to significant risk in the event of a lapse in security. Some companies have built their own solution to this, but there is no community-driven, community-owned solution.

<!-- Mention churn in Prior Art --> As a result, cryptography in Haskell is fragile, having seen considerable flux / churn over the years as various libraries have been developed and then deprecated or abandoned in favor of newer ones. This has placed the long-term stability of important libraries such as `tls` and `x509` is at risk.


Furthermore, picking a cryptography library can be confusing, and developing a consistent suite will alleviate the difficulty of navigating hackage to figure out what is the most up-to-date library.


<!-- Cryptography is more than hashing and encryption -->

Implementations are often highly concrete,





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

- Cryptography and and cryptography-related utilities includes codecs, random generators

Cryptography in Haskell lacks significant capability beyond basic primitives.

Haskell is well-suited to providing many aspects of information security through use of monadic interfaces and the type system, if the lower-level challenges of strictness and performant primitives can be solved.

Bindings to an open-source cryptography library is a good starting point. Bindings to Botan would solve the significant problem of dealing with common cryptography by providing much of the necessary 'cryptographic kitchen sink' via bindings to a suitably performant, suitably licensed, open-source library. The Haskell community would not be required to maintain the Botan cryptography library, only bindings to it, and this can be accomplished readily with some effort, which has already begun.



<!-- - Cryptography support is critical (eg, in `tls` and `x509`)
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

- Need a cryptography library with minimal dependencies / baggage

- Need unit / integration tests, backwards compatibility, compiling to other architectures (eg, web and mobile),

- Having a library for the high-level interface but a swappable backend will make it more flexible - I take inspiration from:
    - WAI with multiple server backends
    - SDL allowing multiple renderers
    - gloss / gloss-rendering for multiple backends
    - beam-core and beam for multiple backends
- It can be separate libraries like `crypto-schemes` and `crypto-schemes-botan` or we can use compiler flags to conditionally (and by default) select a backend.
    - This makes for an alternate hierarchy of `crypto-core` for abstract, `crypto-schemes-botan` explicitly as a backend-only, and `crypto-schemes` as a frontend with flags to select the backend?
    - As opposed to current intended hierarchy which is `crypto-schemes` for abstract, and then `crypto-schemes-botan` for a botan-based frontent, no flags.
    - Working out this higher hierarchy can wait while 
- This swappable backend also helps with compiling for different architectures.
- It also permits the binding of alternate backends for security purposes
    - Botan does not have US FIPS certification, was chosen for open source and FFI compatibility
    - Can bind to proprietary libraries having specific security certifications

- Cryptography - orthogonal goals of: 1) promoting proper use and avoiding old algorithms 2) providing compatibility with existing libraries

- Cryptographic versions of containers of `Map` (eg `HashMap hash k v`)
- A cryptographic version of `hashable`


> "It is near impossible to zero memory [...] and timing isn't guarantee-able achievable even in C, but is even harder in higher level languages." -  https://www.reddit.com/r/haskell/comments/hp5qvn/comment/fxp4w34/?utm_source=share&utm_medium=web2x&context=3
    - So this is not a blocker, nor a sufficient reason to strike Haskell from consideration
    - Development of a Strict-IO / Crypto monad to help enforce this
Providing a safe and easy-to-use interface is of critical importance, and Haskell is highly suited to it in many ways (type systems) although Haskell presents its own challenges (laziness, delay of cleanup)
 -->

It is important that the Haskell community has a strong cryptography library / presence that is not bent towards a particular agenda. It must be **free as in speech (licensing)** and **free as in beer (no mining)**, in order to allow the growth of advanced cryptographic techniques the way that Haskell has furthered the growth of functional programming techniques. Cryptocurrency and blockchain cryptography efforts are almost innately tainted or unsuitable, in that they often focus on and require elements that are unnecessary (eg, mining). One suitable / acceptable goal is for generalized distributed computation, which, in some sense, is the one of only reasons that cryptography even exists - it would not be necessary to perform multi-party cryptography if there was only a single ideal computer with only one party using it.


# Prior Art and Related Efforts

<!-- _This section should describe prior attempts to solve the problem, other relevant prior work, and what others in the community are doing to address the problem.
It should describe the relationship between the proposed work and the existing efforts.
If past attempts did not succeed, this section should provide a theory of why not._ -->

We can group Haskell cryptography efforts into several categories, which are not necessarily distinct:

- Libraries for specific algorithms
- Cryptographic "kitchen sinks"
- Bindings to foreign libraries
- Efforts by [Thomas DuBuisson](https://hackage.haskell.org/user/ThomasDuBuisson)
- Efforts by [Vincent Hanquez](https://hackage.haskell.org/user/VincentHanquez)

The wiki lists [several libraries](https://wiki.haskell.org/Applications_and_libraries/Cryptography) and Hackage lists [many more](https://hackage.haskell.org/packages/#cat:Cryptography) according to the category.

> NOTE: Cryptocurrency libraries and libraries not on Hackage are excluded from consideration.

Specific libraries worth noting are:

- Predecessors to `cryptonite` - all deprecated
    - [cryptohash](https://hackage.haskell.org/package/cryptohash)
    - [cryptocipher](https://hackage.haskell.org/package/cryptocipher)
    - [crypto-pubkey](https://hackage.haskell.org/package/crypto-pubkey)
    - [crypto-random](https://hackage.haskell.org/package/crypto-random)
- Cryptographic "kitchen sinks"
    - [cryptonite](https://hackage.haskell.org/package/cryptonite)
    - [crypton](https://hackage.haskell.org/package/cryptonite) - a fork of cryptonite
- Bindings to libsodium
    - [NaCl](https://github.com/serokell/haskell-crypto)
    - [saltine](https://hackage.haskell.org/package/saltine)
    - [sel](https://hackage.haskell.org/package/sel-0.0.1.0/candidate)
- Bindings to botan
    - [Z-Botan](https://hackage.haskell.org/package/Z-Botan) - part of Z-Haskell, GHC8
- Honorable mentions
    - [Crypto](https://hackage.haskell.org/package/Crypto) - a very old sink
    - [crypto-api](https://hackage.haskell.org/package/crypto-api) - cryptographic classes
    - [cryptol](https://hackage.haskell.org/package/cryptol) - a DSL for developing new cryptographic primitives

These prior efforts can be considered to be somewhat partially successful in presenting Haskell developers with access to cryptographic primitives, but present a significant development challenge and a high refactoring cost if dependences become deprecated, which happens often. Of these libraries, a considerable amount are deprecated or have been dead for many years, with . `cryptonite`, `crypton`, and `saltine` are clear front-runners in terms of current usage and transitive dependencies (and `sel` being under active development). Of these four, one is a fork of another (`crypton` and `cryptonite`), and the other two are bindings to `libsodium` which does not sufficiently capture our need for low-level cryptographic primitives in general.

None of these sufficiently express cryptography through the type-system and with type-classes. `crypton/ite` exposes a few highly- opinionated / specific classes for hashing, block and stream ciphers, but otherwise is focused on concrete implementations and functions. Both `crypton` and `cryptonite` rely on bindings to C implementations of unknown veracity; though the code is itself not suspect, the lack of provenance makes it ill-suited for recommendation in trusted environments, and maintenance of the C implementation poses burden of high technical skill. Libsodium bindings are more trustworthy, but the limited options severely hamper interop with other systems unless they too are using libsodium, making them ill-suited for recommendation for some use cases. `Z-Botan` has been apparently dead for several years, and even if revived has a has a sizeable dependency in the form of the `Z-Haskell` ecosystem.

Furthermore, none of these libraries contain implementations of post-quantum cryptography schemes; although existing quantum computers are of insufficient capability to break commonly used algorithms such as Ed25519, this will not remain true forever, and it would be best to have quantum-resistant implementations ready for adoption long before such attacked become practical.

Each of these efforts has one or more of these issues that preclude them from being considered a complete success:

- Insufficient abstraction
- Maintenance of handwritten C
- Bindings to an insufficiently general library
- Burdensome dependencies
- Dead project
- Lack of post-quantum algorithms

However, there is also a lot to be learned from the ways these prior efforts *were* successful. This proposal will assess these existing efforts in an attempt to consolidate their learnings and functionality.

## An example of a successful ecosystem

The health of the Haskell server ecosystem may be used as an example of a successful community-driven niche, and we can aspire to bring that same quality and health to the Haskell cryptography ecosystem. There are many pertinent parallels in terms of managing performance, complexity, and safety that we can learn from:

- Low-level packages like `wai` supporting multiple backends
- Backends range from simple like `scotty` to complex like `servant`
- Frontends like `blaze-html` and `lucid`
- Libraries can take advantage of type system to provide good abstractions
- Flexible enough abstractions to explore the problem space with multiple solutions
- Appropriate licensing

`servant` (and the `wai` ecosystem in general) is a success story and an example of higher-order programming making something safer and easier, something that we can aspire to do with cryptography.

## Technical Content

<!-- _This section should describe the work that is being proposed to the community for comment, including both technical aspects (choices of system architecture, integration with existing tools and workflows) and community governance (how the developed project will be administered, maintained, and otherwise cared for in the future). 
It should also describe the benefits, drawbacks, and risks that are associated with these decisions.
It can be a good idea to describe alternative approaches here as well, and why the proposer prefers the current approach._ -->

### botan-bindings

### botan-low

### botan

### botanium

### botanite

### crypto-schemes

### crypto-schemes-botan

## Goals and Non-goals

<!-- _What are the particular goals of this leg of the project?
What are the intermediate steps and intermediate concrete deliverables for the community?_ -->

The following are the immediate goals of this leg:

- To publish the `botan`, `botan-low`, and `botan-bindings` libraries.
- To build proper documentation and tutorials covering the subject material
- To establish a community project presence focused on Haskell and cryptography

The following are overarching goals:

- To provide a suitable interface / backend (as an option) for `crypton`, `tls`, `x509`
- To consolidate Haskell cryptography into a unified, consistent, user-friendly system
- To enable the safe use and implementation of advanced cryptographic data structures
- To provide cryptographic typeclasses for safe and consistent use

The following are not goals:

- Finishing every goal by the first leg of the project
- Matching interfaces 1:1 with existing libraries / interfaces
- Implementing every algorithm permutation

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

- First 3 months: botan
- Second 3 months: crypto classes
- Third 3 months: advanced crypto structures

### Expected project duration

- 1 month to get `botan` finished
    - Includes more advanced ergonomics
- 1 month for safety improvements
- 1 month for documentation and tutorials
    - Tutorials includes in-package tutorials as well as reader-friendly blogs
- Not necessarily in that order, probably more mixed about
- It is unknown exactly how much effort is required

### Intermediate deliverables

- Frequent (2-3x weekly) activity update on devlog
- Weekly major update that includes github push
- Monthly report that summarizes what specific items have been worked on, what items will be worked on, and what challenges have arisen, if any.
- Questions / polls will be posed to the community for input on ergonomics

### Deliverables

- Libraries
- Project site
- Project repo
    - Will fork my github repo and make the project repo the official repo owned by the community
        - Will keep my own repo as my own personal fork, push from there to official
    - Other project members get access to the official repo.
    - No worries about ownership or maintenance
    - Official repo probably will be under the Haskell Cryptography Group github

- `botan-bindings`, `botan-low`, `botan`, (and maybe `botanium`) should be beta- or / production-ready
    - Unit tests
    - Ticket system
    - Repo README
    - Style / Nomenclature GUIDE
    - Package documentation
    - Tutorials

- Revisit future funding in 3 months for extended / future work
    - Choose direction again
    - Optimizing (strictly extinguishing memory leaks, handling lazy byte streams,)
    - Higher-order cryptography

<!-- Bindings to Botan would solve the significant problem of dealing with common cryptography by providing much of the necessary 'cryptographic kitchen sink' via an open-source community. The Haskell community would not be required to maintain the cryptography library, only bindings to it, and this can be accomplished readily with some effort, which has already begun.

- Can either make `crypton/ite` compatible `botanite`, or we make a classy `crypto-schemes` and replace `crypton/ite`
    - We could make some attempt to blend `crypton` into this new hierarchy, eg use `botan` to back `crypton` 
        - This might be difficult because of structural differences in `botan` vs `crypton`
    - It might just be better use `crypton` to back `crypto-schemes`, same as `botan`

- Using `libsodium / saltine` as a guide for high-level crypto classes in `crypto-schemes` seems viable.

- Will need to do lost of things like memory safety (scrubbing), testing each individual protocol / scheme, inlining stable data like algorithm key sizes (botan requires initializing a context to access).

Libraries are separated by use / intent

- `botan-bindings` - raw FFI bindings
- `botan-low` - low-level ByteString / IO functions
    - Goal is to match Botan as closely as reasonable
    - Hide buffer management
- `botan` - high-level idiomatic functions and data types
    - Goal is to provide a consistent functional interface
    - Hide state management
- `botanium` - simple cryptography interface with pre-selected algorithms
- `botanite` - crypton/ite compatibility layer
- `crypto-schemes` - abstract cryptographic classes and utilities
- `crypto-schemes-botan` - Botan backend for `crypto-schemes`

Having this stack will reduce the impact of rebinding to a different backend if we need to. We can build on the higher levels and swap out the lower implementations if necessary - this obviates the need to rely on any specific libraries, and provides classes for consistency.

- botan is a candidate for several reasons
    - Is Open Source and under active development / maintenance
    - Is implemented in C++
    - C FFI
    - BSD Simplified license
- botan has a few downsides
    - FFI documentation is sorely lacking
    - Not FIPS 140 compliant
- Other candidates for binding
    - [cryptopp](https://en.wikipedia.org/wiki/Crypto%2B%2B) - Boost license (public domain)
    - [NSS](https://en.wikipedia.org/wiki/Network_Security_Services) - Mozilla Copyleft

LIBRARY DESCRIPTIONS: 

From SDL2 docs - retrofit this to describe `botan-bindings`, `botan-low`, and `botan`

    This package contains bindings to the SDL 2 library, in both high- and low-level forms:

    The SDL namespace contains high-level bindings, where enumerations are split into sum types, and we perform automatic error-checking.

    The SDL.Raw namespace contains an almost 1-1 translation of the C API into Haskell FFI calls. As such, this does not contain sum types nor error checking. Thus this namespace is suitable for building your own abstraction over SDL, but is not recommended for day-to-day programming.


> "It is near impossible to zero memory (just look at the SecureMem type and the convoluted efforts there) and timing isn't guarantee-able achievable [even in C](https://infoscience.epfl.ch/record/223794/files/32_1.pdf) but is even harder in higher level languages." -  https://www.reddit.com/r/haskell/comments/hp5qvn/comment/fxp4w34/?utm_source=share&utm_medium=web2x&context=3
    - So this is not a blocker, nor a sufficient reason to strike Haskell from consideration
    - Development of a Strict-IO / Crypto monad to help enforce this -->


## Budget

<!-- _How much money is needed to accomplish the goal?
How will it be used?_ -->

The first leg of this proposal presents a (minimum) budget of $7000 USD per month, for one full-time engineer, for a duration of 3 months, for a total of $21,000 USD. This budget is based on cost-of-living and industry experience, and will cover housing, food, bills, taxes, and other life necessities for one engineer, as well as any project necessities such website and server hosting. This budget is roughly equivalent to $40 / hr or $84k / yr at full-time of 40 hrs / wk. Industry rates for an engineer of the necessary skill are on average considerably higher, and so we consider this budget to be reasonable. The exact legal contract / arrangement is left to the Haskell Foundation.

The question of funding will be revisited for each future leg of this proposal, wherein the budget and direction of future work will be decided again for each leg.

## Stakeholders

<!-- _Who stands to gain or lose from the implementation of this proposal?
Proposals should identify stakeholders so that they can be contacted for input, and a final decision should not occur without having made a good-faith effort to solicit representative feedback from important stakeholder groups._ -->

Several parties stand to gain from the implementation of this proposal.

- Leo Dillinger (Myself)

As the intended engineer carrying out the work, I have already invested significant effort in this project in order to establish its viability, and will benefit from this proposal in the form of being the recipient of the funding.

- Haskell Foundation

As the intended source of funding, the Haskell Foundation would be invested in this proposal financially, and its effective success or failure would reflect respectively upon the Haskell Foundation.

- [Haskell Cryptography Group ](https://github.com/haskell-cryptography)

As the intended owner of the project, this project will be new maintenance burden on the Haskell Cryptography Group.

- Developers of networked and distributed systems
- Users of existing cryptography libraries such as `crypton`, `cryptonite`, `libsodium / saltine`.

As the intended target audience of this project, this proposal aims to directly benefit developers by providing high-quality cryptography libraries at several appropriate levels of abstraction, but will also place the burden of migration to these new libraries on developers.

- Downstream users of Haskell software, developers with 

As the eventual user of the developed software, their safety and security will rest on the proper execution of this proposal. 

## Risks

There are a number of risks.

- Cryptography is hard and each algorithm may have individual nuances or uncommon requirements. 
- Botan FFI is incompletely documented and has gaps (stream ciphers, X509 stores, a few broken functions) which need to be fixed with C++ shims
- Strictness, memory safety & scrubbing, C++ shims will take an unknown amount of time
- A thorough / safe implementation will require consulting the C++ source of the FFI
- Polynomial combinations of algorithms makes exhaustive testing complicated.

These risks are amortized in that while they are tedious and potentially time-consuming, they may be considered extended goals of high value, and there is still substantial value that can be delivered without them, and the completion of risk items may continue in a future proposal leg.

- Single point of failure

This is a proposal for one full-time engineer; this constitutes a single point of failure. To combat this, the official github repo will be owned by the Haskell Cryptography, and another member of the Haskell Cryptography Groupp will be selected to hold backup keys and permissions to the website, server, and official repositories as needed, in the event that I am hit by a bus or some other freak occurrence. In the case of an emergency for which I am unreachable, this will allow for others to take over as necessary to fix things.

## Success

<!-- _Under what conditions will the project be considered a success?_ -->

This leg of the project will be considered a success if it results in the submission of a candidate or accepted package to hackage, with production-ready bindings to the following botan-related libraries:

    - botan-bindings
    - botan-low
    - botan

The following Botan library features are considered optional to the success of this leg, due to the requirement of C++ / FFI shims which will take an unknown amount of effort, but effort will be made to include them if possible within the timeframe. 

- Extended X509 support
- Stream ciphers

The following libraries are considered non-essential to the success of this leg, but may be worked on as they provide a valuable use case with which to test the lower libraries against, and may be subsumed into another at any time (eg, botanite could be merged into crypton).

- botanium
- botanite

The next leg of this project's success measure is still undetermined, but tentatively it will be focused on compatibility with crypton, and on the development of abstract cryptography classes.

- botanite / crypton 
- crypto-schemes
- crypto-schemes-botan

# Appendix

## A - Feature Matrix

### X

- Data types
- Unit tests
- Documentation
- Tutorials
- Strictness
- Memory safety

### Y

- Hashing
    - Integrity
- (Message) authentication codes
    - Signing & verification
- Padding
- BaseN encoding
- Ciphers
    - Key generation
    - Nonce generation
    - Block ciphers
    - Stream ciphers
    - Cipher modes
        - Authenticated Encryption
            - Encrypt-then-MAC
            - Encrypt-and-MAC
            - MAC-then-Encrypt
        - AEAD
- Public Key Infrastructures
    - Encryption
    - Signing & verification
    - Key Exchange (KX)
    - Key Agreement (KA)
    - Key Encapsulation (KEM)
- BigInt / MPI
- Key Derivation
- Randomness / entropy
- SRP6
- Post-Quantum algorithms
- Forward error correction
- OTP
- X509 Certificates

### Z

- `botan-bindings`
- `botan-low`
- `botan`

# END DOCUMENT
