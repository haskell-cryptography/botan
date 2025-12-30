#include "HsBotanBindingsVersions.h"

#ifndef MIN_BOTAN_VERSION
#define MIN_BOTAN_VERSION(major,minor,patch) (\
  (major) <  BOTAN_MAJOR_VERSION || \
  (major) == BOTAN_MAJOR_VERSION && (minor) <  BOTAN_MINOR_VERSION || \
  (major) == BOTAN_MAJOR_VERSION && (minor) == BOTAN_MINOR_VERSION && (patch) <= BOTAN_PATCH_VERSION)
#endif

#ifndef EXACT_BOTAN_VERSION
#define EXACT_BOTAN_VERSION(major,minor,patch) (\
  (major) == BOTAN_MAJOR_VERSION && (minor) == BOTAN_MINOR_VERSION && (patch) == BOTAN_PATCH_VERSION)
#endif

#ifndef MIN_BOTAN_VERSION_BINDINGS
#define MIN_BOTAN_VERSION_BINDINGS(major,minor,patch) (\
  (major) <  BOTAN_MAJOR_VERSION_BINDINGS || \
  (major) == BOTAN_MAJOR_VERSION_BINDINGS && (minor) <  BOTAN_MINOR_VERSION_BINDINGS || \
  (major) == BOTAN_MAJOR_VERSION_BINDINGS && (minor) == BOTAN_MINOR_VERSION_BINDINGS && (patch) <= BOTAN_PATCH_VERSION_BINDINGS)
#endif

#ifndef EXACT_BOTAN_VERSION_BINDINGS
#define EXACT_BOTAN_VERSION_BINDINGS(major,minor,patch) (\
    (major) == BOTAN_MAJOR_VERSION_BINDINGS && (minor) == BOTAN_MINOR_VERSION_BINDINGS && (patch) == BOTAN_PATCH_VERSION_BINDINGS)
#endif
