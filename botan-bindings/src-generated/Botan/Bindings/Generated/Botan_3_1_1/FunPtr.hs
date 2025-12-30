{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_1_1.FunPtr where

import           Botan.Bindings.Generated.Botan_3_1_1
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_error_description */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_d0b91e0ce58cf4f4 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_error_last_exception_message */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_4c945ea164e460ea (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_ffi_api_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c16759cdf17b175b (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_ffi_supports_api */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11ae17a43de6bf6e (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_9342ac29f9675a84 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_major */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_86032a994dba31f9 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_minor */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a41cef9999183c63 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_patch */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8aa2bcc88da29885 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_datestamp */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1a071b42eace475f (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_constant_time_compare */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c470ed3f7cf1cf1 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_same_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f24c473a449e65b7 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_scrub_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33c56e9495004397 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hex_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df795abc4ab9b58b (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hex_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_187ac1123468ef42 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_base64_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b39898c64359f27a (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_base64_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_694343c49f2c1310 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5534949695b5476b (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_init_custom */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9fcb7046145ba983 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cba79a6421ddf7cb (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_system_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c331064449c253e0 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_reseed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d265f11ca53b46b (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_reseed_from_rng */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_91cbe2343844268e (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_add_entropy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d780b4dc2b58a0ad (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a59ae7fc54e1e50 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c789e4311bfe7ad6 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_copy_state */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4056e7a3253915f2 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4f58c7d257d1b8d6 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9b7159866553096 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6312980a1e210100 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bda26f459d8396d0 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29e564cfc923de8c (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f27bb6b157e7c6e (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e509a9e3d7c97a6f (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b1c6bf26a8cf2d59 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03473eb5a9773b8b (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3a0c6e309577e28 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_set_nonce */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bfd4a0b666766acf (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_009f27aa727a0a2c (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d98f7bdba3b4787 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32831a3a1a4e00ff (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b1f110285f834083 (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e745e0ac190d4173 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf31d4d35d2a3fad (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3f474ad21eb0171 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f717e442e413f8b5 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_371323719ebe1eab (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_valid_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a0efec7292f222d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_tag_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf95705f7b8a4319 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_default_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b3911179cf20957c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4b290d753371358d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_ideal_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f513055da937d872 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_query_keylen */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bcc408c29c27c32d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_175302ee3bbc639d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca137d907c805782 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_reset */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3773e46d7d3dd4ab (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_set_associated_data */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3833c019fd67b01 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_start */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a6df2a7da4ebd03 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7fe59020fe9f931d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f6635ed336dd05c (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_710b834e5e5494d1 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pbkdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f37dc75bfa2e19da (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pbkdf_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b2fb71c4a3894d7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pwdhash */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a94d2921cb3c09c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pwdhash_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92f3ff884c93c4fc (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_scrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d143b1ba3c8f950 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_kdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_542950c697e88b23 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19f3a321b53513d3 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90ec99a2c748e7a3 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9570e775337da3a2 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4b584974aae4a69 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_718b6fb905207948 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_encrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_edced3a63c58665e (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_decrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84d314948dd97018 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d883f9c16c996743 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_00bd5639dfb7c0eb (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bfda35bb5a98c7c0 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf4a5ff9c7a88e15 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_hex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d51eba19156905ce (void)) ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4fceec119ecd89c (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9b888a15be12251 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a93c7fac6c880ba5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_mp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a087a35310c14e4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6a00f3ce93b083c (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_radix_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_125c51059f813eed (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_num_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1141fb562a33c148 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_num_bytes */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_efda2ecf9b5fbc82 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47632569fb8b57e4 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_from_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2103cb384b16184e (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_uint32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_181fbe0a96e5a999 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_positive */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8bb80e2cb3ce771c (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_negative */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2663bf9f64d47f38 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_flip_sign */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04cad6ef5c2b954f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_zero */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2d75d04240db20dc (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_odd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c218bc70a49973b (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_even */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38fa8da8e0dcf05e (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_add_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f896eaa4edf16061 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_sub_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ead2a6ab1e97d162 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_add */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_623be590688e2a1a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_sub */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ef60a3e9c6fdda0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec3ee617ab647665 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_div */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ad296c79c73f8683 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mod_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b2269cc7d4ebf72a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19c66356db1020fa (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_848b188f8fece60e (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_swap */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_492c9bbfbb5eb349 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_powmod */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d855c97f23ca695b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_lshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2e4c0aff3ca4aae (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86db142aad3eb48d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mod_inverse */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_252e8fb7cc7d770a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rand_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a809fd32c82d684 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rand_range */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c7635f2f228fbc7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_gcd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ded1f9282a28ab6f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_prime */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2bcd741134a0606 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_get_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_575d0908e672a60f (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0b8f118068f48c8d (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_clear_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31698ca25fd9b975 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_bcrypt_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_312e9fdcb4c6c02b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_bcrypt_is_valid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_062254553726aeab (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2fa594ef9d2708c5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71791305d1742a5f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_67a9bb007a0dc277 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50e0a6d067695dee (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_088708d353c19b71 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8923d90c2c16f7aa (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b130a013571910db (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c785665dd1fcd040 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d09f5ebe26de7768 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_336c454bd88bceac (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c27f4c9646e5b0b2 (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8202d915ed625aaf (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dda260da3de06e5b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5e0c8130b735ed0 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_487cd4ec4de0b8b5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a071d3aca8379e9a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted_pbkdf_msec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6ec4ea97e777504 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted_pbkdf_iter */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d6272c19b6f69e1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_68701f3acfef5913 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_der_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13cea9ca1504d425 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b703b2396d2050fb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_pem_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be2db8bb48d7c8db (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38ff0eee85573c0a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c79ed76d3f225cbb (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2affe59c07b93a58 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2df650a572ac292 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64420cc4a49d2d0a (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0566676c8caee967 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d01a2fbe3154e79 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_estimated_strength */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2bbd9c3edf1d213b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12d9d14f9d937e92 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3cff92bb256a30ea (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a9db53baf440ae9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30c93f2ac15110d1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_887477d056943e35 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_rsa_pkcs1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c996020f2cedb6c6 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2baeec3e5f653721 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c787f5279dea947b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_d */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_efbddd1a0ef4c1eb (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90cf91fa0004f045 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a90a66687593e363 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84f0e3f6a9f179db (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6cfd21c2ee54fde8 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89c86831c5823ae7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9586f410e8bc397 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_128feb78d351b36e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22f71ab01a414693 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_dsa_get_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc29b8d2029ae099 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0daebc697cac945 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_81d94b838a54d21b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_g */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_910185fae7514790 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5a627245596cfd6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_751d2cf4521d0c2c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_06b1468fe5a3ca95 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28580a7e5cf1e49b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1625bac42b16db5b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_78097aba9dfbeb2a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d446219d74537680 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_ed25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e8ff95494796e98b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_ed25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8fc315f8451406d (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cd0a3b08ad2f5bb (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e457b2ff63b7518 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_x25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_422bd9b00c0f933a (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_x25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a057818f5624a93 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f9725a000fce250 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f753d5fb9279586 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_95525c989cff37f9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c6a60d0ae2c3690 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bd1bbeb558d825b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e45101b189d01d3 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9d79b37acd7ab86b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_383e664d96122f16 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c80f8ccedb9bfcc6 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c9060d94da5bf7a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5208b963bb28e416 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_82d2aa0eb1ae0648 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_sm2_compute_za */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bc2e1b6ab8012a8 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_ec_public_point */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6104e7b6b41f7a5 (void)) ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e521652aff41331 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e2796b0ff8f04b9 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ecca5fb38027d6d (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_05de391486042131 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ebfc866b1937d0d2 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b44dc3b554ea68cd (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_074595a8b896bdf2 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1bd137dab4bf176 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69119384502da22f (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_36f741d6179b32b3 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4397db597b39728e (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_305ec67d02700013 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9976ca95cceca35 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4887e12a4d76584f (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4c23167ca7c4b5e (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35f270fbb621ef5e (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75ac380165d810bd (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ecb5b98c6b4f3da2 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f88e29a03359ba61 (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_export_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92654b793af8881f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_view_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf46082303c5321a (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_63d7ea1055f127c6 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_688b38f39601a529 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50dcfe8b1f9d523c (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dfea46487f9c3e86 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3fbd3cf349b0886 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_encapsulated_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74bedaedb7cfb333 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_create_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b71889956f791e42 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8ddf99efba6ea808 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38eecd15d7176bcb (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0aebca95785503fa (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6c3092ab9a8d6e2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pkcs_hash_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_62eb708e77758628 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mceies_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe9b1b86bd6ea786 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mceies_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4f1b2a3c02c22d29 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bac58534db399621 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bae1713b8cb721d (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5f9f0b821ef1f01 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_dup */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d674882b8fd51485 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_time_starts */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_68dcaff6df29ec1f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_time_expires */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f5b1a5395a0cbd75 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_not_before */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c3dcd0183b6ce835 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_not_after */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6669418f806548b4 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f95082feb24917e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_serial_number */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b9be458b5cdf3d0f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_authority_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bc4a1b99fa9aa97 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_subject_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_557c301abd9a2851 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a08f1967e8129480 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_view_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b7b4ad0a0a0fceb (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_public_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_41e96df54e64d2ad (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_issuer_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9224a5727b6b77ec (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_subject_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ee2a81c46a914b89 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_to_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8ba3e03212e6594 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_view_as_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_672acc4be3c5e841 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_allowed_usage */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51764bbd5ed87fc9 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_hostname_match */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37f6f663722afd20 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_verify */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d05a8739b3c112c2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_validation_status */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_f13ad9735aee5db3 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df8ef02208273618 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbd2781f2ad1c1db (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_530b8f7112a492d8 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_is_revoked */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9b8ae75e1a2ff0a (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_verify_with_crl */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_67135faab7d5b15c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_key_wrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6afdf90524ed5fb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_key_unwrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2465618b0d857412 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_nist_kw_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d12bcd541e0e9d8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_nist_kw_dec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a4dc114181f2373 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2d4286da404085a (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8361015e672e629e (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2ba9ef9d8240d67 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_178e3fff5d10093d (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b16398efc780a754 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d87ceb616d153c88 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bbf9504d9d899d4 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e17a2857f1ad504 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_fe1_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c8cdf9aaf4b68ac (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_180c7b010c40697d (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a793747888f6168 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5383dcd61a56e912 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47ad6d7a383cf8d7 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bebbd26d18453fe8 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_step1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_53bbfe15e699cc69 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_step2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_831121aed2cb0e05 (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_generate_verifier */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c908b3baf90b56f1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_client_agree */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10e92e35386ae821 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_group_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f09d74b80d81338c (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_zfec_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf71a79ebc3c39c6 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_zfec_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42270ece9cac1a22 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  size_t const *arg3,"
  , "  uint8_t *const *const arg4,"
  , "  size_t arg5,"
  , "  uint8_t **arg6"
  , ")"
  , "{"
  , "  return &botan_zfec_decode;"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_error_description@
foreign import ccall unsafe "hs_bindgen_d0b91e0ce58cf4f4" hs_bindgen_d0b91e0ce58cf4f4 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description #-}
{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:144:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0b91e0ce58cf4f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_4c945ea164e460ea" hs_bindgen_4c945ea164e460ea ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message #-}
{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:153:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c945ea164e460ea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_c16759cdf17b175b" hs_bindgen_c16759cdf17b175b ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version #-}
{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:160:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c16759cdf17b175b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_11ae17a43de6bf6e" hs_bindgen_11ae17a43de6bf6e ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api #-}
{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:166:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11ae17a43de6bf6e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_string@
foreign import ccall unsafe "hs_bindgen_9342ac29f9675a84" hs_bindgen_9342ac29f9675a84 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string #-}
{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:171:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9342ac29f9675a84

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_major@
foreign import ccall unsafe "hs_bindgen_86032a994dba31f9" hs_bindgen_86032a994dba31f9 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major #-}
{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:176:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86032a994dba31f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_a41cef9999183c63" hs_bindgen_a41cef9999183c63 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor #-}
{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:181:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a41cef9999183c63

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_8aa2bcc88da29885" hs_bindgen_8aa2bcc88da29885 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch #-}
{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8aa2bcc88da29885

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_1a071b42eace475f" hs_bindgen_1a071b42eace475f ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp #-}
{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a071b42eace475f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_2c470ed3f7cf1cf1" hs_bindgen_2c470ed3f7cf1cf1 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare #-}
{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:197:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c470ed3f7cf1cf1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_f24c473a449e65b7" hs_bindgen_f24c473a449e65b7 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem #-}
{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:203:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f24c473a449e65b7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_33c56e9495004397" hs_bindgen_33c56e9495004397 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem #-}
{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:209:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33c56e9495004397

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_df795abc4ab9b58b" hs_bindgen_df795abc4ab9b58b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode #-}
{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:221:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df795abc4ab9b58b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_187ac1123468ef42" hs_bindgen_187ac1123468ef42 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode #-}
{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:231:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_187ac1123468ef42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_b39898c64359f27a" hs_bindgen_b39898c64359f27a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode #-}
{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b39898c64359f27a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_694343c49f2c1310" hs_bindgen_694343c49f2c1310 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode #-}
{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_694343c49f2c1310

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_5534949695b5476b" hs_bindgen_5534949695b5476b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init #-}
{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5534949695b5476b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_9fcb7046145ba983" hs_bindgen_9fcb7046145ba983 ::
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

__defined at:__ @botan\/ffi.h:270:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9fcb7046145ba983

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_cba79a6421ddf7cb" hs_bindgen_cba79a6421ddf7cb ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get #-}
{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:284:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cba79a6421ddf7cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_c331064449c253e0" hs_bindgen_c331064449c253e0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get #-}
{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:292:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c331064449c253e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_4d265f11ca53b46b" hs_bindgen_4d265f11ca53b46b ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed #-}
{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:302:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d265f11ca53b46b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_91cbe2343844268e" hs_bindgen_91cbe2343844268e ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng #-}
{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:312:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_91cbe2343844268e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_d780b4dc2b58a0ad" hs_bindgen_d780b4dc2b58a0ad ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy #-}
{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:322:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d780b4dc2b58a0ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_5a59ae7fc54e1e50" hs_bindgen_5a59ae7fc54e1e50 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy #-}
{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:329:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a59ae7fc54e1e50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_c789e4311bfe7ad6" hs_bindgen_c789e4311bfe7ad6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init #-}
{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:343:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c789e4311bfe7ad6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_4056e7a3253915f2" hs_bindgen_4056e7a3253915f2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state #-}
{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:351:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4056e7a3253915f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_4f58c7d257d1b8d6" hs_bindgen_4f58c7d257d1b8d6 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length #-}
{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:359:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4f58c7d257d1b8d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_a9b7159866553096" hs_bindgen_a9b7159866553096 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size #-}
{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:367:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9b7159866553096

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_6312980a1e210100" hs_bindgen_6312980a1e210100 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update #-}
{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:376:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6312980a1e210100

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_bda26f459d8396d0" hs_bindgen_bda26f459d8396d0 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final #-}
{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:386:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bda26f459d8396d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_29e564cfc923de8c" hs_bindgen_29e564cfc923de8c ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear #-}
{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:394:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29e564cfc923de8c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_5f27bb6b157e7c6e" hs_bindgen_5f27bb6b157e7c6e ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy #-}
{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:401:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f27bb6b157e7c6e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_e509a9e3d7c97a6f" hs_bindgen_e509a9e3d7c97a6f ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name #-}
{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:409:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e509a9e3d7c97a6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_b1c6bf26a8cf2d59" hs_bindgen_b1c6bf26a8cf2d59 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init #-}
{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:424:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b1c6bf26a8cf2d59

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_03473eb5a9773b8b" hs_bindgen_03473eb5a9773b8b ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length #-}
{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:432:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03473eb5a9773b8b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_f3a0c6e309577e28" hs_bindgen_f3a0c6e309577e28 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key #-}
{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:441:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3a0c6e309577e28

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_bfd4a0b666766acf" hs_bindgen_bfd4a0b666766acf ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce #-}
{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:450:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bfd4a0b666766acf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_009f27aa727a0a2c" hs_bindgen_009f27aa727a0a2c ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update #-}
{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:459:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_009f27aa727a0a2c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_6d98f7bdba3b4787" hs_bindgen_6d98f7bdba3b4787 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final #-}
{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d98f7bdba3b4787

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_32831a3a1a4e00ff" hs_bindgen_32831a3a1a4e00ff ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear #-}
{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:477:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32831a3a1a4e00ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_b1f110285f834083" hs_bindgen_b1f110285f834083 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name #-}
{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:485:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b1f110285f834083

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_e745e0ac190d4173" hs_bindgen_e745e0ac190d4173 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec #-}
{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:495:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e745e0ac190d4173

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_cf31d4d35d2a3fad" hs_bindgen_cf31d4d35d2a3fad ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy #-}
{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:505:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf31d4d35d2a3fad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_a3f474ad21eb0171" hs_bindgen_a3f474ad21eb0171 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init #-}
{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3f474ad21eb0171

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_f717e442e413f8b5" hs_bindgen_f717e442e413f8b5 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name #-}
{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f717e442e413f8b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_371323719ebe1eab" hs_bindgen_371323719ebe1eab ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length #-}
{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:529:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_371323719ebe1eab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_3a0efec7292f222d" hs_bindgen_3a0efec7292f222d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length #-}
{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:534:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a0efec7292f222d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_cf95705f7b8a4319" hs_bindgen_cf95705f7b8a4319 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length #-}
{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:539:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf95705f7b8a4319

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_b3911179cf20957c" hs_bindgen_b3911179cf20957c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length #-}
{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:544:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3911179cf20957c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_4b290d753371358d" hs_bindgen_4b290d753371358d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity #-}
{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4b290d753371358d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_f513055da937d872" hs_bindgen_f513055da937d872 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity #-}
{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:556:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f513055da937d872

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_bcc408c29c27c32d" hs_bindgen_bcc408c29c27c32d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen #-}
{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:562:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bcc408c29c27c32d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_175302ee3bbc639d" hs_bindgen_175302ee3bbc639d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec #-}
{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:568:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_175302ee3bbc639d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_ca137d907c805782" hs_bindgen_ca137d907c805782 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key #-}
{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:573:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca137d907c805782

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_3773e46d7d3dd4ab" hs_bindgen_3773e46d7d3dd4ab ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset #-}
{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:583:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3773e46d7d3dd4ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_d3833c019fd67b01" hs_bindgen_d3833c019fd67b01 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data #-}
{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:588:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3833c019fd67b01

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_8a6df2a7da4ebd03" hs_bindgen_8a6df2a7da4ebd03 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start #-}
{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:593:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a6df2a7da4ebd03

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_7fe59020fe9f931d" hs_bindgen_7fe59020fe9f931d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update #-}
{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:601:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7fe59020fe9f931d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_7f6635ed336dd05c" hs_bindgen_7f6635ed336dd05c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear #-}
{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f6635ed336dd05c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_710b834e5e5494d1" hs_bindgen_710b834e5e5494d1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy #-}
{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:619:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_710b834e5e5494d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_f37dc75bfa2e19da" hs_bindgen_f37dc75bfa2e19da ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf #-}
{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:638:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f37dc75bfa2e19da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_7b2fb71c4a3894d7" hs_bindgen_7b2fb71c4a3894d7 ::
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

__defined at:__ @botan\/ffi.h:671:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b2fb71c4a3894d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_8a94d2921cb3c09c" hs_bindgen_8a94d2921cb3c09c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash #-}
{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:695:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a94d2921cb3c09c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_92f3ff884c93c4fc" hs_bindgen_92f3ff884c93c4fc ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed #-}
{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:722:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92f3ff884c93c4fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_5d143b1ba3c8f950" hs_bindgen_5d143b1ba3c8f950 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt #-}
{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:741:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d143b1ba3c8f950

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_kdf@
foreign import ccall unsafe "hs_bindgen_542950c697e88b23" hs_bindgen_542950c697e88b23 ::
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

__defined at:__ @botan\/ffi.h:764:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_542950c697e88b23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_19f3a321b53513d3" hs_bindgen_19f3a321b53513d3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init #-}
{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:782:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19f3a321b53513d3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_90ec99a2c748e7a3" hs_bindgen_90ec99a2c748e7a3 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy #-}
{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:788:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90ec99a2c748e7a3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_9570e775337da3a2" hs_bindgen_9570e775337da3a2 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear #-}
{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:794:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9570e775337da3a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_b4b584974aae4a69" hs_bindgen_b4b584974aae4a69 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key #-}
{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:799:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4b584974aae4a69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_718b6fb905207948" hs_bindgen_718b6fb905207948 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size #-}
{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:805:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_718b6fb905207948

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_edced3a63c58665e" hs_bindgen_edced3a63c58665e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks #-}
{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:811:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_edced3a63c58665e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_84d314948dd97018" hs_bindgen_84d314948dd97018 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks #-}
{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:817:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84d314948dd97018

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_d883f9c16c996743" hs_bindgen_d883f9c16c996743 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name #-}
{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:825:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d883f9c16c996743

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_00bd5639dfb7c0eb" hs_bindgen_00bd5639dfb7c0eb ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec #-}
{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:835:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_00bd5639dfb7c0eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_bfda35bb5a98c7c0" hs_bindgen_bfda35bb5a98c7c0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init #-}
{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:848:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bfda35bb5a98c7c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_cf4a5ff9c7a88e15" hs_bindgen_cf4a5ff9c7a88e15 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy #-}
{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:854:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf4a5ff9c7a88e15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_d51eba19156905ce" hs_bindgen_d51eba19156905ce ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex #-}
{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:859:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d51eba19156905ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_b4fceec119ecd89c" hs_bindgen_b4fceec119ecd89c ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str #-}
{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4fceec119ecd89c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_f9b888a15be12251" hs_bindgen_f9b888a15be12251 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear #-}
{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:869:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9b888a15be12251

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_a93c7fac6c880ba5" hs_bindgen_a93c7fac6c880ba5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int #-}
{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a93c7fac6c880ba5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_4a087a35310c14e4" hs_bindgen_4a087a35310c14e4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp #-}
{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:879:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a087a35310c14e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_c6a00f3ce93b083c" hs_bindgen_c6a00f3ce93b083c ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str #-}
{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:884:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6a00f3ce93b083c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_125c51059f813eed" hs_bindgen_125c51059f813eed ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str #-}
{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_125c51059f813eed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_1141fb562a33c148" hs_bindgen_1141fb562a33c148 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits #-}
{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1141fb562a33c148

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_efda2ecf9b5fbc82" hs_bindgen_efda2ecf9b5fbc82 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes #-}
{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_efda2ecf9b5fbc82

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_47632569fb8b57e4" hs_bindgen_47632569fb8b57e4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin #-}
{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:905:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47632569fb8b57e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_2103cb384b16184e" hs_bindgen_2103cb384b16184e ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin #-}
{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:910:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2103cb384b16184e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_181fbe0a96e5a999" hs_bindgen_181fbe0a96e5a999 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32 #-}
{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:915:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_181fbe0a96e5a999

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_8bb80e2cb3ce771c" hs_bindgen_8bb80e2cb3ce771c ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive #-}
{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:922:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8bb80e2cb3ce771c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_2663bf9f64d47f38" hs_bindgen_2663bf9f64d47f38 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative #-}
{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:927:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2663bf9f64d47f38

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_04cad6ef5c2b954f" hs_bindgen_04cad6ef5c2b954f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign #-}
{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:929:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_04cad6ef5c2b954f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_2d75d04240db20dc" hs_bindgen_2d75d04240db20dc ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero #-}
{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2d75d04240db20dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_0c218bc70a49973b" hs_bindgen_0c218bc70a49973b ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd #-}
{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:933:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c218bc70a49973b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_38fa8da8e0dcf05e" hs_bindgen_38fa8da8e0dcf05e ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even #-}
{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:934:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38fa8da8e0dcf05e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_f896eaa4edf16061" hs_bindgen_f896eaa4edf16061 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32 #-}
{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f896eaa4edf16061

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_ead2a6ab1e97d162" hs_bindgen_ead2a6ab1e97d162 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32 #-}
{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:937:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ead2a6ab1e97d162

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_623be590688e2a1a" hs_bindgen_623be590688e2a1a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add #-}
{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:939:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_623be590688e2a1a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_2ef60a3e9c6fdda0" hs_bindgen_2ef60a3e9c6fdda0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub #-}
{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:940:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ef60a3e9c6fdda0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_ec3ee617ab647665" hs_bindgen_ec3ee617ab647665 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul #-}
{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec3ee617ab647665

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_ad296c79c73f8683" hs_bindgen_ad296c79c73f8683 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div #-}
{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:944:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ad296c79c73f8683

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_b2269cc7d4ebf72a" hs_bindgen_b2269cc7d4ebf72a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul #-}
{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:947:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b2269cc7d4ebf72a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_19c66356db1020fa" hs_bindgen_19c66356db1020fa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal #-}
{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:954:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19c66356db1020fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_848b188f8fece60e" hs_bindgen_848b188f8fece60e ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp #-}
{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:961:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_848b188f8fece60e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_492c9bbfbb5eb349" hs_bindgen_492c9bbfbb5eb349 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap #-}
{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_492c9bbfbb5eb349

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_d855c97f23ca695b" hs_bindgen_d855c97f23ca695b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod #-}
{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d855c97f23ca695b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_d2e4c0aff3ca4aae" hs_bindgen_d2e4c0aff3ca4aae ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift #-}
{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:972:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2e4c0aff3ca4aae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_86db142aad3eb48d" hs_bindgen_86db142aad3eb48d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift #-}
{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:973:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86db142aad3eb48d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_252e8fb7cc7d770a" hs_bindgen_252e8fb7cc7d770a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse #-}
{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:975:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_252e8fb7cc7d770a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_2a809fd32c82d684" hs_bindgen_2a809fd32c82d684 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits #-}
{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:977:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a809fd32c82d684

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_3c7635f2f228fbc7" hs_bindgen_3c7635f2f228fbc7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range #-}
{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:980:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c7635f2f228fbc7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_ded1f9282a28ab6f" hs_bindgen_ded1f9282a28ab6f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd #-}
{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:985:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ded1f9282a28ab6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_f2bcd741134a0606" hs_bindgen_f2bcd741134a0606 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime #-}
{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:992:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2bcd741134a0606

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_575d0908e672a60f" hs_bindgen_575d0908e672a60f ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit #-}
{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:999:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_575d0908e672a60f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_0b8f118068f48c8d" hs_bindgen_0b8f118068f48c8d ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit #-}
{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1004:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b8f118068f48c8d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_31698ca25fd9b975" hs_bindgen_31698ca25fd9b975 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit #-}
{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1009:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_31698ca25fd9b975

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_312e9fdcb4c6c02b" hs_bindgen_312e9fdcb4c6c02b ::
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

__defined at:__ @botan\/ffi.h:1027:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_312e9fdcb4c6c02b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_062254553726aeab" hs_bindgen_062254553726aeab ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid #-}
{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1038:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_062254553726aeab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_2fa594ef9d2708c5" hs_bindgen_2fa594ef9d2708c5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create #-}
{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1054:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2fa594ef9d2708c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_71791305d1742a5f" hs_bindgen_71791305d1742a5f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key #-}
{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_71791305d1742a5f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_67a9bb007a0dc277" hs_bindgen_67a9bb007a0dc277 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa #-}
{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1061:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67a9bb007a0dc277

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_50e0a6d067695dee" hs_bindgen_50e0a6d067695dee ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa #-}
{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1063:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50e0a6d067695dee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_088708d353c19b71" hs_bindgen_088708d353c19b71 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh #-}
{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1065:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_088708d353c19b71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_8923d90c2c16f7aa" hs_bindgen_8923d90c2c16f7aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece #-}
{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1067:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8923d90c2c16f7aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_b130a013571910db" hs_bindgen_b130a013571910db ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh #-}
{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1069:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b130a013571910db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_c785665dd1fcd040" hs_bindgen_c785665dd1fcd040 ::
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

__defined at:__ @botan\/ffi.h:1089:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c785665dd1fcd040

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_d09f5ebe26de7768" hs_bindgen_d09f5ebe26de7768 ::
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

__defined at:__ @botan\/ffi.h:1111:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d09f5ebe26de7768

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_336c454bd88bceac" hs_bindgen_336c454bd88bceac ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load #-}
{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1119:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_336c454bd88bceac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_c27f4c9646e5b0b2" hs_bindgen_c27f4c9646e5b0b2 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1124:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c27f4c9646e5b0b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_8202d915ed625aaf" hs_bindgen_8202d915ed625aaf ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export #-}
{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8202d915ed625aaf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_dda260da3de06e5b" hs_bindgen_dda260da3de06e5b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der #-}
{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dda260da3de06e5b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_e5e0c8130b735ed0" hs_bindgen_e5e0c8130b735ed0 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem #-}
{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e5e0c8130b735ed0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_487cd4ec4de0b8b5" hs_bindgen_487cd4ec4de0b8b5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name #-}
{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1148:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_487cd4ec4de0b8b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_a071d3aca8379e9a" hs_bindgen_a071d3aca8379e9a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted #-}
{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1155:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a071d3aca8379e9a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_d6ec4ea97e777504" hs_bindgen_d6ec4ea97e777504 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1170:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6ec4ea97e777504

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_5d6272c19b6f69e1" hs_bindgen_5d6272c19b6f69e1 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter #-}
{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1185:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d6272c19b6f69e1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_68701f3acfef5913" hs_bindgen_68701f3acfef5913 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1202:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_68701f3acfef5913

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_13cea9ca1504d425" hs_bindgen_13cea9ca1504d425 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1217:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13cea9ca1504d425

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_b703b2396d2050fb" hs_bindgen_b703b2396d2050fb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1233:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b703b2396d2050fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_be2db8bb48d7c8db" hs_bindgen_be2db8bb48d7c8db ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1248:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_be2db8bb48d7c8db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_38ff0eee85573c0a" hs_bindgen_38ff0eee85573c0a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load #-}
{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1259:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38ff0eee85573c0a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_c79ed76d3f225cbb" hs_bindgen_c79ed76d3f225cbb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey #-}
{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1261:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c79ed76d3f225cbb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_2affe59c07b93a58" hs_bindgen_2affe59c07b93a58 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export #-}
{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1263:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2affe59c07b93a58

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_e2df650a572ac292" hs_bindgen_e2df650a572ac292 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der #-}
{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2df650a572ac292

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_64420cc4a49d2d0a" hs_bindgen_64420cc4a49d2d0a ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem #-}
{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64420cc4a49d2d0a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_0566676c8caee967" hs_bindgen_0566676c8caee967 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name #-}
{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1275:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0566676c8caee967

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_1d01a2fbe3154e79" hs_bindgen_1d01a2fbe3154e79 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key #-}
{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1280:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d01a2fbe3154e79

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_2bbd9c3edf1d213b" hs_bindgen_2bbd9c3edf1d213b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength #-}
{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1282:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2bbd9c3edf1d213b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_12d9d14f9d937e92" hs_bindgen_12d9d14f9d937e92 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint #-}
{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1285:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_12d9d14f9d937e92

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_3cff92bb256a30ea" hs_bindgen_3cff92bb256a30ea ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1290:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3cff92bb256a30ea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_0a9db53baf440ae9" hs_bindgen_0a9db53baf440ae9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field #-}
{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1295:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a9db53baf440ae9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_30c93f2ac15110d1" hs_bindgen_30c93f2ac15110d1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field #-}
{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1297:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_30c93f2ac15110d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_887477d056943e35" hs_bindgen_887477d056943e35 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa #-}
{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1302:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_887477d056943e35

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_c996020f2cedb6c6" hs_bindgen_c996020f2cedb6c6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1 #-}
{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1304:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c996020f2cedb6c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_2baeec3e5f653721" hs_bindgen_2baeec3e5f653721 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p #-}
{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1307:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2baeec3e5f653721

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_c787f5279dea947b" hs_bindgen_c787f5279dea947b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q #-}
{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1309:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c787f5279dea947b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_efbddd1a0ef4c1eb" hs_bindgen_efbddd1a0ef4c1eb ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d #-}
{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1311:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_efbddd1a0ef4c1eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_90cf91fa0004f045" hs_bindgen_90cf91fa0004f045 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n #-}
{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1313:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90cf91fa0004f045

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_a90a66687593e363" hs_bindgen_a90a66687593e363 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e #-}
{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1315:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a90a66687593e363

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_84f0e3f6a9f179db" hs_bindgen_84f0e3f6a9f179db ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey #-}
{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1318:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84f0e3f6a9f179db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_6cfd21c2ee54fde8" hs_bindgen_6cfd21c2ee54fde8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa #-}
{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6cfd21c2ee54fde8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_89c86831c5823ae7" hs_bindgen_89c86831c5823ae7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1323:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89c86831c5823ae7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_f9586f410e8bc397" hs_bindgen_f9586f410e8bc397 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9586f410e8bc397

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_128feb78d351b36e" hs_bindgen_128feb78d351b36e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa #-}
{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1331:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_128feb78d351b36e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_22f71ab01a414693" hs_bindgen_22f71ab01a414693 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1334:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22f71ab01a414693

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_bc29b8d2029ae099" hs_bindgen_bc29b8d2029ae099 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x #-}
{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1337:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc29b8d2029ae099

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_c0daebc697cac945" hs_bindgen_c0daebc697cac945 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1340:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c0daebc697cac945

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_81d94b838a54d21b" hs_bindgen_81d94b838a54d21b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1342:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_81d94b838a54d21b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_910185fae7514790" hs_bindgen_910185fae7514790 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1344:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_910185fae7514790

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_a5a627245596cfd6" hs_bindgen_a5a627245596cfd6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1346:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5a627245596cfd6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_751d2cf4521d0c2c" hs_bindgen_751d2cf4521d0c2c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh #-}
{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1361:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_751d2cf4521d0c2c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_06b1468fe5a3ca95" hs_bindgen_06b1468fe5a3ca95 ::
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

__defined at:__ @botan\/ffi.h:1375:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_06b1468fe5a3ca95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_28580a7e5cf1e49b" hs_bindgen_28580a7e5cf1e49b ::
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

__defined at:__ @botan\/ffi.h:1393:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28580a7e5cf1e49b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_1625bac42b16db5b" hs_bindgen_1625bac42b16db5b ::
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

__defined at:__ @botan\/ffi.h:1408:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1625bac42b16db5b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_78097aba9dfbeb2a" hs_bindgen_78097aba9dfbeb2a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519 #-}
{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1414:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78097aba9dfbeb2a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_d446219d74537680" hs_bindgen_d446219d74537680 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519 #-}
{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1416:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d446219d74537680

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_e8ff95494796e98b" hs_bindgen_e8ff95494796e98b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1418:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e8ff95494796e98b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_b8fc315f8451406d" hs_bindgen_b8fc315f8451406d ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1420:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8fc315f8451406d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_7cd0a3b08ad2f5bb" hs_bindgen_7cd0a3b08ad2f5bb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519 #-}
{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1426:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cd0a3b08ad2f5bb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_5e457b2ff63b7518" hs_bindgen_5e457b2ff63b7518 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519 #-}
{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1428:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5e457b2ff63b7518

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_422bd9b00c0f933a" hs_bindgen_422bd9b00c0f933a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1430:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_422bd9b00c0f933a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_1a057818f5624a93" hs_bindgen_1a057818f5624a93 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1432:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a057818f5624a93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_0f9725a000fce250" hs_bindgen_0f9725a000fce250 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber #-}
{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1438:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f9725a000fce250

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_2f753d5fb9279586" hs_bindgen_2f753d5fb9279586 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber #-}
{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1440:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f753d5fb9279586

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_95525c989cff37f9" hs_bindgen_95525c989cff37f9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1443:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_95525c989cff37f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_7c6a60d0ae2c3690" hs_bindgen_7c6a60d0ae2c3690 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1446:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c6a60d0ae2c3690

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_1bd1bbeb558d825b" hs_bindgen_1bd1bbeb558d825b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa #-}
{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1452:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bd1bbeb558d825b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_2e45101b189d01d3" hs_bindgen_2e45101b189d01d3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa #-}
{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1455:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e45101b189d01d3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_9d79b37acd7ab86b" hs_bindgen_9d79b37acd7ab86b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh #-}
{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9d79b37acd7ab86b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_383e664d96122f16" hs_bindgen_383e664d96122f16 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh #-}
{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1467:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_383e664d96122f16

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_c80f8ccedb9bfcc6" hs_bindgen_c80f8ccedb9bfcc6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2 #-}
{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1470:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c80f8ccedb9bfcc6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_0c9060d94da5bf7a" hs_bindgen_0c9060d94da5bf7a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2 #-}
{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1476:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c9060d94da5bf7a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_5208b963bb28e416" hs_bindgen_5208b963bb28e416 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1480:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5208b963bb28e416

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_82d2aa0eb1ae0648" hs_bindgen_82d2aa0eb1ae0648 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1487:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_82d2aa0eb1ae0648

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_6bc2e1b6ab8012a8" hs_bindgen_6bc2e1b6ab8012a8 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za #-}
{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1490:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bc2e1b6ab8012a8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_a6104e7b6b41f7a5" hs_bindgen_a6104e7b6b41f7a5 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point #-}
{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1497:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a6104e7b6b41f7a5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_7e521652aff41331" hs_bindgen_7e521652aff41331 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1505:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e521652aff41331

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_5e2796b0ff8f04b9" hs_bindgen_5e2796b0ff8f04b9 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1510:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5e2796b0ff8f04b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_7ecca5fb38027d6d" hs_bindgen_7ecca5fb38027d6d ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1513:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ecca5fb38027d6d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_05de391486042131" hs_bindgen_05de391486042131 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt #-}
{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1516:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_05de391486042131

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_ebfc866b1937d0d2" hs_bindgen_ebfc866b1937d0d2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1529:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ebfc866b1937d0d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_b44dc3b554ea68cd" hs_bindgen_b44dc3b554ea68cd ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1534:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b44dc3b554ea68cd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_074595a8b896bdf2" hs_bindgen_074595a8b896bdf2 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1537:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_074595a8b896bdf2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_f1bd137dab4bf176" hs_bindgen_f1bd137dab4bf176 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt #-}
{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1540:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1bd137dab4bf176

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_69119384502da22f" hs_bindgen_69119384502da22f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create #-}
{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1552:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69119384502da22f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_36f741d6179b32b3" hs_bindgen_36f741d6179b32b3 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1557:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_36f741d6179b32b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_4397db597b39728e" hs_bindgen_4397db597b39728e ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length #-}
{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1559:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4397db597b39728e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_305ec67d02700013" hs_bindgen_305ec67d02700013 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update #-}
{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1561:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_305ec67d02700013

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_d9976ca95cceca35" hs_bindgen_d9976ca95cceca35 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish #-}
{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1564:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9976ca95cceca35

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_4887e12a4d76584f" hs_bindgen_4887e12a4d76584f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create #-}
{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1572:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4887e12a4d76584f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_e4c23167ca7c4b5e" hs_bindgen_e4c23167ca7c4b5e ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1580:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4c23167ca7c4b5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_35f270fbb621ef5e" hs_bindgen_35f270fbb621ef5e ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update #-}
{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1582:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_35f270fbb621ef5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_75ac380165d810bd" hs_bindgen_75ac380165d810bd ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish #-}
{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1583:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75ac380165d810bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_ecb5b98c6b4f3da2" hs_bindgen_ecb5b98c6b4f3da2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1591:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ecb5b98c6b4f3da2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_f88e29a03359ba61" hs_bindgen_f88e29a03359ba61 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f88e29a03359ba61

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_92654b793af8881f" hs_bindgen_92654b793af8881f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1598:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92654b793af8881f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_cf46082303c5321a" hs_bindgen_cf46082303c5321a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1601:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf46082303c5321a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_63d7ea1055f127c6" hs_bindgen_63d7ea1055f127c6 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1603:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_63d7ea1055f127c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_688b38f39601a529" hs_bindgen_688b38f39601a529 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement #-}
{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1606:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_688b38f39601a529

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_50dcfe8b1f9d523c" hs_bindgen_50dcfe8b1f9d523c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1620:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50dcfe8b1f9d523c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_dfea46487f9c3e86" hs_bindgen_dfea46487f9c3e86 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1625:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dfea46487f9c3e86

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_d3fbd3cf349b0886" hs_bindgen_d3fbd3cf349b0886 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1628:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3fbd3cf349b0886

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_74bedaedb7cfb333" hs_bindgen_74bedaedb7cfb333 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1633:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74bedaedb7cfb333

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_b71889956f791e42" hs_bindgen_b71889956f791e42 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1637:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b71889956f791e42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_8ddf99efba6ea808" hs_bindgen_8ddf99efba6ea808 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1650:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8ddf99efba6ea808

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_38eecd15d7176bcb" hs_bindgen_38eecd15d7176bcb ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1655:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38eecd15d7176bcb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_0aebca95785503fa" hs_bindgen_0aebca95785503fa ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1658:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0aebca95785503fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_e6c3092ab9a8d6e2" hs_bindgen_e6c3092ab9a8d6e2 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1663:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6c3092ab9a8d6e2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_62eb708e77758628" hs_bindgen_62eb708e77758628 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id #-}
{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1676:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_62eb708e77758628

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_fe9b1b86bd6ea786" hs_bindgen_fe9b1b86bd6ea786 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt #-}
{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1683:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe9b1b86bd6ea786

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_4f1b2a3c02c22d29" hs_bindgen_4f1b2a3c02c22d29 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt #-}
{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1698:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4f1b2a3c02c22d29

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_bac58534db399621" hs_bindgen_bac58534db399621 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load #-}
{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1713:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bac58534db399621

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_3bae1713b8cb721d" hs_bindgen_3bae1713b8cb721d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file #-}
{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1714:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bae1713b8cb721d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_e5f9f0b821ef1f01" hs_bindgen_e5f9f0b821ef1f01 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1719:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e5f9f0b821ef1f01

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_d674882b8fd51485" hs_bindgen_d674882b8fd51485 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup #-}
{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d674882b8fd51485

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_68dcaff6df29ec1f" hs_bindgen_68dcaff6df29ec1f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts #-}
{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_68dcaff6df29ec1f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_f5b1a5395a0cbd75" hs_bindgen_f5b1a5395a0cbd75 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires #-}
{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1725:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f5b1a5395a0cbd75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_c3dcd0183b6ce835" hs_bindgen_c3dcd0183b6ce835 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before #-}
{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c3dcd0183b6ce835

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_6669418f806548b4" hs_bindgen_6669418f806548b4 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after #-}
{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1728:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6669418f806548b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_3f95082feb24917e" hs_bindgen_3f95082feb24917e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint #-}
{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1731:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f95082feb24917e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_b9be458b5cdf3d0f" hs_bindgen_b9be458b5cdf3d0f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number #-}
{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1733:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b9be458b5cdf3d0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_3bc4a1b99fa9aa97" hs_bindgen_3bc4a1b99fa9aa97 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1734:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bc4a1b99fa9aa97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_557c301abd9a2851" hs_bindgen_557c301abd9a2851 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1735:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_557c301abd9a2851

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_a08f1967e8129480" hs_bindgen_a08f1967e8129480 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1737:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a08f1967e8129480

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_9b7b4ad0a0a0fceb" hs_bindgen_9b7b4ad0a0a0fceb ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1740:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b7b4ad0a0a0fceb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_41e96df54e64d2ad" hs_bindgen_41e96df54e64d2ad ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1742:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_41e96df54e64d2ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_9224a5727b6b77ec" hs_bindgen_9224a5727b6b77ec ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1745:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9224a5727b6b77ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_ee2a81c46a914b89" hs_bindgen_ee2a81c46a914b89 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1749:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ee2a81c46a914b89

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_a8ba3e03212e6594" hs_bindgen_a8ba3e03212e6594 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string #-}
{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8ba3e03212e6594

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_672acc4be3c5e841" hs_bindgen_672acc4be3c5e841 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string #-}
{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1755:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_672acc4be3c5e841

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_51764bbd5ed87fc9" hs_bindgen_51764bbd5ed87fc9 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage #-}
{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51764bbd5ed87fc9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_37f6f663722afd20" hs_bindgen_37f6f663722afd20 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match #-}
{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1777:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37f6f663722afd20

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_d05a8739b3c112c2" hs_bindgen_d05a8739b3c112c2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify #-}
{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1788:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d05a8739b3c112c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_f13ad9735aee5db3" hs_bindgen_f13ad9735aee5db3 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status #-}
{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1803:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f13ad9735aee5db3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_df8ef02208273618" hs_bindgen_df8ef02208273618 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file #-}
{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1811:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df8ef02208273618

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_fbd2781f2ad1c1db" hs_bindgen_fbd2781f2ad1c1db ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load #-}
{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1813:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fbd2781f2ad1c1db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_530b8f7112a492d8" hs_bindgen_530b8f7112a492d8 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy #-}
{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1815:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_530b8f7112a492d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_f9b8ae75e1a2ff0a" hs_bindgen_f9b8ae75e1a2ff0a ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked #-}
{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1821:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9b8ae75e1a2ff0a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_67135faab7d5b15c" hs_bindgen_67135faab7d5b15c ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl #-}
{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1828:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67135faab7d5b15c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_b6afdf90524ed5fb" hs_bindgen_b6afdf90524ed5fb ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394 #-}
{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1846:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6afdf90524ed5fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_2465618b0d857412" hs_bindgen_2465618b0d857412 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394 #-}
{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1855:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2465618b0d857412

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_4d12bcd541e0e9d8" hs_bindgen_4d12bcd541e0e9d8 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc #-}
{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1863:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d12bcd541e0e9d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_7a4dc114181f2373" hs_bindgen_7a4dc114181f2373 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec #-}
{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1873:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a4dc114181f2373

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_d2d4286da404085a" hs_bindgen_d2d4286da404085a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init #-}
{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1892:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2d4286da404085a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_8361015e672e629e" hs_bindgen_8361015e672e629e ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy #-}
{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1899:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8361015e672e629e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_d2ba9ef9d8240d67" hs_bindgen_d2ba9ef9d8240d67 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate #-}
{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1905:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2ba9ef9d8240d67

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_178e3fff5d10093d" hs_bindgen_178e3fff5d10093d ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check #-}
{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1911:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_178e3fff5d10093d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_b16398efc780a754" hs_bindgen_b16398efc780a754 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init #-}
{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1924:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b16398efc780a754

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_d87ceb616d153c88" hs_bindgen_d87ceb616d153c88 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy #-}
{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1932:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d87ceb616d153c88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_6bbf9504d9d899d4" hs_bindgen_6bbf9504d9d899d4 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate #-}
{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1941:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bbf9504d9d899d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_9e17a2857f1ad504" hs_bindgen_9e17a2857f1ad504 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check #-}
{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:1952:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e17a2857f1ad504

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_5c8cdf9aaf4b68ac" hs_bindgen_5c8cdf9aaf4b68ac ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init #-}
{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:1963:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c8cdf9aaf4b68ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_180c7b010c40697d" hs_bindgen_180c7b010c40697d ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:1970:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_180c7b010c40697d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_0a793747888f6168" hs_bindgen_0a793747888f6168 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt #-}
{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:1973:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a793747888f6168

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_5383dcd61a56e912" hs_bindgen_5383dcd61a56e912 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt #-}
{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:1976:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5383dcd61a56e912

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_47ad6d7a383cf8d7" hs_bindgen_47ad6d7a383cf8d7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init #-}
{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:1988:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47ad6d7a383cf8d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_bebbd26d18453fe8" hs_bindgen_bebbd26d18453fe8 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy #-}
{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:1996:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bebbd26d18453fe8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_53bbfe15e699cc69" hs_bindgen_53bbfe15e699cc69 ::
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

__defined at:__ @botan\/ffi.h:2011:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_53bbfe15e699cc69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_831121aed2cb0e05" hs_bindgen_831121aed2cb0e05 ::
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

__defined at:__ @botan\/ffi.h:2030:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_831121aed2cb0e05

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_c908b3baf90b56f1" hs_bindgen_c908b3baf90b56f1 ::
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

__defined at:__ @botan\/ffi.h:2046:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c908b3baf90b56f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_10e92e35386ae821" hs_bindgen_10e92e35386ae821 ::
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

__defined at:__ @botan\/ffi.h:2073:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_10e92e35386ae821

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_f09d74b80d81338c" hs_bindgen_f09d74b80d81338c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size #-}
{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2091:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f09d74b80d81338c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_cf71a79ebc3c39c6" hs_bindgen_cf71a79ebc3c39c6 ::
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

__defined at:__ @botan\/ffi.h:2112:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf71a79ebc3c39c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_1_get_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_42270ece9cac1a22" hs_bindgen_42270ece9cac1a22 ::
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

__defined at:__ @botan\/ffi.h:2133:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_42270ece9cac1a22
