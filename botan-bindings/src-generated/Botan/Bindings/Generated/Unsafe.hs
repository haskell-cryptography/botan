{-# LANGUAGE CPP       #-}
{-# LANGUAGE DataKinds #-}

module Botan.Bindings.Generated.Unsafe (
    module Reexports
  ) where

#include "HsBotanBindings.h"

#ifdef MIN_BOTAN_VERSION_BINDINGS

#if MIN_BOTAN_VERSION_BINDINGS(3,10,0)
import           Botan.Bindings.Generated.Botan_3_10_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,9,0)
import           Botan.Bindings.Generated.Botan_3_9_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,8,1)
import           Botan.Bindings.Generated.Botan_3_8_1.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,8,0)
import           Botan.Bindings.Generated.Botan_3_8_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,7,1)
import           Botan.Bindings.Generated.Botan_3_7_1.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,7,0)
import           Botan.Bindings.Generated.Botan_3_7_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,6,1)
import           Botan.Bindings.Generated.Botan_3_6_1.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,6,0)
import           Botan.Bindings.Generated.Botan_3_6_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,5,0)
import           Botan.Bindings.Generated.Botan_3_5_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,4,0)
import           Botan.Bindings.Generated.Botan_3_4_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,3,0)
import           Botan.Bindings.Generated.Botan_3_3_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,2,0)
import           Botan.Bindings.Generated.Botan_3_2_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,1,1)
import           Botan.Bindings.Generated.Botan_3_1_1.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,1,0)
import           Botan.Bindings.Generated.Botan_3_1_0.Unsafe as Reexports
#elif MIN_BOTAN_VERSION_BINDINGS(3,0,0)
import           Botan.Bindings.Generated.Botan_3_0_0.Unsafe as Reexports
#endif

#else

import           GHC.TypeError

_error :: TypeError (Text "If you see this error, then something must have went wrong when configuring the botan-bindings package. This probably points to a bug in botan-bindings. Please open an issue on the issue tracker!")
_error = undefined

#endif
