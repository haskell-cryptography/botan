{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_9_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_9_0
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_error_description */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_f0b11054b95a1d93 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_error_last_exception_message */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_2ea181809f5d6b23 (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ffi_api_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_cb86fed0c97cb191 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ffi_supports_api */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a4ff0876d1096d0 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_eefbaf3f2908c640 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_major */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f577b3f188184d73 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_minor */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0de569db300cb88f (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_patch */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c3c4c6d9bf88f2c8 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_datestamp */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b5f89fd8c5af17ac (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_constant_time_compare */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eaf11672442466df (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_same_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_826d33fafb85c4ca (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_scrub_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2b27cda04f89f1c (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hex_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6469e8805ab6b52b (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hex_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aafdd86bbec8c03b (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_base64_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cd92f6e0ad9988f0 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_base64_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4013bdc9c57f105 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d28d1e804433bfec (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_init_custom */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5193491704abe116 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76f5869805ef2d72 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_system_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc7b22d1f40fe5f7 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_reseed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dc86ed1558b8186d (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_reseed_from_rng */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c326656bf438de51 (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_add_entropy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a83ca6a55b59b6a (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_96acaca99eec72ef (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_315abec573edab50 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_copy_state */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2af1764d56c92b51 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3074def23231e2f4 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c405cd8c9869f36a (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8302a308b7fb0992 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acd2535eab84e23c (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c16b7411a603692 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1e130c4d156e4a4 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b55fa5985143c544 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b334a271b5e19e91 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7835ad633138fc97 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c92bfd9f8d49a48 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_set_nonce */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f308ba3c3f1f236 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a0b8a59dd97dea5 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bfe8ad2188b059e3 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4201207931c99bf7 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e0767a307947d8f (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b5e0660b8c66ca2 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a634878c28d8ed2b (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3b310616121d2393 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3643858db373b875 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71266a2c89095b81 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_valid_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f7550a4aa0f2c879 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_tag_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6fe4ca7dd88c84b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_is_authenticated */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a449f9fdce4a9e9 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_requires_entire_message */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29490cc8b62902c7 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_default_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0af817e0abdb985c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe9515114d83f37f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_ideal_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87b9d9cf0bbc06aa (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_query_keylen */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1cefd7cba603147d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cbf77fc7cad82e78 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dc8d5f5a60485674 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_reset */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de07f2ed4ae2ccf1 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_set_associated_data */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_696f9a51af73168b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_start */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f7d65972779bbacf (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bae3f588971298c9 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d6dd9947f0d5f50 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48bcab8012ba8709 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pbkdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f68a7ccc4f1cc01 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pbkdf_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_257f81b47e81bd1c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pwdhash */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_109cec23e6481356 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pwdhash_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4649c791f2ff53f1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_scrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90a256550fea347c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_kdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_384e36a74961b02c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_082a69294e095017 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5677ef9cddbae5d1 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da3660982e8500bd (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9d1603102d26d829 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7927e1cd43c9897d (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_encrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03480d605215526f (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_decrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29aab2b22b24e6e7 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1828152badea7d8 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1898278e68643d27 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_084a2872299bd2d4 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_000bae20ce26b444 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_hex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_88d1bcf7e8eefbca (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e9564fa2408f5238 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e16c89302bce9d83 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d59bc44bec1a5a91 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_mp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37d9e8852557b5b4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca9b5fb47d18c0b4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_radix_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc12d09b42d990e5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_num_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e294ebf2a2d8396 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_num_bytes */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64ba2096dcdb3fce (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_97d5b53d7d9e281f (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_from_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9be884b8b4430da (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_uint32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19bd2cebc1296f2d (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_positive */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_242733baa2a66b90 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_negative */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e42de50489173a6 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_flip_sign */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0cc15414e1e657a5 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_zero */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1fa76e05fe4d38d0 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_odd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50f3cf7ca5af5f2f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_even */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b574cb26f54b75bd (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_add_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c73577103a912cea (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_sub_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f004726647dccd2b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_add */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e75d0672c5402eb5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_sub */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f730807d78f4da7d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_871a3fc756249b3f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_div */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4f30935f9d7db35 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mod_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e396ac01e615fa09 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a41e4c0aed2658fc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b766ef93ae4f71e (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_swap */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e1c65fced5c46a3d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_powmod */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5dea8b78637e69e9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_lshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef3befe99ac3a872 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_57020719ccd2e495 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mod_inverse */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_643a3c4db10a800b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rand_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6328233b46e07d50 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rand_range */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_316bb5a9e8ef4df7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_gcd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b907424cd70539cc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_prime */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_beeb1c8a0bd65f95 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_get_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f412ce0674e10c23 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1319cc042cb94ecf (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_clear_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea6e4dc0d5ea9c87 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_bcrypt_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d972d0bc1cce017d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_bcrypt_is_valid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d28d7f3473bd911 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc9bfd66325ddc24 (void)) ("
  , "  botan_asn1_oid_t arg1"
  , ")"
  , "{"
  , "  return &botan_oid_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_from_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8866c7e1c436991c (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_from_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_register */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6e75c7f22e77e69b (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_register;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_view_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e0850d26e4e4663b (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_view_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9a39c3878dce55b (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_090bac4e0e6f095b (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_oid_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a68fb4b50c086ef8 (void)) ("
  , "  signed int *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_asn1_oid_t arg3"
  , ")"
  , "{"
  , "  return &botan_oid_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3da4f61d813244a (void)) ("
  , "  botan_ec_group_t arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_supports_application_specific_group */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d758bc34ad7147d7 (void)) ("
  , "  signed int *arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_application_specific_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_supports_named_group */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec7fe79617b0acaf (void)) ("
  , "  char const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_named_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_params */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84aceb5eb939d7c1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_ber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7d29241f4044962 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_ber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_efa4758e1dcf3598 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c6f2c403c90c543 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7f1e5641c2086b2 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0180a4fc3fa9235c (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a02e82b863d496d8 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_curve_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_17eb6e4046262fb2 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_curve_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5378a7c77e041076 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_a */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c25e0f3b7f359b1 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_a;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_b */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b82f0d1dfb7d026 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_b;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_g_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d531bf6c997680ba (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_g_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1e1cf5ad1450f35f (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_order */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_806a76457c254b37 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_order;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5160e8c3a7d3995 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_faede230c6444d85 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0836ff79c5a029db (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  botan_ec_group_t arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_ec_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1426ba303dda832d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e8fbba4bf59bf75e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c2f2c07ffb7c0cb8 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de217fa371a56810 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2298c552fc563479 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0127ee04f904e52b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a16f4000386644e4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a22dbbc932d2317 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acf70828b803bfcf (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bcf9544e7b40c69 (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f88b130bd18df87 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc17e1dca36ca2ae (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dcf97bb2a346e276 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_raw */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e1cb85cc5363c788 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_046fe40a8a4e3df6 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bb9fddefdf77c5b3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted_pbkdf_msec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4ec460afd7b916cf (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted_pbkdf_iter */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_81824de63d8af413 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c110fd3b1ae27856 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_der_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f300ab171a249b8e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6e6ce875ae9161e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_pem_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5dd92ec431a5d2d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1cefdd8d85b9107a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8414016312e2c1d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72e93a431764a218 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d5af7b724d52d36b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9501fd38d4d22477 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_raw */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1babe2d1a2460f93 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_77c7f821549721f1 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7e625c0d7a0b6df (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_estimated_strength */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4882f288141aa290 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5008aaf18e39277e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_155ed0bc138a002b (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a6988246db28934 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_95746f5304cd0b5c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e72413b57b4c1796 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_oid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d607a10f8e57505 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_stateful_operation */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a953adfa1521225 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_stateful_operation;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_remaining_operations */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f8824ed67aa81671 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_remaining_operations;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4bdcae73e6a1a08 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_rsa_pkcs1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8603726f5c9686b4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92b56a879cbfaf5b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d0c8ed228972a82c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_d */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_88beb7d6741a83e9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9212f9997d2b3500 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f6f51f6164cb509b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_83c60f7f7ce0c055 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d91180aa3c142590 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddfd8b23f0bbce77 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92e3e6a5282bed88 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe1394a1277326c5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd303c3a479393a3 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_dsa_get_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a2b06c8aab350e0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7f6021864443487 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b105b3c65982e0f9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_g */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1a914a2b2f554bd (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2effdecff62de110 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_748ee9073f15228a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fb45d81ec3d1971 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_029db5c8444e9933 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f394945d65131ecc (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fff3d62d4961ad4c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1739322246a88ddc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_ed25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70f4632334555754 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ed25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2082027aae927695 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4952e6ab644d91ee (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_81c6fa6645fdd9aa (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_ed448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59e2a0b3c9c138de (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ed448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5ba6412989e14a00 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3187d9d899ab050f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b9c55c11637bd84 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_x25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a7dc950e8d26b9d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_x25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9034228310eba274 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_620f4f73d848b715 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e6887576f5dd59b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_x448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cd96ab2299b903b6 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_x448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c82e9e9816c7f0d7 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ml_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9527b96eef273ed (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ml_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d55c5db12269246f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ee5d8d2b73025ba8 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c14307b6cdd924c5 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e125fddda17b718b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d788ead5ce3af951 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_frodokem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_41488a1c6d51dfd7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_frodokem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_989b9e058bf36e50 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_classic_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da1ba187d1fde579 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_classic_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f7d82fabb0f04d06 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ml_kem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4106461a7757ecf5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ml_kem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c2a47d3d6946738f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_slh_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1dc501dddb8f98a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_slh_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b3432a0160fe82dd (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ecc_key_used_explicit_encoding */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35ad2dc9002737d1 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f1a5cf5f1a084be (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d433661576f520fa (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0645760001f56378 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7992fd658ec9b322 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0bd998eb926ecbe2 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_17001e19909bf5df (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd63909747f3d622 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_193c9022b8454e32 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_sm2_compute_za */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf5390618929e835 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_ec_public_point */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_587252b4c877b4dc (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6c4251cec129cfc (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_215544968647d7c5 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e39bc464f0e6b962 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_83b4eefa064e9720 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_591e8f0e3a4d4207 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6b0b03020ee5e754 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9941dd9078294cc5 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f99ed55cb5168d0e (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7bc5e8d34fb2d6f (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9a55038b6bc785e (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9fa9474781a69c3a (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_622a150a738c8c85 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_533bc257c70e639d (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_85ae14270a4d2eac (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b66ac96639fb479c (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae8d402693854cde (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ece8da57ed72cabc (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c46995dee17e702 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9926fe258bdcf3af (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_export_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a964e203d9968eed (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_view_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a35d25ecfc37fbe (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92de9b688481316d (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b32c431a3e35ed95 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bb0c8f087df1d27 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f95246aba8da388 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1de4684527be1642 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24938898a491584a (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_create_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a52f7c31a920de6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c343bc1f452726b (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30f0ec6ba6787141 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_079b6c6b4aa5e5f0 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddc921239ad07212 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pkcs_hash_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2ed9b73183c8e49 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mceies_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_526bd48310fae365 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mceies_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c3644deeedaf60b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0fa4cec97bf47715 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bacca9e37c8f0ddd (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1734c458666237d7 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_dup */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_147a3bf50ca31729 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_time_starts */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_242fc32d8acdbe65 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_time_expires */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_985b2942c203227d (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_not_before */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dc342e2671babd96 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_not_after */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37f16ff76a3436bd (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_837609d1765eaabd (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_serial_number */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f038834ca45de54 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_authority_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc8b4311fc35e04c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_subject_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eb95e7af3406876c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_601ea5a332d37d2c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_view_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51aedd94aee53add (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_public_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e4c64db8e5fd50b (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_issuer_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c73386816fd4e2cf (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_subject_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75850d3a216bc246 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_to_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_db8dc9e0b40ab099 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_view_as_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f81b00ec7bf3a78 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_allowed_usage */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe987cb0117ff363 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_hostname_match */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1874d7308eb0faa7 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_verify */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76940a9ea512048d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_validation_status */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_83020da657a08e69 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18ec96df8e26675e (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c354467ab4c0e067 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_26e1f62c8396fead (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_is_revoked */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d4be2db5a20e34a1 (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_verify_with_crl */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_695107a36677e674 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_key_wrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4980df5a49cdd807 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_key_unwrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fb645ad5739f2209 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_nist_kw_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f91ac65869d82a6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_nist_kw_dec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_620a97a1cdddedc0 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b78c2b16a493283d (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2fab01bdfcdbbdc6 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19165eb1f0c30701 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e569d859b55367d3 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_26486a2d20ecd01b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5937be6f7294f93d (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55338b5e2f8ee559 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a03104aa2f98ef1 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_fe1_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34d2d206dc549544 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a70da78edc94a81 (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f057fb2597fcf78 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c12dd84d5a8b6d3 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fafe4d50158e27ce (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f83cf18f11cddcb9 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_step1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cbfe32396926240b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_step2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7652de1b8cbd5b21 (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_generate_verifier */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5bc55206baeaf254 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_client_agree */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_94248d9a57f2e216 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_group_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_692a89ac00f16fc4 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_zfec_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10f1931af033408a (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_zfec_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a313b599318592d2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_supports_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d644b1577a10e1d5 (void)) (void)"
  , "{"
  , "  return &botan_tpm2_supports_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a87e08913f8ae120 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_init_ex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9ff386a40d1e3a51 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init_ex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_from_esys */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8877c4bfe73e4ca9 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_from_esys;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_enable_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c9b5c239998b414 (void)) ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b54fb50e8a431165 (void)) ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_enable_crypto_backend */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1849ad27d0562368 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_crypto_backend_state_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_522a6f1a9e99a743 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_crypto_backend_state_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d47bfa5a5f9070b9 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return &botan_tpm2_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_unauthenticated_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e36aad3831eb530e (void)) ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_unauthenticated_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_213cfe4647123ac3 (void)) ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_session_destroy;"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_error_description@
foreign import ccall unsafe "hs_bindgen_f0b11054b95a1d93" hs_bindgen_f0b11054b95a1d93 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description #-}
{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:176:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f0b11054b95a1d93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_2ea181809f5d6b23" hs_bindgen_2ea181809f5d6b23 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message #-}
{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:185:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ea181809f5d6b23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_cb86fed0c97cb191" hs_bindgen_cb86fed0c97cb191 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version #-}
{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cb86fed0c97cb191

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_3a4ff0876d1096d0" hs_bindgen_3a4ff0876d1096d0 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api #-}
{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:198:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a4ff0876d1096d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_string@
foreign import ccall unsafe "hs_bindgen_eefbaf3f2908c640" hs_bindgen_eefbaf3f2908c640 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string #-}
{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:203:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eefbaf3f2908c640

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_major@
foreign import ccall unsafe "hs_bindgen_f577b3f188184d73" hs_bindgen_f577b3f188184d73 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major #-}
{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:208:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f577b3f188184d73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_0de569db300cb88f" hs_bindgen_0de569db300cb88f ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor #-}
{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:213:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0de569db300cb88f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_c3c4c6d9bf88f2c8" hs_bindgen_c3c4c6d9bf88f2c8 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch #-}
{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:218:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c3c4c6d9bf88f2c8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_b5f89fd8c5af17ac" hs_bindgen_b5f89fd8c5af17ac ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp #-}
{-| Return the date this version was released as an integer.

  Returns 0 if the library was not built from an official release

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:225:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5f89fd8c5af17ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_eaf11672442466df" hs_bindgen_eaf11672442466df ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare #-}
{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:230:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eaf11672442466df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_826d33fafb85c4ca" hs_bindgen_826d33fafb85c4ca ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem #-}
{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_826d33fafb85c4ca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_f2b27cda04f89f1c" hs_bindgen_f2b27cda04f89f1c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem #-}
{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:242:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2b27cda04f89f1c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_6469e8805ab6b52b" hs_bindgen_6469e8805ab6b52b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode #-}
{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:257:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6469e8805ab6b52b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_aafdd86bbec8c03b" hs_bindgen_aafdd86bbec8c03b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode #-}
{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:267:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aafdd86bbec8c03b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_cd92f6e0ad9988f0" hs_bindgen_cd92f6e0ad9988f0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode #-}
{-| Perform base64 encoding

  [__@x@ /(input)/__]: the input data

  [__@len@ /(input)/__]: the length of x

  [__@out@ /(input)/__]: the output buffer

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:279:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd92f6e0ad9988f0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_e4013bdc9c57f105" hs_bindgen_e4013bdc9c57f105 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode #-}
{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:284:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4013bdc9c57f105

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_d28d1e804433bfec" hs_bindgen_d28d1e804433bfec ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init #-}
{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:303:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d28d1e804433bfec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_5193491704abe116" hs_bindgen_5193491704abe116 ::
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

__defined at:__ @botan\/ffi.h:315:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5193491704abe116

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_76f5869805ef2d72" hs_bindgen_76f5869805ef2d72 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get #-}
{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:330:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76f5869805ef2d72

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_cc7b22d1f40fe5f7" hs_bindgen_cc7b22d1f40fe5f7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get #-}
{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:339:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc7b22d1f40fe5f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_dc86ed1558b8186d" hs_bindgen_dc86ed1558b8186d ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed #-}
{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:349:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc86ed1558b8186d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_c326656bf438de51" hs_bindgen_c326656bf438de51 ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng #-}
{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:359:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c326656bf438de51

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_7a83ca6a55b59b6a" hs_bindgen_7a83ca6a55b59b6a ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy #-}
{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:369:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a83ca6a55b59b6a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_96acaca99eec72ef" hs_bindgen_96acaca99eec72ef ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy #-}
{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:376:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_96acaca99eec72ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_315abec573edab50" hs_bindgen_315abec573edab50 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init #-}
{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:390:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_315abec573edab50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_2af1764d56c92b51" hs_bindgen_2af1764d56c92b51 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state #-}
{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:398:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2af1764d56c92b51

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_3074def23231e2f4" hs_bindgen_3074def23231e2f4 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length #-}
{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:406:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3074def23231e2f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_c405cd8c9869f36a" hs_bindgen_c405cd8c9869f36a ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size #-}
{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:414:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c405cd8c9869f36a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_8302a308b7fb0992" hs_bindgen_8302a308b7fb0992 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update #-}
{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:423:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8302a308b7fb0992

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_acd2535eab84e23c" hs_bindgen_acd2535eab84e23c ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final #-}
{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:433:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acd2535eab84e23c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_1c16b7411a603692" hs_bindgen_1c16b7411a603692 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear #-}
{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:441:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c16b7411a603692

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_f1e130c4d156e4a4" hs_bindgen_f1e130c4d156e4a4 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy #-}
{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:448:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1e130c4d156e4a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_b55fa5985143c544" hs_bindgen_b55fa5985143c544 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name #-}
{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:456:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b55fa5985143c544

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_b334a271b5e19e91" hs_bindgen_b334a271b5e19e91 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init #-}
{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:471:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b334a271b5e19e91

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_7835ad633138fc97" hs_bindgen_7835ad633138fc97 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length #-}
{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:479:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7835ad633138fc97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_1c92bfd9f8d49a48" hs_bindgen_1c92bfd9f8d49a48 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key #-}
{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:488:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c92bfd9f8d49a48

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_3f308ba3c3f1f236" hs_bindgen_3f308ba3c3f1f236 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce #-}
{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:497:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f308ba3c3f1f236

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_1a0b8a59dd97dea5" hs_bindgen_1a0b8a59dd97dea5 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update #-}
{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:506:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a0b8a59dd97dea5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_bfe8ad2188b059e3" hs_bindgen_bfe8ad2188b059e3 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final #-}
{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:516:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bfe8ad2188b059e3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_4201207931c99bf7" hs_bindgen_4201207931c99bf7 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear #-}
{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4201207931c99bf7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_7e0767a307947d8f" hs_bindgen_7e0767a307947d8f ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name #-}
{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:532:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e0767a307947d8f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_7b5e0660b8c66ca2" hs_bindgen_7b5e0660b8c66ca2 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec #-}
{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:542:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b5e0660b8c66ca2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_a634878c28d8ed2b" hs_bindgen_a634878c28d8ed2b ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy #-}
{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:552:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a634878c28d8ed2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_3b310616121d2393" hs_bindgen_3b310616121d2393 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init #-}
{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:566:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3b310616121d2393

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_3643858db373b875" hs_bindgen_3643858db373b875 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name #-}
{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:571:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3643858db373b875

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_71266a2c89095b81" hs_bindgen_71266a2c89095b81 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length #-}
{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:576:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_71266a2c89095b81

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_f7550a4aa0f2c879" hs_bindgen_f7550a4aa0f2c879 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length #-}
{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:581:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f7550a4aa0f2c879

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_c6fe4ca7dd88c84b" hs_bindgen_c6fe4ca7dd88c84b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length #-}
{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:586:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6fe4ca7dd88c84b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_is_authenticated@
foreign import ccall unsafe "hs_bindgen_6a449f9fdce4a9e9" hs_bindgen_6a449f9fdce4a9e9 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated #-}
{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:591:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a449f9fdce4a9e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_requires_entire_message@
foreign import ccall unsafe "hs_bindgen_29490cc8b62902c7" hs_bindgen_29490cc8b62902c7 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message #-}
{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:598:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29490cc8b62902c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_0af817e0abdb985c" hs_bindgen_0af817e0abdb985c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length #-}
{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:603:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0af817e0abdb985c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_fe9515114d83f37f" hs_bindgen_fe9515114d83f37f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity #-}
{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:609:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe9515114d83f37f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_87b9d9cf0bbc06aa" hs_bindgen_87b9d9cf0bbc06aa ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity #-}
{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:615:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87b9d9cf0bbc06aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_1cefd7cba603147d" hs_bindgen_1cefd7cba603147d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen #-}
{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:621:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1cefd7cba603147d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_cbf77fc7cad82e78" hs_bindgen_cbf77fc7cad82e78 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec #-}
{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:627:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cbf77fc7cad82e78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_dc8d5f5a60485674" hs_bindgen_dc8d5f5a60485674 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key #-}
{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:632:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc8d5f5a60485674

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_de07f2ed4ae2ccf1" hs_bindgen_de07f2ed4ae2ccf1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset #-}
{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:642:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de07f2ed4ae2ccf1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_696f9a51af73168b" hs_bindgen_696f9a51af73168b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data #-}
{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:647:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_696f9a51af73168b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_f7d65972779bbacf" hs_bindgen_f7d65972779bbacf ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start #-}
{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:652:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f7d65972779bbacf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_bae3f588971298c9" hs_bindgen_bae3f588971298c9 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update #-}
{-|

  Encrypt/Decrypt some data and/or finalize the encryption/decryption

  This encrypts as many bytes from @input_bytes@ into @output_bytes@ as possible. Unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, this function will consume bytes in multiples of botan_cipher_get_update_granularity(). @input_consumed@ and @output_written@ will be set accordingly and it is the caller's responsibility to adapt their buffers accordingly before calling this function again. Note that, unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, the cipher will at most generate @input_size@ output bytes.

  Eventually, the caller must set the ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` flag to indicate that no more input will be provided. This will cause the cipher to consume all given input bytes and produce the final output; or return a ``BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE`` error if the given output buffer was too small. In the latter case, @output_written@ will be set to the required buffer size. Calling again with ``BOTAN_CIPHER_UPDATE_FLAG_FINAL``, a big enough buffer and no further input will then produce the final output.

  Note that some ciphers require the entire message to be provided before any output is produced.

  __see:__ botan_cipher_requires_entire_message().

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:679:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bae3f588971298c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_1d6dd9947f0d5f50" hs_bindgen_1d6dd9947f0d5f50 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear #-}
{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:691:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d6dd9947f0d5f50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_48bcab8012ba8709" hs_bindgen_48bcab8012ba8709 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy #-}
{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:697:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48bcab8012ba8709

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_8f68a7ccc4f1cc01" hs_bindgen_8f68a7ccc4f1cc01 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf #-}
{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:716:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f68a7ccc4f1cc01

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_257f81b47e81bd1c" hs_bindgen_257f81b47e81bd1c ::
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

__defined at:__ @botan\/ffi.h:749:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_257f81b47e81bd1c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_109cec23e6481356" hs_bindgen_109cec23e6481356 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash #-}
{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:773:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_109cec23e6481356

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_4649c791f2ff53f1" hs_bindgen_4649c791f2ff53f1 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed #-}
{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:800:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4649c791f2ff53f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_90a256550fea347c" hs_bindgen_90a256550fea347c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt #-}
{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:819:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90a256550fea347c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_kdf@
foreign import ccall unsafe "hs_bindgen_384e36a74961b02c" hs_bindgen_384e36a74961b02c ::
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

__defined at:__ @botan\/ffi.h:842:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_384e36a74961b02c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_082a69294e095017" hs_bindgen_082a69294e095017 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init #-}
{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:860:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_082a69294e095017

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_5677ef9cddbae5d1" hs_bindgen_5677ef9cddbae5d1 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy #-}
{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:866:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5677ef9cddbae5d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_da3660982e8500bd" hs_bindgen_da3660982e8500bd ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear #-}
{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:872:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da3660982e8500bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_9d1603102d26d829" hs_bindgen_9d1603102d26d829 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key #-}
{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:877:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9d1603102d26d829

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_7927e1cd43c9897d" hs_bindgen_7927e1cd43c9897d ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size #-}
{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:883:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7927e1cd43c9897d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_03480d605215526f" hs_bindgen_03480d605215526f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks #-}
{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:889:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03480d605215526f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_29aab2b22b24e6e7" hs_bindgen_29aab2b22b24e6e7 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks #-}
{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:895:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29aab2b22b24e6e7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_c1828152badea7d8" hs_bindgen_c1828152badea7d8 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name #-}
{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:903:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1828152badea7d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_1898278e68643d27" hs_bindgen_1898278e68643d27 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec #-}
{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:913:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1898278e68643d27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_084a2872299bd2d4" hs_bindgen_084a2872299bd2d4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init #-}
{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_084a2872299bd2d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_000bae20ce26b444" hs_bindgen_000bae20ce26b444 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy #-}
{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:932:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_000bae20ce26b444

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_88d1bcf7e8eefbca" hs_bindgen_88d1bcf7e8eefbca ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex #-}
{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:937:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_88d1bcf7e8eefbca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_e9564fa2408f5238" hs_bindgen_e9564fa2408f5238 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str #-}
{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:942:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e9564fa2408f5238

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_e16c89302bce9d83" hs_bindgen_e16c89302bce9d83 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear #-}
{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:947:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e16c89302bce9d83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_d59bc44bec1a5a91" hs_bindgen_d59bc44bec1a5a91 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int #-}
{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:952:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d59bc44bec1a5a91

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_37d9e8852557b5b4" hs_bindgen_37d9e8852557b5b4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp #-}
{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:957:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37d9e8852557b5b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_ca9b5fb47d18c0b4" hs_bindgen_ca9b5fb47d18c0b4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str #-}
{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:962:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca9b5fb47d18c0b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_cc12d09b42d990e5" hs_bindgen_cc12d09b42d990e5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str #-}
{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:968:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc12d09b42d990e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_9e294ebf2a2d8396" hs_bindgen_9e294ebf2a2d8396 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits #-}
{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:973:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e294ebf2a2d8396

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_64ba2096dcdb3fce" hs_bindgen_64ba2096dcdb3fce ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes #-}
{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:978:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64ba2096dcdb3fce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_97d5b53d7d9e281f" hs_bindgen_97d5b53d7d9e281f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin #-}
{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:983:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_97d5b53d7d9e281f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_d9be884b8b4430da" hs_bindgen_d9be884b8b4430da ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin #-}
{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:988:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9be884b8b4430da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_19bd2cebc1296f2d" hs_bindgen_19bd2cebc1296f2d ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32 #-}
{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:993:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19bd2cebc1296f2d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_242733baa2a66b90" hs_bindgen_242733baa2a66b90 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive #-}
{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:1000:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_242733baa2a66b90

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_7e42de50489173a6" hs_bindgen_7e42de50489173a6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative #-}
{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:1005:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e42de50489173a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_0cc15414e1e657a5" hs_bindgen_0cc15414e1e657a5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign #-}
{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:1007:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0cc15414e1e657a5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_1fa76e05fe4d38d0" hs_bindgen_1fa76e05fe4d38d0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero #-}
{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:1009:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1fa76e05fe4d38d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_50f3cf7ca5af5f2f" hs_bindgen_50f3cf7ca5af5f2f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd #-}
{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:1011:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50f3cf7ca5af5f2f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_b574cb26f54b75bd" hs_bindgen_b574cb26f54b75bd ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even #-}
{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:1012:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b574cb26f54b75bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_c73577103a912cea" hs_bindgen_c73577103a912cea ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32 #-}
{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:1014:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c73577103a912cea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_f004726647dccd2b" hs_bindgen_f004726647dccd2b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32 #-}
{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:1015:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f004726647dccd2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_e75d0672c5402eb5" hs_bindgen_e75d0672c5402eb5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add #-}
{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:1017:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e75d0672c5402eb5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_f730807d78f4da7d" hs_bindgen_f730807d78f4da7d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub #-}
{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:1018:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f730807d78f4da7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_871a3fc756249b3f" hs_bindgen_871a3fc756249b3f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul #-}
{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1019:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_871a3fc756249b3f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_b4f30935f9d7db35" hs_bindgen_b4f30935f9d7db35 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div #-}
{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1022:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4f30935f9d7db35

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_e396ac01e615fa09" hs_bindgen_e396ac01e615fa09 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul #-}
{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1025:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e396ac01e615fa09

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_a41e4c0aed2658fc" hs_bindgen_a41e4c0aed2658fc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal #-}
{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1032:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a41e4c0aed2658fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_1b766ef93ae4f71e" hs_bindgen_1b766ef93ae4f71e ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp #-}
{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1039:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b766ef93ae4f71e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_e1c65fced5c46a3d" hs_bindgen_e1c65fced5c46a3d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap #-}
{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1044:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e1c65fced5c46a3d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_5dea8b78637e69e9" hs_bindgen_5dea8b78637e69e9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod #-}
{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1048:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5dea8b78637e69e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_ef3befe99ac3a872" hs_bindgen_ef3befe99ac3a872 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift #-}
{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1050:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef3befe99ac3a872

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_57020719ccd2e495" hs_bindgen_57020719ccd2e495 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift #-}
{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1051:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_57020719ccd2e495

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_643a3c4db10a800b" hs_bindgen_643a3c4db10a800b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse #-}
{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1053:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_643a3c4db10a800b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_6328233b46e07d50" hs_bindgen_6328233b46e07d50 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits #-}
{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1055:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6328233b46e07d50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_316bb5a9e8ef4df7" hs_bindgen_316bb5a9e8ef4df7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range #-}
{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1058:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_316bb5a9e8ef4df7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_b907424cd70539cc" hs_bindgen_b907424cd70539cc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd #-}
{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1060:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b907424cd70539cc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_beeb1c8a0bd65f95" hs_bindgen_beeb1c8a0bd65f95 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime #-}
{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1067:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_beeb1c8a0bd65f95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_f412ce0674e10c23" hs_bindgen_f412ce0674e10c23 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit #-}
{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1074:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f412ce0674e10c23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_1319cc042cb94ecf" hs_bindgen_1319cc042cb94ecf ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit #-}
{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1079:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1319cc042cb94ecf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_ea6e4dc0d5ea9c87" hs_bindgen_ea6e4dc0d5ea9c87 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit #-}
{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1084:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea6e4dc0d5ea9c87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_d972d0bc1cce017d" hs_bindgen_d972d0bc1cce017d ::
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

  TOD(Botan4) this should use char for the type of `out`

__C declaration:__ @botan_bcrypt_generate@

__defined at:__ @botan\/ffi.h:1104:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d972d0bc1cce017d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_4d28d7f3473bd911" hs_bindgen_4d28d7f3473bd911 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid #-}
{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1115:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d28d7f3473bd911

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_destroy@
foreign import ccall unsafe "hs_bindgen_cc9bfd66325ddc24" hs_bindgen_cc9bfd66325ddc24 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_destroy #-}
{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_destroy@

__defined at:__ @botan\/ffi.h:1126:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_destroy :: Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc9bfd66325ddc24

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_from_string@
foreign import ccall unsafe "hs_bindgen_8866c7e1c436991c" hs_bindgen_8866c7e1c436991c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_from_string #-}
{-| Create an OID from a string, either dot notation (e.g. '1.2.3.4') or a registered name (e.g. 'RSA')

  [__@oid@ /(input)/__]: hanlder to the resulting OID

  [__@oid_str@ /(input)/__]: the name of the OID to create

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_from_string@

__defined at:__ @botan\/ffi.h:1134:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_from_string :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_from_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8866c7e1c436991c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_register@
foreign import ccall unsafe "hs_bindgen_6e75c7f22e77e69b" hs_bindgen_6e75c7f22e77e69b ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_register #-}
{-| Registers an OID so that it may later be retrieved by name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_register@

__defined at:__ @botan\/ffi.h:1140:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_register :: Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_register =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6e75c7f22e77e69b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_view_string@
foreign import ccall unsafe "hs_bindgen_e0850d26e4e4663b" hs_bindgen_e0850d26e4e4663b ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_string #-}
{-| View an OID in dot notation

__C declaration:__ @botan_oid_view_string@

__defined at:__ @botan\/ffi.h:1145:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_string :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e0850d26e4e4663b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_view_name@
foreign import ccall unsafe "hs_bindgen_a9a39c3878dce55b" hs_bindgen_a9a39c3878dce55b ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_name #-}
{-| View an OIDs registered name if it exists, else its dot notation

__C declaration:__ @botan_oid_view_name@

__defined at:__ @botan\/ffi.h:1150:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_name :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9a39c3878dce55b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_equal@
foreign import ccall unsafe "hs_bindgen_090bac4e0e6f095b" hs_bindgen_090bac4e0e6f095b ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_equal #-}
{-|

  __returns:__ 0 if a != b

  __returns:__ 1 if a == b

  __returns:__ negative number on error

__C declaration:__ @botan_oid_equal@

__defined at:__ @botan\/ffi.h:1157:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_equal :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_090bac4e0e6f095b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_oid_cmp@
foreign import ccall unsafe "hs_bindgen_a68fb4b50c086ef8" hs_bindgen_a68fb4b50c086ef8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_cmp #-}
{-| Sets

  [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

  __returns:__ negative number on error or zero on success

__C declaration:__ @botan_oid_cmp@

__defined at:__ @botan\/ffi.h:1164:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a68fb4b50c086ef8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_destroy@
foreign import ccall unsafe "hs_bindgen_a3da4f61d813244a" hs_bindgen_a3da4f61d813244a ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_destroy #-}
{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_destroy@

__defined at:__ @botan\/ffi.h:1175:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_destroy :: Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3da4f61d813244a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_supports_application_specific_group@
foreign import ccall unsafe "hs_bindgen_d758bc34ad7147d7" hs_bindgen_d758bc34ad7147d7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_application_specific_group #-}
{-| Checks if in this build configuration it is possible to register an application specific elliptic curve and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_ec_group_supports_application_specific_group@

__defined at:__ @botan\/ffi.h:1182:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_application_specific_group :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_application_specific_group =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d758bc34ad7147d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_supports_named_group@
foreign import ccall unsafe "hs_bindgen_ec7fe79617b0acaf" hs_bindgen_ec7fe79617b0acaf ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_named_group #-}
{-| Checks if in this build configuration botan_ec_group_from_name(group_ptr, name) will succeed and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_supports_named_group@

__defined at:__ @botan\/ffi.h:1189:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_named_group :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_named_group =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec7fe79617b0acaf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_params@
foreign import ccall unsafe "hs_bindgen_84aceb5eb939d7c1" hs_bindgen_84aceb5eb939d7c1 ::
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

__defined at:__ @botan\/ffi.h:1205:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_params :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_ec_group_from_params =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84aceb5eb939d7c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_ber@
foreign import ccall unsafe "hs_bindgen_e7d29241f4044962" hs_bindgen_e7d29241f4044962 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_ber #-}
{-| Decode a BER encoded ECC domain parameter set

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@ber@ /(input)/__]: encoding

  [__@ber_len@ /(input)/__]: size of the encoding in bytes

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_ber@

__defined at:__ @botan\/ffi.h:1221:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_ber :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_ec_group_from_ber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e7d29241f4044962

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_pem@
foreign import ccall unsafe "hs_bindgen_efa4758e1dcf3598" hs_bindgen_efa4758e1dcf3598 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_pem #-}
{-| Initialize an EC Group from the PEM/ASN.1 encoding

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@pem@ /(input)/__]: encoding

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_pem@

__defined at:__ @botan\/ffi.h:1229:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_pem :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_efa4758e1dcf3598

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_oid@
foreign import ccall unsafe "hs_bindgen_1c6f2c403c90c543" hs_bindgen_1c6f2c403c90c543 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_oid #-}
{-| Initialize an EC Group from a group named by an object identifier

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@oid@ /(input)/__]: a known OID

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_oid@

__defined at:__ @botan\/ffi.h:1237:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt)
botan_ec_group_from_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c6f2c403c90c543

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_from_name@
foreign import ccall unsafe "hs_bindgen_b7f1e5641c2086b2" hs_bindgen_b7f1e5641c2086b2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_name #-}
{-| Initialize an EC Group from a common group name (eg "secp256r1")

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@name@ /(input)/__]: a known group name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_name@

__defined at:__ @botan\/ffi.h:1245:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_name :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b7f1e5641c2086b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_view_der@
foreign import ccall unsafe "hs_bindgen_0180a4fc3fa9235c" hs_bindgen_0180a4fc3fa9235c ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_der #-}
{-| View an EC Group in DER encoding

__C declaration:__ @botan_ec_group_view_der@

__defined at:__ @botan\/ffi.h:1251:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_der :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_ec_group_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0180a4fc3fa9235c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_view_pem@
foreign import ccall unsafe "hs_bindgen_a02e82b863d496d8" hs_bindgen_a02e82b863d496d8 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_pem #-}
{-| View an EC Group in PEM encoding

__C declaration:__ @botan_ec_group_view_pem@

__defined at:__ @botan\/ffi.h:1257:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_pem :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_ec_group_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a02e82b863d496d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_curve_oid@
foreign import ccall unsafe "hs_bindgen_17eb6e4046262fb2" hs_bindgen_17eb6e4046262fb2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_curve_oid #-}
{-| Get the curve OID of an EC Group

__C declaration:__ @botan_ec_group_get_curve_oid@

__defined at:__ @botan\/ffi.h:1262:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_curve_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_curve_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_17eb6e4046262fb2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_p@
foreign import ccall unsafe "hs_bindgen_5378a7c77e041076" hs_bindgen_5378a7c77e041076 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_p #-}
{-| Get the prime modulus of the field

__C declaration:__ @botan_ec_group_get_p@

__defined at:__ @botan\/ffi.h:1267:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_p :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5378a7c77e041076

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_a@
foreign import ccall unsafe "hs_bindgen_5c25e0f3b7f359b1" hs_bindgen_5c25e0f3b7f359b1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_a #-}
{-| Get the a parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_a@

__defined at:__ @botan\/ffi.h:1272:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_a :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_a =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c25e0f3b7f359b1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_b@
foreign import ccall unsafe "hs_bindgen_5b82f0d1dfb7d026" hs_bindgen_5b82f0d1dfb7d026 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_b #-}
{-| Get the b parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_b@

__defined at:__ @botan\/ffi.h:1277:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_b :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_b =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b82f0d1dfb7d026

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_g_x@
foreign import ccall unsafe "hs_bindgen_d531bf6c997680ba" hs_bindgen_d531bf6c997680ba ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_x #-}
{-| Get the x coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_x@

__defined at:__ @botan\/ffi.h:1282:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_x :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d531bf6c997680ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_g_y@
foreign import ccall unsafe "hs_bindgen_1e1cf5ad1450f35f" hs_bindgen_1e1cf5ad1450f35f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_y #-}
{-| Get the y coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_y@

__defined at:__ @botan\/ffi.h:1287:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_y :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e1cf5ad1450f35f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_get_order@
foreign import ccall unsafe "hs_bindgen_806a76457c254b37" hs_bindgen_806a76457c254b37 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_order #-}
{-| Get the order of the base point

__C declaration:__ @botan_ec_group_get_order@

__defined at:__ @botan\/ffi.h:1292:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_order :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_order =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_806a76457c254b37

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_group_equal@
foreign import ccall unsafe "hs_bindgen_b5160e8c3a7d3995" hs_bindgen_b5160e8c3a7d3995 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_equal #-}
{-|

  __returns:__ 0 if curve1 != curve2

  __returns:__ 1 if curve1 == curve2

  __returns:__ negative number on error

__C declaration:__ @botan_ec_group_equal@

__defined at:__ @botan\/ffi.h:1299:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_equal :: Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5160e8c3a7d3995

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_faede230c6444d85" hs_bindgen_faede230c6444d85 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create #-}
{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1315:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_faede230c6444d85

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_ec_privkey_create@
foreign import ccall unsafe "hs_bindgen_0836ff79c5a029db" hs_bindgen_0836ff79c5a029db ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_ec_privkey_create #-}
{-| Create a new ec private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

  [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_ec_privkey_create@

__defined at:__ @botan\/ffi.h:1325:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt)
botan_ec_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0836ff79c5a029db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_1426ba303dda832d" hs_bindgen_1426ba303dda832d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key #-}
{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1329:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1426ba303dda832d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_e8fbba4bf59bf75e" hs_bindgen_e8fbba4bf59bf75e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa #-}
{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1332:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e8fbba4bf59bf75e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_c2f2c07ffb7c0cb8" hs_bindgen_c2f2c07ffb7c0cb8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa #-}
{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c2f2c07ffb7c0cb8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_de217fa371a56810" hs_bindgen_de217fa371a56810 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh #-}
{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1336:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de217fa371a56810

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_2298c552fc563479" hs_bindgen_2298c552fc563479 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece #-}
{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1338:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2298c552fc563479

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_0127ee04f904e52b" hs_bindgen_0127ee04f904e52b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh #-}
{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1340:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0127ee04f904e52b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_a16f4000386644e4" hs_bindgen_a16f4000386644e4 ::
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

__defined at:__ @botan\/ffi.h:1360:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a16f4000386644e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_1a22dbbc932d2317" hs_bindgen_1a22dbbc932d2317 ::
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

__defined at:__ @botan\/ffi.h:1382:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a22dbbc932d2317

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_acf70828b803bfcf" hs_bindgen_acf70828b803bfcf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load #-}
{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1390:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acf70828b803bfcf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_6bcf9544e7b40c69" hs_bindgen_6bcf9544e7b40c69 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1395:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bcf9544e7b40c69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_6f88b130bd18df87" hs_bindgen_6f88b130bd18df87 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export #-}
{-| __C declaration:__ @botan_privkey_export@

    __defined at:__ @botan\/ffi.h:1409:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f88b130bd18df87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_cc17e1dca36ca2ae" hs_bindgen_cc17e1dca36ca2ae ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der #-}
{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1414:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc17e1dca36ca2ae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_dcf97bb2a346e276" hs_bindgen_dcf97bb2a346e276 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem #-}
{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1419:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dcf97bb2a346e276

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_raw@
foreign import ccall unsafe "hs_bindgen_e1cb85cc5363c788" hs_bindgen_e1cb85cc5363c788 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_raw #-}
{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1424:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_raw =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e1cb85cc5363c788

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_046fe40a8a4e3df6" hs_bindgen_046fe40a8a4e3df6 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name #-}
{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1426:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_046fe40a8a4e3df6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_bb9fddefdf77c5b3" hs_bindgen_bb9fddefdf77c5b3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted #-}
{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1433:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb9fddefdf77c5b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_4ec460afd7b916cf" hs_bindgen_4ec460afd7b916cf ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1449:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4ec460afd7b916cf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_81824de63d8af413" hs_bindgen_81824de63d8af413 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

    __defined at:__ @botan\/ffi.h:1465:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_81824de63d8af413

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_c110fd3b1ae27856" hs_bindgen_c110fd3b1ae27856 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1482:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c110fd3b1ae27856

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_f300ab171a249b8e" hs_bindgen_f300ab171a249b8e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1497:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f300ab171a249b8e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_d6e6ce875ae9161e" hs_bindgen_d6e6ce875ae9161e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1513:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6e6ce875ae9161e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_b5dd92ec431a5d2d" hs_bindgen_b5dd92ec431a5d2d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1528:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5dd92ec431a5d2d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_1cefdd8d85b9107a" hs_bindgen_1cefdd8d85b9107a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load #-}
{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1539:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1cefdd8d85b9107a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_b8414016312e2c1d" hs_bindgen_b8414016312e2c1d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey #-}
{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1541:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8414016312e2c1d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_72e93a431764a218" hs_bindgen_72e93a431764a218 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export #-}
{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1544:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_72e93a431764a218

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_d5af7b724d52d36b" hs_bindgen_d5af7b724d52d36b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der #-}
{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1549:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d5af7b724d52d36b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_9501fd38d4d22477" hs_bindgen_9501fd38d4d22477 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem #-}
{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1554:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9501fd38d4d22477

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_raw@
foreign import ccall unsafe "hs_bindgen_1babe2d1a2460f93" hs_bindgen_1babe2d1a2460f93 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_raw #-}
{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1559:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_raw =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1babe2d1a2460f93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_77c7f821549721f1" hs_bindgen_77c7f821549721f1 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name #-}
{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1561:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_77c7f821549721f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_e7e625c0d7a0b6df" hs_bindgen_e7e625c0d7a0b6df ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key #-}
{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1566:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e7e625c0d7a0b6df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_4882f288141aa290" hs_bindgen_4882f288141aa290 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength #-}
{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1568:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4882f288141aa290

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_5008aaf18e39277e" hs_bindgen_5008aaf18e39277e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint #-}
{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1571:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5008aaf18e39277e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_155ed0bc138a002b" hs_bindgen_155ed0bc138a002b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1576:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_155ed0bc138a002b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_1a6988246db28934" hs_bindgen_1a6988246db28934 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field #-}
{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1581:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a6988246db28934

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_95746f5304cd0b5c" hs_bindgen_95746f5304cd0b5c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field #-}
{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1583:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_95746f5304cd0b5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_oid@
foreign import ccall unsafe "hs_bindgen_e72413b57b4c1796" hs_bindgen_e72413b57b4c1796 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_oid #-}
{-| __C declaration:__ @botan_pubkey_oid@

    __defined at:__ @botan\/ffi.h:1589:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e72413b57b4c1796

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_oid@
foreign import ccall unsafe "hs_bindgen_4d607a10f8e57505" hs_bindgen_4d607a10f8e57505 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_oid #-}
{-| __C declaration:__ @botan_privkey_oid@

    __defined at:__ @botan\/ffi.h:1592:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_oid :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_oid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d607a10f8e57505

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_stateful_operation@
foreign import ccall unsafe "hs_bindgen_7a953adfa1521225" hs_bindgen_7a953adfa1521225 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_privkey_stateful_operation #-}
{-| Checks whether a key is stateful and sets

  [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_stateful_operation@

__defined at:__ @botan\/ffi.h:1599:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_stateful_operation :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_privkey_stateful_operation =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a953adfa1521225

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_remaining_operations@
foreign import ccall unsafe "hs_bindgen_f8824ed67aa81671" hs_bindgen_f8824ed67aa81671 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_privkey_remaining_operations #-}
{-| Gets information on many operations a (stateful) key has remaining and sets

  [__@out@ /(input)/__]: to that value

  __returns:__ 0 on success, a negative value on failure or if the key is not stateful

__C declaration:__ @botan_privkey_remaining_operations@

__defined at:__ @botan\/ffi.h:1606:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_remaining_operations :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_privkey_remaining_operations =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f8824ed67aa81671

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_b4bdcae73e6a1a08" hs_bindgen_b4bdcae73e6a1a08 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa #-}
{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1611:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4bdcae73e6a1a08

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_8603726f5c9686b4" hs_bindgen_8603726f5c9686b4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1 #-}
{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1613:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8603726f5c9686b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_92b56a879cbfaf5b" hs_bindgen_92b56a879cbfaf5b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p #-}
{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1616:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92b56a879cbfaf5b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_d0c8ed228972a82c" hs_bindgen_d0c8ed228972a82c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q #-}
{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1618:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0c8ed228972a82c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_88beb7d6741a83e9" hs_bindgen_88beb7d6741a83e9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d #-}
{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_88beb7d6741a83e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_9212f9997d2b3500" hs_bindgen_9212f9997d2b3500 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n #-}
{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1622:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9212f9997d2b3500

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_f6f51f6164cb509b" hs_bindgen_f6f51f6164cb509b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e #-}
{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1624:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f6f51f6164cb509b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_83c60f7f7ce0c055" hs_bindgen_83c60f7f7ce0c055 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey #-}
{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1627:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_83c60f7f7ce0c055

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_d91180aa3c142590" hs_bindgen_d91180aa3c142590 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa #-}
{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1629:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d91180aa3c142590

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_ddfd8b23f0bbce77" hs_bindgen_ddfd8b23f0bbce77 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1632:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddfd8b23f0bbce77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_92e3e6a5282bed88" hs_bindgen_92e3e6a5282bed88 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1634:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92e3e6a5282bed88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_fe1394a1277326c5" hs_bindgen_fe1394a1277326c5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa #-}
{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1640:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe1394a1277326c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_bd303c3a479393a3" hs_bindgen_bd303c3a479393a3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1643:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd303c3a479393a3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_5a2b06c8aab350e0" hs_bindgen_5a2b06c8aab350e0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x #-}
{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1646:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a2b06c8aab350e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_c7f6021864443487" hs_bindgen_c7f6021864443487 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1649:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7f6021864443487

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_b105b3c65982e0f9" hs_bindgen_b105b3c65982e0f9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1651:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b105b3c65982e0f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_f1a914a2b2f554bd" hs_bindgen_f1a914a2b2f554bd ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1653:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1a914a2b2f554bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_2effdecff62de110" hs_bindgen_2effdecff62de110 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1655:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2effdecff62de110

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_748ee9073f15228a" hs_bindgen_748ee9073f15228a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh #-}
{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1670:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_748ee9073f15228a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_6fb45d81ec3d1971" hs_bindgen_6fb45d81ec3d1971 ::
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

__defined at:__ @botan\/ffi.h:1684:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fb45d81ec3d1971

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_029db5c8444e9933" hs_bindgen_029db5c8444e9933 ::
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

__defined at:__ @botan\/ffi.h:1702:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_029db5c8444e9933

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_f394945d65131ecc" hs_bindgen_f394945d65131ecc ::
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

__defined at:__ @botan\/ffi.h:1717:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f394945d65131ecc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_fff3d62d4961ad4c" hs_bindgen_fff3d62d4961ad4c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519 #-}
{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1723:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fff3d62d4961ad4c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_1739322246a88ddc" hs_bindgen_1739322246a88ddc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519 #-}
{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1725:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1739322246a88ddc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_70f4632334555754" hs_bindgen_70f4632334555754 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1728:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70f4632334555754

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_2082027aae927695" hs_bindgen_2082027aae927695 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1731:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2082027aae927695

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_4952e6ab644d91ee" hs_bindgen_4952e6ab644d91ee ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448 #-}
{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1737:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4952e6ab644d91ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_81c6fa6645fdd9aa" hs_bindgen_81c6fa6645fdd9aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448 #-}
{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1739:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_81c6fa6645fdd9aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_ed448_get_privkey@
foreign import ccall unsafe "hs_bindgen_59e2a0b3c9c138de" hs_bindgen_59e2a0b3c9c138de ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1742:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59e2a0b3c9c138de

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ed448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_5ba6412989e14a00" hs_bindgen_5ba6412989e14a00 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1745:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5ba6412989e14a00

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_3187d9d899ab050f" hs_bindgen_3187d9d899ab050f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519 #-}
{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1751:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3187d9d899ab050f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_8b9c55c11637bd84" hs_bindgen_8b9c55c11637bd84 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519 #-}
{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1753:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b9c55c11637bd84

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_2a7dc950e8d26b9d" hs_bindgen_2a7dc950e8d26b9d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1756:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a7dc950e8d26b9d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_9034228310eba274" hs_bindgen_9034228310eba274 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1759:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9034228310eba274

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_x448@
foreign import ccall unsafe "hs_bindgen_620f4f73d848b715" hs_bindgen_620f4f73d848b715 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448 #-}
{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1765:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_620f4f73d848b715

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_x448@
foreign import ccall unsafe "hs_bindgen_5e6887576f5dd59b" hs_bindgen_5e6887576f5dd59b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448 #-}
{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1767:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5e6887576f5dd59b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_x448_get_privkey@
foreign import ccall unsafe "hs_bindgen_cd96ab2299b903b6" hs_bindgen_cd96ab2299b903b6 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1770:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd96ab2299b903b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_x448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_c82e9e9816c7f0d7" hs_bindgen_c82e9e9816c7f0d7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1773:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c82e9e9816c7f0d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_a9527b96eef273ed" hs_bindgen_a9527b96eef273ed ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_dsa #-}
{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1780:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9527b96eef273ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_d55c5db12269246f" hs_bindgen_d55c5db12269246f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1783:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d55c5db12269246f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_ee5d8d2b73025ba8" hs_bindgen_ee5d8d2b73025ba8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber #-}
{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1794:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ee5d8d2b73025ba8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_c14307b6cdd924c5" hs_bindgen_c14307b6cdd924c5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber #-}
{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1797:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c14307b6cdd924c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_e125fddda17b718b" hs_bindgen_e125fddda17b718b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1801:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e125fddda17b718b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_d788ead5ce3af951" hs_bindgen_d788ead5ce3af951 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1805:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d788ead5ce3af951

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_41488a1c6d51dfd7" hs_bindgen_41488a1c6d51dfd7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_frodokem #-}
{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1812:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_frodokem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_41488a1c6d51dfd7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_989b9e058bf36e50" hs_bindgen_989b9e058bf36e50 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_frodokem #-}
{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1815:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_frodokem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_989b9e058bf36e50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_da1ba187d1fde579" hs_bindgen_da1ba187d1fde579 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_classic_mceliece #-}
{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1822:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_classic_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da1ba187d1fde579

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_f7d82fabb0f04d06" hs_bindgen_f7d82fabb0f04d06 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_classic_mceliece #-}
{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1828:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_classic_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f7d82fabb0f04d06

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_4106461a7757ecf5" hs_bindgen_4106461a7757ecf5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_kem #-}
{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1838:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_kem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4106461a7757ecf5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_c2a47d3d6946738f" hs_bindgen_c2a47d3d6946738f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_kem #-}
{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1841:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_kem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c2a47d3d6946738f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_d1dc501dddb8f98a" hs_bindgen_d1dc501dddb8f98a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_slh_dsa #-}
{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1848:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_slh_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1dc501dddb8f98a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_b3432a0160fe82dd" hs_bindgen_b3432a0160fe82dd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_slh_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1851:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_slh_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3432a0160fe82dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall unsafe "hs_bindgen_35ad2dc9002737d1" hs_bindgen_35ad2dc9002737d1 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding #-}
{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1857:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_35ad2dc9002737d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_0f1a5cf5f1a084be" hs_bindgen_0f1a5cf5f1a084be ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa #-}
{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1860:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f1a5cf5f1a084be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_d433661576f520fa" hs_bindgen_d433661576f520fa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa #-}
{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1863:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d433661576f520fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_0645760001f56378" hs_bindgen_0645760001f56378 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh #-}
{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1866:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0645760001f56378

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_7992fd658ec9b322" hs_bindgen_7992fd658ec9b322 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh #-}
{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1869:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7992fd658ec9b322

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_0bd998eb926ecbe2" hs_bindgen_0bd998eb926ecbe2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2 #-}
{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1872:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0bd998eb926ecbe2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_17001e19909bf5df" hs_bindgen_17001e19909bf5df ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2 #-}
{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1875:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_17001e19909bf5df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_bd63909747f3d622" hs_bindgen_bd63909747f3d622 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1879:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd63909747f3d622

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_193c9022b8454e32" hs_bindgen_193c9022b8454e32 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1883:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_193c9022b8454e32

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_bf5390618929e835" hs_bindgen_bf5390618929e835 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za #-}
{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1886:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf5390618929e835

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_587252b4c877b4dc" hs_bindgen_587252b4c877b4dc ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point #-}
{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1893:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_587252b4c877b4dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_c6c4251cec129cfc" hs_bindgen_c6c4251cec129cfc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1901:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6c4251cec129cfc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_215544968647d7c5" hs_bindgen_215544968647d7c5 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1906:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_215544968647d7c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_e39bc464f0e6b962" hs_bindgen_e39bc464f0e6b962 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1909:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e39bc464f0e6b962

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_83b4eefa064e9720" hs_bindgen_83b4eefa064e9720 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt #-}
{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1912:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_83b4eefa064e9720

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_591e8f0e3a4d4207" hs_bindgen_591e8f0e3a4d4207 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1925:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_591e8f0e3a4d4207

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_6b0b03020ee5e754" hs_bindgen_6b0b03020ee5e754 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1930:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6b0b03020ee5e754

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_9941dd9078294cc5" hs_bindgen_9941dd9078294cc5 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1933:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9941dd9078294cc5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_f99ed55cb5168d0e" hs_bindgen_f99ed55cb5168d0e ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt #-}
{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1936:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f99ed55cb5168d0e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_c7bc5e8d34fb2d6f" hs_bindgen_c7bc5e8d34fb2d6f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create #-}
{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1948:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7bc5e8d34fb2d6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_f9a55038b6bc785e" hs_bindgen_f9a55038b6bc785e ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1953:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9a55038b6bc785e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_9fa9474781a69c3a" hs_bindgen_9fa9474781a69c3a ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length #-}
{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1955:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9fa9474781a69c3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_622a150a738c8c85" hs_bindgen_622a150a738c8c85 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update #-}
{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1957:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_622a150a738c8c85

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_533bc257c70e639d" hs_bindgen_533bc257c70e639d ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish #-}
{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1960:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_533bc257c70e639d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_85ae14270a4d2eac" hs_bindgen_85ae14270a4d2eac ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create #-}
{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1968:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_85ae14270a4d2eac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_b66ac96639fb479c" hs_bindgen_b66ac96639fb479c ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1976:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b66ac96639fb479c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_ae8d402693854cde" hs_bindgen_ae8d402693854cde ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update #-}
{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1978:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae8d402693854cde

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_ece8da57ed72cabc" hs_bindgen_ece8da57ed72cabc ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish #-}
{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1979:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ece8da57ed72cabc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_6c46995dee17e702" hs_bindgen_6c46995dee17e702 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1987:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c46995dee17e702

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_9926fe258bdcf3af" hs_bindgen_9926fe258bdcf3af ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1992:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9926fe258bdcf3af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_a964e203d9968eed" hs_bindgen_a964e203d9968eed ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1994:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a964e203d9968eed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_4a35d25ecfc37fbe" hs_bindgen_4a35d25ecfc37fbe ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1997:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a35d25ecfc37fbe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_92de9b688481316d" hs_bindgen_92de9b688481316d ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1999:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92de9b688481316d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_b32c431a3e35ed95" hs_bindgen_b32c431a3e35ed95 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement #-}
{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:2002:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b32c431a3e35ed95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_3bb0c8f087df1d27" hs_bindgen_3bb0c8f087df1d27 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:2016:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bb0c8f087df1d27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_2f95246aba8da388" hs_bindgen_2f95246aba8da388 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:2021:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f95246aba8da388

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_1de4684527be1642" hs_bindgen_1de4684527be1642 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2024:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1de4684527be1642

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_24938898a491584a" hs_bindgen_24938898a491584a ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:2029:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_24938898a491584a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_0a52f7c31a920de6" hs_bindgen_0a52f7c31a920de6 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:2033:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a52f7c31a920de6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_3c343bc1f452726b" hs_bindgen_3c343bc1f452726b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:2046:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c343bc1f452726b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_30f0ec6ba6787141" hs_bindgen_30f0ec6ba6787141 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:2051:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_30f0ec6ba6787141

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_079b6c6b4aa5e5f0" hs_bindgen_079b6c6b4aa5e5f0 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2054:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_079b6c6b4aa5e5f0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_ddc921239ad07212" hs_bindgen_ddc921239ad07212 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:2059:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddc921239ad07212

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_f2ed9b73183c8e49" hs_bindgen_f2ed9b73183c8e49 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id #-}
{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:2072:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2ed9b73183c8e49

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_526bd48310fae365" hs_bindgen_526bd48310fae365 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt #-}
{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:2079:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_526bd48310fae365

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_4c3644deeedaf60b" hs_bindgen_4c3644deeedaf60b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt #-}
{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:2094:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c3644deeedaf60b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_0fa4cec97bf47715" hs_bindgen_0fa4cec97bf47715 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load #-}
{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:2109:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0fa4cec97bf47715

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_bacca9e37c8f0ddd" hs_bindgen_bacca9e37c8f0ddd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file #-}
{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:2110:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bacca9e37c8f0ddd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_1734c458666237d7" hs_bindgen_1734c458666237d7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:2115:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1734c458666237d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_147a3bf50ca31729" hs_bindgen_147a3bf50ca31729 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup #-}
{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:2117:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_147a3bf50ca31729

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_242fc32d8acdbe65" hs_bindgen_242fc32d8acdbe65 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts #-}
{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:2120:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_242fc32d8acdbe65

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_985b2942c203227d" hs_bindgen_985b2942c203227d ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires #-}
{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:2121:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_985b2942c203227d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_dc342e2671babd96" hs_bindgen_dc342e2671babd96 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before #-}
{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:2123:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc342e2671babd96

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_37f16ff76a3436bd" hs_bindgen_37f16ff76a3436bd ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after #-}
{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:2124:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37f16ff76a3436bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_837609d1765eaabd" hs_bindgen_837609d1765eaabd ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint #-}
{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:2128:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_837609d1765eaabd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_3f038834ca45de54" hs_bindgen_3f038834ca45de54 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number #-}
{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:2130:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f038834ca45de54

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_bc8b4311fc35e04c" hs_bindgen_bc8b4311fc35e04c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:2131:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc8b4311fc35e04c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_eb95e7af3406876c" hs_bindgen_eb95e7af3406876c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:2132:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eb95e7af3406876c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_601ea5a332d37d2c" hs_bindgen_601ea5a332d37d2c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:2134:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_601ea5a332d37d2c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_51aedd94aee53add" hs_bindgen_51aedd94aee53add ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:2137:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51aedd94aee53add

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_8e4c64db8e5fd50b" hs_bindgen_8e4c64db8e5fd50b ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:2139:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e4c64db8e5fd50b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_c73386816fd4e2cf" hs_bindgen_c73386816fd4e2cf ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:2143:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c73386816fd4e2cf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_75850d3a216bc246" hs_bindgen_75850d3a216bc246 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:2148:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75850d3a216bc246

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_db8dc9e0b40ab099" hs_bindgen_db8dc9e0b40ab099 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string #-}
{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:2151:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_db8dc9e0b40ab099

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_8f81b00ec7bf3a78" hs_bindgen_8f81b00ec7bf3a78 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string #-}
{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:2154:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f81b00ec7bf3a78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_fe987cb0117ff363" hs_bindgen_fe987cb0117ff363 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage #-}
{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:2170:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe987cb0117ff363

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_1874d7308eb0faa7" hs_bindgen_1874d7308eb0faa7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match #-}
{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:2176:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1874d7308eb0faa7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_76940a9ea512048d" hs_bindgen_76940a9ea512048d ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify #-}
{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:2187:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76940a9ea512048d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_83020da657a08e69" hs_bindgen_83020da657a08e69 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status #-}
{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:2202:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_83020da657a08e69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_18ec96df8e26675e" hs_bindgen_18ec96df8e26675e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file #-}
{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:2210:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18ec96df8e26675e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_c354467ab4c0e067" hs_bindgen_c354467ab4c0e067 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load #-}
{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:2212:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c354467ab4c0e067

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_26e1f62c8396fead" hs_bindgen_26e1f62c8396fead ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy #-}
{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:2214:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_26e1f62c8396fead

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_d4be2db5a20e34a1" hs_bindgen_d4be2db5a20e34a1 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked #-}
{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:2220:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d4be2db5a20e34a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_695107a36677e674" hs_bindgen_695107a36677e674 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl #-}
{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:2227:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_695107a36677e674

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_4980df5a49cdd807" hs_bindgen_4980df5a49cdd807 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394 #-}
{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:2245:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4980df5a49cdd807

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_fb645ad5739f2209" hs_bindgen_fb645ad5739f2209 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394 #-}
{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:2254:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fb645ad5739f2209

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_0f91ac65869d82a6" hs_bindgen_0f91ac65869d82a6 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc #-}
{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2262:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f91ac65869d82a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_620a97a1cdddedc0" hs_bindgen_620a97a1cdddedc0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec #-}
{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2272:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_620a97a1cdddedc0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_b78c2b16a493283d" hs_bindgen_b78c2b16a493283d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init #-}
{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2291:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b78c2b16a493283d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_2fab01bdfcdbbdc6" hs_bindgen_2fab01bdfcdbbdc6 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy #-}
{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2298:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2fab01bdfcdbbdc6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_19165eb1f0c30701" hs_bindgen_19165eb1f0c30701 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate #-}
{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2304:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19165eb1f0c30701

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_e569d859b55367d3" hs_bindgen_e569d859b55367d3 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check #-}
{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2310:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e569d859b55367d3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_26486a2d20ecd01b" hs_bindgen_26486a2d20ecd01b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init #-}
{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2323:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_26486a2d20ecd01b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_5937be6f7294f93d" hs_bindgen_5937be6f7294f93d ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy #-}
{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2331:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5937be6f7294f93d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_55338b5e2f8ee559" hs_bindgen_55338b5e2f8ee559 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate #-}
{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2340:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55338b5e2f8ee559

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_5a03104aa2f98ef1" hs_bindgen_5a03104aa2f98ef1 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check #-}
{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2351:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a03104aa2f98ef1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_34d2d206dc549544" hs_bindgen_34d2d206dc549544 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init #-}
{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2362:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34d2d206dc549544

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_8a70da78edc94a81" hs_bindgen_8a70da78edc94a81 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2369:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a70da78edc94a81

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_6f057fb2597fcf78" hs_bindgen_6f057fb2597fcf78 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt #-}
{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2372:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f057fb2597fcf78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_1c12dd84d5a8b6d3" hs_bindgen_1c12dd84d5a8b6d3 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt #-}
{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2375:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c12dd84d5a8b6d3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_fafe4d50158e27ce" hs_bindgen_fafe4d50158e27ce ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init #-}
{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2387:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fafe4d50158e27ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_f83cf18f11cddcb9" hs_bindgen_f83cf18f11cddcb9 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy #-}
{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2395:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f83cf18f11cddcb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_cbfe32396926240b" hs_bindgen_cbfe32396926240b ::
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

__defined at:__ @botan\/ffi.h:2410:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cbfe32396926240b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_7652de1b8cbd5b21" hs_bindgen_7652de1b8cbd5b21 ::
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

__defined at:__ @botan\/ffi.h:2429:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7652de1b8cbd5b21

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_5bc55206baeaf254" hs_bindgen_5bc55206baeaf254 ::
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

__defined at:__ @botan\/ffi.h:2445:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5bc55206baeaf254

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_94248d9a57f2e216" hs_bindgen_94248d9a57f2e216 ::
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

__defined at:__ @botan\/ffi.h:2472:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_94248d9a57f2e216

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_692a89ac00f16fc4" hs_bindgen_692a89ac00f16fc4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size #-}
{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2490:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_692a89ac00f16fc4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_10f1931af033408a" hs_bindgen_10f1931af033408a ::
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

__defined at:__ @botan\/ffi.h:2511:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_10f1931af033408a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_a313b599318592d2" hs_bindgen_a313b599318592d2 ::
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

__defined at:__ @botan\/ffi.h:2532:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a313b599318592d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_supports_crypto_backend@
foreign import ccall unsafe "hs_bindgen_d644b1577a10e1d5" hs_bindgen_d644b1577a10e1d5 ::
     IO (Ptr.FunPtr (IO FC.CInt))

{-# NOINLINE botan_tpm2_supports_crypto_backend #-}
{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2557:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend :: Ptr.FunPtr (IO FC.CInt)
botan_tpm2_supports_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d644b1577a10e1d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_init@
foreign import ccall unsafe "hs_bindgen_a87e08913f8ae120" hs_bindgen_a87e08913f8ae120 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init #-}
{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2565:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a87e08913f8ae120

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_init_ex@
foreign import ccall unsafe "hs_bindgen_9ff386a40d1e3a51" hs_bindgen_9ff386a40d1e3a51 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ex #-}
{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2575:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9ff386a40d1e3a51

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_from_esys@
foreign import ccall unsafe "hs_bindgen_8877c4bfe73e4ca9" hs_bindgen_8877c4bfe73e4ca9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_from_esys #-}
{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2586:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt)
botan_tpm2_ctx_from_esys =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8877c4bfe73e4ca9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_2c9b5c239998b414" hs_bindgen_2c9b5c239998b414 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_enable_crypto_backend #-}
{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2598:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend :: Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_ctx_enable_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c9b5c239998b414

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_ctx_destroy@
foreign import ccall unsafe "hs_bindgen_b54fb50e8a431165" hs_bindgen_b54fb50e8a431165 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_destroy #-}
{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2605:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy :: Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_ctx_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b54fb50e8a431165

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_1849ad27d0562368" hs_bindgen_1849ad27d0562368 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_enable_crypto_backend #-}
{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2619:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_enable_crypto_backend =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1849ad27d0562368

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_crypto_backend_state_destroy@
foreign import ccall unsafe "hs_bindgen_522a6f1a9e99a743" hs_bindgen_522a6f1a9e99a743 ::
     IO (Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_crypto_backend_state_destroy #-}
{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2631:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy :: Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt)
botan_tpm2_crypto_backend_state_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_522a6f1a9e99a743

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_rng_init@
foreign import ccall unsafe "hs_bindgen_d47bfa5a5f9070b9" hs_bindgen_d47bfa5a5f9070b9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_rng_init #-}
{-| Initialize a random number generator object via TPM2

  [__@rng_out@ /(input)/__]: rng object to create

  [__@ctx@ /(input)/__]: TPM2 context

  [__@s1@ /(input)/__]: the first session to use (optional, may be nullptr)

  [__@s2@ /(input)/__]: the second session to use (optional, may be nullptr)

  [__@s3@ /(input)/__]: the third session to use (optional, may be nullptr)

__C declaration:__ @botan_tpm2_rng_init@

__defined at:__ @botan\/ffi.h:2642:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d47bfa5a5f9070b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_unauthenticated_session_init@
foreign import ccall unsafe "hs_bindgen_e36aad3831eb530e" hs_bindgen_e36aad3831eb530e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_unauthenticated_session_init #-}
{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2654:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_unauthenticated_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e36aad3831eb530e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_9_0_get_botan_tpm2_session_destroy@
foreign import ccall unsafe "hs_bindgen_213cfe4647123ac3" hs_bindgen_213cfe4647123ac3 ::
     IO (Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_session_destroy #-}
{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2661:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy :: Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_213cfe4647123ac3
