{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_8_1.FunPtr where

import           Botan.Bindings.Generated.Botan_3_8_1
import           Data.Void (Void)
import qualified Foreign.C as FC
import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_error_description */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_554f53eb82f1e46f (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_error_last_exception_message */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_974aed8488dc2a3f (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ffi_api_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_bc73a83a9eda2ac7 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ffi_supports_api */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1cb414df815a741 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_f158cfa3c4ab2a91 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_major */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_209aa4212636e3da (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_minor */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7bdadca4f1bcc8f5 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_patch */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_159b05c35e924f5c (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_datestamp */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_5da30d34ad9c5966 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_constant_time_compare */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7029eb869e5c96c0 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_same_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4987e8e6f40900f9 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_scrub_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8646e67c8ca2a544 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hex_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f61de0512c3bd0ac (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hex_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8cb328524b5dd71 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_base64_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_557b96717eb798a3 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_base64_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c470528faeaf8713 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe1e12411a59c279 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_init_custom */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b3cc38f0e97774e (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2,"
  , "  void *arg3,"
  , "  signed int (*arg4) ("
  , "  void *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , "),"
  , "  signed int (*arg5) ("
  , "  void *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , "),"
  , "  void (*arg6) ("
  , "  void *arg1"
  , ")"
  , ")"
  , "{"
  , "  return &botan_rng_init_custom;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2863015f1091479 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_system_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23f8e79b8a063b50 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_reseed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c63d2b81a6fae3e (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_reseed_from_rng */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7835aa18a1b5e3c0 (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_add_entropy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_78d8e93d88931367 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5cb1c99fe9b6a09 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b328ae9220b8245d (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_copy_state */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea1373c6baabfc30 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_06bcf6e637423d99 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2039a238fef8bf68 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45556e24c77990e0 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ed76f01c4059c851 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_27f91c08518168f2 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_986c133acfe6ddf7 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bcd348034533014a (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6c5e38eec861aae (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4d55722e8d3196d (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d4de84c11863c2b5 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_set_nonce */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bce426fdfe105380 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba4947d58c256574 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4160ad6907c04c4 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a794760f7e4e729e (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6a9fc46e00658ae (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_465bad6d7f070043 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7175044d231cfe2 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4318666d6635d3bf (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a3c560998d2edb1 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e90dfbf5053cd475 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_valid_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39b6eace6e89837e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_tag_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e1d1b6e2c545e4b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_is_authenticated */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c95ec7739c4e39a (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_requires_entire_message */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba38a257db0a7b6f (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_default_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c068e57373ef9df (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a65cc8fbe95317fe (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_ideal_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_79b089e4bda0cd4e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_query_keylen */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d115f3cd6f6bc8f4 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5fb3702a8191ce98 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55fbce497899da1f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_reset */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c30427ffd12d2e1f (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_set_associated_data */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd7b2688d2a0c7ff (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_start */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dae47b4b6d357f4c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_558a679c50081ba9 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint32_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t arg4,"
  , "  size_t *arg5,"
  , "  uint8_t const arg6[],"
  , "  size_t arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_cipher_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6144d0b6b679c77 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75cc1a1671174022 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pbkdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4b04a8c3e098f4ef (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  size_t arg7"
  , ")"
  , "{"
  , "  return &botan_pbkdf;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pbkdf_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_203af346efb0ce1c (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  size_t arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_pbkdf_timed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pwdhash */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3d31374fcf9f850 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4,"
  , "  uint8_t arg5[],"
  , "  size_t arg6,"
  , "  char const *arg7,"
  , "  size_t arg8,"
  , "  uint8_t const arg9[],"
  , "  size_t arg10"
  , ")"
  , "{"
  , "  return &botan_pwdhash;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pwdhash_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_58a328c1663d4865 (void)) ("
  , "  char const *arg1,"
  , "  uint32_t arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4,"
  , "  size_t *arg5,"
  , "  uint8_t arg6[],"
  , "  size_t arg7,"
  , "  char const *arg8,"
  , "  size_t arg9,"
  , "  uint8_t const arg10[],"
  , "  size_t arg11"
  , ")"
  , "{"
  , "  return &botan_pwdhash_timed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_scrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b448e9dba4010406 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t arg2,"
  , "  char const *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5,"
  , "  size_t arg6,"
  , "  size_t arg7,"
  , "  size_t arg8"
  , ")"
  , "{"
  , "  return &botan_scrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_kdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45865e6ef1b742fb (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5,"
  , "  uint8_t const arg6[],"
  , "  size_t arg7,"
  , "  uint8_t const arg8[],"
  , "  size_t arg9"
  , ")"
  , "{"
  , "  return &botan_kdf;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f325c5049ef7af6 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a442f28b98003e29 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4fe963af266c900a (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c98a1cff0a64c30 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64056e9242b9f924 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_encrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da6473c56ecb17fc (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_decrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_104413df5ef833f8 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e809c4c259642171 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c38bd91eb773c36e (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1cccb0bc2b808d18 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7253e0c9efb6677c (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_hex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5dbf9c14ef944ba (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5f470ee34116a7d (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54f994641aaad673 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6ee0ea99b18b2775 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_mp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f7d99b105ca848c6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c5c38a4314da4b31 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_radix_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ad53c5a9ede05a60 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_num_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2361851947e24f6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_num_bytes */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dcb793ab24ad2246 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_58b4ba2fcfbc57b0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_from_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea97909ab3be75b8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_uint32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d3599795edf55f8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_positive */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa4879f7a60c18ab (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_negative */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8681a3ed32fd402d (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_flip_sign */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22da548f1f6279ff (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_zero */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bffda9270fe186f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_odd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f7c6dc42b10dcb9 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_even */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea229a5fcef4240b (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_add_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3aeab5b537646f81 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_sub_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a17ff88092e908e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_add */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ad4f3756d13c2c32 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_sub */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_52c47b1c15651b1a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f4b94183bec95fb (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_div */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f423430149fd9537 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mod_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae7d4bfd8c631135 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22bb07c7bab510a0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c7c50afef782efc (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_swap */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d07a03c746f358af (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_powmod */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6d0e1f562f4fe33 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_lshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49d8107318e4ccaa (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c9eee3cdf60f57f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mod_inverse */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f932c519e8a8109 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rand_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_15b3cc5b879785b5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rand_range */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13ec5c0c9d1f2b62 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_gcd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7da1b93b49caf7f1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_prime */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cacc4908e9a38fcf (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_get_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d08d82ac24fecb9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b054e12f7e114493 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_clear_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4680e85dc07a885a (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_bcrypt_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea8a8d7e7394b76e (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4,"
  , "  size_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return &botan_bcrypt_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_bcrypt_is_valid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9bea45020c43237d (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_658b2a35347a05c9 (void)) ("
  , "  botan_asn1_oid_t arg1"
  , ")"
  , "{"
  , "  return &botan_oid_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_from_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75da440d33ead3d4 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_from_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_register */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8281b6728920bbc1 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_register;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_view_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b294bcc501639021 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_view_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4759cfe07cf7e096 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b06bca6d6f6cc34 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_oid_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a4eb3765267f548 (void)) ("
  , "  signed int *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_asn1_oid_t arg3"
  , ")"
  , "{"
  , "  return &botan_oid_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76e99ba8e2c96879 (void)) ("
  , "  botan_ec_group_t arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_supports_application_specific_group */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_06b6e4e956655b07 (void)) ("
  , "  signed int *arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_application_specific_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_supports_named_group */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d7a29dfe6a09086a (void)) ("
  , "  char const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_named_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_params */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a738f1fe0c9d5cb (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5,"
  , "  botan_mp_t arg6,"
  , "  botan_mp_t arg7,"
  , "  botan_mp_t arg8"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_params;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_ber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f7357c3a37ffcbd (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_ber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fb3c05ad4999926 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa6d30db306d6c61 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_57d3b71a91c1c77c (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_057cbdedd254f363 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_43a145cd20837431 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_curve_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_893de71a78e744e8 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_curve_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e77120d626fec6f (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_a */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1cbd7d7da43c6f7f (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_a;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_b */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35e6c71e59a22099 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_b;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_g_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1360e9d876274694 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_g_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1879828d07448f7 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_order */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d68382000cb5ae83 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_order;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_453ef3dd638a9ea9 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d99f56f81348a37b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_afa05342f47723d2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  botan_ec_group_t arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_ec_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_67822e5cbe7990ce (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f64b3fe417ec4021 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51792cd886012fd6 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_adf13bf838ce74b5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_85ff5ff5adae30b3 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bad78edf2082391 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1e18ea23d332b3f2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_344bd7cbc5ffa122 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8cfbb938f1d89445 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b96d8f7222c7025 (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_006dfcead38feece (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_01b8abd378d00829 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b81d886737d6eb0f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_raw */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_93b5cef5fd5c6287 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04ce5474c0142fc6 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1354fbbed63fca7d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  botan_rng_t arg4,"
  , "  char const *arg5,"
  , "  char const *arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  return &botan_privkey_export_encrypted;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted_pbkdf_msec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa2aefb4a353d7db (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  botan_rng_t arg4,"
  , "  char const *arg5,"
  , "  uint32_t arg6,"
  , "  size_t *arg7,"
  , "  char const *arg8,"
  , "  char const *arg9,"
  , "  uint32_t arg10"
  , ")"
  , "{"
  , "  return &botan_privkey_export_encrypted_pbkdf_msec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted_pbkdf_iter */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f841ee30b9d3f64c (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  botan_rng_t arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  char const *arg7,"
  , "  char const *arg8,"
  , "  uint32_t arg9"
  , ")"
  , "{"
  , "  return &botan_privkey_export_encrypted_pbkdf_iter;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2b22b1213302620 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  botan_view_ctx arg7,"
  , "  botan_view_bin_fn arg8"
  , ")"
  , "{"
  , "  return &botan_privkey_view_encrypted_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_der_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_36ad8e4eafd30d6c (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  botan_view_ctx arg7,"
  , "  botan_view_bin_fn arg8"
  , ")"
  , "{"
  , "  return &botan_privkey_view_encrypted_der_timed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa715da48ecc6f39 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  botan_view_ctx arg7,"
  , "  botan_view_str_fn arg8"
  , ")"
  , "{"
  , "  return &botan_privkey_view_encrypted_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_pem_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2dbbf78cd7050f8a (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  botan_view_ctx arg7,"
  , "  botan_view_str_fn arg8"
  , ")"
  , "{"
  , "  return &botan_privkey_view_encrypted_pem_timed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7517c63c710289d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e770a9bd142980d1 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2434c2942df87544 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a639e67bf149bab (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6ff26eddd7e17e77 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_raw */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6a67a89887a5a3a (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8485efa960a438d8 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c04dfab1e6c9a737 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_estimated_strength */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f508a13124a22c1f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c76a724c16e80371 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a0b29df5e94c06b5 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5cc609b2fb8ae284 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c6deb386a9d2b69 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a1e7600ae60026b (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acabd0a9cc08d5a7 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_stateful_operation */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_00ee5328166692e9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_stateful_operation;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_remaining_operations */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b84c7d3f28b86c02 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_remaining_operations;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5547dfc6d07d577f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_rsa_pkcs1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e2dcdc1d45bb292 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a24084c8d9b5568 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4fab38a61e115e87 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_d */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8237a9c737717650 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9f25479fc2fcd89b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48898bdf4d2700e3 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a476200a8f1ee8e5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c77e53c9ef5fdbb (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ac6d4cfb1a032e9e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a5e7ee30f467816 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d81a707643538a5b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3462a3edeb467510 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_dsa_get_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16642a4738bef926 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf5068b209fd216b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c5e2b6b2d278b556 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_g */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8d5cf2c95260cb40 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c3de84dd0036f96a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_97ef63a7bd0f0a40 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03621ffccc58af8c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e411e779692b046 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5473049d8311316 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ca56163437fb9df (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a377b1fb43394c7b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_ed25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1774c4c8ae6b9051 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ed25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bad3a7bde84d9af (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_474f8d8947b4cf4d (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf0ffeab316b7a89 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_ed448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3b9f1a76e256a58d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ed448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6074e44342ba5f56 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c21f1ad204b5a4f8 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4df56ae1bdd66548 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_x25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_705fa61bb79a062e (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_x25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_733a19bf0f8e5d1a (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1de1a907a8f052fa (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99c9a7c4871e3d7a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_x448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1ead104f31f3e2d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_x448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49b07b278352fadb (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ml_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f51469c178eaa694 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ml_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc6080d6ada0a094 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2d8fcca64efd3616 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3cf1425e97069bf4 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e88e1d8a56c85be2 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_643948781067c3fe (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_frodokem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d7f1ad61ff2477e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_frodokem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a0c03474cdecb82 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_classic_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a02d86d259bd437b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_classic_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39a7cbd017234245 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ml_kem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d94aac28d03d1cc4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ml_kem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86493f787362e859 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_slh_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a65350f46701a534 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_slh_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_846191d3ffb86dcd (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ecc_key_used_explicit_encoding */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aded3f3659f547e7 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c2818c03f4b836e6 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fbe44384374e807 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f08746fa407a122f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1e5a62ff79fca3a2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3242ca1dede84a0f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e863e5e3b45bd177 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d7e281bdf019cb7 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fc3d1b9d44788b7d (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_sm2_compute_za */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9caeecd9bd29d69 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_ec_public_point */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5632a1d267ba05d0 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5986dff1df3e445 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b0a5a6512fcf99cb (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b12231986db4fa3 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b2fb5bb77adf3fc (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_188ab231741a6959 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d61a3f93a7ef3ca6 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f90c5d68c8a8ef1e (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8bd73a3597ec40f4 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9267a11036585a4b (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b872b07c3e8969d (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd913c48b95a2799 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69b155f2dd665c8f (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3e7d55dd10ef0ee3 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df533327469b1b5f (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f511fb0fd9b555df (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b25ecd564c2c9f9 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_06a71913152930b4 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3fda38334320f753 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_52f3f411223fea40 (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_export_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b4e31283400ed43 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_view_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f335d34760c475e (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87308c06868253f4 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5bff341144506aee (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5,"
  , "  uint8_t const arg6[],"
  , "  size_t arg7"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_892501c95e02b84c (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d268942604fc048 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_36c282c5178cfbdc (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_encapsulated_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_421d658107f8cfc6 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_create_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c31c82ddcfe448d (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  size_t arg5,"
  , "  uint8_t arg6[],"
  , "  size_t *arg7,"
  , "  uint8_t arg8[],"
  , "  size_t *arg9"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create_shared_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_977c067d10559a80 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_820f79c31556bafc (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ab0cf4347dc495c4 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a94a687cee98a15 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5,"
  , "  size_t arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pkcs_hash_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_130df3d535a8ea07 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mceies_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bb558a2ac251a874 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5,"
  , "  uint8_t const arg6[],"
  , "  size_t arg7,"
  , "  uint8_t arg8[],"
  , "  size_t *arg9"
  , ")"
  , "{"
  , "  return &botan_mceies_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mceies_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bed9de8fcac22a3a (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_mceies_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_647b1c77658e604e (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cfb13264a0f72fea (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f689121cf5ee737 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_dup */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bb7fc2b7d0d5bf18 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_time_starts */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6466a021d82bc6c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_time_expires */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3fddc687ac3ebb79 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_not_before */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a40f42c7d9a502e4 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_not_after */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6017562c8ec2bc42 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6dd3407e674dccf (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_serial_number */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_192161ed9873b432 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_authority_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e29e70a5252974ca (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_subject_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1dc607ee1fc8196e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6151282f358ba157 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_view_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_414a12589ac2c995 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_public_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4e7fddcea64d0350 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_issuer_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86dace42bf5305d4 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_subject_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_055e2249d76b2847 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_to_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e1258fd5e3270ee9 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_view_as_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d36b198a162fbe92 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_allowed_usage */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11542461d2df277b (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_hostname_match */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c90a803fc0be3c35 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_verify */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_27b4244a56282ee5 (void)) ("
  , "  signed int *arg1,"
  , "  botan_x509_cert_t arg2,"
  , "  botan_x509_cert_t const *arg3,"
  , "  size_t arg4,"
  , "  botan_x509_cert_t const *arg5,"
  , "  size_t arg6,"
  , "  char const *arg7,"
  , "  size_t arg8,"
  , "  char const *arg9,"
  , "  uint64_t arg10"
  , ")"
  , "{"
  , "  return &botan_x509_cert_verify;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_validation_status */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_15cf572a7a41f604 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd141b386208cffe (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6bca337f926b497 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_848c757253e99f7a (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_is_revoked */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ed229457902d9761 (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_verify_with_crl */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1e097deb4835dc5 (void)) ("
  , "  signed int *arg1,"
  , "  botan_x509_cert_t arg2,"
  , "  botan_x509_cert_t const *arg3,"
  , "  size_t arg4,"
  , "  botan_x509_cert_t const *arg5,"
  , "  size_t arg6,"
  , "  botan_x509_crl_t const *arg7,"
  , "  size_t arg8,"
  , "  char const *arg9,"
  , "  size_t arg10,"
  , "  char const *arg11,"
  , "  uint64_t arg12"
  , ")"
  , "{"
  , "  return &botan_x509_cert_verify_with_crl;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_key_wrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_db6511b7d5c71c3a (void)) ("
  , "  uint8_t const arg1[],"
  , "  size_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  uint8_t arg5[],"
  , "  size_t *arg6"
  , ")"
  , "{"
  , "  return &botan_key_wrap3394;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_key_unwrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa75a8f836e576c2 (void)) ("
  , "  uint8_t const arg1[],"
  , "  size_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  uint8_t arg5[],"
  , "  size_t *arg6"
  , ")"
  , "{"
  , "  return &botan_key_unwrap3394;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_nist_kw_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b871639e95805869 (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_nist_kw_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_nist_kw_dec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_657d1785a1677f07 (void)) ("
  , "  char const *arg1,"
  , "  signed int arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_nist_kw_dec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7b8604cb963e20d (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f91f506ca67c5bc5 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a587ce3b77453ce (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0a05ae62a43c597 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50faf5f2cf36ee83 (void)) ("
  , "  botan_totp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return &botan_totp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0bc8c8fc70a2fbe5 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a22ddb5a8cb0eba (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6700446b4f5d6b26 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_fe1_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae758333553a3bcb (void)) ("
  , "  botan_fpe_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  size_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return &botan_fpe_fe1_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7981a019b6bf2622 (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4cc607b3402fd933 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae183694dd03b131 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38f150e93bd1d1f1 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b36f490ca1897249 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_step1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a19b08be54f2ed5c (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  botan_rng_t arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_step2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6a1df0fa8ffd02e (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_generate_verifier */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dc68bf12b98de9fc (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5,"
  , "  char const *arg6,"
  , "  uint8_t arg7[],"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return &botan_srp6_generate_verifier;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_client_agree */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d609897da9d59504 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  uint8_t const arg5[],"
  , "  size_t arg6,"
  , "  uint8_t const arg7[],"
  , "  size_t arg8,"
  , "  botan_rng_t arg9,"
  , "  uint8_t arg10[],"
  , "  size_t *arg11,"
  , "  uint8_t arg12[],"
  , "  size_t *arg13"
  , ")"
  , "{"
  , "  return &botan_srp6_client_agree;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_group_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87522fb3c93fb790 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_zfec_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37ddf656b8f5255c (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_zfec_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1780ae70260ce35d (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  size_t const *arg3,"
  , "  uint8_t *const *arg4,"
  , "  size_t arg5,"
  , "  uint8_t **arg6"
  , ")"
  , "{"
  , "  return &botan_zfec_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_supports_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f6ab290d4418e9c (void)) (void)"
  , "{"
  , "  return &botan_tpm2_supports_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_303be3e2d1968d7b (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_init_ex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5cc854c9379f5665 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init_ex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_from_esys */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ed617f4fa6477989 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_from_esys;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_enable_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_323e1b7cde99b77e (void)) ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3377bfd3a62e01da (void)) ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_enable_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_36dcfafccc206144 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_crypto_backend_state_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da41f815f6ac71ab (void)) ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_crypto_backend_state_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13cee8a4b5957d29 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return &botan_tpm2_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_unauthenticated_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24900c26a871c17f (void)) ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_unauthenticated_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf96e8690bb97821 (void)) ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_session_destroy;"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_error_description@
foreign import ccall unsafe "hs_bindgen_554f53eb82f1e46f" hs_bindgen_554f53eb82f1e46f ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description #-}
{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:174:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_554f53eb82f1e46f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_974aed8488dc2a3f" hs_bindgen_974aed8488dc2a3f ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message #-}
{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:183:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_974aed8488dc2a3f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_bc73a83a9eda2ac7" hs_bindgen_bc73a83a9eda2ac7 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version #-}
{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:190:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc73a83a9eda2ac7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_f1cb414df815a741" hs_bindgen_f1cb414df815a741 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api #-}
{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:196:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1cb414df815a741

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_string@
foreign import ccall unsafe "hs_bindgen_f158cfa3c4ab2a91" hs_bindgen_f158cfa3c4ab2a91 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string #-}
{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:201:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f158cfa3c4ab2a91

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_major@
foreign import ccall unsafe "hs_bindgen_209aa4212636e3da" hs_bindgen_209aa4212636e3da ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major #-}
{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:206:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_209aa4212636e3da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_7bdadca4f1bcc8f5" hs_bindgen_7bdadca4f1bcc8f5 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor #-}
{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:211:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bdadca4f1bcc8f5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_159b05c35e924f5c" hs_bindgen_159b05c35e924f5c ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch #-}
{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:216:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_159b05c35e924f5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_5da30d34ad9c5966" hs_bindgen_5da30d34ad9c5966 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp #-}
{-| Return the date this version was released as an integer.

  Returns 0 if the library was not built from an official release

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:223:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5da30d34ad9c5966

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_7029eb869e5c96c0" hs_bindgen_7029eb869e5c96c0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare #-}
{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:228:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7029eb869e5c96c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_4987e8e6f40900f9" hs_bindgen_4987e8e6f40900f9 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem #-}
{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:234:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4987e8e6f40900f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_8646e67c8ca2a544" hs_bindgen_8646e67c8ca2a544 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem #-}
{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:240:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8646e67c8ca2a544

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_f61de0512c3bd0ac" hs_bindgen_f61de0512c3bd0ac ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode #-}
{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:255:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f61de0512c3bd0ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_a8cb328524b5dd71" hs_bindgen_a8cb328524b5dd71 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode #-}
{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:265:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8cb328524b5dd71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_557b96717eb798a3" hs_bindgen_557b96717eb798a3 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode #-}
{-| Perform base64 encoding

  [__@x@ /(input)/__]: the input data

  [__@len@ /(input)/__]: the length of x

  [__@out@ /(input)/__]: the output buffer

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:277:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_557b96717eb798a3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_c470528faeaf8713" hs_bindgen_c470528faeaf8713 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode #-}
{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:282:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c470528faeaf8713

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_fe1e12411a59c279" hs_bindgen_fe1e12411a59c279 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init #-}
{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:301:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe1e12411a59c279

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_7b3cc38f0e97774e" hs_bindgen_7b3cc38f0e97774e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_custom #-}
{-| Initialize a custom random number generator from a set of callback functions

  [__@rng_out@ /(input)/__]: rng object to create

  [__@rng_name@ /(input)/__]: name of the rng

  [__@context@ /(input)/__]: An application-specific context passed to the callback functions

  [__@get_cb@ /(input)/__]: Callback for getting random bytes from the rng, return 0 for success

  [__@add_entropy_cb@ /(input)/__]: Callback for adding entropy to the rng, return 0 for success, may be NULL

  [__@destroy_cb@ /(input)/__]: Callback called when rng is destroyed, may be NULL

__C declaration:__ @botan_rng_init_custom@

__defined at:__ @botan\/ffi.h:313:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b3cc38f0e97774e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_f2863015f1091479" hs_bindgen_f2863015f1091479 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get #-}
{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:328:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2863015f1091479

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_23f8e79b8a063b50" hs_bindgen_23f8e79b8a063b50 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get #-}
{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:337:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23f8e79b8a063b50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_2c63d2b81a6fae3e" hs_bindgen_2c63d2b81a6fae3e ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed #-}
{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:347:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c63d2b81a6fae3e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_7835aa18a1b5e3c0" hs_bindgen_7835aa18a1b5e3c0 ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng #-}
{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7835aa18a1b5e3c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_78d8e93d88931367" hs_bindgen_78d8e93d88931367 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy #-}
{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:367:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78d8e93d88931367

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_a5cb1c99fe9b6a09" hs_bindgen_a5cb1c99fe9b6a09 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy #-}
{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:374:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5cb1c99fe9b6a09

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_b328ae9220b8245d" hs_bindgen_b328ae9220b8245d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init #-}
{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:388:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b328ae9220b8245d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_ea1373c6baabfc30" hs_bindgen_ea1373c6baabfc30 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state #-}
{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:396:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea1373c6baabfc30

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_06bcf6e637423d99" hs_bindgen_06bcf6e637423d99 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length #-}
{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:404:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_06bcf6e637423d99

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_2039a238fef8bf68" hs_bindgen_2039a238fef8bf68 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size #-}
{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:412:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2039a238fef8bf68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_45556e24c77990e0" hs_bindgen_45556e24c77990e0 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update #-}
{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:421:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45556e24c77990e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_ed76f01c4059c851" hs_bindgen_ed76f01c4059c851 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final #-}
{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:431:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ed76f01c4059c851

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_27f91c08518168f2" hs_bindgen_27f91c08518168f2 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear #-}
{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:439:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_27f91c08518168f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_986c133acfe6ddf7" hs_bindgen_986c133acfe6ddf7 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy #-}
{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:446:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_986c133acfe6ddf7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_bcd348034533014a" hs_bindgen_bcd348034533014a ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name #-}
{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:454:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bcd348034533014a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_e6c5e38eec861aae" hs_bindgen_e6c5e38eec861aae ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init #-}
{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6c5e38eec861aae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_e4d55722e8d3196d" hs_bindgen_e4d55722e8d3196d ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length #-}
{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:477:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4d55722e8d3196d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_d4de84c11863c2b5" hs_bindgen_d4de84c11863c2b5 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key #-}
{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:486:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d4de84c11863c2b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_bce426fdfe105380" hs_bindgen_bce426fdfe105380 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce #-}
{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:495:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bce426fdfe105380

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_ba4947d58c256574" hs_bindgen_ba4947d58c256574 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update #-}
{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:504:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba4947d58c256574

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_f4160ad6907c04c4" hs_bindgen_f4160ad6907c04c4 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final #-}
{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:514:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4160ad6907c04c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_a794760f7e4e729e" hs_bindgen_a794760f7e4e729e ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear #-}
{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:522:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a794760f7e4e729e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_c6a9fc46e00658ae" hs_bindgen_c6a9fc46e00658ae ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name #-}
{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:530:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6a9fc46e00658ae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_465bad6d7f070043" hs_bindgen_465bad6d7f070043 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec #-}
{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:540:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_465bad6d7f070043

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_e7175044d231cfe2" hs_bindgen_e7175044d231cfe2 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy #-}
{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e7175044d231cfe2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_4318666d6635d3bf" hs_bindgen_4318666d6635d3bf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init #-}
{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:564:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4318666d6635d3bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_5a3c560998d2edb1" hs_bindgen_5a3c560998d2edb1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name #-}
{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:569:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a3c560998d2edb1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_e90dfbf5053cd475" hs_bindgen_e90dfbf5053cd475 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length #-}
{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:574:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e90dfbf5053cd475

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_39b6eace6e89837e" hs_bindgen_39b6eace6e89837e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length #-}
{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:579:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39b6eace6e89837e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_8e1d1b6e2c545e4b" hs_bindgen_8e1d1b6e2c545e4b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length #-}
{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e1d1b6e2c545e4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_is_authenticated@
foreign import ccall unsafe "hs_bindgen_4c95ec7739c4e39a" hs_bindgen_4c95ec7739c4e39a ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated #-}
{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:589:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c95ec7739c4e39a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_requires_entire_message@
foreign import ccall unsafe "hs_bindgen_ba38a257db0a7b6f" hs_bindgen_ba38a257db0a7b6f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message #-}
{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba38a257db0a7b6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_8c068e57373ef9df" hs_bindgen_8c068e57373ef9df ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length #-}
{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:601:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c068e57373ef9df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_a65cc8fbe95317fe" hs_bindgen_a65cc8fbe95317fe ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity #-}
{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:607:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a65cc8fbe95317fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_79b089e4bda0cd4e" hs_bindgen_79b089e4bda0cd4e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity #-}
{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_79b089e4bda0cd4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_d115f3cd6f6bc8f4" hs_bindgen_d115f3cd6f6bc8f4 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen #-}
{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:619:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d115f3cd6f6bc8f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_5fb3702a8191ce98" hs_bindgen_5fb3702a8191ce98 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec #-}
{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:625:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5fb3702a8191ce98

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_55fbce497899da1f" hs_bindgen_55fbce497899da1f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key #-}
{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:630:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55fbce497899da1f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_c30427ffd12d2e1f" hs_bindgen_c30427ffd12d2e1f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset #-}
{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:640:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c30427ffd12d2e1f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_bd7b2688d2a0c7ff" hs_bindgen_bd7b2688d2a0c7ff ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data #-}
{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:645:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd7b2688d2a0c7ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_dae47b4b6d357f4c" hs_bindgen_dae47b4b6d357f4c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start #-}
{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:650:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dae47b4b6d357f4c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_558a679c50081ba9" hs_bindgen_558a679c50081ba9 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update #-}
{-|

  Encrypt/Decrypt some data and/or finalize the encryption/decryption

  This encrypts as many bytes from @input_bytes@ into @output_bytes@ as possible. Unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, this function will consume bytes in multiples of botan_cipher_get_update_granularity(). @input_consumed@ and @output_written@ will be set accordingly and it is the caller's responsibility to adapt their buffers accordingly before calling this function again. Note that, unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, the cipher will at most generate @input_size@ output bytes.

  Eventually, the caller must set the ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` flag to indicate that no more input will be provided. This will cause the cipher to consume all given input bytes and produce the final output; or return a ``BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE`` error if the given output buffer was too small. In the latter case, @output_written@ will be set to the required buffer size. Calling again with ``BOTAN_CIPHER_UPDATE_FLAG_FINAL``, a big enough buffer and no further input will then produce the final output.

  Note that some ciphers require the entire message to be provided before any output is produced.

  __see:__ botan_cipher_requires_entire_message().

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:677:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_558a679c50081ba9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_d6144d0b6b679c77" hs_bindgen_d6144d0b6b679c77 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear #-}
{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:689:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6144d0b6b679c77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_75cc1a1671174022" hs_bindgen_75cc1a1671174022 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy #-}
{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:695:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75cc1a1671174022

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_4b04a8c3e098f4ef" hs_bindgen_4b04a8c3e098f4ef ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf #-}
{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:714:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4b04a8c3e098f4ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_203af346efb0ce1c" hs_bindgen_203af346efb0ce1c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_timed #-}
{-| Derive a key from a passphrase, running until msec time has elapsed.

  [__@pbkdf_algo@ /(input)/__]: PBKDF algorithm, e.g., "PBKDF2(SHA-256)"

  [__@out@ /(input)/__]: buffer to store the derived key, must be of out_len bytes

  [__@out_len@ /(input)/__]: the desired length of the key to produce

  [__@passphrase@ /(input)/__]: the password to derive the key from

  [__@salt@ /(input)/__]: a randomly chosen salt

  [__@salt_len@ /(input)/__]: length of salt in bytes

  [__@milliseconds_to_run@ /(input)/__]: if iterations is zero, then instead the PBKDF is run until milliseconds_to_run milliseconds has passed

  [__@out_iterations_used@ /(input)/__]: set to the number iterations executed

  __returns:__ 0 on success, a negative value on failure

  Deprecated: use

  botan_pwdhash_timed(pbkdf_algo, static_cast <uint32 _t>(ms_to_run), iterations_used, nullptr, nullptr, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_pbkdf_timed@

__defined at:__ @botan\/ffi.h:747:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_203af346efb0ce1c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_f3d31374fcf9f850" hs_bindgen_f3d31374fcf9f850 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash #-}
{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3d31374fcf9f850

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_58a328c1663d4865" hs_bindgen_58a328c1663d4865 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed #-}
{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:798:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_58a328c1663d4865

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_b448e9dba4010406" hs_bindgen_b448e9dba4010406 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt #-}
{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:817:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b448e9dba4010406

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_kdf@
foreign import ccall unsafe "hs_bindgen_45865e6ef1b742fb" hs_bindgen_45865e6ef1b742fb ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_kdf #-}
{-| Derive a key

  [__@kdf_algo@ /(input)/__]: KDF algorithm, e.g., "SP800-56C"

  [__@out@ /(input)/__]: buffer holding the derived key, must be of length out_len

  [__@out_len@ /(input)/__]: the desired output length in bytes

  [__@secret@ /(input)/__]: the secret input

  [__@secret_len@ /(input)/__]: size of secret in bytes

  [__@salt@ /(input)/__]: a diversifier

  [__@salt_len@ /(input)/__]: size of salt in bytes

  [__@label@ /(input)/__]: purpose for the derived keying material

  [__@label_len@ /(input)/__]: size of label in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_kdf@

__defined at:__ @botan\/ffi.h:840:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45865e6ef1b742fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_7f325c5049ef7af6" hs_bindgen_7f325c5049ef7af6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init #-}
{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:858:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f325c5049ef7af6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_a442f28b98003e29" hs_bindgen_a442f28b98003e29 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy #-}
{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a442f28b98003e29

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_4fe963af266c900a" hs_bindgen_4fe963af266c900a ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear #-}
{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:870:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4fe963af266c900a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_1c98a1cff0a64c30" hs_bindgen_1c98a1cff0a64c30 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key #-}
{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:875:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c98a1cff0a64c30

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_64056e9242b9f924" hs_bindgen_64056e9242b9f924 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size #-}
{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:881:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64056e9242b9f924

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_da6473c56ecb17fc" hs_bindgen_da6473c56ecb17fc ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks #-}
{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:887:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da6473c56ecb17fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_104413df5ef833f8" hs_bindgen_104413df5ef833f8 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks #-}
{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:893:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_104413df5ef833f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_e809c4c259642171" hs_bindgen_e809c4c259642171 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name #-}
{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:901:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e809c4c259642171

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_c38bd91eb773c36e" hs_bindgen_c38bd91eb773c36e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec #-}
{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:911:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c38bd91eb773c36e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_1cccb0bc2b808d18" hs_bindgen_1cccb0bc2b808d18 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init #-}
{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:924:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1cccb0bc2b808d18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_7253e0c9efb6677c" hs_bindgen_7253e0c9efb6677c ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy #-}
{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:930:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7253e0c9efb6677c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_a5dbf9c14ef944ba" hs_bindgen_a5dbf9c14ef944ba ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex #-}
{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:935:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5dbf9c14ef944ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_b5f470ee34116a7d" hs_bindgen_b5f470ee34116a7d ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str #-}
{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:940:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5f470ee34116a7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_54f994641aaad673" hs_bindgen_54f994641aaad673 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear #-}
{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:945:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54f994641aaad673

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_6ee0ea99b18b2775" hs_bindgen_6ee0ea99b18b2775 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int #-}
{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:950:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6ee0ea99b18b2775

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_f7d99b105ca848c6" hs_bindgen_f7d99b105ca848c6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp #-}
{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:955:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f7d99b105ca848c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_c5c38a4314da4b31" hs_bindgen_c5c38a4314da4b31 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str #-}
{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:960:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c5c38a4314da4b31

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_ad53c5a9ede05a60" hs_bindgen_ad53c5a9ede05a60 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str #-}
{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:966:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ad53c5a9ede05a60

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_d2361851947e24f6" hs_bindgen_d2361851947e24f6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits #-}
{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:971:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2361851947e24f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_dcb793ab24ad2246" hs_bindgen_dcb793ab24ad2246 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes #-}
{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:976:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dcb793ab24ad2246

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_58b4ba2fcfbc57b0" hs_bindgen_58b4ba2fcfbc57b0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin #-}
{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:981:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_58b4ba2fcfbc57b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_ea97909ab3be75b8" hs_bindgen_ea97909ab3be75b8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin #-}
{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:986:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea97909ab3be75b8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_3d3599795edf55f8" hs_bindgen_3d3599795edf55f8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32 #-}
{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:991:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d3599795edf55f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_fa4879f7a60c18ab" hs_bindgen_fa4879f7a60c18ab ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive #-}
{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:998:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa4879f7a60c18ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_8681a3ed32fd402d" hs_bindgen_8681a3ed32fd402d ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative #-}
{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:1003:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8681a3ed32fd402d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_22da548f1f6279ff" hs_bindgen_22da548f1f6279ff ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign #-}
{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:1005:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22da548f1f6279ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_1bffda9270fe186f" hs_bindgen_1bffda9270fe186f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero #-}
{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:1007:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bffda9270fe186f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_2f7c6dc42b10dcb9" hs_bindgen_2f7c6dc42b10dcb9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd #-}
{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:1009:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f7c6dc42b10dcb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_ea229a5fcef4240b" hs_bindgen_ea229a5fcef4240b ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even #-}
{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:1010:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea229a5fcef4240b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_3aeab5b537646f81" hs_bindgen_3aeab5b537646f81 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32 #-}
{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:1012:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3aeab5b537646f81

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_2a17ff88092e908e" hs_bindgen_2a17ff88092e908e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32 #-}
{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:1013:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a17ff88092e908e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_ad4f3756d13c2c32" hs_bindgen_ad4f3756d13c2c32 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add #-}
{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:1015:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ad4f3756d13c2c32

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_52c47b1c15651b1a" hs_bindgen_52c47b1c15651b1a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub #-}
{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:1016:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_52c47b1c15651b1a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_6f4b94183bec95fb" hs_bindgen_6f4b94183bec95fb ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul #-}
{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1017:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f4b94183bec95fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_f423430149fd9537" hs_bindgen_f423430149fd9537 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div #-}
{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1020:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f423430149fd9537

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_ae7d4bfd8c631135" hs_bindgen_ae7d4bfd8c631135 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul #-}
{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1023:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae7d4bfd8c631135

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_22bb07c7bab510a0" hs_bindgen_22bb07c7bab510a0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal #-}
{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1030:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22bb07c7bab510a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_3c7c50afef782efc" hs_bindgen_3c7c50afef782efc ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp #-}
{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1037:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c7c50afef782efc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_d07a03c746f358af" hs_bindgen_d07a03c746f358af ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap #-}
{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1042:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d07a03c746f358af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_d6d0e1f562f4fe33" hs_bindgen_d6d0e1f562f4fe33 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod #-}
{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1046:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6d0e1f562f4fe33

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_49d8107318e4ccaa" hs_bindgen_49d8107318e4ccaa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift #-}
{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1048:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49d8107318e4ccaa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_6c9eee3cdf60f57f" hs_bindgen_6c9eee3cdf60f57f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift #-}
{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1049:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c9eee3cdf60f57f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_2f932c519e8a8109" hs_bindgen_2f932c519e8a8109 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse #-}
{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1051:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f932c519e8a8109

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_15b3cc5b879785b5" hs_bindgen_15b3cc5b879785b5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits #-}
{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1053:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15b3cc5b879785b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_13ec5c0c9d1f2b62" hs_bindgen_13ec5c0c9d1f2b62 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range #-}
{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1056:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13ec5c0c9d1f2b62

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_7da1b93b49caf7f1" hs_bindgen_7da1b93b49caf7f1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd #-}
{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7da1b93b49caf7f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_cacc4908e9a38fcf" hs_bindgen_cacc4908e9a38fcf ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime #-}
{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1065:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cacc4908e9a38fcf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_5d08d82ac24fecb9" hs_bindgen_5d08d82ac24fecb9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit #-}
{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1072:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d08d82ac24fecb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_b054e12f7e114493" hs_bindgen_b054e12f7e114493 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit #-}
{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1077:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b054e12f7e114493

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_4680e85dc07a885a" hs_bindgen_4680e85dc07a885a ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit #-}
{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1082:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4680e85dc07a885a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_ea8a8d7e7394b76e" hs_bindgen_ea8a8d7e7394b76e ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_generate #-}
{-| Create a password hash using Bcrypt

  [__@out@ /(input)/__]: buffer holding the password hash, should be of length 64 bytes

  [__@out_len@ /(input)/__]: the desired output length in bytes

  [__@password@ /(input)/__]: the password

  [__@rng@ /(input)/__]: a random number generator

  [__@work_factor@ /(input)/__]: how much work to do to slow down guessing attacks

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

  __returns:__ 0 on success, a negative value on failure

  Output is formatted bcrypt $2a$...

__C declaration:__ @botan_bcrypt_generate@

__defined at:__ @botan\/ffi.h:1100:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea8a8d7e7394b76e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_9bea45020c43237d" hs_bindgen_9bea45020c43237d ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid #-}
{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1111:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9bea45020c43237d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_destroy@
foreign import ccall unsafe "hs_bindgen_658b2a35347a05c9" hs_bindgen_658b2a35347a05c9 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_destroy #-}
{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_destroy@

__defined at:__ @botan\/ffi.h:1122:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_destroy :: Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_658b2a35347a05c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_from_string@
foreign import ccall unsafe "hs_bindgen_75da440d33ead3d4" hs_bindgen_75da440d33ead3d4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_from_string #-}
{-| Create an OID from a string, either dot notation (e.g. '1.2.3.4') or a registered name (e.g. 'RSA')

  [__@oid@ /(input)/__]: hanlder to the resulting OID

  [__@oid_str@ /(input)/__]: the name of the OID to create

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_from_string@

__defined at:__ @botan\/ffi.h:1130:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_from_string :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_from_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75da440d33ead3d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_register@
foreign import ccall unsafe "hs_bindgen_8281b6728920bbc1" hs_bindgen_8281b6728920bbc1 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_register #-}
{-| Registers an OID so that it may later be retrieved by name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_register@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_register :: Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_register =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8281b6728920bbc1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_view_string@
foreign import ccall unsafe "hs_bindgen_b294bcc501639021" hs_bindgen_b294bcc501639021 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_string #-}
{-| View an OID in dot notation

__C declaration:__ @botan_oid_view_string@

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_string :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b294bcc501639021

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_view_name@
foreign import ccall unsafe "hs_bindgen_4759cfe07cf7e096" hs_bindgen_4759cfe07cf7e096 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_name #-}
{-| View an OIDs registered name if it exists, else its dot notation

__C declaration:__ @botan_oid_view_name@

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_name :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4759cfe07cf7e096

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_equal@
foreign import ccall unsafe "hs_bindgen_8b06bca6d6f6cc34" hs_bindgen_8b06bca6d6f6cc34 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_equal #-}
{-|

  __returns:__ 0 if a != b

  __returns:__ 1 if a == b

  __returns:__ negative number on error

__C declaration:__ @botan_oid_equal@

__defined at:__ @botan\/ffi.h:1153:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_equal :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b06bca6d6f6cc34

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_oid_cmp@
foreign import ccall unsafe "hs_bindgen_4a4eb3765267f548" hs_bindgen_4a4eb3765267f548 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_cmp #-}
{-| Sets

  [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

  __returns:__ negative number on error or zero on success

__C declaration:__ @botan_oid_cmp@

__defined at:__ @botan\/ffi.h:1160:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a4eb3765267f548

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_destroy@
foreign import ccall unsafe "hs_bindgen_76e99ba8e2c96879" hs_bindgen_76e99ba8e2c96879 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_destroy #-}
{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_destroy@

__defined at:__ @botan\/ffi.h:1171:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_destroy :: Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76e99ba8e2c96879

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_supports_application_specific_group@
foreign import ccall unsafe "hs_bindgen_06b6e4e956655b07" hs_bindgen_06b6e4e956655b07 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_application_specific_group #-}
{-| Checks if in this build configuration it is possible to register an application specific elliptic curve and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_ec_group_supports_application_specific_group@

__defined at:__ @botan\/ffi.h:1178:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_application_specific_group :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_application_specific_group =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_06b6e4e956655b07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_supports_named_group@
foreign import ccall unsafe "hs_bindgen_d7a29dfe6a09086a" hs_bindgen_d7a29dfe6a09086a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_named_group #-}
{-| Checks if in this build configuration botan_ec_group_from_name(group_ptr, name) will succeed and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_supports_named_group@

__defined at:__ @botan\/ffi.h:1185:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_named_group :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_named_group =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d7a29dfe6a09086a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_params@
foreign import ccall unsafe "hs_bindgen_4a738f1fe0c9d5cb" hs_bindgen_4a738f1fe0c9d5cb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_params #-}
{-| Create a new EC Group from parameters

  __/WARNING:/__ use only elliptic curve parameters that you trust

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@p@ /(input)/__]: the elliptic curve prime (at most 521 bits)

  [__@a@ /(input)/__]: the elliptic curve a param

  [__@b@ /(input)/__]: the elliptic curve b param

  [__@base_x@ /(input)/__]: the x coordinate of the group generator

  [__@base_y@ /(input)/__]: the y coordinate of the group generator

  [__@order@ /(input)/__]: the order of the group

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_params@

__defined at:__ @botan\/ffi.h:1201:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_params :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_ec_group_from_params =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a738f1fe0c9d5cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_ber@
foreign import ccall unsafe "hs_bindgen_3f7357c3a37ffcbd" hs_bindgen_3f7357c3a37ffcbd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_ber #-}
{-| Decode a BER encoded ECC domain parameter set

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@ber@ /(input)/__]: encoding

  [__@ber_len@ /(input)/__]: size of the encoding in bytes

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_ber@

__defined at:__ @botan\/ffi.h:1217:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_ber :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_ec_group_from_ber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f7357c3a37ffcbd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_pem@
foreign import ccall unsafe "hs_bindgen_6fb3c05ad4999926" hs_bindgen_6fb3c05ad4999926 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_pem #-}
{-| Initialize an EC Group from the PEM/ASN.1 encoding

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@pem@ /(input)/__]: encoding

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_pem@

__defined at:__ @botan\/ffi.h:1225:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_pem :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fb3c05ad4999926

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_oid@
foreign import ccall unsafe "hs_bindgen_fa6d30db306d6c61" hs_bindgen_fa6d30db306d6c61 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_oid #-}
{-| Initialize an EC Group from a group named by an object identifier

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@oid@ /(input)/__]: a known OID

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_oid@

__defined at:__ @botan\/ffi.h:1233:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt)
botan_ec_group_from_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa6d30db306d6c61

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_from_name@
foreign import ccall unsafe "hs_bindgen_57d3b71a91c1c77c" hs_bindgen_57d3b71a91c1c77c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_name #-}
{-| Initialize an EC Group from a common group name (eg "secp256r1")

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@name@ /(input)/__]: a known group name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_name@

__defined at:__ @botan\/ffi.h:1241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_name :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_57d3b71a91c1c77c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_view_der@
foreign import ccall unsafe "hs_bindgen_057cbdedd254f363" hs_bindgen_057cbdedd254f363 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_der #-}
{-| View an EC Group in DER encoding

__C declaration:__ @botan_ec_group_view_der@

__defined at:__ @botan\/ffi.h:1247:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_der :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_ec_group_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_057cbdedd254f363

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_view_pem@
foreign import ccall unsafe "hs_bindgen_43a145cd20837431" hs_bindgen_43a145cd20837431 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_pem #-}
{-| View an EC Group in PEM encoding

__C declaration:__ @botan_ec_group_view_pem@

__defined at:__ @botan\/ffi.h:1253:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_pem :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_ec_group_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_43a145cd20837431

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_curve_oid@
foreign import ccall unsafe "hs_bindgen_893de71a78e744e8" hs_bindgen_893de71a78e744e8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_curve_oid #-}
{-| Get the curve OID of an EC Group

__C declaration:__ @botan_ec_group_get_curve_oid@

__defined at:__ @botan\/ffi.h:1258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_curve_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_curve_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_893de71a78e744e8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_p@
foreign import ccall unsafe "hs_bindgen_7e77120d626fec6f" hs_bindgen_7e77120d626fec6f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_p #-}
{-| Get the prime modulus of the field

__C declaration:__ @botan_ec_group_get_p@

__defined at:__ @botan\/ffi.h:1263:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_p :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e77120d626fec6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_a@
foreign import ccall unsafe "hs_bindgen_1cbd7d7da43c6f7f" hs_bindgen_1cbd7d7da43c6f7f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_a #-}
{-| Get the a parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_a@

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_a :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_a =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1cbd7d7da43c6f7f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_b@
foreign import ccall unsafe "hs_bindgen_35e6c71e59a22099" hs_bindgen_35e6c71e59a22099 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_b #-}
{-| Get the b parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_b@

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_b :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_b =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_35e6c71e59a22099

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_g_x@
foreign import ccall unsafe "hs_bindgen_1360e9d876274694" hs_bindgen_1360e9d876274694 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_x #-}
{-| Get the x coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_x@

__defined at:__ @botan\/ffi.h:1278:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_x :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1360e9d876274694

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_g_y@
foreign import ccall unsafe "hs_bindgen_c1879828d07448f7" hs_bindgen_c1879828d07448f7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_y #-}
{-| Get the y coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_y@

__defined at:__ @botan\/ffi.h:1283:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_y :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1879828d07448f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_get_order@
foreign import ccall unsafe "hs_bindgen_d68382000cb5ae83" hs_bindgen_d68382000cb5ae83 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_order #-}
{-| Get the order of the base point

__C declaration:__ @botan_ec_group_get_order@

__defined at:__ @botan\/ffi.h:1288:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_order :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_order =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d68382000cb5ae83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_group_equal@
foreign import ccall unsafe "hs_bindgen_453ef3dd638a9ea9" hs_bindgen_453ef3dd638a9ea9 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_equal #-}
{-|

  __returns:__ 0 if curve1 != curve2

  __returns:__ 1 if curve1 == curve2

  __returns:__ negative number on error

__C declaration:__ @botan_ec_group_equal@

__defined at:__ @botan\/ffi.h:1295:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_equal :: Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_453ef3dd638a9ea9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_d99f56f81348a37b" hs_bindgen_d99f56f81348a37b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create #-}
{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1311:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d99f56f81348a37b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_ec_privkey_create@
foreign import ccall unsafe "hs_bindgen_afa05342f47723d2" hs_bindgen_afa05342f47723d2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_ec_privkey_create #-}
{-| Create a new ec private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

  [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_ec_privkey_create@

__defined at:__ @botan\/ffi.h:1321:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt)
botan_ec_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_afa05342f47723d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_67822e5cbe7990ce" hs_bindgen_67822e5cbe7990ce ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key #-}
{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67822e5cbe7990ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_f64b3fe417ec4021" hs_bindgen_f64b3fe417ec4021 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa #-}
{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1328:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f64b3fe417ec4021

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_51792cd886012fd6" hs_bindgen_51792cd886012fd6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa #-}
{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1330:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51792cd886012fd6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_adf13bf838ce74b5" hs_bindgen_adf13bf838ce74b5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh #-}
{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1332:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_adf13bf838ce74b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_85ff5ff5adae30b3" hs_bindgen_85ff5ff5adae30b3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece #-}
{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_85ff5ff5adae30b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_3bad78edf2082391" hs_bindgen_3bad78edf2082391 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh #-}
{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1336:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bad78edf2082391

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_1e18ea23d332b3f2" hs_bindgen_1e18ea23d332b3f2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dsa #-}
{-| Generates DSA key pair. Gives to a caller control over key length and order of a subgroup 'q'.

  [__@key@ /(input)/__]: handler to the resulting key

  [__@rng@ /(input)/__]: initialized PRNG

  [__@pbits@ /(input)/__]: length of the key in bits. Must be between in range (1024, 3072) and multiple of 64. Bit size of the prime 'p'

  [__@qbits@ /(input)/__]: order of the subgroup. Must be in range (160, 256) and multiple of 8

  __returns:__ BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key

  __returns:__ BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL

  __returns:__ BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or `qbits'

  __returns:__ BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented

__C declaration:__ @botan_privkey_create_dsa@

__defined at:__ @botan\/ffi.h:1356:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e18ea23d332b3f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_344bd7cbc5ffa122" hs_bindgen_344bd7cbc5ffa122 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_elgamal #-}
{-| Generates ElGamal key pair. Caller has a control over key length and order of a subgroup 'q'. Function is able to use two types of primes: * if pbits-1 == qbits then safe primes are used for key generation * otherwise generation uses group of prime order

  [__@key@ /(input)/__]: handler to the resulting key

  [__@rng@ /(input)/__]: initialized PRNG

  [__@pbits@ /(input)/__]: length of the key in bits. Must be at least 1024

  [__@qbits@ /(input)/__]: order of the subgroup. Must be at least 160

  __returns:__ BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key

  __returns:__ BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL

  __returns:__ BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or `qbits'

  __returns:__ BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented

__C declaration:__ @botan_privkey_create_elgamal@

__defined at:__ @botan\/ffi.h:1378:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_344bd7cbc5ffa122

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_8cfbb938f1d89445" hs_bindgen_8cfbb938f1d89445 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load #-}
{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1386:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8cfbb938f1d89445

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_7b96d8f7222c7025" hs_bindgen_7b96d8f7222c7025 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1391:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b96d8f7222c7025

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_006dfcead38feece" hs_bindgen_006dfcead38feece ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export #-}
{-| __C declaration:__ @botan_privkey_export@

    __defined at:__ @botan\/ffi.h:1405:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_006dfcead38feece

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_01b8abd378d00829" hs_bindgen_01b8abd378d00829 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der #-}
{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1410:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_01b8abd378d00829

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_b81d886737d6eb0f" hs_bindgen_b81d886737d6eb0f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem #-}
{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1415:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b81d886737d6eb0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_raw@
foreign import ccall unsafe "hs_bindgen_93b5cef5fd5c6287" hs_bindgen_93b5cef5fd5c6287 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_raw #-}
{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1420:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_raw =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_93b5cef5fd5c6287

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_04ce5474c0142fc6" hs_bindgen_04ce5474c0142fc6 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name #-}
{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1422:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_04ce5474c0142fc6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_1354fbbed63fca7d" hs_bindgen_1354fbbed63fca7d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted #-}
{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1429:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1354fbbed63fca7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_fa2aefb4a353d7db" hs_bindgen_fa2aefb4a353d7db ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1445:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa2aefb4a353d7db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_f841ee30b9d3f64c" hs_bindgen_f841ee30b9d3f64c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f841ee30b9d3f64c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_e2b22b1213302620" hs_bindgen_e2b22b1213302620 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1478:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2b22b1213302620

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_36ad8e4eafd30d6c" hs_bindgen_36ad8e4eafd30d6c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1493:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_36ad8e4eafd30d6c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_aa715da48ecc6f39" hs_bindgen_aa715da48ecc6f39 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1509:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa715da48ecc6f39

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_2dbbf78cd7050f8a" hs_bindgen_2dbbf78cd7050f8a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1524:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2dbbf78cd7050f8a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_b7517c63c710289d" hs_bindgen_b7517c63c710289d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load #-}
{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1535:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b7517c63c710289d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_e770a9bd142980d1" hs_bindgen_e770a9bd142980d1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey #-}
{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1537:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e770a9bd142980d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_2434c2942df87544" hs_bindgen_2434c2942df87544 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export #-}
{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1540:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2434c2942df87544

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_1a639e67bf149bab" hs_bindgen_1a639e67bf149bab ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der #-}
{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1545:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a639e67bf149bab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_6ff26eddd7e17e77" hs_bindgen_6ff26eddd7e17e77 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem #-}
{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6ff26eddd7e17e77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_raw@
foreign import ccall unsafe "hs_bindgen_e6a67a89887a5a3a" hs_bindgen_e6a67a89887a5a3a ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_raw #-}
{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1555:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_raw =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6a67a89887a5a3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_8485efa960a438d8" hs_bindgen_8485efa960a438d8 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name #-}
{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1557:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8485efa960a438d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_c04dfab1e6c9a737" hs_bindgen_c04dfab1e6c9a737 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key #-}
{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1562:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c04dfab1e6c9a737

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_f508a13124a22c1f" hs_bindgen_f508a13124a22c1f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength #-}
{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1564:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f508a13124a22c1f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_c76a724c16e80371" hs_bindgen_c76a724c16e80371 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint #-}
{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1567:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c76a724c16e80371

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_a0b29df5e94c06b5" hs_bindgen_a0b29df5e94c06b5 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a0b29df5e94c06b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_5cc609b2fb8ae284" hs_bindgen_5cc609b2fb8ae284 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field #-}
{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1577:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5cc609b2fb8ae284

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_1c6deb386a9d2b69" hs_bindgen_1c6deb386a9d2b69 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field #-}
{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1579:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c6deb386a9d2b69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_oid@
foreign import ccall unsafe "hs_bindgen_4a1e7600ae60026b" hs_bindgen_4a1e7600ae60026b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_oid #-}
{-| __C declaration:__ @botan_pubkey_oid@

    __defined at:__ @botan\/ffi.h:1585:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a1e7600ae60026b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_oid@
foreign import ccall unsafe "hs_bindgen_acabd0a9cc08d5a7" hs_bindgen_acabd0a9cc08d5a7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_oid #-}
{-| __C declaration:__ @botan_privkey_oid@

    __defined at:__ @botan\/ffi.h:1588:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acabd0a9cc08d5a7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_stateful_operation@
foreign import ccall unsafe "hs_bindgen_00ee5328166692e9" hs_bindgen_00ee5328166692e9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_privkey_stateful_operation #-}
{-| Checks whether a key is stateful and sets

  [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_stateful_operation@

__defined at:__ @botan\/ffi.h:1595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_stateful_operation :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_privkey_stateful_operation =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_00ee5328166692e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_remaining_operations@
foreign import ccall unsafe "hs_bindgen_b84c7d3f28b86c02" hs_bindgen_b84c7d3f28b86c02 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_privkey_remaining_operations #-}
{-| Gets information on many operations a (stateful) key has remaining and sets

  [__@out@ /(input)/__]: to that value

  __returns:__ 0 on success, a negative value on failure or if the key is not stateful

__C declaration:__ @botan_privkey_remaining_operations@

__defined at:__ @botan\/ffi.h:1602:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_remaining_operations :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_privkey_remaining_operations =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b84c7d3f28b86c02

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_5547dfc6d07d577f" hs_bindgen_5547dfc6d07d577f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa #-}
{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1607:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5547dfc6d07d577f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_9e2dcdc1d45bb292" hs_bindgen_9e2dcdc1d45bb292 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1 #-}
{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1609:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e2dcdc1d45bb292

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_3a24084c8d9b5568" hs_bindgen_3a24084c8d9b5568 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p #-}
{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1612:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a24084c8d9b5568

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_4fab38a61e115e87" hs_bindgen_4fab38a61e115e87 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q #-}
{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1614:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4fab38a61e115e87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_8237a9c737717650" hs_bindgen_8237a9c737717650 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d #-}
{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1616:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8237a9c737717650

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_9f25479fc2fcd89b" hs_bindgen_9f25479fc2fcd89b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n #-}
{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1618:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9f25479fc2fcd89b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_48898bdf4d2700e3" hs_bindgen_48898bdf4d2700e3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e #-}
{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48898bdf4d2700e3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_a476200a8f1ee8e5" hs_bindgen_a476200a8f1ee8e5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey #-}
{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1623:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a476200a8f1ee8e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_2c77e53c9ef5fdbb" hs_bindgen_2c77e53c9ef5fdbb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa #-}
{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1625:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c77e53c9ef5fdbb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_ac6d4cfb1a032e9e" hs_bindgen_ac6d4cfb1a032e9e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1628:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ac6d4cfb1a032e9e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_1a5e7ee30f467816" hs_bindgen_1a5e7ee30f467816 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1630:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a5e7ee30f467816

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_d81a707643538a5b" hs_bindgen_d81a707643538a5b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa #-}
{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1636:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d81a707643538a5b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_3462a3edeb467510" hs_bindgen_3462a3edeb467510 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1639:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3462a3edeb467510

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_16642a4738bef926" hs_bindgen_16642a4738bef926 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x #-}
{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1642:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16642a4738bef926

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_bf5068b209fd216b" hs_bindgen_bf5068b209fd216b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1645:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf5068b209fd216b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_c5e2b6b2d278b556" hs_bindgen_c5e2b6b2d278b556 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1647:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c5e2b6b2d278b556

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_8d5cf2c95260cb40" hs_bindgen_8d5cf2c95260cb40 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1649:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d5cf2c95260cb40

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_c3de84dd0036f96a" hs_bindgen_c3de84dd0036f96a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1651:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c3de84dd0036f96a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_97ef63a7bd0f0a40" hs_bindgen_97ef63a7bd0f0a40 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh #-}
{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1666:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_97ef63a7bd0f0a40

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_03621ffccc58af8c" hs_bindgen_03621ffccc58af8c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dh #-}
{-| Loads Diffie Hellman public key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@y@ /(input)/__]: public key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_pubkey_load_dh@

__defined at:__ @botan\/ffi.h:1680:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03621ffccc58af8c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_7e411e779692b046" hs_bindgen_7e411e779692b046 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_elgamal #-}
{-| Loads ElGamal public key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@y@ /(input)/__]: public key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_pubkey_load_elgamal@

__defined at:__ @botan\/ffi.h:1698:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e411e779692b046

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_b5473049d8311316" hs_bindgen_b5473049d8311316 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_elgamal #-}
{-| Loads ElGamal private key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@x@ /(input)/__]: private key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_load_elgamal@

__defined at:__ @botan\/ffi.h:1713:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5473049d8311316

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_2ca56163437fb9df" hs_bindgen_2ca56163437fb9df ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519 #-}
{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1719:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ca56163437fb9df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_a377b1fb43394c7b" hs_bindgen_a377b1fb43394c7b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519 #-}
{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a377b1fb43394c7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_1774c4c8ae6b9051" hs_bindgen_1774c4c8ae6b9051 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1774c4c8ae6b9051

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_3bad3a7bde84d9af" hs_bindgen_3bad3a7bde84d9af ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bad3a7bde84d9af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_474f8d8947b4cf4d" hs_bindgen_474f8d8947b4cf4d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448 #-}
{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1733:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_474f8d8947b4cf4d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_bf0ffeab316b7a89" hs_bindgen_bf0ffeab316b7a89 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448 #-}
{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1735:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf0ffeab316b7a89

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_ed448_get_privkey@
foreign import ccall unsafe "hs_bindgen_3b9f1a76e256a58d" hs_bindgen_3b9f1a76e256a58d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1738:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3b9f1a76e256a58d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ed448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_6074e44342ba5f56" hs_bindgen_6074e44342ba5f56 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1741:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6074e44342ba5f56

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_c21f1ad204b5a4f8" hs_bindgen_c21f1ad204b5a4f8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519 #-}
{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1747:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c21f1ad204b5a4f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_4df56ae1bdd66548" hs_bindgen_4df56ae1bdd66548 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519 #-}
{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1749:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4df56ae1bdd66548

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_705fa61bb79a062e" hs_bindgen_705fa61bb79a062e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_705fa61bb79a062e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_733a19bf0f8e5d1a" hs_bindgen_733a19bf0f8e5d1a ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1755:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_733a19bf0f8e5d1a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_x448@
foreign import ccall unsafe "hs_bindgen_1de1a907a8f052fa" hs_bindgen_1de1a907a8f052fa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448 #-}
{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1761:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1de1a907a8f052fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_x448@
foreign import ccall unsafe "hs_bindgen_99c9a7c4871e3d7a" hs_bindgen_99c9a7c4871e3d7a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448 #-}
{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1763:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_99c9a7c4871e3d7a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_x448_get_privkey@
foreign import ccall unsafe "hs_bindgen_c1ead104f31f3e2d" hs_bindgen_c1ead104f31f3e2d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1ead104f31f3e2d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_x448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_49b07b278352fadb" hs_bindgen_49b07b278352fadb ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1769:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49b07b278352fadb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_f51469c178eaa694" hs_bindgen_f51469c178eaa694 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_dsa #-}
{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1776:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f51469c178eaa694

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_cc6080d6ada0a094" hs_bindgen_cc6080d6ada0a094 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1779:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc6080d6ada0a094

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_2d8fcca64efd3616" hs_bindgen_2d8fcca64efd3616 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber #-}
{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1790:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2d8fcca64efd3616

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_3cf1425e97069bf4" hs_bindgen_3cf1425e97069bf4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber #-}
{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1793:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3cf1425e97069bf4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_e88e1d8a56c85be2" hs_bindgen_e88e1d8a56c85be2 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1797:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e88e1d8a56c85be2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_643948781067c3fe" hs_bindgen_643948781067c3fe ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1801:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_643948781067c3fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_6d7f1ad61ff2477e" hs_bindgen_6d7f1ad61ff2477e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_frodokem #-}
{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1808:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_frodokem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d7f1ad61ff2477e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_3a0c03474cdecb82" hs_bindgen_3a0c03474cdecb82 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_frodokem #-}
{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1811:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_frodokem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a0c03474cdecb82

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_a02d86d259bd437b" hs_bindgen_a02d86d259bd437b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_classic_mceliece #-}
{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1818:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_classic_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a02d86d259bd437b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_39a7cbd017234245" hs_bindgen_39a7cbd017234245 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_classic_mceliece #-}
{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1824:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_classic_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39a7cbd017234245

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_d94aac28d03d1cc4" hs_bindgen_d94aac28d03d1cc4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_kem #-}
{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1834:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_kem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d94aac28d03d1cc4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_86493f787362e859" hs_bindgen_86493f787362e859 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_kem #-}
{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1837:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_kem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86493f787362e859

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_a65350f46701a534" hs_bindgen_a65350f46701a534 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_slh_dsa #-}
{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1844:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_slh_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a65350f46701a534

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_846191d3ffb86dcd" hs_bindgen_846191d3ffb86dcd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_slh_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1847:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_slh_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_846191d3ffb86dcd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall unsafe "hs_bindgen_aded3f3659f547e7" hs_bindgen_aded3f3659f547e7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding #-}
{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1853:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aded3f3659f547e7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_c2818c03f4b836e6" hs_bindgen_c2818c03f4b836e6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa #-}
{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1856:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c2818c03f4b836e6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_6fbe44384374e807" hs_bindgen_6fbe44384374e807 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa #-}
{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1859:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fbe44384374e807

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_f08746fa407a122f" hs_bindgen_f08746fa407a122f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh #-}
{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1862:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f08746fa407a122f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_1e5a62ff79fca3a2" hs_bindgen_1e5a62ff79fca3a2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh #-}
{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1865:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e5a62ff79fca3a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_3242ca1dede84a0f" hs_bindgen_3242ca1dede84a0f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2 #-}
{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1868:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3242ca1dede84a0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_e863e5e3b45bd177" hs_bindgen_e863e5e3b45bd177 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2 #-}
{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1871:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e863e5e3b45bd177

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_7d7e281bdf019cb7" hs_bindgen_7d7e281bdf019cb7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1875:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d7e281bdf019cb7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_fc3d1b9d44788b7d" hs_bindgen_fc3d1b9d44788b7d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1879:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fc3d1b9d44788b7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_a9caeecd9bd29d69" hs_bindgen_a9caeecd9bd29d69 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za #-}
{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1882:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9caeecd9bd29d69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_5632a1d267ba05d0" hs_bindgen_5632a1d267ba05d0 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point #-}
{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1889:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5632a1d267ba05d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_a5986dff1df3e445" hs_bindgen_a5986dff1df3e445 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1897:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5986dff1df3e445

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_b0a5a6512fcf99cb" hs_bindgen_b0a5a6512fcf99cb ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1902:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b0a5a6512fcf99cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_7b12231986db4fa3" hs_bindgen_7b12231986db4fa3 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1905:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b12231986db4fa3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_1b2fb5bb77adf3fc" hs_bindgen_1b2fb5bb77adf3fc ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt #-}
{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1908:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b2fb5bb77adf3fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_188ab231741a6959" hs_bindgen_188ab231741a6959 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1921:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_188ab231741a6959

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_d61a3f93a7ef3ca6" hs_bindgen_d61a3f93a7ef3ca6 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d61a3f93a7ef3ca6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_f90c5d68c8a8ef1e" hs_bindgen_f90c5d68c8a8ef1e ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1929:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f90c5d68c8a8ef1e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_8bd73a3597ec40f4" hs_bindgen_8bd73a3597ec40f4 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt #-}
{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1932:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8bd73a3597ec40f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_9267a11036585a4b" hs_bindgen_9267a11036585a4b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create #-}
{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1944:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9267a11036585a4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_8b872b07c3e8969d" hs_bindgen_8b872b07c3e8969d ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1949:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b872b07c3e8969d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_bd913c48b95a2799" hs_bindgen_bd913c48b95a2799 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length #-}
{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1951:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd913c48b95a2799

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_69b155f2dd665c8f" hs_bindgen_69b155f2dd665c8f ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update #-}
{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1953:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69b155f2dd665c8f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_3e7d55dd10ef0ee3" hs_bindgen_3e7d55dd10ef0ee3 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish #-}
{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1956:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3e7d55dd10ef0ee3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_df533327469b1b5f" hs_bindgen_df533327469b1b5f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create #-}
{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1964:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df533327469b1b5f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_f511fb0fd9b555df" hs_bindgen_f511fb0fd9b555df ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1972:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f511fb0fd9b555df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_9b25ecd564c2c9f9" hs_bindgen_9b25ecd564c2c9f9 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update #-}
{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1974:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b25ecd564c2c9f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_06a71913152930b4" hs_bindgen_06a71913152930b4 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish #-}
{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1975:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_06a71913152930b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_3fda38334320f753" hs_bindgen_3fda38334320f753 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1983:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3fda38334320f753

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_52f3f411223fea40" hs_bindgen_52f3f411223fea40 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1988:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_52f3f411223fea40

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_9b4e31283400ed43" hs_bindgen_9b4e31283400ed43 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1990:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b4e31283400ed43

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_7f335d34760c475e" hs_bindgen_7f335d34760c475e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1993:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f335d34760c475e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_87308c06868253f4" hs_bindgen_87308c06868253f4 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1995:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87308c06868253f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_5bff341144506aee" hs_bindgen_5bff341144506aee ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement #-}
{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1998:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5bff341144506aee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_892501c95e02b84c" hs_bindgen_892501c95e02b84c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:2012:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_892501c95e02b84c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_6d268942604fc048" hs_bindgen_6d268942604fc048 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:2017:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d268942604fc048

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_36c282c5178cfbdc" hs_bindgen_36c282c5178cfbdc ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2020:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_36c282c5178cfbdc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_421d658107f8cfc6" hs_bindgen_421d658107f8cfc6 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:2025:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_421d658107f8cfc6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_4c31c82ddcfe448d" hs_bindgen_4c31c82ddcfe448d ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:2029:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c31c82ddcfe448d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_977c067d10559a80" hs_bindgen_977c067d10559a80 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:2042:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_977c067d10559a80

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_820f79c31556bafc" hs_bindgen_820f79c31556bafc ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:2047:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_820f79c31556bafc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_ab0cf4347dc495c4" hs_bindgen_ab0cf4347dc495c4 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2050:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ab0cf4347dc495c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_0a94a687cee98a15" hs_bindgen_0a94a687cee98a15 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:2055:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a94a687cee98a15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_130df3d535a8ea07" hs_bindgen_130df3d535a8ea07 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id #-}
{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:2068:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_130df3d535a8ea07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_bb558a2ac251a874" hs_bindgen_bb558a2ac251a874 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt #-}
{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:2075:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb558a2ac251a874

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_bed9de8fcac22a3a" hs_bindgen_bed9de8fcac22a3a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt #-}
{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:2090:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bed9de8fcac22a3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_647b1c77658e604e" hs_bindgen_647b1c77658e604e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load #-}
{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:2105:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_647b1c77658e604e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_cfb13264a0f72fea" hs_bindgen_cfb13264a0f72fea ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file #-}
{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:2106:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cfb13264a0f72fea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_7f689121cf5ee737" hs_bindgen_7f689121cf5ee737 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:2111:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f689121cf5ee737

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_bb7fc2b7d0d5bf18" hs_bindgen_bb7fc2b7d0d5bf18 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup #-}
{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:2113:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb7fc2b7d0d5bf18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_c6466a021d82bc6c" hs_bindgen_c6466a021d82bc6c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts #-}
{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:2116:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6466a021d82bc6c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_3fddc687ac3ebb79" hs_bindgen_3fddc687ac3ebb79 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires #-}
{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:2117:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3fddc687ac3ebb79

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_a40f42c7d9a502e4" hs_bindgen_a40f42c7d9a502e4 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before #-}
{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:2119:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a40f42c7d9a502e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_6017562c8ec2bc42" hs_bindgen_6017562c8ec2bc42 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after #-}
{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:2120:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6017562c8ec2bc42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_a6dd3407e674dccf" hs_bindgen_a6dd3407e674dccf ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint #-}
{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:2123:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a6dd3407e674dccf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_192161ed9873b432" hs_bindgen_192161ed9873b432 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number #-}
{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:2125:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_192161ed9873b432

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_e29e70a5252974ca" hs_bindgen_e29e70a5252974ca ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:2126:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e29e70a5252974ca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_1dc607ee1fc8196e" hs_bindgen_1dc607ee1fc8196e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:2127:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1dc607ee1fc8196e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_6151282f358ba157" hs_bindgen_6151282f358ba157 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:2129:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6151282f358ba157

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_414a12589ac2c995" hs_bindgen_414a12589ac2c995 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:2132:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_414a12589ac2c995

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_4e7fddcea64d0350" hs_bindgen_4e7fddcea64d0350 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:2134:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4e7fddcea64d0350

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_86dace42bf5305d4" hs_bindgen_86dace42bf5305d4 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:2137:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86dace42bf5305d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_055e2249d76b2847" hs_bindgen_055e2249d76b2847 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:2141:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_055e2249d76b2847

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_e1258fd5e3270ee9" hs_bindgen_e1258fd5e3270ee9 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string #-}
{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:2144:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e1258fd5e3270ee9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_d36b198a162fbe92" hs_bindgen_d36b198a162fbe92 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string #-}
{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:2147:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d36b198a162fbe92

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_11542461d2df277b" hs_bindgen_11542461d2df277b ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage #-}
{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:2163:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11542461d2df277b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_c90a803fc0be3c35" hs_bindgen_c90a803fc0be3c35 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match #-}
{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:2169:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c90a803fc0be3c35

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_27b4244a56282ee5" hs_bindgen_27b4244a56282ee5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify #-}
{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:2180:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_27b4244a56282ee5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_15cf572a7a41f604" hs_bindgen_15cf572a7a41f604 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status #-}
{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:2195:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15cf572a7a41f604

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_bd141b386208cffe" hs_bindgen_bd141b386208cffe ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file #-}
{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:2203:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd141b386208cffe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_d6bca337f926b497" hs_bindgen_d6bca337f926b497 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load #-}
{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:2205:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6bca337f926b497

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_848c757253e99f7a" hs_bindgen_848c757253e99f7a ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy #-}
{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:2207:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_848c757253e99f7a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_ed229457902d9761" hs_bindgen_ed229457902d9761 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked #-}
{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:2213:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ed229457902d9761

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_c1e097deb4835dc5" hs_bindgen_c1e097deb4835dc5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl #-}
{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:2220:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1e097deb4835dc5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_db6511b7d5c71c3a" hs_bindgen_db6511b7d5c71c3a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394 #-}
{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:2238:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_db6511b7d5c71c3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_fa75a8f836e576c2" hs_bindgen_fa75a8f836e576c2 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394 #-}
{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:2247:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa75a8f836e576c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_b871639e95805869" hs_bindgen_b871639e95805869 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc #-}
{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2255:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b871639e95805869

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_657d1785a1677f07" hs_bindgen_657d1785a1677f07 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec #-}
{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2265:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_657d1785a1677f07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_b7b8604cb963e20d" hs_bindgen_b7b8604cb963e20d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init #-}
{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2284:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b7b8604cb963e20d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_f91f506ca67c5bc5" hs_bindgen_f91f506ca67c5bc5 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy #-}
{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2291:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f91f506ca67c5bc5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_9a587ce3b77453ce" hs_bindgen_9a587ce3b77453ce ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate #-}
{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2297:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a587ce3b77453ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_c0a05ae62a43c597" hs_bindgen_c0a05ae62a43c597 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check #-}
{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2303:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c0a05ae62a43c597

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_50faf5f2cf36ee83" hs_bindgen_50faf5f2cf36ee83 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init #-}
{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2316:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50faf5f2cf36ee83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_0bc8c8fc70a2fbe5" hs_bindgen_0bc8c8fc70a2fbe5 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy #-}
{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2324:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0bc8c8fc70a2fbe5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_0a22ddb5a8cb0eba" hs_bindgen_0a22ddb5a8cb0eba ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate #-}
{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2333:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a22ddb5a8cb0eba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_6700446b4f5d6b26" hs_bindgen_6700446b4f5d6b26 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check #-}
{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2344:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6700446b4f5d6b26

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_ae758333553a3bcb" hs_bindgen_ae758333553a3bcb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init #-}
{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2355:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae758333553a3bcb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_7981a019b6bf2622" hs_bindgen_7981a019b6bf2622 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2362:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7981a019b6bf2622

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_4cc607b3402fd933" hs_bindgen_4cc607b3402fd933 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt #-}
{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2365:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4cc607b3402fd933

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_ae183694dd03b131" hs_bindgen_ae183694dd03b131 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt #-}
{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2368:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae183694dd03b131

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_38f150e93bd1d1f1" hs_bindgen_38f150e93bd1d1f1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init #-}
{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2380:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38f150e93bd1d1f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_b36f490ca1897249" hs_bindgen_b36f490ca1897249 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy #-}
{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2388:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b36f490ca1897249

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_a19b08be54f2ed5c" hs_bindgen_a19b08be54f2ed5c ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_step1 #-}
{-| SRP-6 Server side step 1

  [__@srp6@ /(input)/__]: SRP-6 server session object

  [__@verifier@ /(input)/__]: the verification value saved from client registration

  [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

  [__@group_id@ /(input)/__]: the SRP group id

  [__@hash_id@ /(input)/__]: the SRP hash in use

  [__@rng_obj@ /(input)/__]: a random number generator object

  [__@B_pub@ /(input)/__]: out buffer to store the SRP-6 B value

  [__@B_pub_len@ /(input)/__]: SRP-6 B value length

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_srp6_server_session_step1@

__defined at:__ @botan\/ffi.h:2403:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a19b08be54f2ed5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_b6a1df0fa8ffd02e" hs_bindgen_b6a1df0fa8ffd02e ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_step2 #-}
{-| SRP-6 Server side step 2

  [__@srp6@ /(input)/__]: SRP-6 server session object

  [__@A@ /(input)/__]: the client's value

  [__@A_len@ /(input)/__]: the client's value length

  [__@key@ /(input)/__]: out buffer to store the symmetric key value

  [__@key_len@ /(input)/__]: symmetric key length

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_srp6_server_session_step2@

__defined at:__ @botan\/ffi.h:2422:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6a1df0fa8ffd02e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_dc68bf12b98de9fc" hs_bindgen_dc68bf12b98de9fc ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_generate_verifier #-}
{-| Generate a new SRP-6 verifier

  [__@identifier@ /(input)/__]: a username or other client identifier

  [__@password@ /(input)/__]: the secret used to authenticate user

  [__@salt@ /(input)/__]: a randomly chosen value, at least 128 bits long

  [__@salt_len@ /(input)/__]: the length of salt

  [__@group_id@ /(input)/__]: specifies the shared SRP group

  [__@hash_id@ /(input)/__]: specifies a secure hash function

  [__@verifier@ /(input)/__]: out buffer to store the SRP-6 verifier value

  [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_srp6_generate_verifier@

__defined at:__ @botan\/ffi.h:2438:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc68bf12b98de9fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_d609897da9d59504" hs_bindgen_d609897da9d59504 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_client_agree #-}
{-| SRP6a Client side

  [__@username@ /(input)/__]: the username we are attempting login for

  [__@password@ /(input)/__]: the password we are attempting to use

  [__@group_id@ /(input)/__]: specifies the shared SRP group

  [__@hash_id@ /(input)/__]: specifies a secure hash function

  [__@salt@ /(input)/__]: is the salt value sent by the server

  [__@salt_len@ /(input)/__]: the length of salt

  [__@B@ /(input)/__]: is the server's public value

  [__@B_len@ /(input)/__]: is the server's public value length

  [__@rng_obj@ /(input)/__]: is a random number generator object

  [__@A@ /(input)/__]: out buffer to store the SRP-6 A value

  [__@A_len@ /(input)/__]: SRP-6 A verifier value length

  [__@K@ /(input)/__]: out buffer to store the symmetric value

  [__@K_len@ /(input)/__]: symmetric key length

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_srp6_client_agree@

__defined at:__ @botan\/ffi.h:2465:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d609897da9d59504

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_87522fb3c93fb790" hs_bindgen_87522fb3c93fb790 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size #-}
{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2483:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87522fb3c93fb790

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_37ddf656b8f5255c" hs_bindgen_37ddf656b8f5255c ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

{-# NOINLINE botan_zfec_encode #-}
{-| Encode some bytes with certain ZFEC parameters.

  [__@K@ /(input)/__]: the number of shares needed for recovery

  [__@N@ /(input)/__]: the number of shares generated

  [__@input@ /(input)/__]: the data to FEC

  [__@size@ /(input)/__]: the length in bytes of input, which must be a multiple of K

  [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [N][size / K].  For all n in range, an encoded block will be written to the memory starting at outputs[n][0].

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_zfec_encode@

__defined at:__ @botan\/ffi.h:2504:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37ddf656b8f5255c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_1780ae70260ce35d" hs_bindgen_1780ae70260ce35d ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

{-# NOINLINE botan_zfec_decode #-}
{-| Decode some previously encoded shares using certain ZFEC parameters.

  [__@K@ /(input)/__]: the number of shares needed for recovery

  [__@N@ /(input)/__]: the total number of shares

  [__@indexes@ /(input)/__]: The index into the encoder's outputs for the corresponding element of the inputs array. Must be of length K.

  [__@inputs@ /(input)/__]: K previously encoded shares to decode

  [__@shareSize@ /(input)/__]: the length in bytes of each input

  [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [K][shareSize].  For all k in range, a decoded block will written to the memory starting at outputs[k][0].

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_zfec_decode@

__defined at:__ @botan\/ffi.h:2525:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1780ae70260ce35d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_supports_crypto_backend@
foreign import ccall unsafe "hs_bindgen_5f6ab290d4418e9c" hs_bindgen_5f6ab290d4418e9c ::
     IO (Ptr.FunPtr (IO FC.CInt))

{-# NOINLINE botan_tpm2_supports_crypto_backend #-}
{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2550:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend :: Ptr.FunPtr (IO FC.CInt)
botan_tpm2_supports_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f6ab290d4418e9c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_init@
foreign import ccall unsafe "hs_bindgen_303be3e2d1968d7b" hs_bindgen_303be3e2d1968d7b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init #-}
{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2558:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_303be3e2d1968d7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_init_ex@
foreign import ccall unsafe "hs_bindgen_5cc854c9379f5665" hs_bindgen_5cc854c9379f5665 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ex #-}
{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2568:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5cc854c9379f5665

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_from_esys@
foreign import ccall unsafe "hs_bindgen_ed617f4fa6477989" hs_bindgen_ed617f4fa6477989 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_from_esys #-}
{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2579:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt)
botan_tpm2_ctx_from_esys =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ed617f4fa6477989

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_323e1b7cde99b77e" hs_bindgen_323e1b7cde99b77e ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_enable_crypto_backend #-}
{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2591:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend :: Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_ctx_enable_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_323e1b7cde99b77e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_ctx_destroy@
foreign import ccall unsafe "hs_bindgen_3377bfd3a62e01da" hs_bindgen_3377bfd3a62e01da ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_destroy #-}
{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2598:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy :: Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_ctx_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3377bfd3a62e01da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_36dcfafccc206144" hs_bindgen_36dcfafccc206144 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_enable_crypto_backend #-}
{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2612:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_enable_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_36dcfafccc206144

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_crypto_backend_state_destroy@
foreign import ccall unsafe "hs_bindgen_da41f815f6ac71ab" hs_bindgen_da41f815f6ac71ab ::
     IO (Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_crypto_backend_state_destroy #-}
{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2624:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy :: Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt)
botan_tpm2_crypto_backend_state_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da41f815f6ac71ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_rng_init@
foreign import ccall unsafe "hs_bindgen_13cee8a4b5957d29" hs_bindgen_13cee8a4b5957d29 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_rng_init #-}
{-| Initialize a random number generator object via TPM2

  [__@rng_out@ /(input)/__]: rng object to create

  [__@ctx@ /(input)/__]: TPM2 context

  [__@s1@ /(input)/__]: the first session to use (optional, may be nullptr)

  [__@s2@ /(input)/__]: the second session to use (optional, may be nullptr)

  [__@s3@ /(input)/__]: the third session to use (optional, may be nullptr)

__C declaration:__ @botan_tpm2_rng_init@

__defined at:__ @botan\/ffi.h:2635:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13cee8a4b5957d29

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_unauthenticated_session_init@
foreign import ccall unsafe "hs_bindgen_24900c26a871c17f" hs_bindgen_24900c26a871c17f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_unauthenticated_session_init #-}
{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2647:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_unauthenticated_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_24900c26a871c17f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_1_get_botan_tpm2_session_destroy@
foreign import ccall unsafe "hs_bindgen_bf96e8690bb97821" hs_bindgen_bf96e8690bb97821 ::
     IO (Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_session_destroy #-}
{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2654:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy :: Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf96e8690bb97821
