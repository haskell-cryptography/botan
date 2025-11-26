{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_2_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_2_0
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
  , "char const *(*hs_bindgen_botanbindings_69e4564ab0c6291f (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* get_botan_error_last_exception_message_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_8bec10b1d8187f80 (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* get_botan_ffi_api_version_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_8d29ef7cd4f6e61d (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* get_botan_ffi_supports_api_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ccabc02d5f98a5d6 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* get_botan_version_string_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_botanbindings_6b1810f255138ce5 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* get_botan_version_major_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_a110629563fc246f (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* get_botan_version_minor_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_7568d05a0b7fabd0 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* get_botan_version_patch_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_d766d7cadecca677 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* get_botan_version_datestamp_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_botanbindings_ef5a6433d427b8d0 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* get_botan_constant_time_compare_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ed22a8b42f8f8780 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* get_botan_same_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a59baaf44d7926aa (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* get_botan_scrub_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dbc1f262e58b3f04 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* get_botan_hex_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d7df680513c63d0f (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_0bdeb028ade4fd6f (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_680cbac8d35326b9 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_a7080dd1845755eb (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_e033388e1c141852 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* get_botan_rng_init_custom_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_69bc3ba4aae44118 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_9b48fd7de7709cc8 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* get_botan_system_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b8695c15f3a738d5 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* get_botan_rng_reseed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c4af8e130506d690 (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* get_botan_rng_reseed_from_rng_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dcb8c53da7de4d9e (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* get_botan_rng_add_entropy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_bc222dd43629733f (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* get_botan_rng_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cd05a94b762df0cd (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* get_botan_hash_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d955018d7bf0f968 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* get_botan_hash_copy_state_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_075991f0decf3ece (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* get_botan_hash_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_70339652666745a3 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* get_botan_hash_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a88ee75fd2a2437c (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* get_botan_hash_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2d9ff52d22da8c2f (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* get_botan_hash_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0a520040508ba682 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* get_botan_hash_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4c1be18a3b26ac60 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* get_botan_hash_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cafd4db798a17658 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* get_botan_hash_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a2916f56cdd57b3d (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* get_botan_mac_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_450868528b98660b (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* get_botan_mac_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2fda76582ab8777b (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* get_botan_mac_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3e99ace2f9f2153c (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* get_botan_mac_set_nonce_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c48be15bb8832a3d (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* get_botan_mac_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3096ee13cd9c6c79 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* get_botan_mac_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ca887f5445ab0c24 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* get_botan_mac_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_39b29ffc35a1ff2d (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* get_botan_mac_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6fab4371f3848a31 (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* get_botan_mac_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ba5dc3ab3fff37d9 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_8eb0a52d4903d45d (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* get_botan_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b29ad5c5212452ec (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* get_botan_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b1dff7aa42b4909b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* get_botan_cipher_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e3d42f3370b89c7f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* get_botan_cipher_valid_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0531de93212282c0 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* get_botan_cipher_get_tag_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3104ed8f488d8e44 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* get_botan_cipher_get_default_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c8cda4bbeef6b9af (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* get_botan_cipher_get_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0fc60547da5ed26b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* get_botan_cipher_get_ideal_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_71432dd01faa81f1 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* get_botan_cipher_query_keylen_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_49bf2aa0bf2ad517 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* get_botan_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8f7d011c5dedad9e (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3aaf75a93abad639 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* get_botan_cipher_reset_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_541487f5b9c1a49f (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* get_botan_cipher_set_associated_data_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_94101a34e6d6dfdf (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* get_botan_cipher_start_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_17271e071b1ab103 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* get_botan_cipher_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f9d9625b2cf975f8 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_c481f0166ec6af21 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* get_botan_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_766254878ff9a220 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* get_botan_pbkdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3825a97d91918470 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_84b33cbd64c5b63f (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_95ecd46e9ec45996 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_5ee538ab194753a9 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_7ac32c04f97bc139 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_869d727c17282c9d (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_7caf7bde61741f29 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* get_botan_block_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4d1b60bd8f81d588 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* get_botan_block_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cc7c32045f32c7ef (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* get_botan_block_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_508c339c343bf8bb (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* get_botan_block_cipher_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_34ee8ac8d870fc2f (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* get_botan_block_cipher_encrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_37cdfdb01b60daa2 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_16d891c4db89d19c (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_42d0e589fffe218e (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* get_botan_block_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e9ad16191e1a2aab (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_86c7212f70b29da2 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* get_botan_mp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4964bb208c07f525 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* get_botan_mp_to_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2c98e9eacca951b4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* get_botan_mp_to_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3a026cff253d0585 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* get_botan_mp_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d38104b56ae28b6f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* get_botan_mp_set_from_int_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2a4f327f756e96be (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* get_botan_mp_set_from_mp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e01c1737a69cd9b7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* get_botan_mp_set_from_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7b51d9c1db3fa4a1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* get_botan_mp_set_from_radix_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_696fe20b65b21223 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* get_botan_mp_num_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_608a551bd1f5b85b (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* get_botan_mp_num_bytes_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c02ff81bb8ffec3b (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* get_botan_mp_to_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ce47512b1588445f (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* get_botan_mp_from_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dcfb9f4c2f5ba772 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* get_botan_mp_to_uint32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_669f37158a08cb45 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* get_botan_mp_is_positive_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e2e9f9e48d5f83a3 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* get_botan_mp_is_negative_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_966ec029987a3ab4 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* get_botan_mp_flip_sign_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_657fc6552b6c422b (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* get_botan_mp_is_zero_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d1e01a8b399523f9 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* get_botan_mp_is_odd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3272f2489f502dd0 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* get_botan_mp_is_even_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a352ff77830836c2 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* get_botan_mp_add_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1ec3334241072c89 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* get_botan_mp_sub_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1292ef735407ebf7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* get_botan_mp_add_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b9d61cdfb3e6352f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* get_botan_mp_sub_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ad3d540f3f0427a6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* get_botan_mp_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e9d321e94638d1cf (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* get_botan_mp_div_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0bdd2703e71e553b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* get_botan_mp_mod_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5944d21eb694f1c5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* get_botan_mp_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d7c311c00da66a4a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* get_botan_mp_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e8972c155bcdd556 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* get_botan_mp_swap_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2bd676276dfe7a47 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* get_botan_mp_powmod_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f7ff95e7658316fa (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* get_botan_mp_lshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a966b068248810bd (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* get_botan_mp_rshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_74e62b47160acf81 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* get_botan_mp_mod_inverse_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cfa9455b0dcaab69 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* get_botan_mp_rand_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4ca18d02206f6be8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* get_botan_mp_rand_range_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7d048845b46685fa (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* get_botan_mp_gcd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dc00adcd47ffdff5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* get_botan_mp_is_prime_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_29ca3c1fb9acaf3a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* get_botan_mp_get_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_49baef782b833aff (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* get_botan_mp_set_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9378d07ec4cbcb56 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* get_botan_mp_clear_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_70dc8c04dbc1f067 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* get_botan_bcrypt_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_40e6c17cf9080fff (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_129d9cf7d986eec1 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* get_botan_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b4fa8265142c0958 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_e258f3fc9d4f510d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* get_botan_privkey_create_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_74d6b7132fcd4862 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* get_botan_privkey_create_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c6916642a0545174 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* get_botan_privkey_create_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9a14c5b39d042952 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* get_botan_privkey_create_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_348900c2b7aec944 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_e54c55abb82b8f71 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* get_botan_privkey_create_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_99c373efb8e7ee7c (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_a7ae365f53398194 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_ac320bb9faeda760 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_2113b6c4dc078a0c (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* get_botan_privkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_70b61dff80e8e7fe (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_4ad16e0c192850af (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* get_botan_privkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7eabae6c54398243 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* get_botan_privkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_24abb8b84bd85252 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* get_botan_privkey_export_encrypted_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_71791d732f0f47c1 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_9acca6d5994a0138 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_b730ab2f6f698d3c (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_2d64d4d29304dfac (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_9a963be9ec5e9439 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_734fea0d8430b359 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_99a1a6a887ccbac0 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3881976f08f5d638 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* get_botan_privkey_export_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ae59916770fe5a3f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* get_botan_pubkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d62683b2cd236252 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_18884eaffc60c451 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* get_botan_pubkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3b7bce303ef81bfc (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* get_botan_pubkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9b8caefde3f23a0c (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* get_botan_pubkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e3f0642fcd00cee0 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* get_botan_pubkey_estimated_strength_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_1f6eb7dd19a6783f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* get_botan_pubkey_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e086cf644e352ff8 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_0486a1f102fc943b (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* get_botan_pubkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_466dcab4d769908e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* get_botan_privkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_dd5b2146abb93d53 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* get_botan_privkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0f969bb6d07560c0 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_980321b5e2483641 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* get_botan_privkey_rsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_85d2f7854321c357 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* get_botan_privkey_rsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5e9ea1a362150d85 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* get_botan_privkey_rsa_get_d_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_85e91127216f6a11 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* get_botan_privkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_91c1d035939f3078 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* get_botan_privkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4cf2296ad1b36ce4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* get_botan_privkey_rsa_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_71e55a68accdc59d (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_444f34baaae8cdcf (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* get_botan_pubkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f2e17a96f71d260b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* get_botan_pubkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_688ed9c8047c02df (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* get_botan_privkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_fcd71c4cf6bb2b0a (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3d6ecff0f15b9c34 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_b0cc804a67a58843 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_908bb4851f5617ec (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a1a97c5dfe768232 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_g_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3bf78945247185aa (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* get_botan_pubkey_dsa_get_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_caf154fc2942ed7f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* get_botan_privkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_95ce297958bdd998 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_d3279d44391cdff7 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_f8b38b1033c24298 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_b78e882da17530ea (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_6a6a7988ec2db0fc (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* get_botan_pubkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_874d270c99656815 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* get_botan_privkey_ed25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0506e00c5b9403df (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* get_botan_pubkey_ed25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f3590771758da7fe (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* get_botan_privkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_59ba8b409c7050fe (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* get_botan_pubkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b585ae0f91aeaa83 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* get_botan_privkey_x25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8aef01f9408a8ff3 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* get_botan_pubkey_x25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7ed9a015e12b09de (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* get_botan_privkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_0adaddc3db2b1f9e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* get_botan_pubkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_51415f63cc0ba5d5 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* get_botan_privkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c90eeaea6a6b78d0 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* get_botan_pubkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8df34ccd9c2e97a7 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* get_botan_pubkey_ecc_key_used_explicit_encoding_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4a23220f242d36d4 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* get_botan_privkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4972e072f0014845 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* get_botan_pubkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_33b42df71bf3a041 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* get_botan_pubkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_d4469832e8c09620 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* get_botan_privkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_230ddbf7de2bce6a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* get_botan_pubkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a71aaa32ace50b09 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* get_botan_privkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4adf79ae99da8e56 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* get_botan_pubkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7ddf45e15d7810da (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* get_botan_privkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5f590d8232b75643 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* get_botan_pubkey_sm2_compute_za_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_00514adbe36951de (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* get_botan_pubkey_view_ec_public_point_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9b01e65ff56bf12c (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* get_botan_pk_op_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_644ceddef8a840d1 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_47bdfd6e8ff8dd12 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_encrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4cd6a3c59e9dbff9 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* get_botan_pk_op_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c7c212d3b74ed203 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_a7f5483c6168b94a (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_a62fc49a33814c82 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_decrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_c861b261f8fbf18e (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* get_botan_pk_op_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8aafbc44374aa5b4 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_22e01daa540a13e1 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_797e16fc566ccd5f (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* get_botan_pk_op_sign_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_72fb886bbd6cacd9 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* get_botan_pk_op_sign_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_533ed6e463733051 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* get_botan_pk_op_sign_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_675df372e942a2a9 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3896c547608f850b (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_15967e71161749d6 (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* get_botan_pk_op_verify_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5f671a8fe54b3099 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* get_botan_pk_op_verify_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_37bef48061142cba (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7d802c33a23047af (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_ec75236a052c6fa5 (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_export_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_57a76bc0f67104e5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_view_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_592260c2af6e648f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_678a33a83e19a066 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* get_botan_pk_op_key_agreement_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_89b09f97bb9815d2 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_46089c8408edb628 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9e196d2a0572cec0 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b747f58bb236d2d4 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_88fd8bf164279955 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_encrypt_create_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_225e47b1296a39fa (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_6a7ed9d75bc5d0de (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_f1ecfa2c69ad446c (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_20026132cdb58627 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* get_botan_pk_op_kem_decrypt_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8693229706778a6e (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_6d787ef7f47cc53d (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* get_botan_mceies_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_6937486558be6160 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_51e061815f9c438b (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_2e270260993df8bd (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* get_botan_x509_cert_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_a0f89ad06055cdf9 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* get_botan_x509_cert_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e5b3d6967803f801 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* get_botan_x509_cert_dup_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_509d9ce13b1a8c8e (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* get_botan_x509_cert_get_time_starts_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8cb26ba385b0790d (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* get_botan_x509_cert_get_time_expires_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_e57e05e07469ae75 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* get_botan_x509_cert_not_before_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_279dcce1ade14b45 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* get_botan_x509_cert_not_after_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_728f95aa45f7a2b2 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* get_botan_x509_cert_get_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_8dd4f0c95e188130 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_0394338275203f14 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* get_botan_x509_cert_get_authority_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_de75bb41835c3652 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* get_botan_x509_cert_get_subject_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_5fe2e61a2ebafc41 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* get_botan_x509_cert_get_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_09b819e917706879 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* get_botan_x509_cert_view_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3b739ad455c8124a (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* get_botan_x509_cert_get_public_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_792a52a4bd95874a (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* get_botan_x509_cert_get_issuer_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3bb388eea20ac470 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_8c259905c45d63f8 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_808fbc00e1a93ba5 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* get_botan_x509_cert_view_as_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_62753cdbfa5a40da (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* get_botan_x509_cert_allowed_usage_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_bcaf80e6eca4e410 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* get_botan_x509_cert_hostname_match_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9dfd0c10455db534 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* get_botan_x509_cert_verify_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4e73164f97a77881 (void)) ("
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
  , "char const *(*hs_bindgen_botanbindings_cb25d7c32b1089c6 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* get_botan_x509_crl_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_9ea5550d4e193288 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* get_botan_x509_crl_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_615d7172c210a96f (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* get_botan_x509_crl_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_38f16ef3bbb1a5f8 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* get_botan_x509_is_revoked_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_7da0496c8fd4e026 (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* get_botan_x509_cert_verify_with_crl_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ebec14818ec8ccbb (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_38b229963f6a3291 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_fad4588d19d2abeb (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_9af466e4c574f916 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_24cad57c0dfc271c (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_d4051e6b107c4a3d (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3564c525167841aa (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* get_botan_hotp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b49dc49de9af46ea (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* get_botan_hotp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_ec641decaee9328b (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_b630e36ae3fd5755 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_6aac9330d496a5f9 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* get_botan_totp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_b88a899ae73124a1 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* get_botan_totp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_4204cfb8abccfd36 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_41a2a943f3dd4059 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_78d3bc5542e56eae (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* get_botan_fpe_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_2d3b146cfcd2c5e4 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_04a76a885838c199 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3a62440b753603a0 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* get_botan_srp6_server_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_3f2bddb258c30aea (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* get_botan_srp6_server_session_step1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_aea56902b8cbab52 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_f5508b2d397c7a22 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_3caec41a148d12e5 (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_727d6ef8381edeec (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_1abdda30a17ac887 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* get_botan_zfec_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_botanbindings_cf5abe28f80bbf9a (void)) ("
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
  , "signed int (*hs_bindgen_botanbindings_0e0a438dc2425284 (void)) ("
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
  ]))

foreign import ccall unsafe "hs_bindgen_botanbindings_69e4564ab0c6291f" hs_bindgen_botanbindings_69e4564ab0c6291f ::
     IO (Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_error_description_ptr #-}

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:144:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description_ptr :: Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar))
botan_error_description_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_69e4564ab0c6291f

foreign import ccall unsafe "hs_bindgen_botanbindings_8bec10b1d8187f80" hs_bindgen_botanbindings_8bec10b1d8187f80 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message_ptr #-}

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:153:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message_ptr :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
botan_error_last_exception_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8bec10b1d8187f80

foreign import ccall unsafe "hs_bindgen_botanbindings_8d29ef7cd4f6e61d" hs_bindgen_botanbindings_8d29ef7cd4f6e61d ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version_ptr #-}

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:160:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8d29ef7cd4f6e61d

foreign import ccall unsafe "hs_bindgen_botanbindings_ccabc02d5f98a5d6" hs_bindgen_botanbindings_ccabc02d5f98a5d6 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api_ptr #-}

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:166:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ccabc02d5f98a5d6

foreign import ccall unsafe "hs_bindgen_botanbindings_6b1810f255138ce5" hs_bindgen_botanbindings_6b1810f255138ce5 ::
     IO (Ptr.FunPtr (IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_version_string_ptr #-}

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:171:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string_ptr :: Ptr.FunPtr (IO (Ptr.Ptr FC.CChar))
botan_version_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6b1810f255138ce5

foreign import ccall unsafe "hs_bindgen_botanbindings_a110629563fc246f" hs_bindgen_botanbindings_a110629563fc246f ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major_ptr #-}

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:176:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a110629563fc246f

foreign import ccall unsafe "hs_bindgen_botanbindings_7568d05a0b7fabd0" hs_bindgen_botanbindings_7568d05a0b7fabd0 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor_ptr #-}

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:181:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7568d05a0b7fabd0

foreign import ccall unsafe "hs_bindgen_botanbindings_d766d7cadecca677" hs_bindgen_botanbindings_d766d7cadecca677 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch_ptr #-}

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d766d7cadecca677

foreign import ccall unsafe "hs_bindgen_botanbindings_ef5a6433d427b8d0" hs_bindgen_botanbindings_ef5a6433d427b8d0 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp_ptr #-}

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ef5a6433d427b8d0

foreign import ccall unsafe "hs_bindgen_botanbindings_ed22a8b42f8f8780" hs_bindgen_botanbindings_ed22a8b42f8f8780 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare_ptr #-}

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:197:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ed22a8b42f8f8780

foreign import ccall unsafe "hs_bindgen_botanbindings_a59baaf44d7926aa" hs_bindgen_botanbindings_a59baaf44d7926aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem_ptr #-}

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:203:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a59baaf44d7926aa

foreign import ccall unsafe "hs_bindgen_botanbindings_dbc1f262e58b3f04" hs_bindgen_botanbindings_dbc1f262e58b3f04 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem_ptr #-}

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:209:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dbc1f262e58b3f04

foreign import ccall unsafe "hs_bindgen_botanbindings_d7df680513c63d0f" hs_bindgen_botanbindings_d7df680513c63d0f ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode_ptr #-}

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
botan_hex_encode_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d7df680513c63d0f

foreign import ccall unsafe "hs_bindgen_botanbindings_0bdeb028ade4fd6f" hs_bindgen_botanbindings_0bdeb028ade4fd6f ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode_ptr #-}

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
botan_hex_decode_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0bdeb028ade4fd6f

foreign import ccall unsafe "hs_bindgen_botanbindings_680cbac8d35326b9" hs_bindgen_botanbindings_680cbac8d35326b9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode_ptr #-}

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_680cbac8d35326b9

foreign import ccall unsafe "hs_bindgen_botanbindings_a7080dd1845755eb" hs_bindgen_botanbindings_a7080dd1845755eb ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode_ptr #-}

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a7080dd1845755eb

foreign import ccall unsafe "hs_bindgen_botanbindings_e033388e1c141852" hs_bindgen_botanbindings_e033388e1c141852 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_ptr #-}

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e033388e1c141852

foreign import ccall unsafe "hs_bindgen_botanbindings_69bc3ba4aae44118" hs_bindgen_botanbindings_69bc3ba4aae44118 ::
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

__defined at:__ @botan\/ffi.h:270:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_69bc3ba4aae44118

foreign import ccall unsafe "hs_bindgen_botanbindings_9b48fd7de7709cc8" hs_bindgen_botanbindings_9b48fd7de7709cc8 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get_ptr #-}

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:284:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9b48fd7de7709cc8

foreign import ccall unsafe "hs_bindgen_botanbindings_b8695c15f3a738d5" hs_bindgen_botanbindings_b8695c15f3a738d5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get_ptr #-}

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:292:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b8695c15f3a738d5

foreign import ccall unsafe "hs_bindgen_botanbindings_c4af8e130506d690" hs_bindgen_botanbindings_c4af8e130506d690 ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_ptr #-}

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:302:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_ptr :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c4af8e130506d690

foreign import ccall unsafe "hs_bindgen_botanbindings_dcb8c53da7de4d9e" hs_bindgen_botanbindings_dcb8c53da7de4d9e ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng_ptr #-}

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:312:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng_ptr :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dcb8c53da7de4d9e

foreign import ccall unsafe "hs_bindgen_botanbindings_bc222dd43629733f" hs_bindgen_botanbindings_bc222dd43629733f ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy_ptr #-}

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:322:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_bc222dd43629733f

foreign import ccall unsafe "hs_bindgen_botanbindings_cd05a94b762df0cd" hs_bindgen_botanbindings_cd05a94b762df0cd ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy_ptr #-}

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:329:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy_ptr :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cd05a94b762df0cd

foreign import ccall unsafe "hs_bindgen_botanbindings_d955018d7bf0f968" hs_bindgen_botanbindings_d955018d7bf0f968 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init_ptr #-}

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:343:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d955018d7bf0f968

foreign import ccall unsafe "hs_bindgen_botanbindings_075991f0decf3ece" hs_bindgen_botanbindings_075991f0decf3ece ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state_ptr #-}

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:351:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_075991f0decf3ece

foreign import ccall unsafe "hs_bindgen_botanbindings_70339652666745a3" hs_bindgen_botanbindings_70339652666745a3 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length_ptr #-}

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:359:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_70339652666745a3

foreign import ccall unsafe "hs_bindgen_botanbindings_a88ee75fd2a2437c" hs_bindgen_botanbindings_a88ee75fd2a2437c ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size_ptr #-}

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:367:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a88ee75fd2a2437c

foreign import ccall unsafe "hs_bindgen_botanbindings_2d9ff52d22da8c2f" hs_bindgen_botanbindings_2d9ff52d22da8c2f ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update_ptr #-}

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:376:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2d9ff52d22da8c2f

foreign import ccall unsafe "hs_bindgen_botanbindings_0a520040508ba682" hs_bindgen_botanbindings_0a520040508ba682 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final_ptr #-}

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:386:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0a520040508ba682

foreign import ccall unsafe "hs_bindgen_botanbindings_4c1be18a3b26ac60" hs_bindgen_botanbindings_4c1be18a3b26ac60 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear_ptr #-}

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:394:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4c1be18a3b26ac60

foreign import ccall unsafe "hs_bindgen_botanbindings_cafd4db798a17658" hs_bindgen_botanbindings_cafd4db798a17658 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy_ptr #-}

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:401:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cafd4db798a17658

foreign import ccall unsafe "hs_bindgen_botanbindings_a2916f56cdd57b3d" hs_bindgen_botanbindings_a2916f56cdd57b3d ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name_ptr #-}

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:409:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a2916f56cdd57b3d

foreign import ccall unsafe "hs_bindgen_botanbindings_450868528b98660b" hs_bindgen_botanbindings_450868528b98660b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init_ptr #-}

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:424:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_450868528b98660b

foreign import ccall unsafe "hs_bindgen_botanbindings_2fda76582ab8777b" hs_bindgen_botanbindings_2fda76582ab8777b ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length_ptr #-}

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:432:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2fda76582ab8777b

foreign import ccall unsafe "hs_bindgen_botanbindings_3e99ace2f9f2153c" hs_bindgen_botanbindings_3e99ace2f9f2153c ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key_ptr #-}

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:441:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3e99ace2f9f2153c

foreign import ccall unsafe "hs_bindgen_botanbindings_c48be15bb8832a3d" hs_bindgen_botanbindings_c48be15bb8832a3d ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce_ptr #-}

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:450:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c48be15bb8832a3d

foreign import ccall unsafe "hs_bindgen_botanbindings_3096ee13cd9c6c79" hs_bindgen_botanbindings_3096ee13cd9c6c79 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update_ptr #-}

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:459:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3096ee13cd9c6c79

foreign import ccall unsafe "hs_bindgen_botanbindings_ca887f5445ab0c24" hs_bindgen_botanbindings_ca887f5445ab0c24 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final_ptr #-}

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ca887f5445ab0c24

foreign import ccall unsafe "hs_bindgen_botanbindings_39b29ffc35a1ff2d" hs_bindgen_botanbindings_39b29ffc35a1ff2d ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear_ptr #-}

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:477:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_39b29ffc35a1ff2d

foreign import ccall unsafe "hs_bindgen_botanbindings_6fab4371f3848a31" hs_bindgen_botanbindings_6fab4371f3848a31 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name_ptr #-}

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:485:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6fab4371f3848a31

foreign import ccall unsafe "hs_bindgen_botanbindings_ba5dc3ab3fff37d9" hs_bindgen_botanbindings_ba5dc3ab3fff37d9 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec_ptr #-}

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:495:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ba5dc3ab3fff37d9

foreign import ccall unsafe "hs_bindgen_botanbindings_8eb0a52d4903d45d" hs_bindgen_botanbindings_8eb0a52d4903d45d ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy_ptr #-}

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:505:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8eb0a52d4903d45d

foreign import ccall unsafe "hs_bindgen_botanbindings_b29ad5c5212452ec" hs_bindgen_botanbindings_b29ad5c5212452ec ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init_ptr #-}

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b29ad5c5212452ec

foreign import ccall unsafe "hs_bindgen_botanbindings_b1dff7aa42b4909b" hs_bindgen_botanbindings_b1dff7aa42b4909b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name_ptr #-}

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b1dff7aa42b4909b

foreign import ccall unsafe "hs_bindgen_botanbindings_e3d42f3370b89c7f" hs_bindgen_botanbindings_e3d42f3370b89c7f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length_ptr #-}

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:529:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e3d42f3370b89c7f

foreign import ccall unsafe "hs_bindgen_botanbindings_0531de93212282c0" hs_bindgen_botanbindings_0531de93212282c0 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length_ptr #-}

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:534:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0531de93212282c0

foreign import ccall unsafe "hs_bindgen_botanbindings_3104ed8f488d8e44" hs_bindgen_botanbindings_3104ed8f488d8e44 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length_ptr #-}

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:539:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3104ed8f488d8e44

foreign import ccall unsafe "hs_bindgen_botanbindings_c8cda4bbeef6b9af" hs_bindgen_botanbindings_c8cda4bbeef6b9af ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length_ptr #-}

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:544:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c8cda4bbeef6b9af

foreign import ccall unsafe "hs_bindgen_botanbindings_0fc60547da5ed26b" hs_bindgen_botanbindings_0fc60547da5ed26b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity_ptr #-}

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0fc60547da5ed26b

foreign import ccall unsafe "hs_bindgen_botanbindings_71432dd01faa81f1" hs_bindgen_botanbindings_71432dd01faa81f1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity_ptr #-}

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:556:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_71432dd01faa81f1

foreign import ccall unsafe "hs_bindgen_botanbindings_49bf2aa0bf2ad517" hs_bindgen_botanbindings_49bf2aa0bf2ad517 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen_ptr #-}

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:562:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_49bf2aa0bf2ad517

foreign import ccall unsafe "hs_bindgen_botanbindings_8f7d011c5dedad9e" hs_bindgen_botanbindings_8f7d011c5dedad9e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec_ptr #-}

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:568:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8f7d011c5dedad9e

foreign import ccall unsafe "hs_bindgen_botanbindings_3aaf75a93abad639" hs_bindgen_botanbindings_3aaf75a93abad639 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key_ptr #-}

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:573:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3aaf75a93abad639

foreign import ccall unsafe "hs_bindgen_botanbindings_541487f5b9c1a49f" hs_bindgen_botanbindings_541487f5b9c1a49f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset_ptr #-}

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:583:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_541487f5b9c1a49f

foreign import ccall unsafe "hs_bindgen_botanbindings_94101a34e6d6dfdf" hs_bindgen_botanbindings_94101a34e6d6dfdf ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data_ptr #-}

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:588:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_94101a34e6d6dfdf

foreign import ccall unsafe "hs_bindgen_botanbindings_17271e071b1ab103" hs_bindgen_botanbindings_17271e071b1ab103 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start_ptr #-}

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:593:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_17271e071b1ab103

foreign import ccall unsafe "hs_bindgen_botanbindings_f9d9625b2cf975f8" hs_bindgen_botanbindings_f9d9625b2cf975f8 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update_ptr #-}

{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:601:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f9d9625b2cf975f8

foreign import ccall unsafe "hs_bindgen_botanbindings_c481f0166ec6af21" hs_bindgen_botanbindings_c481f0166ec6af21 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear_ptr #-}

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c481f0166ec6af21

foreign import ccall unsafe "hs_bindgen_botanbindings_766254878ff9a220" hs_bindgen_botanbindings_766254878ff9a220 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy_ptr #-}

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:619:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_766254878ff9a220

foreign import ccall unsafe "hs_bindgen_botanbindings_3825a97d91918470" hs_bindgen_botanbindings_3825a97d91918470 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_ptr #-}

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:638:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3825a97d91918470

foreign import ccall unsafe "hs_bindgen_botanbindings_84b33cbd64c5b63f" hs_bindgen_botanbindings_84b33cbd64c5b63f ::
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

__defined at:__ @botan\/ffi.h:671:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_84b33cbd64c5b63f

foreign import ccall unsafe "hs_bindgen_botanbindings_95ecd46e9ec45996" hs_bindgen_botanbindings_95ecd46e9ec45996 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_ptr #-}

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:695:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_95ecd46e9ec45996

foreign import ccall unsafe "hs_bindgen_botanbindings_5ee538ab194753a9" hs_bindgen_botanbindings_5ee538ab194753a9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed_ptr #-}

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:722:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5ee538ab194753a9

foreign import ccall unsafe "hs_bindgen_botanbindings_7ac32c04f97bc139" hs_bindgen_botanbindings_7ac32c04f97bc139 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt_ptr #-}

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:741:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7ac32c04f97bc139

foreign import ccall unsafe "hs_bindgen_botanbindings_869d727c17282c9d" hs_bindgen_botanbindings_869d727c17282c9d ::
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

__defined at:__ @botan\/ffi.h:764:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_869d727c17282c9d

foreign import ccall unsafe "hs_bindgen_botanbindings_7caf7bde61741f29" hs_bindgen_botanbindings_7caf7bde61741f29 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init_ptr #-}

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:782:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7caf7bde61741f29

foreign import ccall unsafe "hs_bindgen_botanbindings_4d1b60bd8f81d588" hs_bindgen_botanbindings_4d1b60bd8f81d588 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy_ptr #-}

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:788:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4d1b60bd8f81d588

foreign import ccall unsafe "hs_bindgen_botanbindings_cc7c32045f32c7ef" hs_bindgen_botanbindings_cc7c32045f32c7ef ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear_ptr #-}

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:794:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cc7c32045f32c7ef

foreign import ccall unsafe "hs_bindgen_botanbindings_508c339c343bf8bb" hs_bindgen_botanbindings_508c339c343bf8bb ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key_ptr #-}

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:799:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_508c339c343bf8bb

foreign import ccall unsafe "hs_bindgen_botanbindings_34ee8ac8d870fc2f" hs_bindgen_botanbindings_34ee8ac8d870fc2f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size_ptr #-}

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:805:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_34ee8ac8d870fc2f

foreign import ccall unsafe "hs_bindgen_botanbindings_37cdfdb01b60daa2" hs_bindgen_botanbindings_37cdfdb01b60daa2 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks_ptr #-}

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:811:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_37cdfdb01b60daa2

foreign import ccall unsafe "hs_bindgen_botanbindings_16d891c4db89d19c" hs_bindgen_botanbindings_16d891c4db89d19c ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks_ptr #-}

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:817:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_16d891c4db89d19c

foreign import ccall unsafe "hs_bindgen_botanbindings_42d0e589fffe218e" hs_bindgen_botanbindings_42d0e589fffe218e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name_ptr #-}

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:825:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_42d0e589fffe218e

foreign import ccall unsafe "hs_bindgen_botanbindings_e9ad16191e1a2aab" hs_bindgen_botanbindings_e9ad16191e1a2aab ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec_ptr #-}

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:835:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e9ad16191e1a2aab

foreign import ccall unsafe "hs_bindgen_botanbindings_86c7212f70b29da2" hs_bindgen_botanbindings_86c7212f70b29da2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init_ptr #-}

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:848:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_86c7212f70b29da2

foreign import ccall unsafe "hs_bindgen_botanbindings_4964bb208c07f525" hs_bindgen_botanbindings_4964bb208c07f525 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy_ptr #-}

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:854:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4964bb208c07f525

foreign import ccall unsafe "hs_bindgen_botanbindings_2c98e9eacca951b4" hs_bindgen_botanbindings_2c98e9eacca951b4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex_ptr #-}

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:859:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2c98e9eacca951b4

foreign import ccall unsafe "hs_bindgen_botanbindings_3a026cff253d0585" hs_bindgen_botanbindings_3a026cff253d0585 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str_ptr #-}

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3a026cff253d0585

foreign import ccall unsafe "hs_bindgen_botanbindings_d38104b56ae28b6f" hs_bindgen_botanbindings_d38104b56ae28b6f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_ptr #-}

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:869:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d38104b56ae28b6f

foreign import ccall unsafe "hs_bindgen_botanbindings_2a4f327f756e96be" hs_bindgen_botanbindings_2a4f327f756e96be ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int_ptr #-}

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int_ptr :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2a4f327f756e96be

foreign import ccall unsafe "hs_bindgen_botanbindings_e01c1737a69cd9b7" hs_bindgen_botanbindings_e01c1737a69cd9b7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp_ptr #-}

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:879:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e01c1737a69cd9b7

foreign import ccall unsafe "hs_bindgen_botanbindings_7b51d9c1db3fa4a1" hs_bindgen_botanbindings_7b51d9c1db3fa4a1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str_ptr #-}

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:884:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7b51d9c1db3fa4a1

foreign import ccall unsafe "hs_bindgen_botanbindings_696fe20b65b21223" hs_bindgen_botanbindings_696fe20b65b21223 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str_ptr #-}

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_696fe20b65b21223

foreign import ccall unsafe "hs_bindgen_botanbindings_608a551bd1f5b85b" hs_bindgen_botanbindings_608a551bd1f5b85b ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits_ptr #-}

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_608a551bd1f5b85b

foreign import ccall unsafe "hs_bindgen_botanbindings_c02ff81bb8ffec3b" hs_bindgen_botanbindings_c02ff81bb8ffec3b ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes_ptr #-}

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c02ff81bb8ffec3b

foreign import ccall unsafe "hs_bindgen_botanbindings_ce47512b1588445f" hs_bindgen_botanbindings_ce47512b1588445f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin_ptr #-}

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:905:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ce47512b1588445f

foreign import ccall unsafe "hs_bindgen_botanbindings_dcfb9f4c2f5ba772" hs_bindgen_botanbindings_dcfb9f4c2f5ba772 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin_ptr #-}

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:910:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dcfb9f4c2f5ba772

foreign import ccall unsafe "hs_bindgen_botanbindings_669f37158a08cb45" hs_bindgen_botanbindings_669f37158a08cb45 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32_ptr #-}

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:915:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_669f37158a08cb45

foreign import ccall unsafe "hs_bindgen_botanbindings_e2e9f9e48d5f83a3" hs_bindgen_botanbindings_e2e9f9e48d5f83a3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive_ptr #-}

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:922:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e2e9f9e48d5f83a3

foreign import ccall unsafe "hs_bindgen_botanbindings_966ec029987a3ab4" hs_bindgen_botanbindings_966ec029987a3ab4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative_ptr #-}

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:927:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_966ec029987a3ab4

foreign import ccall unsafe "hs_bindgen_botanbindings_657fc6552b6c422b" hs_bindgen_botanbindings_657fc6552b6c422b ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign_ptr #-}

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:929:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_657fc6552b6c422b

foreign import ccall unsafe "hs_bindgen_botanbindings_d1e01a8b399523f9" hs_bindgen_botanbindings_d1e01a8b399523f9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero_ptr #-}

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d1e01a8b399523f9

foreign import ccall unsafe "hs_bindgen_botanbindings_3272f2489f502dd0" hs_bindgen_botanbindings_3272f2489f502dd0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd_ptr #-}

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:933:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3272f2489f502dd0

foreign import ccall unsafe "hs_bindgen_botanbindings_a352ff77830836c2" hs_bindgen_botanbindings_a352ff77830836c2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even_ptr #-}

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:934:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a352ff77830836c2

foreign import ccall unsafe "hs_bindgen_botanbindings_1ec3334241072c89" hs_bindgen_botanbindings_1ec3334241072c89 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32_ptr #-}

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1ec3334241072c89

foreign import ccall unsafe "hs_bindgen_botanbindings_1292ef735407ebf7" hs_bindgen_botanbindings_1292ef735407ebf7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32_ptr #-}

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:937:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1292ef735407ebf7

foreign import ccall unsafe "hs_bindgen_botanbindings_b9d61cdfb3e6352f" hs_bindgen_botanbindings_b9d61cdfb3e6352f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add_ptr #-}

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:939:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b9d61cdfb3e6352f

foreign import ccall unsafe "hs_bindgen_botanbindings_ad3d540f3f0427a6" hs_bindgen_botanbindings_ad3d540f3f0427a6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_ptr #-}

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:940:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ad3d540f3f0427a6

foreign import ccall unsafe "hs_bindgen_botanbindings_e9d321e94638d1cf" hs_bindgen_botanbindings_e9d321e94638d1cf ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e9d321e94638d1cf

foreign import ccall unsafe "hs_bindgen_botanbindings_0bdd2703e71e553b" hs_bindgen_botanbindings_0bdd2703e71e553b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div_ptr #-}

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:944:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0bdd2703e71e553b

foreign import ccall unsafe "hs_bindgen_botanbindings_5944d21eb694f1c5" hs_bindgen_botanbindings_5944d21eb694f1c5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:947:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5944d21eb694f1c5

foreign import ccall unsafe "hs_bindgen_botanbindings_d7c311c00da66a4a" hs_bindgen_botanbindings_d7c311c00da66a4a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal_ptr #-}

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:954:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d7c311c00da66a4a

foreign import ccall unsafe "hs_bindgen_botanbindings_e8972c155bcdd556" hs_bindgen_botanbindings_e8972c155bcdd556 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp_ptr #-}

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:961:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e8972c155bcdd556

foreign import ccall unsafe "hs_bindgen_botanbindings_2bd676276dfe7a47" hs_bindgen_botanbindings_2bd676276dfe7a47 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap_ptr #-}

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2bd676276dfe7a47

foreign import ccall unsafe "hs_bindgen_botanbindings_f7ff95e7658316fa" hs_bindgen_botanbindings_f7ff95e7658316fa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod_ptr #-}

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f7ff95e7658316fa

foreign import ccall unsafe "hs_bindgen_botanbindings_a966b068248810bd" hs_bindgen_botanbindings_a966b068248810bd ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift_ptr #-}

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:972:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a966b068248810bd

foreign import ccall unsafe "hs_bindgen_botanbindings_74e62b47160acf81" hs_bindgen_botanbindings_74e62b47160acf81 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift_ptr #-}

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:973:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_74e62b47160acf81

foreign import ccall unsafe "hs_bindgen_botanbindings_cfa9455b0dcaab69" hs_bindgen_botanbindings_cfa9455b0dcaab69 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse_ptr #-}

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:975:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cfa9455b0dcaab69

foreign import ccall unsafe "hs_bindgen_botanbindings_4ca18d02206f6be8" hs_bindgen_botanbindings_4ca18d02206f6be8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits_ptr #-}

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:977:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4ca18d02206f6be8

foreign import ccall unsafe "hs_bindgen_botanbindings_7d048845b46685fa" hs_bindgen_botanbindings_7d048845b46685fa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range_ptr #-}

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:980:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7d048845b46685fa

foreign import ccall unsafe "hs_bindgen_botanbindings_dc00adcd47ffdff5" hs_bindgen_botanbindings_dc00adcd47ffdff5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd_ptr #-}

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:982:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dc00adcd47ffdff5

foreign import ccall unsafe "hs_bindgen_botanbindings_29ca3c1fb9acaf3a" hs_bindgen_botanbindings_29ca3c1fb9acaf3a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime_ptr #-}

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:989:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_29ca3c1fb9acaf3a

foreign import ccall unsafe "hs_bindgen_botanbindings_49baef782b833aff" hs_bindgen_botanbindings_49baef782b833aff ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit_ptr #-}

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:996:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_49baef782b833aff

foreign import ccall unsafe "hs_bindgen_botanbindings_9378d07ec4cbcb56" hs_bindgen_botanbindings_9378d07ec4cbcb56 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit_ptr #-}

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1001:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9378d07ec4cbcb56

foreign import ccall unsafe "hs_bindgen_botanbindings_70dc8c04dbc1f067" hs_bindgen_botanbindings_70dc8c04dbc1f067 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit_ptr #-}

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1006:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_70dc8c04dbc1f067

foreign import ccall unsafe "hs_bindgen_botanbindings_40e6c17cf9080fff" hs_bindgen_botanbindings_40e6c17cf9080fff ::
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

__defined at:__ @botan\/ffi.h:1024:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_40e6c17cf9080fff

foreign import ccall unsafe "hs_bindgen_botanbindings_129d9cf7d986eec1" hs_bindgen_botanbindings_129d9cf7d986eec1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid_ptr #-}

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1035:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_129d9cf7d986eec1

foreign import ccall unsafe "hs_bindgen_botanbindings_b4fa8265142c0958" hs_bindgen_botanbindings_b4fa8265142c0958 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ptr #-}

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1051:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b4fa8265142c0958

foreign import ccall unsafe "hs_bindgen_botanbindings_e258f3fc9d4f510d" hs_bindgen_botanbindings_e258f3fc9d4f510d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key_ptr #-}

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1055:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e258f3fc9d4f510d

foreign import ccall unsafe "hs_bindgen_botanbindings_74d6b7132fcd4862" hs_bindgen_botanbindings_74d6b7132fcd4862 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_74d6b7132fcd4862

foreign import ccall unsafe "hs_bindgen_botanbindings_c6916642a0545174" hs_bindgen_botanbindings_c6916642a0545174 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1060:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c6916642a0545174

foreign import ccall unsafe "hs_bindgen_botanbindings_9a14c5b39d042952" hs_bindgen_botanbindings_9a14c5b39d042952 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1062:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9a14c5b39d042952

foreign import ccall unsafe "hs_bindgen_botanbindings_348900c2b7aec944" hs_bindgen_botanbindings_348900c2b7aec944 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece_ptr #-}

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1064:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_348900c2b7aec944

foreign import ccall unsafe "hs_bindgen_botanbindings_e54c55abb82b8f71" hs_bindgen_botanbindings_e54c55abb82b8f71 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1066:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e54c55abb82b8f71

foreign import ccall unsafe "hs_bindgen_botanbindings_99c373efb8e7ee7c" hs_bindgen_botanbindings_99c373efb8e7ee7c ::
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

__defined at:__ @botan\/ffi.h:1086:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_99c373efb8e7ee7c

foreign import ccall unsafe "hs_bindgen_botanbindings_a7ae365f53398194" hs_bindgen_botanbindings_a7ae365f53398194 ::
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

__defined at:__ @botan\/ffi.h:1108:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a7ae365f53398194

foreign import ccall unsafe "hs_bindgen_botanbindings_ac320bb9faeda760" hs_bindgen_botanbindings_ac320bb9faeda760 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ptr #-}

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1116:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ac320bb9faeda760

foreign import ccall unsafe "hs_bindgen_botanbindings_2113b6c4dc078a0c" hs_bindgen_botanbindings_2113b6c4dc078a0c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1121:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy_ptr :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2113b6c4dc078a0c

foreign import ccall unsafe "hs_bindgen_botanbindings_70b61dff80e8e7fe" hs_bindgen_botanbindings_70b61dff80e8e7fe ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_ptr #-}

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1133:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_70b61dff80e8e7fe

foreign import ccall unsafe "hs_bindgen_botanbindings_4ad16e0c192850af" hs_bindgen_botanbindings_4ad16e0c192850af ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der_ptr #-}

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1138:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4ad16e0c192850af

foreign import ccall unsafe "hs_bindgen_botanbindings_7eabae6c54398243" hs_bindgen_botanbindings_7eabae6c54398243 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem_ptr #-}

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1143:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7eabae6c54398243

foreign import ccall unsafe "hs_bindgen_botanbindings_24abb8b84bd85252" hs_bindgen_botanbindings_24abb8b84bd85252 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1145:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_24abb8b84bd85252

foreign import ccall unsafe "hs_bindgen_botanbindings_71791d732f0f47c1" hs_bindgen_botanbindings_71791d732f0f47c1 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1152:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_71791d732f0f47c1

foreign import ccall unsafe "hs_bindgen_botanbindings_9acca6d5994a0138" hs_bindgen_botanbindings_9acca6d5994a0138 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1167:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9acca6d5994a0138

foreign import ccall unsafe "hs_bindgen_botanbindings_b730ab2f6f698d3c" hs_bindgen_botanbindings_b730ab2f6f698d3c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter_ptr #-}

{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1182:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b730ab2f6f698d3c

foreign import ccall unsafe "hs_bindgen_botanbindings_2d64d4d29304dfac" hs_bindgen_botanbindings_2d64d4d29304dfac ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1199:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2d64d4d29304dfac

foreign import ccall unsafe "hs_bindgen_botanbindings_9a963be9ec5e9439" hs_bindgen_botanbindings_9a963be9ec5e9439 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1214:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9a963be9ec5e9439

foreign import ccall unsafe "hs_bindgen_botanbindings_734fea0d8430b359" hs_bindgen_botanbindings_734fea0d8430b359 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1230:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_734fea0d8430b359

foreign import ccall unsafe "hs_bindgen_botanbindings_99a1a6a887ccbac0" hs_bindgen_botanbindings_99a1a6a887ccbac0 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1245:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_99a1a6a887ccbac0

foreign import ccall unsafe "hs_bindgen_botanbindings_3881976f08f5d638" hs_bindgen_botanbindings_3881976f08f5d638 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ptr #-}

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1256:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3881976f08f5d638

foreign import ccall unsafe "hs_bindgen_botanbindings_ae59916770fe5a3f" hs_bindgen_botanbindings_ae59916770fe5a3f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey_ptr #-}

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1258:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ae59916770fe5a3f

foreign import ccall unsafe "hs_bindgen_botanbindings_d62683b2cd236252" hs_bindgen_botanbindings_d62683b2cd236252 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export_ptr #-}

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1260:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d62683b2cd236252

foreign import ccall unsafe "hs_bindgen_botanbindings_18884eaffc60c451" hs_bindgen_botanbindings_18884eaffc60c451 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der_ptr #-}

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1265:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_18884eaffc60c451

foreign import ccall unsafe "hs_bindgen_botanbindings_3b7bce303ef81bfc" hs_bindgen_botanbindings_3b7bce303ef81bfc ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem_ptr #-}

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1270:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3b7bce303ef81bfc

foreign import ccall unsafe "hs_bindgen_botanbindings_9b8caefde3f23a0c" hs_bindgen_botanbindings_9b8caefde3f23a0c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1272:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9b8caefde3f23a0c

foreign import ccall unsafe "hs_bindgen_botanbindings_e3f0642fcd00cee0" hs_bindgen_botanbindings_e3f0642fcd00cee0 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key_ptr #-}

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1277:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e3f0642fcd00cee0

foreign import ccall unsafe "hs_bindgen_botanbindings_1f6eb7dd19a6783f" hs_bindgen_botanbindings_1f6eb7dd19a6783f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength_ptr #-}

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1279:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1f6eb7dd19a6783f

foreign import ccall unsafe "hs_bindgen_botanbindings_e086cf644e352ff8" hs_bindgen_botanbindings_e086cf644e352ff8 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint_ptr #-}

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1282:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e086cf644e352ff8

foreign import ccall unsafe "hs_bindgen_botanbindings_0486a1f102fc943b" hs_bindgen_botanbindings_0486a1f102fc943b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1287:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0486a1f102fc943b

foreign import ccall unsafe "hs_bindgen_botanbindings_466dcab4d769908e" hs_bindgen_botanbindings_466dcab4d769908e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field_ptr #-}

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1292:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_466dcab4d769908e

foreign import ccall unsafe "hs_bindgen_botanbindings_dd5b2146abb93d53" hs_bindgen_botanbindings_dd5b2146abb93d53 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field_ptr #-}

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1294:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_dd5b2146abb93d53

foreign import ccall unsafe "hs_bindgen_botanbindings_0f969bb6d07560c0" hs_bindgen_botanbindings_0f969bb6d07560c0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1299:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0f969bb6d07560c0

foreign import ccall unsafe "hs_bindgen_botanbindings_980321b5e2483641" hs_bindgen_botanbindings_980321b5e2483641 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1301:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_980321b5e2483641

foreign import ccall unsafe "hs_bindgen_botanbindings_85d2f7854321c357" hs_bindgen_botanbindings_85d2f7854321c357 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1304:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_85d2f7854321c357

foreign import ccall unsafe "hs_bindgen_botanbindings_5e9ea1a362150d85" hs_bindgen_botanbindings_5e9ea1a362150d85 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1306:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5e9ea1a362150d85

foreign import ccall unsafe "hs_bindgen_botanbindings_85e91127216f6a11" hs_bindgen_botanbindings_85e91127216f6a11 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1308:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_85e91127216f6a11

foreign import ccall unsafe "hs_bindgen_botanbindings_91c1d035939f3078" hs_bindgen_botanbindings_91c1d035939f3078 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1310:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_91c1d035939f3078

foreign import ccall unsafe "hs_bindgen_botanbindings_4cf2296ad1b36ce4" hs_bindgen_botanbindings_4cf2296ad1b36ce4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1312:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4cf2296ad1b36ce4

foreign import ccall unsafe "hs_bindgen_botanbindings_71e55a68accdc59d" hs_bindgen_botanbindings_71e55a68accdc59d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1315:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_71e55a68accdc59d

foreign import ccall unsafe "hs_bindgen_botanbindings_444f34baaae8cdcf" hs_bindgen_botanbindings_444f34baaae8cdcf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1317:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_444f34baaae8cdcf

foreign import ccall unsafe "hs_bindgen_botanbindings_f2e17a96f71d260b" hs_bindgen_botanbindings_f2e17a96f71d260b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f2e17a96f71d260b

foreign import ccall unsafe "hs_bindgen_botanbindings_688ed9c8047c02df" hs_bindgen_botanbindings_688ed9c8047c02df ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1322:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_688ed9c8047c02df

foreign import ccall unsafe "hs_bindgen_botanbindings_fcd71c4cf6bb2b0a" hs_bindgen_botanbindings_fcd71c4cf6bb2b0a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1328:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_fcd71c4cf6bb2b0a

foreign import ccall unsafe "hs_bindgen_botanbindings_3d6ecff0f15b9c34" hs_bindgen_botanbindings_3d6ecff0f15b9c34 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1331:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3d6ecff0f15b9c34

foreign import ccall unsafe "hs_bindgen_botanbindings_b0cc804a67a58843" hs_bindgen_botanbindings_b0cc804a67a58843 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x_ptr #-}

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b0cc804a67a58843

foreign import ccall unsafe "hs_bindgen_botanbindings_908bb4851f5617ec" hs_bindgen_botanbindings_908bb4851f5617ec ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1337:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_908bb4851f5617ec

foreign import ccall unsafe "hs_bindgen_botanbindings_a1a97c5dfe768232" hs_bindgen_botanbindings_a1a97c5dfe768232 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1339:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a1a97c5dfe768232

foreign import ccall unsafe "hs_bindgen_botanbindings_3bf78945247185aa" hs_bindgen_botanbindings_3bf78945247185aa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1341:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3bf78945247185aa

foreign import ccall unsafe "hs_bindgen_botanbindings_caf154fc2942ed7f" hs_bindgen_botanbindings_caf154fc2942ed7f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1343:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_caf154fc2942ed7f

foreign import ccall unsafe "hs_bindgen_botanbindings_95ce297958bdd998" hs_bindgen_botanbindings_95ce297958bdd998 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1358:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_95ce297958bdd998

foreign import ccall unsafe "hs_bindgen_botanbindings_d3279d44391cdff7" hs_bindgen_botanbindings_d3279d44391cdff7 ::
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

__defined at:__ @botan\/ffi.h:1372:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d3279d44391cdff7

foreign import ccall unsafe "hs_bindgen_botanbindings_f8b38b1033c24298" hs_bindgen_botanbindings_f8b38b1033c24298 ::
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

__defined at:__ @botan\/ffi.h:1390:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f8b38b1033c24298

foreign import ccall unsafe "hs_bindgen_botanbindings_b78e882da17530ea" hs_bindgen_botanbindings_b78e882da17530ea ::
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

__defined at:__ @botan\/ffi.h:1405:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b78e882da17530ea

foreign import ccall unsafe "hs_bindgen_botanbindings_6a6a7988ec2db0fc" hs_bindgen_botanbindings_6a6a7988ec2db0fc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1411:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6a6a7988ec2db0fc

foreign import ccall unsafe "hs_bindgen_botanbindings_874d270c99656815" hs_bindgen_botanbindings_874d270c99656815 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1413:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_874d270c99656815

foreign import ccall unsafe "hs_bindgen_botanbindings_0506e00c5b9403df" hs_bindgen_botanbindings_0506e00c5b9403df ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1415:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0506e00c5b9403df

foreign import ccall unsafe "hs_bindgen_botanbindings_f3590771758da7fe" hs_bindgen_botanbindings_f3590771758da7fe ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1417:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f3590771758da7fe

foreign import ccall unsafe "hs_bindgen_botanbindings_59ba8b409c7050fe" hs_bindgen_botanbindings_59ba8b409c7050fe ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1423:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_59ba8b409c7050fe

foreign import ccall unsafe "hs_bindgen_botanbindings_b585ae0f91aeaa83" hs_bindgen_botanbindings_b585ae0f91aeaa83 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1425:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b585ae0f91aeaa83

foreign import ccall unsafe "hs_bindgen_botanbindings_8aef01f9408a8ff3" hs_bindgen_botanbindings_8aef01f9408a8ff3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1427:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8aef01f9408a8ff3

foreign import ccall unsafe "hs_bindgen_botanbindings_7ed9a015e12b09de" hs_bindgen_botanbindings_7ed9a015e12b09de ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1429:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7ed9a015e12b09de

foreign import ccall unsafe "hs_bindgen_botanbindings_0adaddc3db2b1f9e" hs_bindgen_botanbindings_0adaddc3db2b1f9e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1435:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0adaddc3db2b1f9e

foreign import ccall unsafe "hs_bindgen_botanbindings_51415f63cc0ba5d5" hs_bindgen_botanbindings_51415f63cc0ba5d5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1437:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_51415f63cc0ba5d5

foreign import ccall unsafe "hs_bindgen_botanbindings_c90eeaea6a6b78d0" hs_bindgen_botanbindings_c90eeaea6a6b78d0 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1440:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c90eeaea6a6b78d0

foreign import ccall unsafe "hs_bindgen_botanbindings_8df34ccd9c2e97a7" hs_bindgen_botanbindings_8df34ccd9c2e97a7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1443:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8df34ccd9c2e97a7

foreign import ccall unsafe "hs_bindgen_botanbindings_4a23220f242d36d4" hs_bindgen_botanbindings_4a23220f242d36d4 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding_ptr #-}

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1449:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4a23220f242d36d4

foreign import ccall unsafe "hs_bindgen_botanbindings_4972e072f0014845" hs_bindgen_botanbindings_4972e072f0014845 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1452:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4972e072f0014845

foreign import ccall unsafe "hs_bindgen_botanbindings_33b42df71bf3a041" hs_bindgen_botanbindings_33b42df71bf3a041 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1455:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_33b42df71bf3a041

foreign import ccall unsafe "hs_bindgen_botanbindings_d4469832e8c09620" hs_bindgen_botanbindings_d4469832e8c09620 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1458:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d4469832e8c09620

foreign import ccall unsafe "hs_bindgen_botanbindings_230ddbf7de2bce6a" hs_bindgen_botanbindings_230ddbf7de2bce6a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_230ddbf7de2bce6a

foreign import ccall unsafe "hs_bindgen_botanbindings_a71aaa32ace50b09" hs_bindgen_botanbindings_a71aaa32ace50b09 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1464:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a71aaa32ace50b09

foreign import ccall unsafe "hs_bindgen_botanbindings_4adf79ae99da8e56" hs_bindgen_botanbindings_4adf79ae99da8e56 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1467:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4adf79ae99da8e56

foreign import ccall unsafe "hs_bindgen_botanbindings_7ddf45e15d7810da" hs_bindgen_botanbindings_7ddf45e15d7810da ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1471:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7ddf45e15d7810da

foreign import ccall unsafe "hs_bindgen_botanbindings_5f590d8232b75643" hs_bindgen_botanbindings_5f590d8232b75643 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1475:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5f590d8232b75643

foreign import ccall unsafe "hs_bindgen_botanbindings_00514adbe36951de" hs_bindgen_botanbindings_00514adbe36951de ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za_ptr #-}

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1478:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_00514adbe36951de

foreign import ccall unsafe "hs_bindgen_botanbindings_9b01e65ff56bf12c" hs_bindgen_botanbindings_9b01e65ff56bf12c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point_ptr #-}

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1485:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9b01e65ff56bf12c

foreign import ccall unsafe "hs_bindgen_botanbindings_644ceddef8a840d1" hs_bindgen_botanbindings_644ceddef8a840d1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1493:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_644ceddef8a840d1

foreign import ccall unsafe "hs_bindgen_botanbindings_47bdfd6e8ff8dd12" hs_bindgen_botanbindings_47bdfd6e8ff8dd12 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1498:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_47bdfd6e8ff8dd12

foreign import ccall unsafe "hs_bindgen_botanbindings_4cd6a3c59e9dbff9" hs_bindgen_botanbindings_4cd6a3c59e9dbff9 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1501:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4cd6a3c59e9dbff9

foreign import ccall unsafe "hs_bindgen_botanbindings_c7c212d3b74ed203" hs_bindgen_botanbindings_c7c212d3b74ed203 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1504:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c7c212d3b74ed203

foreign import ccall unsafe "hs_bindgen_botanbindings_a7f5483c6168b94a" hs_bindgen_botanbindings_a7f5483c6168b94a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1517:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a7f5483c6168b94a

foreign import ccall unsafe "hs_bindgen_botanbindings_a62fc49a33814c82" hs_bindgen_botanbindings_a62fc49a33814c82 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1522:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a62fc49a33814c82

foreign import ccall unsafe "hs_bindgen_botanbindings_c861b261f8fbf18e" hs_bindgen_botanbindings_c861b261f8fbf18e ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1525:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_c861b261f8fbf18e

foreign import ccall unsafe "hs_bindgen_botanbindings_8aafbc44374aa5b4" hs_bindgen_botanbindings_8aafbc44374aa5b4 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1528:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8aafbc44374aa5b4

foreign import ccall unsafe "hs_bindgen_botanbindings_22e01daa540a13e1" hs_bindgen_botanbindings_22e01daa540a13e1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1540:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_22e01daa540a13e1

foreign import ccall unsafe "hs_bindgen_botanbindings_797e16fc566ccd5f" hs_bindgen_botanbindings_797e16fc566ccd5f ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1545:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_797e16fc566ccd5f

foreign import ccall unsafe "hs_bindgen_botanbindings_72fb886bbd6cacd9" hs_bindgen_botanbindings_72fb886bbd6cacd9 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1547:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_72fb886bbd6cacd9

foreign import ccall unsafe "hs_bindgen_botanbindings_533ed6e463733051" hs_bindgen_botanbindings_533ed6e463733051 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1549:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_533ed6e463733051

foreign import ccall unsafe "hs_bindgen_botanbindings_675df372e942a2a9" hs_bindgen_botanbindings_675df372e942a2a9 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1552:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_675df372e942a2a9

foreign import ccall unsafe "hs_bindgen_botanbindings_3896c547608f850b" hs_bindgen_botanbindings_3896c547608f850b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1560:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3896c547608f850b

foreign import ccall unsafe "hs_bindgen_botanbindings_15967e71161749d6" hs_bindgen_botanbindings_15967e71161749d6 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1568:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_15967e71161749d6

foreign import ccall unsafe "hs_bindgen_botanbindings_5f671a8fe54b3099" hs_bindgen_botanbindings_5f671a8fe54b3099 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1570:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5f671a8fe54b3099

foreign import ccall unsafe "hs_bindgen_botanbindings_37bef48061142cba" hs_bindgen_botanbindings_37bef48061142cba ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1571:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_37bef48061142cba

foreign import ccall unsafe "hs_bindgen_botanbindings_7d802c33a23047af" hs_bindgen_botanbindings_7d802c33a23047af ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1579:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7d802c33a23047af

foreign import ccall unsafe "hs_bindgen_botanbindings_ec75236a052c6fa5" hs_bindgen_botanbindings_ec75236a052c6fa5 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ec75236a052c6fa5

foreign import ccall unsafe "hs_bindgen_botanbindings_57a76bc0f67104e5" hs_bindgen_botanbindings_57a76bc0f67104e5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1586:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_57a76bc0f67104e5

foreign import ccall unsafe "hs_bindgen_botanbindings_592260c2af6e648f" hs_bindgen_botanbindings_592260c2af6e648f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1589:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_592260c2af6e648f

foreign import ccall unsafe "hs_bindgen_botanbindings_678a33a83e19a066" hs_bindgen_botanbindings_678a33a83e19a066 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1591:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_678a33a83e19a066

foreign import ccall unsafe "hs_bindgen_botanbindings_89b09f97bb9815d2" hs_bindgen_botanbindings_89b09f97bb9815d2 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1594:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_89b09f97bb9815d2

foreign import ccall unsafe "hs_bindgen_botanbindings_46089c8408edb628" hs_bindgen_botanbindings_46089c8408edb628 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1608:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_46089c8408edb628

foreign import ccall unsafe "hs_bindgen_botanbindings_9e196d2a0572cec0" hs_bindgen_botanbindings_9e196d2a0572cec0 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9e196d2a0572cec0

foreign import ccall unsafe "hs_bindgen_botanbindings_b747f58bb236d2d4" hs_bindgen_botanbindings_b747f58bb236d2d4 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1616:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b747f58bb236d2d4

foreign import ccall unsafe "hs_bindgen_botanbindings_88fd8bf164279955" hs_bindgen_botanbindings_88fd8bf164279955 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1621:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_88fd8bf164279955

foreign import ccall unsafe "hs_bindgen_botanbindings_225e47b1296a39fa" hs_bindgen_botanbindings_225e47b1296a39fa ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1625:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_225e47b1296a39fa

foreign import ccall unsafe "hs_bindgen_botanbindings_6a7ed9d75bc5d0de" hs_bindgen_botanbindings_6a7ed9d75bc5d0de ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1638:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6a7ed9d75bc5d0de

foreign import ccall unsafe "hs_bindgen_botanbindings_f1ecfa2c69ad446c" hs_bindgen_botanbindings_f1ecfa2c69ad446c ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1643:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f1ecfa2c69ad446c

foreign import ccall unsafe "hs_bindgen_botanbindings_20026132cdb58627" hs_bindgen_botanbindings_20026132cdb58627 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1646:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_20026132cdb58627

foreign import ccall unsafe "hs_bindgen_botanbindings_8693229706778a6e" hs_bindgen_botanbindings_8693229706778a6e ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1651:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8693229706778a6e

foreign import ccall unsafe "hs_bindgen_botanbindings_6d787ef7f47cc53d" hs_bindgen_botanbindings_6d787ef7f47cc53d ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id_ptr #-}

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1664:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6d787ef7f47cc53d

foreign import ccall unsafe "hs_bindgen_botanbindings_6937486558be6160" hs_bindgen_botanbindings_6937486558be6160 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1671:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6937486558be6160

foreign import ccall unsafe "hs_bindgen_botanbindings_51e061815f9c438b" hs_bindgen_botanbindings_51e061815f9c438b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1686:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_51e061815f9c438b

foreign import ccall unsafe "hs_bindgen_botanbindings_2e270260993df8bd" hs_bindgen_botanbindings_2e270260993df8bd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1701:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2e270260993df8bd

foreign import ccall unsafe "hs_bindgen_botanbindings_a0f89ad06055cdf9" hs_bindgen_botanbindings_a0f89ad06055cdf9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1702:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_a0f89ad06055cdf9

foreign import ccall unsafe "hs_bindgen_botanbindings_e5b3d6967803f801" hs_bindgen_botanbindings_e5b3d6967803f801 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1707:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e5b3d6967803f801

foreign import ccall unsafe "hs_bindgen_botanbindings_509d9ce13b1a8c8e" hs_bindgen_botanbindings_509d9ce13b1a8c8e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup_ptr #-}

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1709:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_509d9ce13b1a8c8e

foreign import ccall unsafe "hs_bindgen_botanbindings_8cb26ba385b0790d" hs_bindgen_botanbindings_8cb26ba385b0790d ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1712:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8cb26ba385b0790d

foreign import ccall unsafe "hs_bindgen_botanbindings_e57e05e07469ae75" hs_bindgen_botanbindings_e57e05e07469ae75 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1713:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_e57e05e07469ae75

foreign import ccall unsafe "hs_bindgen_botanbindings_279dcce1ade14b45" hs_bindgen_botanbindings_279dcce1ade14b45 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1715:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_279dcce1ade14b45

foreign import ccall unsafe "hs_bindgen_botanbindings_728f95aa45f7a2b2" hs_bindgen_botanbindings_728f95aa45f7a2b2 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1716:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_728f95aa45f7a2b2

foreign import ccall unsafe "hs_bindgen_botanbindings_8dd4f0c95e188130" hs_bindgen_botanbindings_8dd4f0c95e188130 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1719:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8dd4f0c95e188130

foreign import ccall unsafe "hs_bindgen_botanbindings_0394338275203f14" hs_bindgen_botanbindings_0394338275203f14 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0394338275203f14

foreign import ccall unsafe "hs_bindgen_botanbindings_de75bb41835c3652" hs_bindgen_botanbindings_de75bb41835c3652 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1722:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_de75bb41835c3652

foreign import ccall unsafe "hs_bindgen_botanbindings_5fe2e61a2ebafc41" hs_bindgen_botanbindings_5fe2e61a2ebafc41 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1723:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_5fe2e61a2ebafc41

foreign import ccall unsafe "hs_bindgen_botanbindings_09b819e917706879" hs_bindgen_botanbindings_09b819e917706879 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1725:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_09b819e917706879

foreign import ccall unsafe "hs_bindgen_botanbindings_3b739ad455c8124a" hs_bindgen_botanbindings_3b739ad455c8124a ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1728:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3b739ad455c8124a

foreign import ccall unsafe "hs_bindgen_botanbindings_792a52a4bd95874a" hs_bindgen_botanbindings_792a52a4bd95874a ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1730:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_792a52a4bd95874a

foreign import ccall unsafe "hs_bindgen_botanbindings_3bb388eea20ac470" hs_bindgen_botanbindings_3bb388eea20ac470 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1733:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3bb388eea20ac470

foreign import ccall unsafe "hs_bindgen_botanbindings_8c259905c45d63f8" hs_bindgen_botanbindings_8c259905c45d63f8 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1737:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_8c259905c45d63f8

foreign import ccall unsafe "hs_bindgen_botanbindings_808fbc00e1a93ba5" hs_bindgen_botanbindings_808fbc00e1a93ba5 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1740:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_808fbc00e1a93ba5

foreign import ccall unsafe "hs_bindgen_botanbindings_62753cdbfa5a40da" hs_bindgen_botanbindings_62753cdbfa5a40da ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1743:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_62753cdbfa5a40da

foreign import ccall unsafe "hs_bindgen_botanbindings_bcaf80e6eca4e410" hs_bindgen_botanbindings_bcaf80e6eca4e410 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage_ptr #-}

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1759:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_bcaf80e6eca4e410

foreign import ccall unsafe "hs_bindgen_botanbindings_9dfd0c10455db534" hs_bindgen_botanbindings_9dfd0c10455db534 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match_ptr #-}

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1765:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9dfd0c10455db534

foreign import ccall unsafe "hs_bindgen_botanbindings_4e73164f97a77881" hs_bindgen_botanbindings_4e73164f97a77881 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_ptr #-}

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1776:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4e73164f97a77881

foreign import ccall unsafe "hs_bindgen_botanbindings_cb25d7c32b1089c6" hs_bindgen_botanbindings_cb25d7c32b1089c6 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status_ptr #-}

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1791:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status_ptr :: Ptr.FunPtr (FC.CInt -> IO (Ptr.Ptr FC.CChar))
botan_x509_cert_validation_status_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cb25d7c32b1089c6

foreign import ccall unsafe "hs_bindgen_botanbindings_9ea5550d4e193288" hs_bindgen_botanbindings_9ea5550d4e193288 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1799:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9ea5550d4e193288

foreign import ccall unsafe "hs_bindgen_botanbindings_615d7172c210a96f" hs_bindgen_botanbindings_615d7172c210a96f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1801:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_615d7172c210a96f

foreign import ccall unsafe "hs_bindgen_botanbindings_38f16ef3bbb1a5f8" hs_bindgen_botanbindings_38f16ef3bbb1a5f8 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy_ptr #-}

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1803:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_38f16ef3bbb1a5f8

foreign import ccall unsafe "hs_bindgen_botanbindings_7da0496c8fd4e026" hs_bindgen_botanbindings_7da0496c8fd4e026 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked_ptr #-}

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1809:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_7da0496c8fd4e026

foreign import ccall unsafe "hs_bindgen_botanbindings_ebec14818ec8ccbb" hs_bindgen_botanbindings_ebec14818ec8ccbb ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl_ptr #-}

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1816:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ebec14818ec8ccbb

foreign import ccall unsafe "hs_bindgen_botanbindings_38b229963f6a3291" hs_bindgen_botanbindings_38b229963f6a3291 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394_ptr #-}

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1834:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_38b229963f6a3291

foreign import ccall unsafe "hs_bindgen_botanbindings_fad4588d19d2abeb" hs_bindgen_botanbindings_fad4588d19d2abeb ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394_ptr #-}

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1843:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_fad4588d19d2abeb

foreign import ccall unsafe "hs_bindgen_botanbindings_9af466e4c574f916" hs_bindgen_botanbindings_9af466e4c574f916 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc_ptr #-}

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1851:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_9af466e4c574f916

foreign import ccall unsafe "hs_bindgen_botanbindings_24cad57c0dfc271c" hs_bindgen_botanbindings_24cad57c0dfc271c ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec_ptr #-}

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1861:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_24cad57c0dfc271c

foreign import ccall unsafe "hs_bindgen_botanbindings_d4051e6b107c4a3d" hs_bindgen_botanbindings_d4051e6b107c4a3d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init_ptr #-}

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1880:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_d4051e6b107c4a3d

foreign import ccall unsafe "hs_bindgen_botanbindings_3564c525167841aa" hs_bindgen_botanbindings_3564c525167841aa ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy_ptr #-}

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1887:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy_ptr :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3564c525167841aa

foreign import ccall unsafe "hs_bindgen_botanbindings_b49dc49de9af46ea" hs_bindgen_botanbindings_b49dc49de9af46ea ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate_ptr #-}

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1893:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b49dc49de9af46ea

foreign import ccall unsafe "hs_bindgen_botanbindings_ec641decaee9328b" hs_bindgen_botanbindings_ec641decaee9328b ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check_ptr #-}

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1899:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_ec641decaee9328b

foreign import ccall unsafe "hs_bindgen_botanbindings_b630e36ae3fd5755" hs_bindgen_botanbindings_b630e36ae3fd5755 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init_ptr #-}

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1912:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b630e36ae3fd5755

foreign import ccall unsafe "hs_bindgen_botanbindings_6aac9330d496a5f9" hs_bindgen_botanbindings_6aac9330d496a5f9 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy_ptr #-}

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1920:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy_ptr :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_6aac9330d496a5f9

foreign import ccall unsafe "hs_bindgen_botanbindings_b88a899ae73124a1" hs_bindgen_botanbindings_b88a899ae73124a1 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate_ptr #-}

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1929:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate_ptr :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_b88a899ae73124a1

foreign import ccall unsafe "hs_bindgen_botanbindings_4204cfb8abccfd36" hs_bindgen_botanbindings_4204cfb8abccfd36 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check_ptr #-}

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:1940:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check_ptr :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_4204cfb8abccfd36

foreign import ccall unsafe "hs_bindgen_botanbindings_41a2a943f3dd4059" hs_bindgen_botanbindings_41a2a943f3dd4059 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init_ptr #-}

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:1951:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_41a2a943f3dd4059

foreign import ccall unsafe "hs_bindgen_botanbindings_78d3bc5542e56eae" hs_bindgen_botanbindings_78d3bc5542e56eae ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:1958:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy_ptr :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_78d3bc5542e56eae

foreign import ccall unsafe "hs_bindgen_botanbindings_2d3b146cfcd2c5e4" hs_bindgen_botanbindings_2d3b146cfcd2c5e4 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:1961:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_2d3b146cfcd2c5e4

foreign import ccall unsafe "hs_bindgen_botanbindings_04a76a885838c199" hs_bindgen_botanbindings_04a76a885838c199 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:1964:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_04a76a885838c199

foreign import ccall unsafe "hs_bindgen_botanbindings_3a62440b753603a0" hs_bindgen_botanbindings_3a62440b753603a0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init_ptr #-}

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:1976:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3a62440b753603a0

foreign import ccall unsafe "hs_bindgen_botanbindings_3f2bddb258c30aea" hs_bindgen_botanbindings_3f2bddb258c30aea ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy_ptr #-}

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:1984:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3f2bddb258c30aea

foreign import ccall unsafe "hs_bindgen_botanbindings_aea56902b8cbab52" hs_bindgen_botanbindings_aea56902b8cbab52 ::
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

__defined at:__ @botan\/ffi.h:1999:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_aea56902b8cbab52

foreign import ccall unsafe "hs_bindgen_botanbindings_f5508b2d397c7a22" hs_bindgen_botanbindings_f5508b2d397c7a22 ::
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

__defined at:__ @botan\/ffi.h:2018:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_f5508b2d397c7a22

foreign import ccall unsafe "hs_bindgen_botanbindings_3caec41a148d12e5" hs_bindgen_botanbindings_3caec41a148d12e5 ::
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

__defined at:__ @botan\/ffi.h:2034:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_3caec41a148d12e5

foreign import ccall unsafe "hs_bindgen_botanbindings_727d6ef8381edeec" hs_bindgen_botanbindings_727d6ef8381edeec ::
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

__defined at:__ @botan\/ffi.h:2061:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_727d6ef8381edeec

foreign import ccall unsafe "hs_bindgen_botanbindings_1abdda30a17ac887" hs_bindgen_botanbindings_1abdda30a17ac887 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size_ptr #-}

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2079:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_1abdda30a17ac887

foreign import ccall unsafe "hs_bindgen_botanbindings_cf5abe28f80bbf9a" hs_bindgen_botanbindings_cf5abe28f80bbf9a ::
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

__defined at:__ @botan\/ffi.h:2100:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_cf5abe28f80bbf9a

foreign import ccall unsafe "hs_bindgen_botanbindings_0e0a438dc2425284" hs_bindgen_botanbindings_0e0a438dc2425284 ::
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

__defined at:__ @botan\/ffi.h:2121:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_botanbindings_0e0a438dc2425284
