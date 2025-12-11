#!/bin/sh

# TODO: check hs-bindgen version

cabal build ./scripts/generate-bindings.hs
cabal run ./scripts/generate-bindings.hs -- generate -v 3.10.0  -m "Botan.Bindings.Generated.Botan_3_10_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.9.0  -m "Botan.Bindings.Generated.Botan_3_9_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.8.1  -m "Botan.Bindings.Generated.Botan_3_8_1"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.8.0  -m "Botan.Bindings.Generated.Botan_3_8_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.7.1  -m "Botan.Bindings.Generated.Botan_3_7_1"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.7.0  -m "Botan.Bindings.Generated.Botan_3_7_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.6.1  -m "Botan.Bindings.Generated.Botan_3_6_1"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.6.0  -m "Botan.Bindings.Generated.Botan_3_6_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.5.0  -m "Botan.Bindings.Generated.Botan_3_5_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.4.0  -m "Botan.Bindings.Generated.Botan_3_4_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.3.0  -m "Botan.Bindings.Generated.Botan_3_3_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.2.0  -m "Botan.Bindings.Generated.Botan_3_2_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.1.1  -m "Botan.Bindings.Generated.Botan_3_1_1"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.1.0  -m "Botan.Bindings.Generated.Botan_3_1_0"
cabal run ./scripts/generate-bindings.hs -- generate -v 3.0.0  -m "Botan.Bindings.Generated.Botan_3_0_0"
