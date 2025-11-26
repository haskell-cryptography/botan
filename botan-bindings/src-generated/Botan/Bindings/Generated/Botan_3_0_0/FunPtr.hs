{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_0_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_0_0
import           Data.Void (Void)
import qualified Foreign.C as FC
import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "/* get_botan_error_description_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_c4b2cb068361e27f (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* get_botan_error_last_exception_message_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_f8b5b56e53cf4b42 (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* get_botan_ffi_api_version_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_df111ded0988d95e (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* get_botan_ffi_supports_api_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a021b5e43540f12a (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* get_botan_version_string_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_934ec9aef9845043 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* get_botan_version_major_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_b7edd6e9bfcfa130 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* get_botan_version_minor_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_778ad1385c7faab0 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* get_botan_version_patch_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_aee99a36a7d94b31 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* get_botan_version_datestamp_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_44e355e0ead0c40e (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* get_botan_constant_time_compare_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8150660a9aeb558e (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* get_botan_same_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_eda2059710d26822 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* get_botan_scrub_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e996ab1eda618a69 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* get_botan_hex_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_14f467c0575c00a0 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* get_botan_hex_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c67f576cd580c30d (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* get_botan_base64_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9335eae5e6e59751 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* get_botan_base64_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_44974f9b3b368183 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* get_botan_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_675ae6c4d6ce5c1d (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* get_botan_rng_init_custom_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_096bdb82c1cb60cd (void)) ("
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
  , "/* get_botan_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_53556580e06cf984 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* get_botan_system_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d170d5225e210ce3 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* get_botan_rng_reseed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_70f1e0c9032ac8ed (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* get_botan_rng_reseed_from_rng_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_edc85e871c22fe13 (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* get_botan_rng_add_entropy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d80957a38ededdc9 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* get_botan_rng_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_233fa3b954f46626 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* get_botan_hash_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f292d4c7695883c8 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* get_botan_hash_copy_state_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_10709dfcb1084ca7 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* get_botan_hash_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f8d63570403774ae (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* get_botan_hash_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dac6ddb1e7d5e915 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* get_botan_hash_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4f10ae4518ecde52 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* get_botan_hash_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e324a74bdbc15d91 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* get_botan_hash_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b429efdde893e245 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* get_botan_hash_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0fa26729ec9f6e6d (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* get_botan_hash_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_08924e41af9d3bb9 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* get_botan_mac_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2ffacbd3f76c1e08 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* get_botan_mac_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f0035f6760a3b9cf (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* get_botan_mac_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9764b28660f4d409 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* get_botan_mac_set_nonce_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e759e4b39bcfb764 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* get_botan_mac_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e7ea57be0f2e6c42 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* get_botan_mac_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8c0a85f5815be843 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* get_botan_mac_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7b34654c19a26a22 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* get_botan_mac_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2b55293c57a936ed (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* get_botan_mac_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_829ad88696c84647 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* get_botan_mac_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_52fd92ab08913c54 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* get_botan_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b82b8a988e26dad1 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* get_botan_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ffad3c99080aecb3 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* get_botan_cipher_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_60e652f1d855db4f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* get_botan_cipher_valid_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2911449771c48622 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* get_botan_cipher_get_tag_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3a6a045b19fe9791 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* get_botan_cipher_get_default_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b9c000582a12108d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* get_botan_cipher_get_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_92332dec2728a603 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* get_botan_cipher_get_ideal_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_26646e5b575a6836 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* get_botan_cipher_query_keylen_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0c00c1fe96c9b8ea (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* get_botan_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_795a442036af796f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* get_botan_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f5223ef52b866610 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* get_botan_cipher_reset_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_20558da8410f80b1 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* get_botan_cipher_set_associated_data_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f8f62c3a3ca86d93 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* get_botan_cipher_start_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c7a3b84605bf5718 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* get_botan_cipher_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9f2d48c44d7b541b (void)) ("
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
  , "/* get_botan_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_89b87feef30a6ffe (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* get_botan_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6169b154a3e4f9ca (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* get_botan_pbkdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cdf1badb6f372c49 (void)) ("
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
  , "/* get_botan_pbkdf_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d3c5a386ca167b90 (void)) ("
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
  , "/* get_botan_pwdhash_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0b0ce60d2e054d76 (void)) ("
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
  , "/* get_botan_pwdhash_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b782c7ca559f15a3 (void)) ("
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
  , "/* get_botan_scrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_90696608265d4a51 (void)) ("
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
  , "/* get_botan_kdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4f7cf802b91e84c0 (void)) ("
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
  , "/* get_botan_block_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_46ff5363bb2708bd (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* get_botan_block_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_21838783d5020060 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* get_botan_block_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_bb352ae71a51c275 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* get_botan_block_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_fbfdd037f5dcaf0e (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* get_botan_block_cipher_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a1a718ef01e6384c (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* get_botan_block_cipher_encrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_374c1925127a786a (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* get_botan_block_cipher_decrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_54f33b994430415e (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* get_botan_block_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6f3595b07857de88 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* get_botan_block_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8046b551fbcff337 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* get_botan_mp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e8b9699c77f609fa (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* get_botan_mp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cbc67a2e752f4310 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* get_botan_mp_to_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_599a487c5dd5172e (void)) ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* get_botan_mp_to_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_355fb4ef1a479865 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* get_botan_mp_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b5cf77c06f616adb (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* get_botan_mp_set_from_int_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_df4cbdb54f5c832c (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* get_botan_mp_set_from_mp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4cc9856fea2feee9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* get_botan_mp_set_from_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_086183ac1cbff88f (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* get_botan_mp_set_from_radix_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c3861fb412530773 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* get_botan_mp_num_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1423a5b972e21d8b (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* get_botan_mp_num_bytes_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_715ea4690bd5f59f (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* get_botan_mp_to_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6f2c2afe05ecb95a (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* get_botan_mp_from_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_574a507b3cbc0129 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* get_botan_mp_to_uint32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0c17757fd98d2c74 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* get_botan_mp_is_positive_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2ab755dc14159ab2 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* get_botan_mp_is_negative_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8f15f3754e76ee73 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* get_botan_mp_flip_sign_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3e003567b245663d (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* get_botan_mp_is_zero_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_257b5db7615e9176 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* get_botan_mp_is_odd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_64b0e66b1ebdb579 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* get_botan_mp_is_even_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9c299a999fce3bef (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* get_botan_mp_add_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6e40b2ea4ef84145 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* get_botan_mp_sub_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_862774d5f2cc0cd3 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* get_botan_mp_add_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_10410d7c2d41fff2 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* get_botan_mp_sub_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4b288296581299d4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* get_botan_mp_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5b71570954b98698 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* get_botan_mp_div_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_36668640f24ea8d5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* get_botan_mp_mod_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_633496726ea304da (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* get_botan_mp_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0e75d2e8c76f28ae (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* get_botan_mp_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_09b7cfa83d7d0e9d (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* get_botan_mp_swap_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dafbf537a0cdd020 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* get_botan_mp_powmod_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1dcda0eec06d434f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* get_botan_mp_lshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_23f516a0f3902694 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* get_botan_mp_rshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1e11e88a4714a400 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* get_botan_mp_mod_inverse_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_472de8166ba6db29 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* get_botan_mp_rand_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6a8943dede34e3ef (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* get_botan_mp_rand_range_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3d8ac75bcdf7fdf8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* get_botan_mp_gcd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_640ca46c7d0eb91d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* get_botan_mp_is_prime_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_85ce1be300c08069 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* get_botan_mp_get_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_21bc17b193c809df (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* get_botan_mp_set_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2512d851962be860 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* get_botan_mp_clear_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f74ab5913a503669 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* get_botan_bcrypt_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_79e979661c30265a (void)) ("
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
  , "/* get_botan_bcrypt_is_valid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7d3e93b8f8093995 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* get_botan_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9879b2498845dca4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* get_botan_privkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cf7d0e502dcf6001 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* get_botan_privkey_create_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ff06bd6548ec2443 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* get_botan_privkey_create_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0e26a91cd655f117 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* get_botan_privkey_create_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_05d7a45f75fdfd98 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* get_botan_privkey_create_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2e3983573841c49a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* get_botan_privkey_create_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_bf55dee4a8d8e43b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* get_botan_privkey_create_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_66e29c924421c88e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* get_botan_privkey_create_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5e869c6265a61865 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* get_botan_privkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_37302a8c19047bff (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* get_botan_privkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4ef6cbfdfe96bc20 (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* get_botan_privkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3d6bddaf42131f7d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* get_botan_privkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_769c41db1b7cee8d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* get_botan_privkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_85b6fe0abebbfa2b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* get_botan_privkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f87fc22231f88010 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* get_botan_privkey_export_encrypted_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7556efdb489472df (void)) ("
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
  , "/* get_botan_privkey_export_encrypted_pbkdf_msec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f17a753fd18bf6e3 (void)) ("
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
  , "/* get_botan_privkey_export_encrypted_pbkdf_iter_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cd830c4e113b8611 (void)) ("
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
  , "/* get_botan_privkey_view_encrypted_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_774978f99731344b (void)) ("
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
  , "/* get_botan_privkey_view_encrypted_der_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ffb369fa50a91349 (void)) ("
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
  , "/* get_botan_privkey_view_encrypted_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a012c6560bcc5286 (void)) ("
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
  , "/* get_botan_privkey_view_encrypted_pem_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0db2ed369e6eeddf (void)) ("
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
  , "/* get_botan_pubkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2c88c05cf825336c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* get_botan_privkey_export_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d818675ca6e38462 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* get_botan_pubkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4d2c3f5298cbc5bd (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* get_botan_pubkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b6d7934c96f0ccdb (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* get_botan_pubkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4c26dba3e6c49b81 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* get_botan_pubkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_76f83411fbbac38c (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* get_botan_pubkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f093721a7ab0317f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* get_botan_pubkey_estimated_strength_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3374c4d17a59ba5e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* get_botan_pubkey_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1e5f15ada082d27e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* get_botan_pubkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_aabac11f9b2bf5d6 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* get_botan_pubkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_94a0ab969b38fa25 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* get_botan_privkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6282eb0fc018e00e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* get_botan_privkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_65da7245a72a48eb (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* get_botan_privkey_load_rsa_pkcs1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8844f791f4fc445c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* get_botan_privkey_rsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_217c09c7d4108e54 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* get_botan_privkey_rsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a4aab01565fadd7c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* get_botan_privkey_rsa_get_d_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7d65c0404adf45a0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* get_botan_privkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2d6ad0c923b4c4c4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* get_botan_privkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d58a820ccf3e1927 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* get_botan_privkey_rsa_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_888239687c151aeb (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* get_botan_pubkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3680e3fedc1037cf (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* get_botan_pubkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d5a61f11b7b2f478 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* get_botan_pubkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_255bb426579272c8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* get_botan_privkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1de3109dd439fee0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* get_botan_pubkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_fc1e4f20f8d1a6e3 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* get_botan_privkey_dsa_get_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_78ee1fce07443736 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6736481397d4c5e0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_51b360a050547ad9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_g_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_97d2761f2a5b2b58 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_fa9245fe3fa85283 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* get_botan_privkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2ff7a11c1b0bdc80 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* get_botan_pubkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6d6bf91bdcefa5d2 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* get_botan_pubkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ace0c76f3759d4bb (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* get_botan_privkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_52b1b2d3eef3492e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* get_botan_privkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_095222d9cf556db4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* get_botan_pubkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6f63b5c4eae85d9b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* get_botan_privkey_ed25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ff8149897b83a797 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* get_botan_pubkey_ed25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f2ce04054b132227 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* get_botan_privkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_87ec5be717870593 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* get_botan_pubkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3e9d378702d922e8 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* get_botan_privkey_x25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_10b7211113702691 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* get_botan_pubkey_x25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0f6c1900b30edea7 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* get_botan_privkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0a9905434f2e6549 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* get_botan_pubkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_63f2b968bfa5772f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* get_botan_pubkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c4b140603cc5fa79 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* get_botan_privkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_95b7d630b8e49018 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* get_botan_pubkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9b6277a940f7186c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* get_botan_privkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0e24ea2a74e8aae2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* get_botan_pubkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9b4bdb94d4409137 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* get_botan_privkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_617905792ae8eac2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* get_botan_pubkey_sm2_compute_za_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_86c634929ff2c93b (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* get_botan_pubkey_view_ec_public_point_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_48b92d349d7e9a4f (void)) ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* get_botan_pk_op_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f681d3c6c0c30e50 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* get_botan_pk_op_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a9eb4efd589b346b (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_encrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c3738f22c079f9ce (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* get_botan_pk_op_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_744394922662089d (void)) ("
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
  , "/* get_botan_pk_op_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9096b97e60af86a3 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* get_botan_pk_op_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_82eb0a2130a6e6c0 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_decrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_eef70e310b0c5352 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* get_botan_pk_op_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_094613e2978eb354 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* get_botan_pk_op_sign_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_553bb8cacf6f47a1 (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* get_botan_pk_op_sign_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_986d7a49b64d1f3a (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* get_botan_pk_op_sign_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6aa5eecb508992f7 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* get_botan_pk_op_sign_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7b4332d501ef8c24 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* get_botan_pk_op_sign_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_060c8cc6554ac0c4 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* get_botan_pk_op_verify_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_514e8f567702e091 (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* get_botan_pk_op_verify_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_715f2087a97c3d05 (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* get_botan_pk_op_verify_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4f7903c8f9b25b06 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* get_botan_pk_op_verify_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c41cb5bc91807ade (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3963107b802fbc2c (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_deddc3134a113a3f (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_export_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_216011d9ef0868b7 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_view_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ff484cd8cd4f6462 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_127f8fea7a9460d0 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4efc07f655b81e28 (void)) ("
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
  , "/* get_botan_pk_op_kem_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ede261a4a08e9499 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cbbbff5ff3692aab (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_15e0b2c9d27e7ebe (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_70b62ad561253b1c (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_create_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dd3e138591f94145 (void)) ("
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
  , "/* get_botan_pk_op_kem_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2c448de2de8b38e4 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6b5879ba8825d434 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3ecd790b7107d9a1 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_41445f14c31081e9 (void)) ("
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
  , "/* get_botan_pkcs_hash_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6cc9c5b7109bc2a0 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* get_botan_mceies_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ef36952013171df7 (void)) ("
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
  , "/* get_botan_mceies_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d92eca82ac5a877e (void)) ("
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
  , "/* get_botan_x509_cert_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_76c26d156bc4caee (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* get_botan_x509_cert_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e19421f225f14d68 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* get_botan_x509_cert_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a300e8b9af4e8423 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* get_botan_x509_cert_dup_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_90fd463e24de9988 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* get_botan_x509_cert_get_time_starts_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5b4696b4321c8adc (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* get_botan_x509_cert_get_time_expires_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_60bc826da6e57779 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* get_botan_x509_cert_not_before_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7fffb1eb59f06cca (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* get_botan_x509_cert_not_after_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9c7bf7698ab755a5 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* get_botan_x509_cert_get_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3f2c00999f62ad21 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* get_botan_x509_cert_get_serial_number_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_92845a22c5b3fc42 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* get_botan_x509_cert_get_authority_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_245d063e6498e4f0 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* get_botan_x509_cert_get_subject_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9012bb8be86152e7 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* get_botan_x509_cert_get_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a6eae2054cfa9f3c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* get_botan_x509_cert_view_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d22a1ca30cac451e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* get_botan_x509_cert_get_public_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_826254fc7440fb0b (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* get_botan_x509_cert_get_issuer_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_232a70554730b30f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* get_botan_x509_cert_get_subject_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f8e6a7aca28e0d32 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* get_botan_x509_cert_to_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e6e4a5ac4f47fd14 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* get_botan_x509_cert_view_as_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8295fe208aa0a9b2 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* get_botan_x509_cert_allowed_usage_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f78f25efc498ccfb (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* get_botan_x509_cert_hostname_match_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9bb8efba6c5b46ea (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* get_botan_x509_cert_verify_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9dbe2ce021f27644 (void)) ("
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
  , "/* get_botan_x509_cert_validation_status_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_679ff355dfa5161a (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* get_botan_x509_crl_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8650c2c86b680bfc (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* get_botan_x509_crl_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_216fdb2182254949 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* get_botan_x509_crl_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_714b86a239f3c411 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* get_botan_x509_is_revoked_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_30b485b3120f416e (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* get_botan_x509_cert_verify_with_crl_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_34a73a2fc9bda79c (void)) ("
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
  , "/* get_botan_key_wrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f3dfc7781ab79daa (void)) ("
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
  , "/* get_botan_key_unwrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_176ee032836c4c26 (void)) ("
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
  , "/* get_botan_nist_kw_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c669d33d9ff4c029 (void)) ("
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
  , "/* get_botan_nist_kw_dec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7b1e2f1d37705c3d (void)) ("
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
  , "/* get_botan_hotp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_781241abd8df70ef (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* get_botan_hotp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_583dcd0c77cfad52 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* get_botan_hotp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e72f3a92905c982a (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* get_botan_hotp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_45385841e2f86f13 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* get_botan_totp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b29632c649c4ace9 (void)) ("
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
  , "/* get_botan_totp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4661c8f611d913bc (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* get_botan_totp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d0e69261808c261d (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* get_botan_totp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_29dd0bea1a222c63 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* get_botan_fpe_fe1_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_468357ba9c83f87e (void)) ("
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
  , "/* get_botan_fpe_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9cca98d625106b15 (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* get_botan_fpe_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4d21c25da2c77a7e (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* get_botan_fpe_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_af8692235be44be4 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* get_botan_srp6_server_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f927e98a15e19b2f (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* get_botan_srp6_server_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3fc7a2f698a4e073 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* get_botan_srp6_server_session_step1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_725bddff0f1a8667 (void)) ("
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
  , "/* get_botan_srp6_server_session_step2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ed00a3e54f0217da (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* get_botan_srp6_generate_verifier_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6ed78eae86254b5c (void)) ("
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
  , "/* get_botan_srp6_client_agree_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_bf4758c90ea48166 (void)) ("
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
  , "/* get_botan_srp6_group_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2687db0f0c159934 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* get_botan_zfec_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8fb8c126c722c026 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* get_botan_zfec_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d03761f77fc956a4 (void)) ("
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

foreign import ccall unsafe "hs_bindgen_botanbindings_c4b2cb068361e27f" hs_bindgen_botanbindings_c4b2cb068361e27f ::
     IO (Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_error_description_ptr #-}

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:125:35@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description_ptr :: Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar))
botan_error_description_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c4b2cb068361e27f

foreign import ccall unsafe "hs_bindgen_botanbindings_f8b5b56e53cf4b42" hs_bindgen_botanbindings_f8b5b56e53cf4b42 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message_ptr #-}

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:134:35@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message_ptr :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
botan_error_last_exception_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f8b5b56e53cf4b42

foreign import ccall unsafe "hs_bindgen_botanbindings_df111ded0988d95e" hs_bindgen_botanbindings_df111ded0988d95e ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version_ptr #-}

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:141:32@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_df111ded0988d95e

foreign import ccall unsafe "hs_bindgen_botanbindings_a021b5e43540f12a" hs_bindgen_botanbindings_a021b5e43540f12a ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api_ptr #-}

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:147:27@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a021b5e43540f12a

foreign import ccall unsafe "hs_bindgen_botanbindings_934ec9aef9845043" hs_bindgen_botanbindings_934ec9aef9845043 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_version_string_ptr #-}

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:152:35@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string_ptr :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
botan_version_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_934ec9aef9845043

foreign import ccall unsafe "hs_bindgen_botanbindings_b7edd6e9bfcfa130" hs_bindgen_botanbindings_b7edd6e9bfcfa130 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major_ptr #-}

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:157:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b7edd6e9bfcfa130

foreign import ccall unsafe "hs_bindgen_botanbindings_778ad1385c7faab0" hs_bindgen_botanbindings_778ad1385c7faab0 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor_ptr #-}

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:162:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_778ad1385c7faab0

foreign import ccall unsafe "hs_bindgen_botanbindings_aee99a36a7d94b31" hs_bindgen_botanbindings_aee99a36a7d94b31 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch_ptr #-}

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:167:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_aee99a36a7d94b31

foreign import ccall unsafe "hs_bindgen_botanbindings_44e355e0ead0c40e" hs_bindgen_botanbindings_44e355e0ead0c40e ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp_ptr #-}

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:173:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_44e355e0ead0c40e

foreign import ccall unsafe "hs_bindgen_botanbindings_8150660a9aeb558e" hs_bindgen_botanbindings_8150660a9aeb558e ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare_ptr #-}

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:178:27@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8150660a9aeb558e

foreign import ccall unsafe "hs_bindgen_botanbindings_eda2059710d26822" hs_bindgen_botanbindings_eda2059710d26822 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem_ptr #-}

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:184:27@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_eda2059710d26822

foreign import ccall unsafe "hs_bindgen_botanbindings_e996ab1eda618a69" hs_bindgen_botanbindings_e996ab1eda618a69 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem_ptr #-}

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:190:27@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e996ab1eda618a69

foreign import ccall unsafe "hs_bindgen_botanbindings_14f467c0575c00a0" hs_bindgen_botanbindings_14f467c0575c00a0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode_ptr #-}

{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:202:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_14f467c0575c00a0

foreign import ccall unsafe "hs_bindgen_botanbindings_c67f576cd580c30d" hs_bindgen_botanbindings_c67f576cd580c30d ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode_ptr #-}

{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:212:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c67f576cd580c30d

foreign import ccall unsafe "hs_bindgen_botanbindings_9335eae5e6e59751" hs_bindgen_botanbindings_9335eae5e6e59751 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode_ptr #-}

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:217:27@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9335eae5e6e59751

foreign import ccall unsafe "hs_bindgen_botanbindings_44974f9b3b368183" hs_bindgen_botanbindings_44974f9b3b368183 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode_ptr #-}

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:223:27@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_44974f9b3b368183

foreign import ccall unsafe "hs_bindgen_botanbindings_675ae6c4d6ce5c1d" hs_bindgen_botanbindings_675ae6c4d6ce5c1d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_ptr #-}

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:241:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_675ae6c4d6ce5c1d

foreign import ccall unsafe "hs_bindgen_botanbindings_096bdb82c1cb60cd" hs_bindgen_botanbindings_096bdb82c1cb60cd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_custom_ptr #-}

{-| Initialize a custom random number generator from a set of callback functions

  [__@rng_out@ /(input)/__]: rng object to create

  [__@rng_name@ /(input)/__]: name of the rng

  [__@context@ /(input)/__]: An application-specific context passed to the callback functions

  [__@get_cb@ /(input)/__]: Callback for getting random bytes from the rng, return 0 for success

  [__@add_entropy_cb@ /(input)/__]: Callback for adding entropy to the rng, return 0 for success, may be NULL

  [__@destroy_cb@ /(input)/__]: Callback called when rng is destroyed, may be NULL

__C declaration:__ @botan_rng_init_custom@

__defined at:__ @botan\/ffi.h:252:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_096bdb82c1cb60cd

foreign import ccall unsafe "hs_bindgen_botanbindings_53556580e06cf984" hs_bindgen_botanbindings_53556580e06cf984 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get_ptr #-}

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:264:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_53556580e06cf984

foreign import ccall unsafe "hs_bindgen_botanbindings_d170d5225e210ce3" hs_bindgen_botanbindings_d170d5225e210ce3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get_ptr #-}

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:272:27@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d170d5225e210ce3

foreign import ccall unsafe "hs_bindgen_botanbindings_70f1e0c9032ac8ed" hs_bindgen_botanbindings_70f1e0c9032ac8ed ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_ptr #-}

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:282:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_ptr :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_70f1e0c9032ac8ed

foreign import ccall unsafe "hs_bindgen_botanbindings_edc85e871c22fe13" hs_bindgen_botanbindings_edc85e871c22fe13 ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng_ptr #-}

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:292:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng_ptr :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_edc85e871c22fe13

foreign import ccall unsafe "hs_bindgen_botanbindings_d80957a38ededdc9" hs_bindgen_botanbindings_d80957a38ededdc9 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy_ptr #-}

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:304:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d80957a38ededdc9

foreign import ccall unsafe "hs_bindgen_botanbindings_233fa3b954f46626" hs_bindgen_botanbindings_233fa3b954f46626 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy_ptr #-}

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:313:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy_ptr :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_233fa3b954f46626

foreign import ccall unsafe "hs_bindgen_botanbindings_f292d4c7695883c8" hs_bindgen_botanbindings_f292d4c7695883c8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init_ptr #-}

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:327:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f292d4c7695883c8

foreign import ccall unsafe "hs_bindgen_botanbindings_10709dfcb1084ca7" hs_bindgen_botanbindings_10709dfcb1084ca7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state_ptr #-}

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:335:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_10709dfcb1084ca7

foreign import ccall unsafe "hs_bindgen_botanbindings_f8d63570403774ae" hs_bindgen_botanbindings_f8d63570403774ae ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length_ptr #-}

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:343:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f8d63570403774ae

foreign import ccall unsafe "hs_bindgen_botanbindings_dac6ddb1e7d5e915" hs_bindgen_botanbindings_dac6ddb1e7d5e915 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size_ptr #-}

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:351:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dac6ddb1e7d5e915

foreign import ccall unsafe "hs_bindgen_botanbindings_4f10ae4518ecde52" hs_bindgen_botanbindings_4f10ae4518ecde52 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update_ptr #-}

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:360:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4f10ae4518ecde52

foreign import ccall unsafe "hs_bindgen_botanbindings_e324a74bdbc15d91" hs_bindgen_botanbindings_e324a74bdbc15d91 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final_ptr #-}

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:370:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e324a74bdbc15d91

foreign import ccall unsafe "hs_bindgen_botanbindings_b429efdde893e245" hs_bindgen_botanbindings_b429efdde893e245 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear_ptr #-}

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:378:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b429efdde893e245

foreign import ccall unsafe "hs_bindgen_botanbindings_0fa26729ec9f6e6d" hs_bindgen_botanbindings_0fa26729ec9f6e6d ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy_ptr #-}

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:385:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0fa26729ec9f6e6d

foreign import ccall unsafe "hs_bindgen_botanbindings_08924e41af9d3bb9" hs_bindgen_botanbindings_08924e41af9d3bb9 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name_ptr #-}

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:393:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_08924e41af9d3bb9

foreign import ccall unsafe "hs_bindgen_botanbindings_2ffacbd3f76c1e08" hs_bindgen_botanbindings_2ffacbd3f76c1e08 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init_ptr #-}

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:408:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2ffacbd3f76c1e08

foreign import ccall unsafe "hs_bindgen_botanbindings_f0035f6760a3b9cf" hs_bindgen_botanbindings_f0035f6760a3b9cf ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length_ptr #-}

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:416:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f0035f6760a3b9cf

foreign import ccall unsafe "hs_bindgen_botanbindings_9764b28660f4d409" hs_bindgen_botanbindings_9764b28660f4d409 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key_ptr #-}

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:425:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9764b28660f4d409

foreign import ccall unsafe "hs_bindgen_botanbindings_e759e4b39bcfb764" hs_bindgen_botanbindings_e759e4b39bcfb764 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce_ptr #-}

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:434:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e759e4b39bcfb764

foreign import ccall unsafe "hs_bindgen_botanbindings_e7ea57be0f2e6c42" hs_bindgen_botanbindings_e7ea57be0f2e6c42 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update_ptr #-}

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:443:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e7ea57be0f2e6c42

foreign import ccall unsafe "hs_bindgen_botanbindings_8c0a85f5815be843" hs_bindgen_botanbindings_8c0a85f5815be843 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final_ptr #-}

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:453:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8c0a85f5815be843

foreign import ccall unsafe "hs_bindgen_botanbindings_7b34654c19a26a22" hs_bindgen_botanbindings_7b34654c19a26a22 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear_ptr #-}

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:461:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7b34654c19a26a22

foreign import ccall unsafe "hs_bindgen_botanbindings_2b55293c57a936ed" hs_bindgen_botanbindings_2b55293c57a936ed ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name_ptr #-}

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:469:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2b55293c57a936ed

foreign import ccall unsafe "hs_bindgen_botanbindings_829ad88696c84647" hs_bindgen_botanbindings_829ad88696c84647 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec_ptr #-}

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:478:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_829ad88696c84647

foreign import ccall unsafe "hs_bindgen_botanbindings_52fd92ab08913c54" hs_bindgen_botanbindings_52fd92ab08913c54 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy_ptr #-}

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:488:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_52fd92ab08913c54

foreign import ccall unsafe "hs_bindgen_botanbindings_b82b8a988e26dad1" hs_bindgen_botanbindings_b82b8a988e26dad1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init_ptr #-}

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:502:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b82b8a988e26dad1

foreign import ccall unsafe "hs_bindgen_botanbindings_ffad3c99080aecb3" hs_bindgen_botanbindings_ffad3c99080aecb3 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name_ptr #-}

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:507:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ffad3c99080aecb3

foreign import ccall unsafe "hs_bindgen_botanbindings_60e652f1d855db4f" hs_bindgen_botanbindings_60e652f1d855db4f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length_ptr #-}

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:512:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_60e652f1d855db4f

foreign import ccall unsafe "hs_bindgen_botanbindings_2911449771c48622" hs_bindgen_botanbindings_2911449771c48622 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length_ptr #-}

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:517:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2911449771c48622

foreign import ccall unsafe "hs_bindgen_botanbindings_3a6a045b19fe9791" hs_bindgen_botanbindings_3a6a045b19fe9791 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length_ptr #-}

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:522:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3a6a045b19fe9791

foreign import ccall unsafe "hs_bindgen_botanbindings_b9c000582a12108d" hs_bindgen_botanbindings_b9c000582a12108d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length_ptr #-}

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:527:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b9c000582a12108d

foreign import ccall unsafe "hs_bindgen_botanbindings_92332dec2728a603" hs_bindgen_botanbindings_92332dec2728a603 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity_ptr #-}

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:533:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_92332dec2728a603

foreign import ccall unsafe "hs_bindgen_botanbindings_26646e5b575a6836" hs_bindgen_botanbindings_26646e5b575a6836 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity_ptr #-}

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:539:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_26646e5b575a6836

foreign import ccall unsafe "hs_bindgen_botanbindings_0c00c1fe96c9b8ea" hs_bindgen_botanbindings_0c00c1fe96c9b8ea ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen_ptr #-}

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:544:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0c00c1fe96c9b8ea

foreign import ccall unsafe "hs_bindgen_botanbindings_795a442036af796f" hs_bindgen_botanbindings_795a442036af796f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec_ptr #-}

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:551:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_795a442036af796f

foreign import ccall unsafe "hs_bindgen_botanbindings_f5223ef52b866610" hs_bindgen_botanbindings_f5223ef52b866610 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key_ptr #-}

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:559:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f5223ef52b866610

foreign import ccall unsafe "hs_bindgen_botanbindings_20558da8410f80b1" hs_bindgen_botanbindings_20558da8410f80b1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset_ptr #-}

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:570:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_20558da8410f80b1

foreign import ccall unsafe "hs_bindgen_botanbindings_f8f62c3a3ca86d93" hs_bindgen_botanbindings_f8f62c3a3ca86d93 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data_ptr #-}

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:575:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f8f62c3a3ca86d93

foreign import ccall unsafe "hs_bindgen_botanbindings_c7a3b84605bf5718" hs_bindgen_botanbindings_c7a3b84605bf5718 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start_ptr #-}

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:581:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c7a3b84605bf5718

foreign import ccall unsafe "hs_bindgen_botanbindings_9f2d48c44d7b541b" hs_bindgen_botanbindings_9f2d48c44d7b541b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update_ptr #-}

{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:589:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9f2d48c44d7b541b

foreign import ccall unsafe "hs_bindgen_botanbindings_89b87feef30a6ffe" hs_bindgen_botanbindings_89b87feef30a6ffe ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear_ptr #-}

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:601:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_89b87feef30a6ffe

foreign import ccall unsafe "hs_bindgen_botanbindings_6169b154a3e4f9ca" hs_bindgen_botanbindings_6169b154a3e4f9ca ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy_ptr #-}

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:607:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6169b154a3e4f9ca

foreign import ccall unsafe "hs_bindgen_botanbindings_cdf1badb6f372c49" hs_bindgen_botanbindings_cdf1badb6f372c49 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_ptr #-}

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:626:1@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cdf1badb6f372c49

foreign import ccall unsafe "hs_bindgen_botanbindings_d3c5a386ca167b90" hs_bindgen_botanbindings_d3c5a386ca167b90 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_timed_ptr #-}

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

__defined at:__ @botan\/ffi.h:656:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d3c5a386ca167b90

foreign import ccall unsafe "hs_bindgen_botanbindings_0b0ce60d2e054d76" hs_bindgen_botanbindings_0b0ce60d2e054d76 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_ptr #-}

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:679:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0b0ce60d2e054d76

foreign import ccall unsafe "hs_bindgen_botanbindings_b782c7ca559f15a3" hs_bindgen_botanbindings_b782c7ca559f15a3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed_ptr #-}

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:707:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b782c7ca559f15a3

foreign import ccall unsafe "hs_bindgen_botanbindings_90696608265d4a51" hs_bindgen_botanbindings_90696608265d4a51 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt_ptr #-}

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:727:1@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_90696608265d4a51

foreign import ccall unsafe "hs_bindgen_botanbindings_4f7cf802b91e84c0" hs_bindgen_botanbindings_4f7cf802b91e84c0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_kdf_ptr #-}

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

__defined at:__ @botan\/ffi.h:745:27@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4f7cf802b91e84c0

foreign import ccall unsafe "hs_bindgen_botanbindings_46ff5363bb2708bd" hs_bindgen_botanbindings_46ff5363bb2708bd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init_ptr #-}

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:759:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_46ff5363bb2708bd

foreign import ccall unsafe "hs_bindgen_botanbindings_21838783d5020060" hs_bindgen_botanbindings_21838783d5020060 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy_ptr #-}

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:766:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_21838783d5020060

foreign import ccall unsafe "hs_bindgen_botanbindings_bb352ae71a51c275" hs_bindgen_botanbindings_bb352ae71a51c275 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear_ptr #-}

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:772:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_bb352ae71a51c275

foreign import ccall unsafe "hs_bindgen_botanbindings_fbfdd037f5dcaf0e" hs_bindgen_botanbindings_fbfdd037f5dcaf0e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key_ptr #-}

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:777:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_fbfdd037f5dcaf0e

foreign import ccall unsafe "hs_bindgen_botanbindings_a1a718ef01e6384c" hs_bindgen_botanbindings_a1a718ef01e6384c ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size_ptr #-}

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:784:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a1a718ef01e6384c

foreign import ccall unsafe "hs_bindgen_botanbindings_374c1925127a786a" hs_bindgen_botanbindings_374c1925127a786a ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks_ptr #-}

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:789:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_374c1925127a786a

foreign import ccall unsafe "hs_bindgen_botanbindings_54f33b994430415e" hs_bindgen_botanbindings_54f33b994430415e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks_ptr #-}

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:797:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_54f33b994430415e

foreign import ccall unsafe "hs_bindgen_botanbindings_6f3595b07857de88" hs_bindgen_botanbindings_6f3595b07857de88 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name_ptr #-}

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:808:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6f3595b07857de88

foreign import ccall unsafe "hs_bindgen_botanbindings_8046b551fbcff337" hs_bindgen_botanbindings_8046b551fbcff337 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec_ptr #-}

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:819:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8046b551fbcff337

foreign import ccall unsafe "hs_bindgen_botanbindings_e8b9699c77f609fa" hs_bindgen_botanbindings_e8b9699c77f609fa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init_ptr #-}

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:832:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e8b9699c77f609fa

foreign import ccall unsafe "hs_bindgen_botanbindings_cbc67a2e752f4310" hs_bindgen_botanbindings_cbc67a2e752f4310 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy_ptr #-}

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:838:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cbc67a2e752f4310

foreign import ccall unsafe "hs_bindgen_botanbindings_599a487c5dd5172e" hs_bindgen_botanbindings_599a487c5dd5172e ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex_ptr #-}

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:843:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_599a487c5dd5172e

foreign import ccall unsafe "hs_bindgen_botanbindings_355fb4ef1a479865" hs_bindgen_botanbindings_355fb4ef1a479865 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str_ptr #-}

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:848:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_355fb4ef1a479865

foreign import ccall unsafe "hs_bindgen_botanbindings_b5cf77c06f616adb" hs_bindgen_botanbindings_b5cf77c06f616adb ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_ptr #-}

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:853:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b5cf77c06f616adb

foreign import ccall unsafe "hs_bindgen_botanbindings_df4cbdb54f5c832c" hs_bindgen_botanbindings_df4cbdb54f5c832c ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int_ptr #-}

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:858:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int_ptr :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_df4cbdb54f5c832c

foreign import ccall unsafe "hs_bindgen_botanbindings_4cc9856fea2feee9" hs_bindgen_botanbindings_4cc9856fea2feee9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp_ptr #-}

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:863:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4cc9856fea2feee9

foreign import ccall unsafe "hs_bindgen_botanbindings_086183ac1cbff88f" hs_bindgen_botanbindings_086183ac1cbff88f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str_ptr #-}

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:868:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_086183ac1cbff88f

foreign import ccall unsafe "hs_bindgen_botanbindings_c3861fb412530773" hs_bindgen_botanbindings_c3861fb412530773 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str_ptr #-}

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:874:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c3861fb412530773

foreign import ccall unsafe "hs_bindgen_botanbindings_1423a5b972e21d8b" hs_bindgen_botanbindings_1423a5b972e21d8b ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits_ptr #-}

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:879:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1423a5b972e21d8b

foreign import ccall unsafe "hs_bindgen_botanbindings_715ea4690bd5f59f" hs_bindgen_botanbindings_715ea4690bd5f59f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes_ptr #-}

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:884:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_715ea4690bd5f59f

foreign import ccall unsafe "hs_bindgen_botanbindings_6f2c2afe05ecb95a" hs_bindgen_botanbindings_6f2c2afe05ecb95a ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin_ptr #-}

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:889:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6f2c2afe05ecb95a

foreign import ccall unsafe "hs_bindgen_botanbindings_574a507b3cbc0129" hs_bindgen_botanbindings_574a507b3cbc0129 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin_ptr #-}

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:894:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_574a507b3cbc0129

foreign import ccall unsafe "hs_bindgen_botanbindings_0c17757fd98d2c74" hs_bindgen_botanbindings_0c17757fd98d2c74 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32_ptr #-}

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:899:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0c17757fd98d2c74

foreign import ccall unsafe "hs_bindgen_botanbindings_2ab755dc14159ab2" hs_bindgen_botanbindings_2ab755dc14159ab2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive_ptr #-}

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:906:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2ab755dc14159ab2

foreign import ccall unsafe "hs_bindgen_botanbindings_8f15f3754e76ee73" hs_bindgen_botanbindings_8f15f3754e76ee73 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative_ptr #-}

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:911:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8f15f3754e76ee73

foreign import ccall unsafe "hs_bindgen_botanbindings_3e003567b245663d" hs_bindgen_botanbindings_3e003567b245663d ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign_ptr #-}

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:913:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3e003567b245663d

foreign import ccall unsafe "hs_bindgen_botanbindings_257b5db7615e9176" hs_bindgen_botanbindings_257b5db7615e9176 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero_ptr #-}

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:915:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_257b5db7615e9176

foreign import ccall unsafe "hs_bindgen_botanbindings_64b0e66b1ebdb579" hs_bindgen_botanbindings_64b0e66b1ebdb579 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd_ptr #-}

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:918:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_64b0e66b1ebdb579

foreign import ccall unsafe "hs_bindgen_botanbindings_9c299a999fce3bef" hs_bindgen_botanbindings_9c299a999fce3bef ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even_ptr #-}

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:920:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9c299a999fce3bef

foreign import ccall unsafe "hs_bindgen_botanbindings_6e40b2ea4ef84145" hs_bindgen_botanbindings_6e40b2ea4ef84145 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32_ptr #-}

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:922:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6e40b2ea4ef84145

foreign import ccall unsafe "hs_bindgen_botanbindings_862774d5f2cc0cd3" hs_bindgen_botanbindings_862774d5f2cc0cd3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32_ptr #-}

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:923:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_862774d5f2cc0cd3

foreign import ccall unsafe "hs_bindgen_botanbindings_10410d7c2d41fff2" hs_bindgen_botanbindings_10410d7c2d41fff2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add_ptr #-}

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:925:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_10410d7c2d41fff2

foreign import ccall unsafe "hs_bindgen_botanbindings_4b288296581299d4" hs_bindgen_botanbindings_4b288296581299d4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_ptr #-}

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:926:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4b288296581299d4

foreign import ccall unsafe "hs_bindgen_botanbindings_5b71570954b98698" hs_bindgen_botanbindings_5b71570954b98698 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:927:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5b71570954b98698

foreign import ccall unsafe "hs_bindgen_botanbindings_36668640f24ea8d5" hs_bindgen_botanbindings_36668640f24ea8d5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div_ptr #-}

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:929:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_36668640f24ea8d5

foreign import ccall unsafe "hs_bindgen_botanbindings_633496726ea304da" hs_bindgen_botanbindings_633496726ea304da ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:933:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_633496726ea304da

foreign import ccall unsafe "hs_bindgen_botanbindings_0e75d2e8c76f28ae" hs_bindgen_botanbindings_0e75d2e8c76f28ae ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal_ptr #-}

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:941:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0e75d2e8c76f28ae

foreign import ccall unsafe "hs_bindgen_botanbindings_09b7cfa83d7d0e9d" hs_bindgen_botanbindings_09b7cfa83d7d0e9d ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp_ptr #-}

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:948:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_09b7cfa83d7d0e9d

foreign import ccall unsafe "hs_bindgen_botanbindings_dafbf537a0cdd020" hs_bindgen_botanbindings_dafbf537a0cdd020 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap_ptr #-}

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:953:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dafbf537a0cdd020

foreign import ccall unsafe "hs_bindgen_botanbindings_1dcda0eec06d434f" hs_bindgen_botanbindings_1dcda0eec06d434f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod_ptr #-}

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:956:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1dcda0eec06d434f

foreign import ccall unsafe "hs_bindgen_botanbindings_23f516a0f3902694" hs_bindgen_botanbindings_23f516a0f3902694 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift_ptr #-}

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:958:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_23f516a0f3902694

foreign import ccall unsafe "hs_bindgen_botanbindings_1e11e88a4714a400" hs_bindgen_botanbindings_1e11e88a4714a400 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift_ptr #-}

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:959:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1e11e88a4714a400

foreign import ccall unsafe "hs_bindgen_botanbindings_472de8166ba6db29" hs_bindgen_botanbindings_472de8166ba6db29 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse_ptr #-}

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:961:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_472de8166ba6db29

foreign import ccall unsafe "hs_bindgen_botanbindings_6a8943dede34e3ef" hs_bindgen_botanbindings_6a8943dede34e3ef ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits_ptr #-}

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:963:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6a8943dede34e3ef

foreign import ccall unsafe "hs_bindgen_botanbindings_3d8ac75bcdf7fdf8" hs_bindgen_botanbindings_3d8ac75bcdf7fdf8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range_ptr #-}

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:965:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3d8ac75bcdf7fdf8

foreign import ccall unsafe "hs_bindgen_botanbindings_640ca46c7d0eb91d" hs_bindgen_botanbindings_640ca46c7d0eb91d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd_ptr #-}

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:968:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_640ca46c7d0eb91d

foreign import ccall unsafe "hs_bindgen_botanbindings_85ce1be300c08069" hs_bindgen_botanbindings_85ce1be300c08069 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime_ptr #-}

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:975:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_85ce1be300c08069

foreign import ccall unsafe "hs_bindgen_botanbindings_21bc17b193c809df" hs_bindgen_botanbindings_21bc17b193c809df ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit_ptr #-}

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:982:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_21bc17b193c809df

foreign import ccall unsafe "hs_bindgen_botanbindings_2512d851962be860" hs_bindgen_botanbindings_2512d851962be860 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit_ptr #-}

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:987:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2512d851962be860

foreign import ccall unsafe "hs_bindgen_botanbindings_f74ab5913a503669" hs_bindgen_botanbindings_f74ab5913a503669 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit_ptr #-}

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:992:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f74ab5913a503669

foreign import ccall unsafe "hs_bindgen_botanbindings_79e979661c30265a" hs_bindgen_botanbindings_79e979661c30265a ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_generate_ptr #-}

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

__defined at:__ @botan\/ffi.h:1009:27@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_79e979661c30265a

foreign import ccall unsafe "hs_bindgen_botanbindings_7d3e93b8f8093995" hs_bindgen_botanbindings_7d3e93b8f8093995 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid_ptr #-}

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1023:27@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7d3e93b8f8093995

foreign import ccall unsafe "hs_bindgen_botanbindings_9879b2498845dca4" hs_bindgen_botanbindings_9879b2498845dca4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ptr #-}

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1038:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9879b2498845dca4

foreign import ccall unsafe "hs_bindgen_botanbindings_cf7d0e502dcf6001" hs_bindgen_botanbindings_cf7d0e502dcf6001 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key_ptr #-}

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1045:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cf7d0e502dcf6001

foreign import ccall unsafe "hs_bindgen_botanbindings_ff06bd6548ec2443" hs_bindgen_botanbindings_ff06bd6548ec2443 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1048:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ff06bd6548ec2443

foreign import ccall unsafe "hs_bindgen_botanbindings_0e26a91cd655f117" hs_bindgen_botanbindings_0e26a91cd655f117 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1050:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0e26a91cd655f117

foreign import ccall unsafe "hs_bindgen_botanbindings_05d7a45f75fdfd98" hs_bindgen_botanbindings_05d7a45f75fdfd98 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1052:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_05d7a45f75fdfd98

foreign import ccall unsafe "hs_bindgen_botanbindings_2e3983573841c49a" hs_bindgen_botanbindings_2e3983573841c49a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece_ptr #-}

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1054:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2e3983573841c49a

foreign import ccall unsafe "hs_bindgen_botanbindings_bf55dee4a8d8e43b" hs_bindgen_botanbindings_bf55dee4a8d8e43b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1056:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_bf55dee4a8d8e43b

foreign import ccall unsafe "hs_bindgen_botanbindings_66e29c924421c88e" hs_bindgen_botanbindings_66e29c924421c88e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dsa_ptr #-}

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

__defined at:__ @botan\/ffi.h:1076:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_66e29c924421c88e

foreign import ccall unsafe "hs_bindgen_botanbindings_5e869c6265a61865" hs_bindgen_botanbindings_5e869c6265a61865 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_elgamal_ptr #-}

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

__defined at:__ @botan\/ffi.h:1101:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5e869c6265a61865

foreign import ccall unsafe "hs_bindgen_botanbindings_37302a8c19047bff" hs_bindgen_botanbindings_37302a8c19047bff ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ptr #-}

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1112:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_37302a8c19047bff

foreign import ccall unsafe "hs_bindgen_botanbindings_4ef6cbfdfe96bc20" hs_bindgen_botanbindings_4ef6cbfdfe96bc20 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1120:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy_ptr :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4ef6cbfdfe96bc20

foreign import ccall unsafe "hs_bindgen_botanbindings_3d6bddaf42131f7d" hs_bindgen_botanbindings_3d6bddaf42131f7d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_ptr #-}

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1132:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3d6bddaf42131f7d

foreign import ccall unsafe "hs_bindgen_botanbindings_769c41db1b7cee8d" hs_bindgen_botanbindings_769c41db1b7cee8d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der_ptr #-}

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1139:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_769c41db1b7cee8d

foreign import ccall unsafe "hs_bindgen_botanbindings_85b6fe0abebbfa2b" hs_bindgen_botanbindings_85b6fe0abebbfa2b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem_ptr #-}

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1147:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_85b6fe0abebbfa2b

foreign import ccall unsafe "hs_bindgen_botanbindings_f87fc22231f88010" hs_bindgen_botanbindings_f87fc22231f88010 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1152:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f87fc22231f88010

foreign import ccall unsafe "hs_bindgen_botanbindings_7556efdb489472df" hs_bindgen_botanbindings_7556efdb489472df ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1158:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7556efdb489472df

foreign import ccall unsafe "hs_bindgen_botanbindings_f17a753fd18bf6e3" hs_bindgen_botanbindings_f17a753fd18bf6e3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1171:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f17a753fd18bf6e3

foreign import ccall unsafe "hs_bindgen_botanbindings_cd830c4e113b8611" hs_bindgen_botanbindings_cd830c4e113b8611 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter_ptr #-}

{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1184:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cd830c4e113b8611

foreign import ccall unsafe "hs_bindgen_botanbindings_774978f99731344b" hs_bindgen_botanbindings_774978f99731344b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1199:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_774978f99731344b

foreign import ccall unsafe "hs_bindgen_botanbindings_ffb369fa50a91349" hs_bindgen_botanbindings_ffb369fa50a91349 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1214:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ffb369fa50a91349

foreign import ccall unsafe "hs_bindgen_botanbindings_a012c6560bcc5286" hs_bindgen_botanbindings_a012c6560bcc5286 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1230:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a012c6560bcc5286

foreign import ccall unsafe "hs_bindgen_botanbindings_0db2ed369e6eeddf" hs_bindgen_botanbindings_0db2ed369e6eeddf ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1245:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0db2ed369e6eeddf

foreign import ccall unsafe "hs_bindgen_botanbindings_2c88c05cf825336c" hs_bindgen_botanbindings_2c88c05cf825336c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ptr #-}

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1257:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2c88c05cf825336c

foreign import ccall unsafe "hs_bindgen_botanbindings_d818675ca6e38462" hs_bindgen_botanbindings_d818675ca6e38462 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey_ptr #-}

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1259:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d818675ca6e38462

foreign import ccall unsafe "hs_bindgen_botanbindings_4d2c3f5298cbc5bd" hs_bindgen_botanbindings_4d2c3f5298cbc5bd ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export_ptr #-}

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1261:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4d2c3f5298cbc5bd

foreign import ccall unsafe "hs_bindgen_botanbindings_b6d7934c96f0ccdb" hs_bindgen_botanbindings_b6d7934c96f0ccdb ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der_ptr #-}

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1266:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b6d7934c96f0ccdb

foreign import ccall unsafe "hs_bindgen_botanbindings_4c26dba3e6c49b81" hs_bindgen_botanbindings_4c26dba3e6c49b81 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem_ptr #-}

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1274:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4c26dba3e6c49b81

foreign import ccall unsafe "hs_bindgen_botanbindings_76f83411fbbac38c" hs_bindgen_botanbindings_76f83411fbbac38c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1279:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_76f83411fbbac38c

foreign import ccall unsafe "hs_bindgen_botanbindings_f093721a7ab0317f" hs_bindgen_botanbindings_f093721a7ab0317f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key_ptr #-}

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1284:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f093721a7ab0317f

foreign import ccall unsafe "hs_bindgen_botanbindings_3374c4d17a59ba5e" hs_bindgen_botanbindings_3374c4d17a59ba5e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength_ptr #-}

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1286:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3374c4d17a59ba5e

foreign import ccall unsafe "hs_bindgen_botanbindings_1e5f15ada082d27e" hs_bindgen_botanbindings_1e5f15ada082d27e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint_ptr #-}

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1288:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1e5f15ada082d27e

foreign import ccall unsafe "hs_bindgen_botanbindings_aabac11f9b2bf5d6" hs_bindgen_botanbindings_aabac11f9b2bf5d6 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1294:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_aabac11f9b2bf5d6

foreign import ccall unsafe "hs_bindgen_botanbindings_94a0ab969b38fa25" hs_bindgen_botanbindings_94a0ab969b38fa25 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field_ptr #-}

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1299:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_94a0ab969b38fa25

foreign import ccall unsafe "hs_bindgen_botanbindings_6282eb0fc018e00e" hs_bindgen_botanbindings_6282eb0fc018e00e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field_ptr #-}

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1303:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6282eb0fc018e00e

foreign import ccall unsafe "hs_bindgen_botanbindings_65da7245a72a48eb" hs_bindgen_botanbindings_65da7245a72a48eb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1310:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_65da7245a72a48eb

foreign import ccall unsafe "hs_bindgen_botanbindings_8844f791f4fc445c" hs_bindgen_botanbindings_8844f791f4fc445c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1315:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8844f791f4fc445c

foreign import ccall unsafe "hs_bindgen_botanbindings_217c09c7d4108e54" hs_bindgen_botanbindings_217c09c7d4108e54 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1320:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_217c09c7d4108e54

foreign import ccall unsafe "hs_bindgen_botanbindings_a4aab01565fadd7c" hs_bindgen_botanbindings_a4aab01565fadd7c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1322:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a4aab01565fadd7c

foreign import ccall unsafe "hs_bindgen_botanbindings_7d65c0404adf45a0" hs_bindgen_botanbindings_7d65c0404adf45a0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1324:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7d65c0404adf45a0

foreign import ccall unsafe "hs_bindgen_botanbindings_2d6ad0c923b4c4c4" hs_bindgen_botanbindings_2d6ad0c923b4c4c4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1326:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2d6ad0c923b4c4c4

foreign import ccall unsafe "hs_bindgen_botanbindings_d58a820ccf3e1927" hs_bindgen_botanbindings_d58a820ccf3e1927 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1328:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d58a820ccf3e1927

foreign import ccall unsafe "hs_bindgen_botanbindings_888239687c151aeb" hs_bindgen_botanbindings_888239687c151aeb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1330:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_888239687c151aeb

foreign import ccall unsafe "hs_bindgen_botanbindings_3680e3fedc1037cf" hs_bindgen_botanbindings_3680e3fedc1037cf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1334:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3680e3fedc1037cf

foreign import ccall unsafe "hs_bindgen_botanbindings_d5a61f11b7b2f478" hs_bindgen_botanbindings_d5a61f11b7b2f478 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1339:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d5a61f11b7b2f478

foreign import ccall unsafe "hs_bindgen_botanbindings_255bb426579272c8" hs_bindgen_botanbindings_255bb426579272c8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1341:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_255bb426579272c8

foreign import ccall unsafe "hs_bindgen_botanbindings_1de3109dd439fee0" hs_bindgen_botanbindings_1de3109dd439fee0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1346:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1de3109dd439fee0

foreign import ccall unsafe "hs_bindgen_botanbindings_fc1e4f20f8d1a6e3" hs_bindgen_botanbindings_fc1e4f20f8d1a6e3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1352:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_fc1e4f20f8d1a6e3

foreign import ccall unsafe "hs_bindgen_botanbindings_78ee1fce07443736" hs_bindgen_botanbindings_78ee1fce07443736 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x_ptr #-}

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1359:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_78ee1fce07443736

foreign import ccall unsafe "hs_bindgen_botanbindings_6736481397d4c5e0" hs_bindgen_botanbindings_6736481397d4c5e0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1362:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6736481397d4c5e0

foreign import ccall unsafe "hs_bindgen_botanbindings_51b360a050547ad9" hs_bindgen_botanbindings_51b360a050547ad9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1364:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_51b360a050547ad9

foreign import ccall unsafe "hs_bindgen_botanbindings_97d2761f2a5b2b58" hs_bindgen_botanbindings_97d2761f2a5b2b58 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1366:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_97d2761f2a5b2b58

foreign import ccall unsafe "hs_bindgen_botanbindings_fa9245fe3fa85283" hs_bindgen_botanbindings_fa9245fe3fa85283 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1368:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_fa9245fe3fa85283

foreign import ccall unsafe "hs_bindgen_botanbindings_2ff7a11c1b0bdc80" hs_bindgen_botanbindings_2ff7a11c1b0bdc80 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1383:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2ff7a11c1b0bdc80

foreign import ccall unsafe "hs_bindgen_botanbindings_6d6bf91bdcefa5d2" hs_bindgen_botanbindings_6d6bf91bdcefa5d2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dh_ptr #-}

{-| Loads Diffie Hellman public key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@y@ /(input)/__]: public key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_pubkey_load_dh@

__defined at:__ @botan\/ffi.h:1400:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6d6bf91bdcefa5d2

foreign import ccall unsafe "hs_bindgen_botanbindings_ace0c76f3759d4bb" hs_bindgen_botanbindings_ace0c76f3759d4bb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_elgamal_ptr #-}

{-| Loads ElGamal public key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@y@ /(input)/__]: public key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_pubkey_load_elgamal@

__defined at:__ @botan\/ffi.h:1421:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ace0c76f3759d4bb

foreign import ccall unsafe "hs_bindgen_botanbindings_52b1b2d3eef3492e" hs_bindgen_botanbindings_52b1b2d3eef3492e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_elgamal_ptr #-}

{-| Loads ElGamal private key

  [__@key@ /(input)/__]: variable populated with key material

  [__@p@ /(input)/__]: prime order of a Z_p group

  [__@g@ /(input)/__]: group generator

  [__@x@ /(input)/__]: private key

  __pre condition:__ key is NULL on input

  __post condition:__ function allocates memory and assigns to `key'

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_load_elgamal@

__defined at:__ @botan\/ffi.h:1439:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_52b1b2d3eef3492e

foreign import ccall unsafe "hs_bindgen_botanbindings_095222d9cf556db4" hs_bindgen_botanbindings_095222d9cf556db4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1448:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_095222d9cf556db4

foreign import ccall unsafe "hs_bindgen_botanbindings_6f63b5c4eae85d9b" hs_bindgen_botanbindings_6f63b5c4eae85d9b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1451:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6f63b5c4eae85d9b

foreign import ccall unsafe "hs_bindgen_botanbindings_ff8149897b83a797" hs_bindgen_botanbindings_ff8149897b83a797 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1454:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ff8149897b83a797

foreign import ccall unsafe "hs_bindgen_botanbindings_f2ce04054b132227" hs_bindgen_botanbindings_f2ce04054b132227 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1457:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f2ce04054b132227

foreign import ccall unsafe "hs_bindgen_botanbindings_87ec5be717870593" hs_bindgen_botanbindings_87ec5be717870593 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1464:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_87ec5be717870593

foreign import ccall unsafe "hs_bindgen_botanbindings_3e9d378702d922e8" hs_bindgen_botanbindings_3e9d378702d922e8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1467:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3e9d378702d922e8

foreign import ccall unsafe "hs_bindgen_botanbindings_10b7211113702691" hs_bindgen_botanbindings_10b7211113702691 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1470:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_10b7211113702691

foreign import ccall unsafe "hs_bindgen_botanbindings_0f6c1900b30edea7" hs_bindgen_botanbindings_0f6c1900b30edea7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1473:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0f6c1900b30edea7

foreign import ccall unsafe "hs_bindgen_botanbindings_0a9905434f2e6549" hs_bindgen_botanbindings_0a9905434f2e6549 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1480:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0a9905434f2e6549

foreign import ccall unsafe "hs_bindgen_botanbindings_63f2b968bfa5772f" hs_bindgen_botanbindings_63f2b968bfa5772f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1485:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_63f2b968bfa5772f

foreign import ccall unsafe "hs_bindgen_botanbindings_c4b140603cc5fa79" hs_bindgen_botanbindings_c4b140603cc5fa79 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1491:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c4b140603cc5fa79

foreign import ccall unsafe "hs_bindgen_botanbindings_95b7d630b8e49018" hs_bindgen_botanbindings_95b7d630b8e49018 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1497:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_95b7d630b8e49018

foreign import ccall unsafe "hs_bindgen_botanbindings_9b6277a940f7186c" hs_bindgen_botanbindings_9b6277a940f7186c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1502:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9b6277a940f7186c

foreign import ccall unsafe "hs_bindgen_botanbindings_0e24ea2a74e8aae2" hs_bindgen_botanbindings_0e24ea2a74e8aae2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1508:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0e24ea2a74e8aae2

foreign import ccall unsafe "hs_bindgen_botanbindings_9b4bdb94d4409137" hs_bindgen_botanbindings_9b4bdb94d4409137 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1513:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9b4bdb94d4409137

foreign import ccall unsafe "hs_bindgen_botanbindings_617905792ae8eac2" hs_bindgen_botanbindings_617905792ae8eac2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1519:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_617905792ae8eac2

foreign import ccall unsafe "hs_bindgen_botanbindings_86c634929ff2c93b" hs_bindgen_botanbindings_86c634929ff2c93b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za_ptr #-}

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1524:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_86c634929ff2c93b

foreign import ccall unsafe "hs_bindgen_botanbindings_48b92d349d7e9a4f" hs_bindgen_botanbindings_48b92d349d7e9a4f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point_ptr #-}

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1534:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_48b92d349d7e9a4f

foreign import ccall unsafe "hs_bindgen_botanbindings_f681d3c6c0c30e50" hs_bindgen_botanbindings_f681d3c6c0c30e50 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1544:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f681d3c6c0c30e50

foreign import ccall unsafe "hs_bindgen_botanbindings_a9eb4efd589b346b" hs_bindgen_botanbindings_a9eb4efd589b346b ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1552:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a9eb4efd589b346b

foreign import ccall unsafe "hs_bindgen_botanbindings_c3738f22c079f9ce" hs_bindgen_botanbindings_c3738f22c079f9ce ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1554:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c3738f22c079f9ce

foreign import ccall unsafe "hs_bindgen_botanbindings_744394922662089d" hs_bindgen_botanbindings_744394922662089d ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1558:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_744394922662089d

foreign import ccall unsafe "hs_bindgen_botanbindings_9096b97e60af86a3" hs_bindgen_botanbindings_9096b97e60af86a3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1570:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9096b97e60af86a3

foreign import ccall unsafe "hs_bindgen_botanbindings_82eb0a2130a6e6c0" hs_bindgen_botanbindings_82eb0a2130a6e6c0 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1578:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_82eb0a2130a6e6c0

foreign import ccall unsafe "hs_bindgen_botanbindings_eef70e310b0c5352" hs_bindgen_botanbindings_eef70e310b0c5352 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1580:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_eef70e310b0c5352

foreign import ccall unsafe "hs_bindgen_botanbindings_094613e2978eb354" hs_bindgen_botanbindings_094613e2978eb354 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1584:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_094613e2978eb354

foreign import ccall unsafe "hs_bindgen_botanbindings_553bb8cacf6f47a1" hs_bindgen_botanbindings_553bb8cacf6f47a1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1597:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_553bb8cacf6f47a1

foreign import ccall unsafe "hs_bindgen_botanbindings_986d7a49b64d1f3a" hs_bindgen_botanbindings_986d7a49b64d1f3a ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1605:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_986d7a49b64d1f3a

foreign import ccall unsafe "hs_bindgen_botanbindings_6aa5eecb508992f7" hs_bindgen_botanbindings_6aa5eecb508992f7 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1607:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6aa5eecb508992f7

foreign import ccall unsafe "hs_bindgen_botanbindings_7b4332d501ef8c24" hs_bindgen_botanbindings_7b4332d501ef8c24 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1609:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7b4332d501ef8c24

foreign import ccall unsafe "hs_bindgen_botanbindings_060c8cc6554ac0c4" hs_bindgen_botanbindings_060c8cc6554ac0c4 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1612:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_060c8cc6554ac0c4

foreign import ccall unsafe "hs_bindgen_botanbindings_514e8f567702e091" hs_bindgen_botanbindings_514e8f567702e091 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1621:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_514e8f567702e091

foreign import ccall unsafe "hs_bindgen_botanbindings_715f2087a97c3d05" hs_bindgen_botanbindings_715f2087a97c3d05 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1629:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_715f2087a97c3d05

foreign import ccall unsafe "hs_bindgen_botanbindings_4f7903c8f9b25b06" hs_bindgen_botanbindings_4f7903c8f9b25b06 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1631:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4f7903c8f9b25b06

foreign import ccall unsafe "hs_bindgen_botanbindings_c41cb5bc91807ade" hs_bindgen_botanbindings_c41cb5bc91807ade ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1632:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c41cb5bc91807ade

foreign import ccall unsafe "hs_bindgen_botanbindings_3963107b802fbc2c" hs_bindgen_botanbindings_3963107b802fbc2c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1640:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3963107b802fbc2c

foreign import ccall unsafe "hs_bindgen_botanbindings_deddc3134a113a3f" hs_bindgen_botanbindings_deddc3134a113a3f ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1648:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_deddc3134a113a3f

foreign import ccall unsafe "hs_bindgen_botanbindings_216011d9ef0868b7" hs_bindgen_botanbindings_216011d9ef0868b7 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1650:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_216011d9ef0868b7

foreign import ccall unsafe "hs_bindgen_botanbindings_ff484cd8cd4f6462" hs_bindgen_botanbindings_ff484cd8cd4f6462 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1653:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ff484cd8cd4f6462

foreign import ccall unsafe "hs_bindgen_botanbindings_127f8fea7a9460d0" hs_bindgen_botanbindings_127f8fea7a9460d0 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1658:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_127f8fea7a9460d0

foreign import ccall unsafe "hs_bindgen_botanbindings_4efc07f655b81e28" hs_bindgen_botanbindings_4efc07f655b81e28 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1661:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4efc07f655b81e28

foreign import ccall unsafe "hs_bindgen_botanbindings_ede261a4a08e9499" hs_bindgen_botanbindings_ede261a4a08e9499 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1671:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ede261a4a08e9499

foreign import ccall unsafe "hs_bindgen_botanbindings_cbbbff5ff3692aab" hs_bindgen_botanbindings_cbbbff5ff3692aab ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1679:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cbbbff5ff3692aab

foreign import ccall unsafe "hs_bindgen_botanbindings_15e0b2c9d27e7ebe" hs_bindgen_botanbindings_15e0b2c9d27e7ebe ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1682:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_15e0b2c9d27e7ebe

foreign import ccall unsafe "hs_bindgen_botanbindings_70b62ad561253b1c" hs_bindgen_botanbindings_70b62ad561253b1c ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1688:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_70b62ad561253b1c

foreign import ccall unsafe "hs_bindgen_botanbindings_dd3e138591f94145" hs_bindgen_botanbindings_dd3e138591f94145 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1692:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dd3e138591f94145

foreign import ccall unsafe "hs_bindgen_botanbindings_2c448de2de8b38e4" hs_bindgen_botanbindings_2c448de2de8b38e4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1705:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2c448de2de8b38e4

foreign import ccall unsafe "hs_bindgen_botanbindings_6b5879ba8825d434" hs_bindgen_botanbindings_6b5879ba8825d434 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1713:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6b5879ba8825d434

foreign import ccall unsafe "hs_bindgen_botanbindings_3ecd790b7107d9a1" hs_bindgen_botanbindings_3ecd790b7107d9a1 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1716:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3ecd790b7107d9a1

foreign import ccall unsafe "hs_bindgen_botanbindings_41445f14c31081e9" hs_bindgen_botanbindings_41445f14c31081e9 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1721:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_41445f14c31081e9

foreign import ccall unsafe "hs_bindgen_botanbindings_6cc9c5b7109bc2a0" hs_bindgen_botanbindings_6cc9c5b7109bc2a0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id_ptr #-}

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1735:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6cc9c5b7109bc2a0

foreign import ccall unsafe "hs_bindgen_botanbindings_ef36952013171df7" hs_bindgen_botanbindings_ef36952013171df7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1742:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ef36952013171df7

foreign import ccall unsafe "hs_bindgen_botanbindings_d92eca82ac5a877e" hs_bindgen_botanbindings_d92eca82ac5a877e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1753:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d92eca82ac5a877e

foreign import ccall unsafe "hs_bindgen_botanbindings_76c26d156bc4caee" hs_bindgen_botanbindings_76c26d156bc4caee ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1765:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_76c26d156bc4caee

foreign import ccall unsafe "hs_bindgen_botanbindings_e19421f225f14d68" hs_bindgen_botanbindings_e19421f225f14d68 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1766:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e19421f225f14d68

foreign import ccall unsafe "hs_bindgen_botanbindings_a300e8b9af4e8423" hs_bindgen_botanbindings_a300e8b9af4e8423 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1771:27@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a300e8b9af4e8423

foreign import ccall unsafe "hs_bindgen_botanbindings_90fd463e24de9988" hs_bindgen_botanbindings_90fd463e24de9988 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup_ptr #-}

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1773:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_90fd463e24de9988

foreign import ccall unsafe "hs_bindgen_botanbindings_5b4696b4321c8adc" hs_bindgen_botanbindings_5b4696b4321c8adc ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1776:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5b4696b4321c8adc

foreign import ccall unsafe "hs_bindgen_botanbindings_60bc826da6e57779" hs_bindgen_botanbindings_60bc826da6e57779 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1777:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_60bc826da6e57779

foreign import ccall unsafe "hs_bindgen_botanbindings_7fffb1eb59f06cca" hs_bindgen_botanbindings_7fffb1eb59f06cca ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1779:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7fffb1eb59f06cca

foreign import ccall unsafe "hs_bindgen_botanbindings_9c7bf7698ab755a5" hs_bindgen_botanbindings_9c7bf7698ab755a5 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1780:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9c7bf7698ab755a5

foreign import ccall unsafe "hs_bindgen_botanbindings_3f2c00999f62ad21" hs_bindgen_botanbindings_3f2c00999f62ad21 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1782:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3f2c00999f62ad21

foreign import ccall unsafe "hs_bindgen_botanbindings_92845a22c5b3fc42" hs_bindgen_botanbindings_92845a22c5b3fc42 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1784:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_92845a22c5b3fc42

foreign import ccall unsafe "hs_bindgen_botanbindings_245d063e6498e4f0" hs_bindgen_botanbindings_245d063e6498e4f0 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1785:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_245d063e6498e4f0

foreign import ccall unsafe "hs_bindgen_botanbindings_9012bb8be86152e7" hs_bindgen_botanbindings_9012bb8be86152e7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1786:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9012bb8be86152e7

foreign import ccall unsafe "hs_bindgen_botanbindings_a6eae2054cfa9f3c" hs_bindgen_botanbindings_a6eae2054cfa9f3c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1788:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a6eae2054cfa9f3c

foreign import ccall unsafe "hs_bindgen_botanbindings_d22a1ca30cac451e" hs_bindgen_botanbindings_d22a1ca30cac451e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1791:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d22a1ca30cac451e

foreign import ccall unsafe "hs_bindgen_botanbindings_826254fc7440fb0b" hs_bindgen_botanbindings_826254fc7440fb0b ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1796:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_826254fc7440fb0b

foreign import ccall unsafe "hs_bindgen_botanbindings_232a70554730b30f" hs_bindgen_botanbindings_232a70554730b30f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1799:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_232a70554730b30f

foreign import ccall unsafe "hs_bindgen_botanbindings_f8e6a7aca28e0d32" hs_bindgen_botanbindings_f8e6a7aca28e0d32 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1804:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f8e6a7aca28e0d32

foreign import ccall unsafe "hs_bindgen_botanbindings_e6e4a5ac4f47fd14" hs_bindgen_botanbindings_e6e4a5ac4f47fd14 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1808:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e6e4a5ac4f47fd14

foreign import ccall unsafe "hs_bindgen_botanbindings_8295fe208aa0a9b2" hs_bindgen_botanbindings_8295fe208aa0a9b2 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1810:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8295fe208aa0a9b2

foreign import ccall unsafe "hs_bindgen_botanbindings_f78f25efc498ccfb" hs_bindgen_botanbindings_f78f25efc498ccfb ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage_ptr #-}

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1829:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f78f25efc498ccfb

foreign import ccall unsafe "hs_bindgen_botanbindings_9bb8efba6c5b46ea" hs_bindgen_botanbindings_9bb8efba6c5b46ea ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match_ptr #-}

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1835:27@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9bb8efba6c5b46ea

foreign import ccall unsafe "hs_bindgen_botanbindings_9dbe2ce021f27644" hs_bindgen_botanbindings_9dbe2ce021f27644 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_ptr #-}

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1845:27@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9dbe2ce021f27644

foreign import ccall unsafe "hs_bindgen_botanbindings_679ff355dfa5161a" hs_bindgen_botanbindings_679ff355dfa5161a ::
     IO (Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status_ptr #-}

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1861:35@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status_ptr :: Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar))
botan_x509_cert_validation_status_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_679ff355dfa5161a

foreign import ccall unsafe "hs_bindgen_botanbindings_8650c2c86b680bfc" hs_bindgen_botanbindings_8650c2c86b680bfc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1869:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8650c2c86b680bfc

foreign import ccall unsafe "hs_bindgen_botanbindings_216fdb2182254949" hs_bindgen_botanbindings_216fdb2182254949 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1870:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_216fdb2182254949

foreign import ccall unsafe "hs_bindgen_botanbindings_714b86a239f3c411" hs_bindgen_botanbindings_714b86a239f3c411 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy_ptr #-}

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1872:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_714b86a239f3c411

foreign import ccall unsafe "hs_bindgen_botanbindings_30b485b3120f416e" hs_bindgen_botanbindings_30b485b3120f416e ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked_ptr #-}

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1878:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_30b485b3120f416e

foreign import ccall unsafe "hs_bindgen_botanbindings_34a73a2fc9bda79c" hs_bindgen_botanbindings_34a73a2fc9bda79c ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl_ptr #-}

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1884:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_34a73a2fc9bda79c

foreign import ccall unsafe "hs_bindgen_botanbindings_f3dfc7781ab79daa" hs_bindgen_botanbindings_f3dfc7781ab79daa ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394_ptr #-}

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1903:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f3dfc7781ab79daa

foreign import ccall unsafe "hs_bindgen_botanbindings_176ee032836c4c26" hs_bindgen_botanbindings_176ee032836c4c26 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394_ptr #-}

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1909:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_176ee032836c4c26

foreign import ccall unsafe "hs_bindgen_botanbindings_c669d33d9ff4c029" hs_bindgen_botanbindings_c669d33d9ff4c029 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc_ptr #-}

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1914:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c669d33d9ff4c029

foreign import ccall unsafe "hs_bindgen_botanbindings_7b1e2f1d37705c3d" hs_bindgen_botanbindings_7b1e2f1d37705c3d ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec_ptr #-}

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1920:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7b1e2f1d37705c3d

foreign import ccall unsafe "hs_bindgen_botanbindings_781241abd8df70ef" hs_bindgen_botanbindings_781241abd8df70ef ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init_ptr #-}

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1935:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_781241abd8df70ef

foreign import ccall unsafe "hs_bindgen_botanbindings_583dcd0c77cfad52" hs_bindgen_botanbindings_583dcd0c77cfad52 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy_ptr #-}

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1945:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy_ptr :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_583dcd0c77cfad52

foreign import ccall unsafe "hs_bindgen_botanbindings_e72f3a92905c982a" hs_bindgen_botanbindings_e72f3a92905c982a ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate_ptr #-}

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1951:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e72f3a92905c982a

foreign import ccall unsafe "hs_bindgen_botanbindings_45385841e2f86f13" hs_bindgen_botanbindings_45385841e2f86f13 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check_ptr #-}

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1959:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_45385841e2f86f13

foreign import ccall unsafe "hs_bindgen_botanbindings_b29632c649c4ace9" hs_bindgen_botanbindings_b29632c649c4ace9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init_ptr #-}

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1976:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b29632c649c4ace9

foreign import ccall unsafe "hs_bindgen_botanbindings_4661c8f611d913bc" hs_bindgen_botanbindings_4661c8f611d913bc ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy_ptr #-}

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1987:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy_ptr :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4661c8f611d913bc

foreign import ccall unsafe "hs_bindgen_botanbindings_d0e69261808c261d" hs_bindgen_botanbindings_d0e69261808c261d ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate_ptr #-}

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1996:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate_ptr :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d0e69261808c261d

foreign import ccall unsafe "hs_bindgen_botanbindings_29dd0bea1a222c63" hs_bindgen_botanbindings_29dd0bea1a222c63 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check_ptr #-}

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2009:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check_ptr :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_29dd0bea1a222c63

foreign import ccall unsafe "hs_bindgen_botanbindings_468357ba9c83f87e" hs_bindgen_botanbindings_468357ba9c83f87e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init_ptr #-}

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2024:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_468357ba9c83f87e

foreign import ccall unsafe "hs_bindgen_botanbindings_9cca98d625106b15" hs_bindgen_botanbindings_9cca98d625106b15 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2032:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy_ptr :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9cca98d625106b15

foreign import ccall unsafe "hs_bindgen_botanbindings_4d21c25da2c77a7e" hs_bindgen_botanbindings_4d21c25da2c77a7e ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2035:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4d21c25da2c77a7e

foreign import ccall unsafe "hs_bindgen_botanbindings_af8692235be44be4" hs_bindgen_botanbindings_af8692235be44be4 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2038:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_af8692235be44be4

foreign import ccall unsafe "hs_bindgen_botanbindings_f927e98a15e19b2f" hs_bindgen_botanbindings_f927e98a15e19b2f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init_ptr #-}

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2050:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f927e98a15e19b2f

foreign import ccall unsafe "hs_bindgen_botanbindings_3fc7a2f698a4e073" hs_bindgen_botanbindings_3fc7a2f698a4e073 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy_ptr #-}

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2058:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3fc7a2f698a4e073

foreign import ccall unsafe "hs_bindgen_botanbindings_725bddff0f1a8667" hs_bindgen_botanbindings_725bddff0f1a8667 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_step1_ptr #-}

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

__defined at:__ @botan\/ffi.h:2073:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_725bddff0f1a8667

foreign import ccall unsafe "hs_bindgen_botanbindings_ed00a3e54f0217da" hs_bindgen_botanbindings_ed00a3e54f0217da ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_step2_ptr #-}

{-| SRP-6 Server side step 2

  [__@srp6@ /(input)/__]: SRP-6 server session object

  [__@A@ /(input)/__]: the client's value

  [__@A_len@ /(input)/__]: the client's value length

  [__@key@ /(input)/__]: out buffer to store the symmetric key value

  [__@key_len@ /(input)/__]: symmetric key length

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_srp6_server_session_step2@

__defined at:__ @botan\/ffi.h:2089:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ed00a3e54f0217da

foreign import ccall unsafe "hs_bindgen_botanbindings_6ed78eae86254b5c" hs_bindgen_botanbindings_6ed78eae86254b5c ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_generate_verifier_ptr #-}

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

__defined at:__ @botan\/ffi.h:2106:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6ed78eae86254b5c

foreign import ccall unsafe "hs_bindgen_botanbindings_bf4758c90ea48166" hs_bindgen_botanbindings_bf4758c90ea48166 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_client_agree_ptr #-}

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

__defined at:__ @botan\/ffi.h:2129:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_bf4758c90ea48166

foreign import ccall unsafe "hs_bindgen_botanbindings_2687db0f0c159934" hs_bindgen_botanbindings_2687db0f0c159934 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size_ptr #-}

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2140:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2687db0f0c159934

foreign import ccall unsafe "hs_bindgen_botanbindings_8fb8c126c722c026" hs_bindgen_botanbindings_8fb8c126c722c026 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

{-# NOINLINE botan_zfec_encode_ptr #-}

{-| Encode some bytes with certain ZFEC parameters.

  [__@K@ /(input)/__]: the number of shares needed for recovery

  [__@N@ /(input)/__]: the number of shares generated

  [__@input@ /(input)/__]: the data to FEC

  [__@size@ /(input)/__]: the length in bytes of input, which must be a multiple of K

  [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [N][size / K].  For all n in range, an encoded block will be written to the memory starting at outputs[n][0].

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_zfec_encode@

__defined at:__ @botan\/ffi.h:2161:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8fb8c126c722c026

foreign import ccall unsafe "hs_bindgen_botanbindings_d03761f77fc956a4" hs_bindgen_botanbindings_d03761f77fc956a4 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

{-# NOINLINE botan_zfec_decode_ptr #-}

{-| Decode some previously encoded shares using certain ZFEC parameters.

  [__@K@ /(input)/__]: the number of shares needed for recovery

  [__@N@ /(input)/__]: the total number of shares

  [__@indexes@ /(input)/__]: The index into the encoder's outputs for the corresponding element of the inputs array. Must be of length K.

  [__@inputs@ /(input)/__]: K previously encoded shares to decode

  [__@shareSize@ /(input)/__]: the length in bytes of each input

  [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [K][shareSize].  For all k in range, a decoded block will written to the memory starting at outputs[k][0].

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_zfec_decode@

__defined at:__ @botan\/ffi.h:2185:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d03761f77fc956a4
