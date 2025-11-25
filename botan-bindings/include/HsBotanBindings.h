#include "HsBotanBindingsVersions.h"

#ifndef MIN_VERSION_libbotan
#define MIN_VERSION_libbotan(major,minor,patch) (\
  (major) <  LIBBOTAN_MAJOR_VERSION || \
  (major) == LIBBOTAN_MAJOR_VERSION && (minor) <  LIBBOTAN_MINOR_VERSION || \
  (major) == LIBBOTAN_MAJOR_VERSION && (minor) == LIBBOTAN_MINOR_VERSION && (patch) <= LIBBOTAN_PATCH_VERSION)
#endif