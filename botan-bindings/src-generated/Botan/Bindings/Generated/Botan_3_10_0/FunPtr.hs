{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_10_0.FunPtr where

import qualified Foreign.C as FC
import qualified GHC.IO.Unsafe
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import Botan.Bindings.Generated.Botan_3_10_0
import Data.Void (Void)
import Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_error_description_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_b882efa0af021ca5 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_error_last_exception_message_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_d708cd4c67bac3b2 (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ffi_api_version_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_65a5224f3ce5f570 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ffi_supports_api_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fc333b469551d378 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_string_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_8e6bee59b60914fc (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_major_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1b505f0eaaa13ea7 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_minor_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3f377deda09dda96 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_patch_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_5fc947947fcd05db (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_datestamp_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_4a7060bd5a703812 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_constant_time_compare_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13c901ef08868c13 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_same_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e75de425dcf3fdb4 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_scrub_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8ef1fda49f93de4d (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hex_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_016c710c75bb628f (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hex_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca962a7c939a655f (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_base64_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4559652ff01f736 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_base64_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5517a43080b897b3 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca10bd4a93e0770f (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_init_custom_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0b58c672cfd4d071 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa3ab8b4be6a6db9 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_system_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bebf7e1bfc30dea (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_reseed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8530a8da18b2275a (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_reseed_from_rng_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b58285b77348e056 (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_add_entropy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fdcadf6a2de40b47 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9b341aca3720bc6 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3cda0fd40bfe8d3d (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_copy_state_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_647dd7b78ca1c443 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_77ac83f5213d6c37 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e0b1460798c2130 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_78656a4990ae774c (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ab1311eaabe98e8 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_27ecd5fe60c8be8d (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_36d81b1c1d9f7721 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_894a1794dffcdae3 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_577e5320e6cde23d (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc4a926a1137b2cb (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea16c274ce6d4286 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_set_nonce_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_851516855301d476 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9eb72e305b5cd425 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f88ddc4a0d682c98 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c65a19241d87ac8 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_003682a8d4468395 (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_345c60e59ef17654 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cc1e0afdf25c645 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c7b0aaa1905f9c7 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d0593161e3d946c8 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b8f3a570cc9d5ed (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_valid_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc57029032927316 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_tag_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c40b3169f4b8505a (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_is_authenticated_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6853be24b10814e (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_requires_entire_message_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6536d7e4e4f27fe0 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_default_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6755a2e750e8b1c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_85ddec778cd97ea8 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_ideal_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a001b5660f153ae (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_query_keylen_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca03c53012816118 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33cd5d5c191d9c5e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da7095dc747b5afd (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_reset_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71b74fb6d5a01aa3 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_set_associated_data_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e43660927ce9e8c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_start_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_834a318a49b442d3 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_941e6b88ab804abe (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90947ca66563e426 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_036dc3ba739a74b1 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pbkdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9d7d7b18810f7b76 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pbkdf_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c53e0bb640bb586 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pwdhash_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d302551893ed03d8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pwdhash_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5eec218e3eac26eb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_scrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5cde3777fe0a46e7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_kdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fd97312903a4977b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec30c268e1725b11 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_802856b97a34abe4 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5345a31cadd3b67 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fd9c43a3973b9b0f (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_753af2d359f92c3e (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_encrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff307eff165bea49 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_decrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_770affb557fff4f2 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54b189e77adec270 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a46a9ed7ced8f663 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d40c61530dbae544 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba939c90ae5de613 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a2037976cd181734 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6e5572035809873 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_mp_view_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_080bf061f3adaacc (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a5c30f6822fc065 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  botan_view_ctx arg3,"
  , "  botan_view_str_fn arg4"
  , ")"
  , "{"
  , "  return &botan_mp_view_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a198d1062ee710d (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_int_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_194197f3f09d949f (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_mp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1f796644c9bd963b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8aa5e1ae6b30d42 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_radix_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6e61a914b3b09ad (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_num_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e352c2fceac104f (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_num_bytes_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92f364ba6805ce78 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35876daa6b252a61 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7bc29f74c07c5aef (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_mp_view_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_from_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5224f1f9f395cb3e (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_uint32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9ddca654537cc9d6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_positive_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f0929d99a3aa79e (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_negative_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e60ca6a29dc048cf (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_flip_sign_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba9e3de64d1d1bfe (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_zero_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f166b92f2a6f605a (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_odd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72d25044a97e429a (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_even_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a51008da69f104e4 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_add_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_361742f0dd671130 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_sub_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6184b67aa400c8b6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_add_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be5133ecdd303ba7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_sub_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49ab26e422c9a879 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51eb0a6fb3d86ee0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_div_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cafc047cbaf8cd8e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mod_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c88356b39c55162 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9888706f6cfba3e9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a6b09825bbdea80 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_swap_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da3fa7ffa7cadac8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_powmod_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d1fe694559129f0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_lshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5b84f964a525bbc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d2f51fcfd561dba (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mod_inverse_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c029089d1ab9c329 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rand_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3abebd11373fb00 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rand_range_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2bd099168682a817 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_gcd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b348bc43fae21e02 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_prime_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23720787674f2ca9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_get_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4329a682a98faf9d (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f17a44f162ca1562 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_clear_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9472942b808d99d0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_bcrypt_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f6abed594d69874 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_bcrypt_is_valid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2bf85b1895d601be (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c2af52b2c68a523 (void)) ("
  , "  botan_asn1_oid_t arg1"
  , ")"
  , "{"
  , "  return &botan_oid_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_from_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a8083c3a0b0d931 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_from_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_register_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_202180ec200740a0 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_register;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_view_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2c197a8b4f68a90 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_view_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d941ffe4922b0319 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18fe03b74a07a097 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_oid_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b67710d2d315294 (void)) ("
  , "  signed int *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_asn1_oid_t arg3"
  , ")"
  , "{"
  , "  return &botan_oid_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1786a8de57a4733e (void)) ("
  , "  botan_ec_group_t arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_supports_application_specific_group_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_173965dc3d10242f (void)) ("
  , "  signed int *arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_application_specific_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_supports_named_group_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ab60cab8fd8bb2e6 (void)) ("
  , "  char const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_named_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_params_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa79ef922aee49e1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_ber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_878c8342a8c69751 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_ber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_25a19e4e5855d366 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df34e0d8ccab8b8d (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe56b00841d25a8c (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c22bcf7276a0a913 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_65247615240d7e48 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_curve_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fd12019ae0b6e616 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_curve_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a808244f7dfe4b7d (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_a_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ec0199bcf029df1 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_a;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_b_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fb47b33ff6a6641 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_b;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_g_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e4585b3fb7f91ea (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_g_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cd7d640a8d90faf3 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_order_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a260f92612cb6f59 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_order;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ead0f1ee041625cf (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_225bdc95f649e7eb (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2318af70c27ac7cf (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  botan_ec_group_t arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_ec_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3988eda73d61bd83 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_80efd79ea4e35e4a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_08797784a7ac3d6c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_82b0765d0ddf282c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bb854d71a9f980ab (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9f2f12fca71b22c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_20069d88131d1288 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50641918b01ef4e8 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_134ad000504ba54b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_965f99434998571c (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a402f1649488ab5b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_841379c2114455ed (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_686bfce7aa1e8a05 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c27117af5aba7f2 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42f0efbfdeee45a9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6c6cff5cf177e6d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2896657255493dd (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a91c0ca355d0c2b1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef69ae5f423f7376 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_der_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8eba51eed8079479 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7efbea3cf8c5ac6c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_pem_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4b2a2da7c78601ff (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8beaf9f99f3fe906 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2940a48608a2ac44 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c864fe34f532f6c (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a0a5baf6b5c338c (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc10d268e334ee02 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e47ac802bda94ca0 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_62966edf3ece2c36 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3a64d5370b98da1 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_estimated_strength_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7059cdd1d78f6112 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d42b56aff4d610b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c91cf20d921583e (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70a57a6ef7ec20da (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64e011b1a0ac856d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9dfac1dd3c476312 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c15c955ef5469ea8 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_stateful_operation_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b599b88687a413fd (void)) ("
  , "  botan_privkey_t arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_stateful_operation;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_remaining_operations_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90c84eb5d725500b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_remaining_operations;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_07117ad66a113391 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_rsa_pkcs1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_21f54c39b4348908 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df67f05a2d09e2e4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f38766f62ae1344 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_d_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6ab95c8cbddb942 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f82c3fccc24abb0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1f7f7a1e1e7bac42 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64e303422bba6c57 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6801afee2c3e087d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_238bcae4e8338aa6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5910cd4b39374ed (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c195ff1775c52e4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c5ded4f3bcd02268 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_dsa_get_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d2547c0f8a16dce (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_155cf7244cc812da (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_015dcf41f6201a0f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_g_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04b548e6d0794dcd (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e493fdba7a8af6b8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38315486fcadea77 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dafbcbcb336febba (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55271ad0fe79652a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11fae930d04d3b41 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_352348f4cbcf3533 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0399a72633dafa18 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_ed25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1da13917f5b39a99 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ed25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a67f303a1467ba49 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6aabc9c2bb8c82ca (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49c785945c0c432b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_ed448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b19f4e4da0ab7b3c (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ed448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fb6a000a7b750de4 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_07d460d06028db87 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_537b3f6bcbe54eb4 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_x25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c41f256025633f9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_x25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e5d39b22e765d11 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_765d6c3d80c64600 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9171486af39c0cd8 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_x448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eec2d2ece5e97c29 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_x448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37176dd236629310 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16ee88d135f4002a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89e2c50ee2fcdd2a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ac2a102e4230c37a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acdfecdaf7debdfa (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_afeb5aa9d71aa359 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_456ef4425203759d (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_78543f8ae16723ea (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13a3f7bb7cbdcd53 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_701f37949517a318 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71a3a055edd9ea05 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2101f558277f9049 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c7b5e7a02c320eb (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84f189dc964a9388 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b9538d9d0f701f5c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_490eef03ab82bc29 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5f32821f6cbf379 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_df1e032a64affd94 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdsa_sec1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf149cb7c44dbc9b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa_sec1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ec2a19c284dc565 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdh_sec1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8da147e5f2c46dba (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh_sec1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_817309847b58c57e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2ee1e017ac0dc1b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_sec1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0162ebd622db46d9 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_sec1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8706f58eb3569d7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ca5dd9d68f804bc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_faf517dee3988801 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_sm2_compute_za_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_428af4b70abda485 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_ec_public_point_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3dc8d55a595b85d (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d7f58f19ee68464 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca0127aac9840f5b (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cfdaec846ce5715e (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9175b957bbec709a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76e746016a40cf52 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ebd3f164b23a347c (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bd9d0cb474eba8b (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_757f36c392db0dca (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86f4459a7ddd9205 (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0fb6e048eebb2722 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f5ccb40cf838604 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ca0f7a59e2c267a (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a593f6a5be93e653 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_60d19246dc24cfa5 (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30d5652355925bf6 (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1426319c698251f3 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04c1cc5b6258a0f0 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e292f5bc6fcc6919 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a2c106f368c005f (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_export_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eac228985dd3b707 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_view_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae5248f6ca3fcea3 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9bde4a8756bc9997 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b210ed0bca8a16df (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3437f9d96d2c723b (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_774d2229d8c648dc (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24c241ba4e4fce83 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b0df43330745fc32 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9bdea4b85478b4ef (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0df6a2503888fb5e (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ac3dee69c301c848 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a402946dbdc62d5b (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1cd9da6a0ac1e7d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pkcs_hash_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13f10147b07f4e0b (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mceies_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4e938bf54a49eba (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mceies_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f19c628e6533a543 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_251089e53af061f2 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a4e0b9bb13cb449 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b5f1ba2780e52ce (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_dup_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8cfee84ba8470160 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_time_starts_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c210b1a99088337 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_time_expires_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f95394322ecb9842 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_not_before_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddaec3c5f38364dc (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_not_after_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03398695a868915c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2da5e12f7dce8c74 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_serial_number_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34e9e35963333d95 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_authority_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ed412cb0539abd42 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_subject_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cbd23d0bb87b21f9 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3f973168632e24f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_view_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa3f198ac8ab57b5 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_public_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0a24795a9c08334 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_issuer_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e38ec7465daf0481 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_subject_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90c60721f5a55c6f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_to_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c6b190aa250535c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_view_as_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c94cd099f320db5 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_allowed_usage_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_254eaf3841edbe32 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_hostname_match_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aaef454c87c33983 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_verify_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b0c0d86661e5d1bd (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_validation_status_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_01874eba08bbee0e (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_793104006a38bf66 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2bd1880de21aae24 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_538c436c5773993c (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_is_revoked_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4f5039f9db57696f (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_verify_with_crl_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92cf9fb6be27b8bf (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_key_wrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fda6eb4d4ec3500e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_key_unwrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d02b30b3544081f4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_nist_kw_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0cc31641fc2a6aeb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_nist_kw_dec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4fd592732c39e421 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34dc5bdbde4cd57e (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c58ca2a203917de (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_776efd42d4f28d2e (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fbb6e7f80f7a7c2 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64060a7fb88b83d8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b09e924ae6c4fdf4 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11be9dc70cfe4774 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1871f585d722410d (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_fe1_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9fd5221f827bafe7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2551173ad8c622f (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_346d82ee79c2c07d (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99c668721ae7fd5c (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a865473bc2b049c (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fd5d4b98e13cfd51 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_step1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3b0263945f8f98a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_step2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6c4d2ca5450346f (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_generate_verifier_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29ecca6d6595c6ab (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_client_agree_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4c4b3b8eb6829e4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_group_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a90f546b3a4ddc1e (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_zfec_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b9f90b9ab701fbf (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_zfec_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a875e9556bea1fa1 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_supports_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7298e12822fe1672 (void)) (void)"
  , "{"
  , "  return &botan_tpm2_supports_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22d7b87bfef4217a (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_init_ex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_19a4c9daae3dfaa1 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init_ex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_from_esys_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37b3100e16813a10 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_from_esys;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2c6fc4f6c00a17c (void)) ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23d0dd50a32da4a0 (void)) ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c35eb8f1e24f9e8 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_crypto_backend_state_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_46761ffa3ae2ce80 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_crypto_backend_state_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da8ccfc34a24d707 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return &botan_tpm2_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_unauthenticated_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7bb7a60d84d8fd97 (void)) ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_unauthenticated_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e961eb2257463e88 (void)) ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_session_destroy;"
  , "}"
  ]))

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_error_description_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b882efa0af021ca5" hs_bindgen_b882efa0af021ca5 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description_ptr #-}

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:176:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b882efa0af021ca5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_error_last_exception_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d708cd4c67bac3b2" hs_bindgen_d708cd4c67bac3b2 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message_ptr #-}

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:185:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d708cd4c67bac3b2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ffi_api_version_ptr@
-}
foreign import ccall unsafe "hs_bindgen_65a5224f3ce5f570" hs_bindgen_65a5224f3ce5f570 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version_ptr #-}

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65a5224f3ce5f570

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ffi_supports_api_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fc333b469551d378" hs_bindgen_fc333b469551d378 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api_ptr #-}

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:198:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fc333b469551d378

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8e6bee59b60914fc" hs_bindgen_8e6bee59b60914fc ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string_ptr #-}

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:203:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e6bee59b60914fc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_major_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b505f0eaaa13ea7" hs_bindgen_1b505f0eaaa13ea7 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major_ptr #-}

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:208:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b505f0eaaa13ea7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_minor_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3f377deda09dda96" hs_bindgen_3f377deda09dda96 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor_ptr #-}

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:213:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f377deda09dda96

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_patch_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5fc947947fcd05db" hs_bindgen_5fc947947fcd05db ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch_ptr #-}

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:218:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5fc947947fcd05db

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_version_datestamp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4a7060bd5a703812" hs_bindgen_4a7060bd5a703812 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp_ptr #-}

{-| Return the date this version was released as an integer.

  Returns 0 if the library was not built from an official release

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:225:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a7060bd5a703812

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_constant_time_compare_ptr@
-}
foreign import ccall unsafe "hs_bindgen_13c901ef08868c13" hs_bindgen_13c901ef08868c13 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare_ptr #-}

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:230:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13c901ef08868c13

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_same_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e75de425dcf3fdb4" hs_bindgen_e75de425dcf3fdb4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem_ptr #-}

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e75de425dcf3fdb4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_scrub_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8ef1fda49f93de4d" hs_bindgen_8ef1fda49f93de4d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem_ptr #-}

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:242:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8ef1fda49f93de4d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hex_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_016c710c75bb628f" hs_bindgen_016c710c75bb628f ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode_ptr #-}

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
botan_hex_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_016c710c75bb628f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hex_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca962a7c939a655f" hs_bindgen_ca962a7c939a655f ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode_ptr #-}

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
botan_hex_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca962a7c939a655f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_base64_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b4559652ff01f736" hs_bindgen_b4559652ff01f736 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode_ptr #-}

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
botan_base64_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4559652ff01f736

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_base64_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5517a43080b897b3" hs_bindgen_5517a43080b897b3 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode_ptr #-}

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:284:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5517a43080b897b3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca10bd4a93e0770f" hs_bindgen_ca10bd4a93e0770f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_ptr #-}

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:303:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca10bd4a93e0770f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_init_custom_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0b58c672cfd4d071" hs_bindgen_0b58c672cfd4d071 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_custom_ptr #-}

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
botan_rng_init_custom_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b58c672cfd4d071

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fa3ab8b4be6a6db9" hs_bindgen_fa3ab8b4be6a6db9 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get_ptr #-}

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:330:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa3ab8b4be6a6db9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_system_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1bebf7e1bfc30dea" hs_bindgen_1bebf7e1bfc30dea ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get_ptr #-}

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:339:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bebf7e1bfc30dea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_reseed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8530a8da18b2275a" hs_bindgen_8530a8da18b2275a ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_ptr #-}

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:349:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_ptr :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8530a8da18b2275a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_reseed_from_rng_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b58285b77348e056" hs_bindgen_b58285b77348e056 ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng_ptr #-}

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:359:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng_ptr :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b58285b77348e056

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_add_entropy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fdcadf6a2de40b47" hs_bindgen_fdcadf6a2de40b47 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy_ptr #-}

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:369:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy_ptr :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fdcadf6a2de40b47

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_rng_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a9b341aca3720bc6" hs_bindgen_a9b341aca3720bc6 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy_ptr #-}

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:376:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy_ptr :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9b341aca3720bc6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3cda0fd40bfe8d3d" hs_bindgen_3cda0fd40bfe8d3d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init_ptr #-}

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:390:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3cda0fd40bfe8d3d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_copy_state_ptr@
-}
foreign import ccall unsafe "hs_bindgen_647dd7b78ca1c443" hs_bindgen_647dd7b78ca1c443 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state_ptr #-}

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:398:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_647dd7b78ca1c443

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_77ac83f5213d6c37" hs_bindgen_77ac83f5213d6c37 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length_ptr #-}

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:406:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_77ac83f5213d6c37

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8e0b1460798c2130" hs_bindgen_8e0b1460798c2130 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size_ptr #-}

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:414:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e0b1460798c2130

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_78656a4990ae774c" hs_bindgen_78656a4990ae774c ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update_ptr #-}

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:423:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78656a4990ae774c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3ab1311eaabe98e8" hs_bindgen_3ab1311eaabe98e8 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final_ptr #-}

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:433:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3ab1311eaabe98e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_27ecd5fe60c8be8d" hs_bindgen_27ecd5fe60c8be8d ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear_ptr #-}

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:441:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_27ecd5fe60c8be8d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_36d81b1c1d9f7721" hs_bindgen_36d81b1c1d9f7721 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy_ptr #-}

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:448:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_36d81b1c1d9f7721

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hash_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_894a1794dffcdae3" hs_bindgen_894a1794dffcdae3 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name_ptr #-}

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:456:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_894a1794dffcdae3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_577e5320e6cde23d" hs_bindgen_577e5320e6cde23d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init_ptr #-}

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:471:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_577e5320e6cde23d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cc4a926a1137b2cb" hs_bindgen_cc4a926a1137b2cb ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length_ptr #-}

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:479:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc4a926a1137b2cb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ea16c274ce6d4286" hs_bindgen_ea16c274ce6d4286 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key_ptr #-}

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:488:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea16c274ce6d4286

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_set_nonce_ptr@
-}
foreign import ccall unsafe "hs_bindgen_851516855301d476" hs_bindgen_851516855301d476 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce_ptr #-}

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:497:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_851516855301d476

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9eb72e305b5cd425" hs_bindgen_9eb72e305b5cd425 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update_ptr #-}

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:506:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9eb72e305b5cd425

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f88ddc4a0d682c98" hs_bindgen_f88ddc4a0d682c98 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final_ptr #-}

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:516:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f88ddc4a0d682c98

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5c65a19241d87ac8" hs_bindgen_5c65a19241d87ac8 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear_ptr #-}

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c65a19241d87ac8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_003682a8d4468395" hs_bindgen_003682a8d4468395 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name_ptr #-}

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:532:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_003682a8d4468395

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_345c60e59ef17654" hs_bindgen_345c60e59ef17654 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec_ptr #-}

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:542:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_345c60e59ef17654

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mac_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7cc1e0afdf25c645" hs_bindgen_7cc1e0afdf25c645 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy_ptr #-}

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:552:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cc1e0afdf25c645

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7c7b0aaa1905f9c7" hs_bindgen_7c7b0aaa1905f9c7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init_ptr #-}

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:566:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c7b0aaa1905f9c7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d0593161e3d946c8" hs_bindgen_d0593161e3d946c8 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name_ptr #-}

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:571:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0593161e3d946c8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b8f3a570cc9d5ed" hs_bindgen_1b8f3a570cc9d5ed ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length_ptr #-}

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:576:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b8f3a570cc9d5ed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_valid_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cc57029032927316" hs_bindgen_cc57029032927316 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length_ptr #-}

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:581:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc57029032927316

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_tag_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c40b3169f4b8505a" hs_bindgen_c40b3169f4b8505a ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length_ptr #-}

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:586:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c40b3169f4b8505a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_is_authenticated_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d6853be24b10814e" hs_bindgen_d6853be24b10814e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated_ptr #-}

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:591:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6853be24b10814e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_requires_entire_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6536d7e4e4f27fe0" hs_bindgen_6536d7e4e4f27fe0 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message_ptr #-}

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:598:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6536d7e4e4f27fe0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_default_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e6755a2e750e8b1c" hs_bindgen_e6755a2e750e8b1c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length_ptr #-}

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:603:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6755a2e750e8b1c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_85ddec778cd97ea8" hs_bindgen_85ddec778cd97ea8 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity_ptr #-}

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:609:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_85ddec778cd97ea8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_ideal_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7a001b5660f153ae" hs_bindgen_7a001b5660f153ae ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity_ptr #-}

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:615:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a001b5660f153ae

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_query_keylen_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca03c53012816118" hs_bindgen_ca03c53012816118 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen_ptr #-}

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:621:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca03c53012816118

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_33cd5d5c191d9c5e" hs_bindgen_33cd5d5c191d9c5e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec_ptr #-}

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:627:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33cd5d5c191d9c5e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_da7095dc747b5afd" hs_bindgen_da7095dc747b5afd ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key_ptr #-}

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:632:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da7095dc747b5afd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_reset_ptr@
-}
foreign import ccall unsafe "hs_bindgen_71b74fb6d5a01aa3" hs_bindgen_71b74fb6d5a01aa3 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset_ptr #-}

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:642:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_71b74fb6d5a01aa3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_set_associated_data_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8e43660927ce9e8c" hs_bindgen_8e43660927ce9e8c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data_ptr #-}

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:647:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e43660927ce9e8c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_start_ptr@
-}
foreign import ccall unsafe "hs_bindgen_834a318a49b442d3" hs_bindgen_834a318a49b442d3 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start_ptr #-}

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:652:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_834a318a49b442d3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_941e6b88ab804abe" hs_bindgen_941e6b88ab804abe ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update_ptr #-}

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
botan_cipher_update_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_941e6b88ab804abe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_90947ca66563e426" hs_bindgen_90947ca66563e426 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear_ptr #-}

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:691:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90947ca66563e426

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_036dc3ba739a74b1" hs_bindgen_036dc3ba739a74b1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy_ptr #-}

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:697:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_036dc3ba739a74b1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pbkdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9d7d7b18810f7b76" hs_bindgen_9d7d7b18810f7b76 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_ptr #-}

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:716:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9d7d7b18810f7b76

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pbkdf_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4c53e0bb640bb586" hs_bindgen_4c53e0bb640bb586 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:749:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c53e0bb640bb586

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pwdhash_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d302551893ed03d8" hs_bindgen_d302551893ed03d8 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_ptr #-}

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:773:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d302551893ed03d8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pwdhash_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5eec218e3eac26eb" hs_bindgen_5eec218e3eac26eb ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed_ptr #-}

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:800:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5eec218e3eac26eb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_scrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5cde3777fe0a46e7" hs_bindgen_5cde3777fe0a46e7 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt_ptr #-}

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:819:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5cde3777fe0a46e7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_kdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fd97312903a4977b" hs_bindgen_fd97312903a4977b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:842:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fd97312903a4977b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ec30c268e1725b11" hs_bindgen_ec30c268e1725b11 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init_ptr #-}

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:860:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec30c268e1725b11

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_802856b97a34abe4" hs_bindgen_802856b97a34abe4 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy_ptr #-}

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:866:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_802856b97a34abe4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b5345a31cadd3b67" hs_bindgen_b5345a31cadd3b67 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear_ptr #-}

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:872:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5345a31cadd3b67

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fd9c43a3973b9b0f" hs_bindgen_fd9c43a3973b9b0f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key_ptr #-}

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:877:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fd9c43a3973b9b0f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_753af2d359f92c3e" hs_bindgen_753af2d359f92c3e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size_ptr #-}

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:883:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_753af2d359f92c3e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_encrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ff307eff165bea49" hs_bindgen_ff307eff165bea49 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks_ptr #-}

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:889:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ff307eff165bea49

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_decrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_770affb557fff4f2" hs_bindgen_770affb557fff4f2 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks_ptr #-}

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:895:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_770affb557fff4f2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_54b189e77adec270" hs_bindgen_54b189e77adec270 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name_ptr #-}

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:903:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54b189e77adec270

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_block_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a46a9ed7ced8f663" hs_bindgen_a46a9ed7ced8f663 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec_ptr #-}

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:913:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a46a9ed7ced8f663

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d40c61530dbae544" hs_bindgen_d40c61530dbae544 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init_ptr #-}

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d40c61530dbae544

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ba939c90ae5de613" hs_bindgen_ba939c90ae5de613 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy_ptr #-}

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:932:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba939c90ae5de613

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_hex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a2037976cd181734" hs_bindgen_a2037976cd181734 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex_ptr #-}

{-| Convert the MPI to a hex string. Writes up to botan_mp_num_bytes(mp)*2 + 5 bytes

  Prefer botan_mp_view_hex

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:939:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a2037976cd181734

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_hex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b6e5572035809873" hs_bindgen_b6e5572035809873 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_mp_view_hex_ptr #-}

{-| View the hex string encoding of the MPI.

__C declaration:__ @botan_mp_view_hex@

__defined at:__ @botan\/ffi.h:944:29@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_view_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_mp_view_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6e5572035809873

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_080bf061f3adaacc" hs_bindgen_080bf061f3adaacc ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str_ptr #-}

{-| Convert the MPI to a string. Currently radix == 10 and radix == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:949:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_080bf061f3adaacc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0a5c30f6822fc065" hs_bindgen_0a5c30f6822fc065 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_mp_view_str_ptr #-}

{-| View the MPI as a radix-N integer. Currently only radix 10 and radix 16 are supported

__C declaration:__ @botan_mp_view_str@

__defined at:__ @botan\/ffi.h:954:29@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_view_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_mp_view_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a5c30f6822fc065

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3a198d1062ee710d" hs_bindgen_3a198d1062ee710d ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_ptr #-}

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:959:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a198d1062ee710d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_int_ptr@
-}
foreign import ccall unsafe "hs_bindgen_194197f3f09d949f" hs_bindgen_194197f3f09d949f ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int_ptr #-}

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:964:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int_ptr :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_194197f3f09d949f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_mp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1f796644c9bd963b" hs_bindgen_1f796644c9bd963b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp_ptr #-}

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:969:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1f796644c9bd963b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8aa5e1ae6b30d42" hs_bindgen_b8aa5e1ae6b30d42 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str_ptr #-}

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:974:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8aa5e1ae6b30d42

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_from_radix_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b6e61a914b3b09ad" hs_bindgen_b6e61a914b3b09ad ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str_ptr #-}

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:980:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6e61a914b3b09ad

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_num_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2e352c2fceac104f" hs_bindgen_2e352c2fceac104f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits_ptr #-}

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:985:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e352c2fceac104f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_num_bytes_ptr@
-}
foreign import ccall unsafe "hs_bindgen_92f364ba6805ce78" hs_bindgen_92f364ba6805ce78 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes_ptr #-}

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:990:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92f364ba6805ce78

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_35876daa6b252a61" hs_bindgen_35876daa6b252a61 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin_ptr #-}

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:997:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_35876daa6b252a61

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_view_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7bc29f74c07c5aef" hs_bindgen_7bc29f74c07c5aef ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_mp_view_bin_ptr #-}

{-| __C declaration:__ @botan_mp_view_bin@

    __defined at:__ @botan\/ffi.h:1004:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_view_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_mp_view_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bc29f74c07c5aef

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_from_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5224f1f9f395cb3e" hs_bindgen_5224f1f9f395cb3e ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin_ptr #-}

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:1009:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5224f1f9f395cb3e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_to_uint32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9ddca654537cc9d6" hs_bindgen_9ddca654537cc9d6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32_ptr #-}

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:1014:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9ddca654537cc9d6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_positive_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2f0929d99a3aa79e" hs_bindgen_2f0929d99a3aa79e ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive_ptr #-}

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:1021:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f0929d99a3aa79e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_negative_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e60ca6a29dc048cf" hs_bindgen_e60ca6a29dc048cf ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative_ptr #-}

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:1026:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e60ca6a29dc048cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_flip_sign_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ba9e3de64d1d1bfe" hs_bindgen_ba9e3de64d1d1bfe ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign_ptr #-}

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:1028:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba9e3de64d1d1bfe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_zero_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f166b92f2a6f605a" hs_bindgen_f166b92f2a6f605a ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero_ptr #-}

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:1030:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f166b92f2a6f605a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_odd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_72d25044a97e429a" hs_bindgen_72d25044a97e429a ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd_ptr #-}

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:1032:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_72d25044a97e429a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_even_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a51008da69f104e4" hs_bindgen_a51008da69f104e4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even_ptr #-}

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:1033:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a51008da69f104e4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_add_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_361742f0dd671130" hs_bindgen_361742f0dd671130 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32_ptr #-}

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:1035:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_361742f0dd671130

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_sub_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6184b67aa400c8b6" hs_bindgen_6184b67aa400c8b6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32_ptr #-}

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:1036:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6184b67aa400c8b6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_add_ptr@
-}
foreign import ccall unsafe "hs_bindgen_be5133ecdd303ba7" hs_bindgen_be5133ecdd303ba7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add_ptr #-}

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:1038:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_be5133ecdd303ba7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_sub_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49ab26e422c9a879" hs_bindgen_49ab26e422c9a879 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_ptr #-}

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:1039:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49ab26e422c9a879

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_51eb0a6fb3d86ee0" hs_bindgen_51eb0a6fb3d86ee0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1040:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51eb0a6fb3d86ee0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_div_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cafc047cbaf8cd8e" hs_bindgen_cafc047cbaf8cd8e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div_ptr #-}

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1043:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cafc047cbaf8cd8e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mod_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0c88356b39c55162" hs_bindgen_0c88356b39c55162 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1046:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c88356b39c55162

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9888706f6cfba3e9" hs_bindgen_9888706f6cfba3e9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal_ptr #-}

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1053:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9888706f6cfba3e9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_cmp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6a6b09825bbdea80" hs_bindgen_6a6b09825bbdea80 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp_ptr #-}

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1060:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a6b09825bbdea80

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_swap_ptr@
-}
foreign import ccall unsafe "hs_bindgen_da3fa7ffa7cadac8" hs_bindgen_da3fa7ffa7cadac8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap_ptr #-}

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1065:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da3fa7ffa7cadac8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_powmod_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6d1fe694559129f0" hs_bindgen_6d1fe694559129f0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod_ptr #-}

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1069:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d1fe694559129f0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_lshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e5b84f964a525bbc" hs_bindgen_e5b84f964a525bbc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift_ptr #-}

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1071:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e5b84f964a525bbc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3d2f51fcfd561dba" hs_bindgen_3d2f51fcfd561dba ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift_ptr #-}

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1072:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d2f51fcfd561dba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_mod_inverse_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c029089d1ab9c329" hs_bindgen_c029089d1ab9c329 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse_ptr #-}

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1074:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c029089d1ab9c329

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rand_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d3abebd11373fb00" hs_bindgen_d3abebd11373fb00 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits_ptr #-}

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1076:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3abebd11373fb00

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_rand_range_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2bd099168682a817" hs_bindgen_2bd099168682a817 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range_ptr #-}

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1079:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2bd099168682a817

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_gcd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b348bc43fae21e02" hs_bindgen_b348bc43fae21e02 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd_ptr #-}

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1081:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b348bc43fae21e02

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_is_prime_ptr@
-}
foreign import ccall unsafe "hs_bindgen_23720787674f2ca9" hs_bindgen_23720787674f2ca9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime_ptr #-}

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1088:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23720787674f2ca9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_get_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4329a682a98faf9d" hs_bindgen_4329a682a98faf9d ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit_ptr #-}

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1095:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4329a682a98faf9d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_set_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f17a44f162ca1562" hs_bindgen_f17a44f162ca1562 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit_ptr #-}

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1100:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f17a44f162ca1562

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mp_clear_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9472942b808d99d0" hs_bindgen_9472942b808d99d0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit_ptr #-}

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1105:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9472942b808d99d0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_bcrypt_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0f6abed594d69874" hs_bindgen_0f6abed594d69874 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

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

  TOD(Botan4) this should use char for the type of `out`

__C declaration:__ @botan_bcrypt_generate@

__defined at:__ @botan\/ffi.h:1125:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f6abed594d69874

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_bcrypt_is_valid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2bf85b1895d601be" hs_bindgen_2bf85b1895d601be ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid_ptr #-}

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2bf85b1895d601be

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6c2af52b2c68a523" hs_bindgen_6c2af52b2c68a523 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_destroy_ptr #-}

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_destroy@

__defined at:__ @botan\/ffi.h:1147:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_destroy_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c2af52b2c68a523

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_from_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6a8083c3a0b0d931" hs_bindgen_6a8083c3a0b0d931 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_from_string_ptr #-}

{-| Create an OID from a string, either dot notation (e.g. '1.2.3.4') or a registered name (e.g. 'RSA')

  [__@oid@ /(input)/__]: handle to the resulting OID

  [__@oid_str@ /(input)/__]: the name of the OID to create

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_from_string@

__defined at:__ @botan\/ffi.h:1155:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_from_string_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_from_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a8083c3a0b0d931

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_register_ptr@
-}
foreign import ccall unsafe "hs_bindgen_202180ec200740a0" hs_bindgen_202180ec200740a0 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_register_ptr #-}

{-| Registers an OID so that it may later be retrieved by name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_register@

__defined at:__ @botan\/ffi.h:1161:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_register_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_register_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_202180ec200740a0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_view_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f2c197a8b4f68a90" hs_bindgen_f2c197a8b4f68a90 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_string_ptr #-}

{-| View an OID in dot notation

__C declaration:__ @botan_oid_view_string@

__defined at:__ @botan\/ffi.h:1166:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_string_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2c197a8b4f68a90

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_view_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d941ffe4922b0319" hs_bindgen_d941ffe4922b0319 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_name_ptr #-}

{-| View an OIDs registered name if it exists, else its dot notation

__C declaration:__ @botan_oid_view_name@

__defined at:__ @botan\/ffi.h:1171:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_name_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d941ffe4922b0319

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_18fe03b74a07a097" hs_bindgen_18fe03b74a07a097 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_equal_ptr #-}

{-|

  __returns:__ 0 if a != b

  __returns:__ 1 if a == b

  __returns:__ negative number on error

__C declaration:__ @botan_oid_equal@

__defined at:__ @botan\/ffi.h:1178:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_equal_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18fe03b74a07a097

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_oid_cmp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b67710d2d315294" hs_bindgen_1b67710d2d315294 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_cmp_ptr #-}

{-| Sets

  [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

  __returns:__ negative number on error or zero on success

__C declaration:__ @botan_oid_cmp@

__defined at:__ @botan\/ffi.h:1185:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b67710d2d315294

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1786a8de57a4733e" hs_bindgen_1786a8de57a4733e ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_destroy_ptr #-}

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_destroy@

__defined at:__ @botan\/ffi.h:1196:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_destroy_ptr :: Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1786a8de57a4733e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_supports_application_specific_group_ptr@
-}
foreign import ccall unsafe "hs_bindgen_173965dc3d10242f" hs_bindgen_173965dc3d10242f ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_application_specific_group_ptr #-}

{-| Checks if in this build configuration it is possible to register an application specific elliptic curve and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_ec_group_supports_application_specific_group@

__defined at:__ @botan\/ffi.h:1203:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_application_specific_group_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_application_specific_group_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_173965dc3d10242f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_supports_named_group_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ab60cab8fd8bb2e6" hs_bindgen_ab60cab8fd8bb2e6 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_named_group_ptr #-}

{-| Checks if in this build configuration botan_ec_group_from_name(group_ptr, name) will succeed and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_supports_named_group@

__defined at:__ @botan\/ffi.h:1210:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_named_group_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_named_group_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ab60cab8fd8bb2e6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_params_ptr@
-}
foreign import ccall unsafe "hs_bindgen_aa79ef922aee49e1" hs_bindgen_aa79ef922aee49e1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_params_ptr #-}

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

__defined at:__ @botan\/ffi.h:1226:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_params_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_ec_group_from_params_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa79ef922aee49e1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_ber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_878c8342a8c69751" hs_bindgen_878c8342a8c69751 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_ber_ptr #-}

{-| Decode a BER encoded ECC domain parameter set

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@ber@ /(input)/__]: encoding

  [__@ber_len@ /(input)/__]: size of the encoding in bytes

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_ber@

__defined at:__ @botan\/ffi.h:1242:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_ber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_ec_group_from_ber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_878c8342a8c69751

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_25a19e4e5855d366" hs_bindgen_25a19e4e5855d366 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_pem_ptr #-}

{-| Initialize an EC Group from the PEM/ASN.1 encoding

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@pem@ /(input)/__]: encoding

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_pem@

__defined at:__ @botan\/ffi.h:1250:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_pem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_25a19e4e5855d366

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_df34e0d8ccab8b8d" hs_bindgen_df34e0d8ccab8b8d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_oid_ptr #-}

{-| Initialize an EC Group from a group named by an object identifier

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@oid@ /(input)/__]: a known OID

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_oid@

__defined at:__ @botan\/ffi.h:1258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt)
botan_ec_group_from_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df34e0d8ccab8b8d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_from_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fe56b00841d25a8c" hs_bindgen_fe56b00841d25a8c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_name_ptr #-}

{-| Initialize an EC Group from a common group name (eg "secp256r1")

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@name@ /(input)/__]: a known group name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_name@

__defined at:__ @botan\/ffi.h:1266:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_name_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe56b00841d25a8c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c22bcf7276a0a913" hs_bindgen_c22bcf7276a0a913 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_der_ptr #-}

{-| View an EC Group in DER encoding

__C declaration:__ @botan_ec_group_view_der@

__defined at:__ @botan\/ffi.h:1272:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_der_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_ec_group_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c22bcf7276a0a913

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_65247615240d7e48" hs_bindgen_65247615240d7e48 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_pem_ptr #-}

{-| View an EC Group in PEM encoding

__C declaration:__ @botan_ec_group_view_pem@

__defined at:__ @botan\/ffi.h:1278:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_pem_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_ec_group_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65247615240d7e48

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_curve_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fd12019ae0b6e616" hs_bindgen_fd12019ae0b6e616 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_curve_oid_ptr #-}

{-| Get the curve OID of an EC Group

__C declaration:__ @botan_ec_group_get_curve_oid@

__defined at:__ @botan\/ffi.h:1283:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_curve_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_curve_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fd12019ae0b6e616

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a808244f7dfe4b7d" hs_bindgen_a808244f7dfe4b7d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_p_ptr #-}

{-| Get the prime modulus of the field

__C declaration:__ @botan_ec_group_get_p@

__defined at:__ @botan\/ffi.h:1288:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_p_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a808244f7dfe4b7d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_a_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7ec0199bcf029df1" hs_bindgen_7ec0199bcf029df1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_a_ptr #-}

{-| Get the a parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_a@

__defined at:__ @botan\/ffi.h:1293:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_a_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_a_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ec0199bcf029df1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_b_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6fb47b33ff6a6641" hs_bindgen_6fb47b33ff6a6641 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_b_ptr #-}

{-| Get the b parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_b@

__defined at:__ @botan\/ffi.h:1298:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_b_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_b_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fb47b33ff6a6641

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_g_x_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9e4585b3fb7f91ea" hs_bindgen_9e4585b3fb7f91ea ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_x_ptr #-}

{-| Get the x coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_x@

__defined at:__ @botan\/ffi.h:1303:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_x_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e4585b3fb7f91ea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_g_y_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cd7d640a8d90faf3" hs_bindgen_cd7d640a8d90faf3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_y_ptr #-}

{-| Get the y coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_y@

__defined at:__ @botan\/ffi.h:1308:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_y_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd7d640a8d90faf3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_get_order_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a260f92612cb6f59" hs_bindgen_a260f92612cb6f59 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_order_ptr #-}

{-| Get the order of the base point

__C declaration:__ @botan_ec_group_get_order@

__defined at:__ @botan\/ffi.h:1313:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_order_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_order_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a260f92612cb6f59

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_group_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ead0f1ee041625cf" hs_bindgen_ead0f1ee041625cf ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_equal_ptr #-}

{-|

  __returns:__ 0 if curve1 != curve2

  __returns:__ 1 if curve1 == curve2

  __returns:__ negative number on error

__C declaration:__ @botan_ec_group_equal@

__defined at:__ @botan\/ffi.h:1320:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_equal_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ead0f1ee041625cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_225bdc95f649e7eb" hs_bindgen_225bdc95f649e7eb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ptr #-}

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1336:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_225bdc95f649e7eb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_ec_privkey_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2318af70c27ac7cf" hs_bindgen_2318af70c27ac7cf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_ec_privkey_create_ptr #-}

{-| Create a new ec private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

  [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_ec_privkey_create@

__defined at:__ @botan\/ffi.h:1346:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt)
botan_ec_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2318af70c27ac7cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3988eda73d61bd83" hs_bindgen_3988eda73d61bd83 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key_ptr #-}

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1350:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3988eda73d61bd83

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_80efd79ea4e35e4a" hs_bindgen_80efd79ea4e35e4a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1353:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_80efd79ea4e35e4a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_08797784a7ac3d6c" hs_bindgen_08797784a7ac3d6c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1355:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_08797784a7ac3d6c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_82b0765d0ddf282c" hs_bindgen_82b0765d0ddf282c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1357:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_82b0765d0ddf282c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bb854d71a9f980ab" hs_bindgen_bb854d71a9f980ab ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece_ptr #-}

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1359:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb854d71a9f980ab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f9f2f12fca71b22c" hs_bindgen_f9f2f12fca71b22c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1361:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9f2f12fca71b22c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_20069d88131d1288" hs_bindgen_20069d88131d1288 ::
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

__defined at:__ @botan\/ffi.h:1381:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_20069d88131d1288

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_create_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_50641918b01ef4e8" hs_bindgen_50641918b01ef4e8 ::
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

__defined at:__ @botan\/ffi.h:1403:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50641918b01ef4e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_134ad000504ba54b" hs_bindgen_134ad000504ba54b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ptr #-}

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1411:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_134ad000504ba54b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_965f99434998571c" hs_bindgen_965f99434998571c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1416:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy_ptr :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_965f99434998571c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a402f1649488ab5b" hs_bindgen_a402f1649488ab5b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_ptr #-}

{-| __C declaration:__ @botan_privkey_export@

    __defined at:__ @botan\/ffi.h:1430:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a402f1649488ab5b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_841379c2114455ed" hs_bindgen_841379c2114455ed ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der_ptr #-}

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1435:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_841379c2114455ed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_686bfce7aa1e8a05" hs_bindgen_686bfce7aa1e8a05 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem_ptr #-}

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1440:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_686bfce7aa1e8a05

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4c27117af5aba7f2" hs_bindgen_4c27117af5aba7f2 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_raw_ptr #-}

{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1445:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c27117af5aba7f2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_42f0efbfdeee45a9" hs_bindgen_42f0efbfdeee45a9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1447:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_42f0efbfdeee45a9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b6c6cff5cf177e6d" hs_bindgen_b6c6cff5cf177e6d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1454:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6c6cff5cf177e6d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e2896657255493dd" hs_bindgen_e2896657255493dd ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1470:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2896657255493dd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a91c0ca355d0c2b1" hs_bindgen_a91c0ca355d0c2b1 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

    __defined at:__ @botan\/ffi.h:1486:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a91c0ca355d0c2b1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ef69ae5f423f7376" hs_bindgen_ef69ae5f423f7376 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1503:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef69ae5f423f7376

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_der_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8eba51eed8079479" hs_bindgen_8eba51eed8079479 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1518:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8eba51eed8079479

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7efbea3cf8c5ac6c" hs_bindgen_7efbea3cf8c5ac6c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1534:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7efbea3cf8c5ac6c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_encrypted_pem_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4b2a2da7c78601ff" hs_bindgen_4b2a2da7c78601ff ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1549:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4b2a2da7c78601ff

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8beaf9f99f3fe906" hs_bindgen_8beaf9f99f3fe906 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ptr #-}

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1560:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8beaf9f99f3fe906

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_export_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2940a48608a2ac44" hs_bindgen_2940a48608a2ac44 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey_ptr #-}

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1562:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2940a48608a2ac44

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5c864fe34f532f6c" hs_bindgen_5c864fe34f532f6c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export_ptr #-}

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1565:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c864fe34f532f6c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9a0a5baf6b5c338c" hs_bindgen_9a0a5baf6b5c338c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der_ptr #-}

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1570:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a0a5baf6b5c338c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cc10d268e334ee02" hs_bindgen_cc10d268e334ee02 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem_ptr #-}

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1575:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc10d268e334ee02

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e47ac802bda94ca0" hs_bindgen_e47ac802bda94ca0 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_raw_ptr #-}

{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1580:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e47ac802bda94ca0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_62966edf3ece2c36" hs_bindgen_62966edf3ece2c36 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1582:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_62966edf3ece2c36

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f3a64d5370b98da1" hs_bindgen_f3a64d5370b98da1 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key_ptr #-}

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1587:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3a64d5370b98da1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_estimated_strength_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7059cdd1d78f6112" hs_bindgen_7059cdd1d78f6112 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength_ptr #-}

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1589:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7059cdd1d78f6112

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4d42b56aff4d610b" hs_bindgen_4d42b56aff4d610b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint_ptr #-}

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1592:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d42b56aff4d610b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4c91cf20d921583e" hs_bindgen_4c91cf20d921583e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1597:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c91cf20d921583e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_70a57a6ef7ec20da" hs_bindgen_70a57a6ef7ec20da ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field_ptr #-}

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1602:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70a57a6ef7ec20da

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_64e011b1a0ac856d" hs_bindgen_64e011b1a0ac856d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field_ptr #-}

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1604:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64e011b1a0ac856d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9dfac1dd3c476312" hs_bindgen_9dfac1dd3c476312 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_oid_ptr #-}

{-| __C declaration:__ @botan_pubkey_oid@

    __defined at:__ @botan\/ffi.h:1610:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9dfac1dd3c476312

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c15c955ef5469ea8" hs_bindgen_c15c955ef5469ea8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_oid_ptr #-}

{-| __C declaration:__ @botan_privkey_oid@

    __defined at:__ @botan\/ffi.h:1613:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c15c955ef5469ea8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_stateful_operation_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b599b88687a413fd" hs_bindgen_b599b88687a413fd ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_privkey_stateful_operation_ptr #-}

{-| Checks whether a key is stateful and sets

  [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_stateful_operation@

__defined at:__ @botan\/ffi.h:1620:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_stateful_operation_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_privkey_stateful_operation_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b599b88687a413fd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_remaining_operations_ptr@
-}
foreign import ccall unsafe "hs_bindgen_90c84eb5d725500b" hs_bindgen_90c84eb5d725500b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_privkey_remaining_operations_ptr #-}

{-| Gets information on many operations a (stateful) key has remaining and sets

  [__@out@ /(input)/__]: to that value

  __returns:__ 0 on success, a negative value on failure or if the key is not stateful

__C declaration:__ @botan_privkey_remaining_operations@

__defined at:__ @botan\/ffi.h:1627:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_remaining_operations_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_privkey_remaining_operations_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90c84eb5d725500b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_07117ad66a113391" hs_bindgen_07117ad66a113391 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1632:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_07117ad66a113391

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_rsa_pkcs1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_21f54c39b4348908" hs_bindgen_21f54c39b4348908 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1634:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_21f54c39b4348908

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_df67f05a2d09e2e4" hs_bindgen_df67f05a2d09e2e4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1637:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df67f05a2d09e2e4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8f38766f62ae1344" hs_bindgen_8f38766f62ae1344 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1639:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f38766f62ae1344

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_d_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a6ab95c8cbddb942" hs_bindgen_a6ab95c8cbddb942 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1641:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a6ab95c8cbddb942

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8f82c3fccc24abb0" hs_bindgen_8f82c3fccc24abb0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1643:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f82c3fccc24abb0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1f7f7a1e1e7bac42" hs_bindgen_1f7f7a1e1e7bac42 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1645:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1f7f7a1e1e7bac42

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_rsa_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_64e303422bba6c57" hs_bindgen_64e303422bba6c57 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1648:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64e303422bba6c57

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6801afee2c3e087d" hs_bindgen_6801afee2c3e087d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1650:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6801afee2c3e087d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_238bcae4e8338aa6" hs_bindgen_238bcae4e8338aa6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1653:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_238bcae4e8338aa6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b5910cd4b39374ed" hs_bindgen_b5910cd4b39374ed ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1655:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5910cd4b39374ed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3c195ff1775c52e4" hs_bindgen_3c195ff1775c52e4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1661:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c195ff1775c52e4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c5ded4f3bcd02268" hs_bindgen_c5ded4f3bcd02268 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1664:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c5ded4f3bcd02268

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_dsa_get_x_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1d2547c0f8a16dce" hs_bindgen_1d2547c0f8a16dce ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x_ptr #-}

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1667:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d2547c0f8a16dce

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_155cf7244cc812da" hs_bindgen_155cf7244cc812da ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1670:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_155cf7244cc812da

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_015dcf41f6201a0f" hs_bindgen_015dcf41f6201a0f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1672:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_015dcf41f6201a0f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_g_ptr@
-}
foreign import ccall unsafe "hs_bindgen_04b548e6d0794dcd" hs_bindgen_04b548e6d0794dcd ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1674:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_04b548e6d0794dcd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_dsa_get_y_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e493fdba7a8af6b8" hs_bindgen_e493fdba7a8af6b8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1676:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e493fdba7a8af6b8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_38315486fcadea77" hs_bindgen_38315486fcadea77 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1691:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38315486fcadea77

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dafbcbcb336febba" hs_bindgen_dafbcbcb336febba ::
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

__defined at:__ @botan\/ffi.h:1705:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dafbcbcb336febba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_55271ad0fe79652a" hs_bindgen_55271ad0fe79652a ::
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

__defined at:__ @botan\/ffi.h:1723:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55271ad0fe79652a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_11fae930d04d3b41" hs_bindgen_11fae930d04d3b41 ::
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

__defined at:__ @botan\/ffi.h:1738:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11fae930d04d3b41

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_352348f4cbcf3533" hs_bindgen_352348f4cbcf3533 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1744:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_352348f4cbcf3533

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0399a72633dafa18" hs_bindgen_0399a72633dafa18 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1746:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0399a72633dafa18

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_ed25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1da13917f5b39a99" hs_bindgen_1da13917f5b39a99 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1749:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1da13917f5b39a99

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ed25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a67f303a1467ba49" hs_bindgen_a67f303a1467ba49 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a67f303a1467ba49

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6aabc9c2bb8c82ca" hs_bindgen_6aabc9c2bb8c82ca ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1758:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6aabc9c2bb8c82ca

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49c785945c0c432b" hs_bindgen_49c785945c0c432b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1760:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49c785945c0c432b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_ed448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b19f4e4da0ab7b3c" hs_bindgen_b19f4e4da0ab7b3c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1763:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b19f4e4da0ab7b3c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ed448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fb6a000a7b750de4" hs_bindgen_fb6a000a7b750de4 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fb6a000a7b750de4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_07d460d06028db87" hs_bindgen_07d460d06028db87 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1772:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_07d460d06028db87

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_537b3f6bcbe54eb4" hs_bindgen_537b3f6bcbe54eb4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1774:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_537b3f6bcbe54eb4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_x25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c41f256025633f9" hs_bindgen_8c41f256025633f9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1777:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c41f256025633f9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_x25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7e5d39b22e765d11" hs_bindgen_7e5d39b22e765d11 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1780:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e5d39b22e765d11

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_765d6c3d80c64600" hs_bindgen_765d6c3d80c64600 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1786:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_765d6c3d80c64600

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9171486af39c0cd8" hs_bindgen_9171486af39c0cd8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1788:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9171486af39c0cd8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_x448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eec2d2ece5e97c29" hs_bindgen_eec2d2ece5e97c29 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1791:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eec2d2ece5e97c29

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_x448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_37176dd236629310" hs_bindgen_37176dd236629310 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1794:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37176dd236629310

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_16ee88d135f4002a" hs_bindgen_16ee88d135f4002a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1801:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16ee88d135f4002a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89e2c50ee2fcdd2a" hs_bindgen_89e2c50ee2fcdd2a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1804:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89e2c50ee2fcdd2a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ac2a102e4230c37a" hs_bindgen_ac2a102e4230c37a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1815:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ac2a102e4230c37a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_acdfecdaf7debdfa" hs_bindgen_acdfecdaf7debdfa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1818:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acdfecdaf7debdfa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_afeb5aa9d71aa359" hs_bindgen_afeb5aa9d71aa359 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1822:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_afeb5aa9d71aa359

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_456ef4425203759d" hs_bindgen_456ef4425203759d ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1826:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_456ef4425203759d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_78543f8ae16723ea" hs_bindgen_78543f8ae16723ea ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_frodokem_ptr #-}

{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1833:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_78543f8ae16723ea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_13a3f7bb7cbdcd53" hs_bindgen_13a3f7bb7cbdcd53 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_frodokem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1836:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13a3f7bb7cbdcd53

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_701f37949517a318" hs_bindgen_701f37949517a318 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_classic_mceliece_ptr #-}

{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1843:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_701f37949517a318

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_71a3a055edd9ea05" hs_bindgen_71a3a055edd9ea05 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_classic_mceliece_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1849:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_71a3a055edd9ea05

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2101f558277f9049" hs_bindgen_2101f558277f9049 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1859:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2101f558277f9049

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1c7b5e7a02c320eb" hs_bindgen_1c7b5e7a02c320eb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1862:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c7b5e7a02c320eb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_84f189dc964a9388" hs_bindgen_84f189dc964a9388 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1869:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84f189dc964a9388

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b9538d9d0f701f5c" hs_bindgen_b9538d9d0f701f5c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1872:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b9538d9d0f701f5c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr@
-}
foreign import ccall unsafe "hs_bindgen_490eef03ab82bc29" hs_bindgen_490eef03ab82bc29 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding_ptr #-}

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1878:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_490eef03ab82bc29

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a5f32821f6cbf379" hs_bindgen_a5f32821f6cbf379 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1881:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5f32821f6cbf379

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_df1e032a64affd94" hs_bindgen_df1e032a64affd94 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1884:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_df1e032a64affd94

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdsa_sec1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bf149cb7c44dbc9b" hs_bindgen_bf149cb7c44dbc9b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_sec1_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa_sec1@

    __defined at:__ @botan\/ffi.h:1887:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_sec1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_sec1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf149cb7c44dbc9b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7ec2a19c284dc565" hs_bindgen_7ec2a19c284dc565 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1890:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ec2a19c284dc565

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_ecdh_sec1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8da147e5f2c46dba" hs_bindgen_8da147e5f2c46dba ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_sec1_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh_sec1@

    __defined at:__ @botan\/ffi.h:1893:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_sec1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_sec1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8da147e5f2c46dba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_817309847b58c57e" hs_bindgen_817309847b58c57e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1896:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_817309847b58c57e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e2ee1e017ac0dc1b" hs_bindgen_e2ee1e017ac0dc1b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1899:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2ee1e017ac0dc1b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_sec1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0162ebd622db46d9" hs_bindgen_0162ebd622db46d9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_sec1_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_sec1@

    __defined at:__ @botan\/ffi.h:1902:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_sec1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_sec1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0162ebd622db46d9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8706f58eb3569d7" hs_bindgen_b8706f58eb3569d7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1905:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8706f58eb3569d7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3ca5dd9d68f804bc" hs_bindgen_3ca5dd9d68f804bc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1909:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3ca5dd9d68f804bc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_privkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_faf517dee3988801" hs_bindgen_faf517dee3988801 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1913:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_faf517dee3988801

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_sm2_compute_za_ptr@
-}
foreign import ccall unsafe "hs_bindgen_428af4b70abda485" hs_bindgen_428af4b70abda485 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za_ptr #-}

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1916:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_428af4b70abda485

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pubkey_view_ec_public_point_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f3dc8d55a595b85d" hs_bindgen_f3dc8d55a595b85d ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point_ptr #-}

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1923:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3dc8d55a595b85d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3d7f58f19ee68464" hs_bindgen_3d7f58f19ee68464 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1931:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d7f58f19ee68464

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca0127aac9840f5b" hs_bindgen_ca0127aac9840f5b ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1936:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca0127aac9840f5b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cfdaec846ce5715e" hs_bindgen_cfdaec846ce5715e ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1939:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cfdaec846ce5715e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9175b957bbec709a" hs_bindgen_9175b957bbec709a ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1942:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9175b957bbec709a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_76e746016a40cf52" hs_bindgen_76e746016a40cf52 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1955:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76e746016a40cf52

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ebd3f164b23a347c" hs_bindgen_ebd3f164b23a347c ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1960:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ebd3f164b23a347c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6bd9d0cb474eba8b" hs_bindgen_6bd9d0cb474eba8b ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1963:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bd9d0cb474eba8b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_757f36c392db0dca" hs_bindgen_757f36c392db0dca ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1966:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_757f36c392db0dca

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_86f4459a7ddd9205" hs_bindgen_86f4459a7ddd9205 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1978:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86f4459a7ddd9205

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0fb6e048eebb2722" hs_bindgen_0fb6e048eebb2722 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1983:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0fb6e048eebb2722

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0f5ccb40cf838604" hs_bindgen_0f5ccb40cf838604 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1985:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f5ccb40cf838604

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2ca0f7a59e2c267a" hs_bindgen_2ca0f7a59e2c267a ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1987:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ca0f7a59e2c267a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_sign_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a593f6a5be93e653" hs_bindgen_a593f6a5be93e653 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1990:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a593f6a5be93e653

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_60d19246dc24cfa5" hs_bindgen_60d19246dc24cfa5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1998:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_60d19246dc24cfa5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_30d5652355925bf6" hs_bindgen_30d5652355925bf6 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:2006:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_30d5652355925bf6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1426319c698251f3" hs_bindgen_1426319c698251f3 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:2008:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1426319c698251f3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_verify_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_04c1cc5b6258a0f0" hs_bindgen_04c1cc5b6258a0f0 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:2009:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_04c1cc5b6258a0f0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e292f5bc6fcc6919" hs_bindgen_e292f5bc6fcc6919 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:2017:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e292f5bc6fcc6919

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5a2c106f368c005f" hs_bindgen_5a2c106f368c005f ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:2022:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a2c106f368c005f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_export_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eac228985dd3b707" hs_bindgen_eac228985dd3b707 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:2024:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eac228985dd3b707

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_view_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ae5248f6ca3fcea3" hs_bindgen_ae5248f6ca3fcea3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:2027:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae5248f6ca3fcea3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9bde4a8756bc9997" hs_bindgen_9bde4a8756bc9997 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:2029:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9bde4a8756bc9997

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_key_agreement_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b210ed0bca8a16df" hs_bindgen_b210ed0bca8a16df ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:2032:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b210ed0bca8a16df

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3437f9d96d2c723b" hs_bindgen_3437f9d96d2c723b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:2046:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3437f9d96d2c723b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_774d2229d8c648dc" hs_bindgen_774d2229d8c648dc ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:2051:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_774d2229d8c648dc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_24c241ba4e4fce83" hs_bindgen_24c241ba4e4fce83 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2054:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_24c241ba4e4fce83

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b0df43330745fc32" hs_bindgen_b0df43330745fc32 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:2059:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b0df43330745fc32

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9bdea4b85478b4ef" hs_bindgen_9bdea4b85478b4ef ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:2063:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9bdea4b85478b4ef

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0df6a2503888fb5e" hs_bindgen_0df6a2503888fb5e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:2076:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0df6a2503888fb5e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ac3dee69c301c848" hs_bindgen_ac3dee69c301c848 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:2081:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ac3dee69c301c848

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a402946dbdc62d5b" hs_bindgen_a402946dbdc62d5b ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2084:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a402946dbdc62d5b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pk_op_kem_decrypt_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d1cd9da6a0ac1e7d" hs_bindgen_d1cd9da6a0ac1e7d ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:2089:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1cd9da6a0ac1e7d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_pkcs_hash_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_13f10147b07f4e0b" hs_bindgen_13f10147b07f4e0b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id_ptr #-}

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:2102:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13f10147b07f4e0b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mceies_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f4e938bf54a49eba" hs_bindgen_f4e938bf54a49eba ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:2109:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4e938bf54a49eba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_mceies_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f19c628e6533a543" hs_bindgen_f19c628e6533a543 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:2124:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f19c628e6533a543

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_251089e53af061f2" hs_bindgen_251089e53af061f2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:2139:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_251089e53af061f2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7a4e0b9bb13cb449" hs_bindgen_7a4e0b9bb13cb449 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:2140:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a4e0b9bb13cb449

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9b5f1ba2780e52ce" hs_bindgen_9b5f1ba2780e52ce ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:2145:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b5f1ba2780e52ce

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_dup_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8cfee84ba8470160" hs_bindgen_8cfee84ba8470160 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup_ptr #-}

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:2147:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8cfee84ba8470160

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_time_starts_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9c210b1a99088337" hs_bindgen_9c210b1a99088337 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:2150:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c210b1a99088337

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_time_expires_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f95394322ecb9842" hs_bindgen_f95394322ecb9842 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:2151:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f95394322ecb9842

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_not_before_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ddaec3c5f38364dc" hs_bindgen_ddaec3c5f38364dc ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:2153:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddaec3c5f38364dc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_not_after_ptr@
-}
foreign import ccall unsafe "hs_bindgen_03398695a868915c" hs_bindgen_03398695a868915c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:2154:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03398695a868915c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2da5e12f7dce8c74" hs_bindgen_2da5e12f7dce8c74 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:2158:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2da5e12f7dce8c74

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_serial_number_ptr@
-}
foreign import ccall unsafe "hs_bindgen_34e9e35963333d95" hs_bindgen_34e9e35963333d95 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:2160:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34e9e35963333d95

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_authority_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ed412cb0539abd42" hs_bindgen_ed412cb0539abd42 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:2161:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ed412cb0539abd42

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_subject_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cbd23d0bb87b21f9" hs_bindgen_cbd23d0bb87b21f9 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:2162:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cbd23d0bb87b21f9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a3f973168632e24f" hs_bindgen_a3f973168632e24f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:2164:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3f973168632e24f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_view_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_aa3f198ac8ab57b5" hs_bindgen_aa3f198ac8ab57b5 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:2167:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa3f198ac8ab57b5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_public_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c0a24795a9c08334" hs_bindgen_c0a24795a9c08334 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:2169:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c0a24795a9c08334

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_issuer_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e38ec7465daf0481" hs_bindgen_e38ec7465daf0481 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:2173:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e38ec7465daf0481

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_get_subject_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_90c60721f5a55c6f" hs_bindgen_90c60721f5a55c6f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:2178:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90c60721f5a55c6f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_to_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6c6b190aa250535c" hs_bindgen_6c6b190aa250535c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:2181:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c6b190aa250535c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_view_as_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1c94cd099f320db5" hs_bindgen_1c94cd099f320db5 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:2184:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c94cd099f320db5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_allowed_usage_ptr@
-}
foreign import ccall unsafe "hs_bindgen_254eaf3841edbe32" hs_bindgen_254eaf3841edbe32 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage_ptr #-}

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:2200:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_254eaf3841edbe32

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_hostname_match_ptr@
-}
foreign import ccall unsafe "hs_bindgen_aaef454c87c33983" hs_bindgen_aaef454c87c33983 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match_ptr #-}

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:2206:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aaef454c87c33983

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_verify_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b0c0d86661e5d1bd" hs_bindgen_b0c0d86661e5d1bd ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_ptr #-}

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:2217:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b0c0d86661e5d1bd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_validation_status_ptr@
-}
foreign import ccall unsafe "hs_bindgen_01874eba08bbee0e" hs_bindgen_01874eba08bbee0e ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status_ptr #-}

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:2232:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_01874eba08bbee0e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_793104006a38bf66" hs_bindgen_793104006a38bf66 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:2240:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_793104006a38bf66

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2bd1880de21aae24" hs_bindgen_2bd1880de21aae24 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:2242:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2bd1880de21aae24

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_crl_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_538c436c5773993c" hs_bindgen_538c436c5773993c ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy_ptr #-}

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:2244:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_538c436c5773993c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_is_revoked_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4f5039f9db57696f" hs_bindgen_4f5039f9db57696f ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked_ptr #-}

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:2250:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4f5039f9db57696f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_x509_cert_verify_with_crl_ptr@
-}
foreign import ccall unsafe "hs_bindgen_92cf9fb6be27b8bf" hs_bindgen_92cf9fb6be27b8bf ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl_ptr #-}

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:2257:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92cf9fb6be27b8bf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_key_wrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fda6eb4d4ec3500e" hs_bindgen_fda6eb4d4ec3500e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394_ptr #-}

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:2275:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fda6eb4d4ec3500e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_key_unwrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d02b30b3544081f4" hs_bindgen_d02b30b3544081f4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394_ptr #-}

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:2284:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d02b30b3544081f4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_nist_kw_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0cc31641fc2a6aeb" hs_bindgen_0cc31641fc2a6aeb ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc_ptr #-}

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2292:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0cc31641fc2a6aeb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_nist_kw_dec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4fd592732c39e421" hs_bindgen_4fd592732c39e421 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec_ptr #-}

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2302:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4fd592732c39e421

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_34dc5bdbde4cd57e" hs_bindgen_34dc5bdbde4cd57e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init_ptr #-}

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2321:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34dc5bdbde4cd57e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2c58ca2a203917de" hs_bindgen_2c58ca2a203917de ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy_ptr #-}

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2328:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy_ptr :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c58ca2a203917de

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_776efd42d4f28d2e" hs_bindgen_776efd42d4f28d2e ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate_ptr #-}

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2334:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_776efd42d4f28d2e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_hotp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6fbb6e7f80f7a7c2" hs_bindgen_6fbb6e7f80f7a7c2 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check_ptr #-}

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2340:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fbb6e7f80f7a7c2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_64060a7fb88b83d8" hs_bindgen_64060a7fb88b83d8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init_ptr #-}

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2353:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64060a7fb88b83d8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b09e924ae6c4fdf4" hs_bindgen_b09e924ae6c4fdf4 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy_ptr #-}

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2361:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy_ptr :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b09e924ae6c4fdf4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_11be9dc70cfe4774" hs_bindgen_11be9dc70cfe4774 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate_ptr #-}

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2370:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate_ptr :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11be9dc70cfe4774

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_totp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1871f585d722410d" hs_bindgen_1871f585d722410d ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check_ptr #-}

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2381:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check_ptr :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1871f585d722410d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_fe1_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9fd5221f827bafe7" hs_bindgen_9fd5221f827bafe7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init_ptr #-}

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2392:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9fd5221f827bafe7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d2551173ad8c622f" hs_bindgen_d2551173ad8c622f ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2399:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy_ptr :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2551173ad8c622f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_346d82ee79c2c07d" hs_bindgen_346d82ee79c2c07d ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2402:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_346d82ee79c2c07d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_fpe_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_99c668721ae7fd5c" hs_bindgen_99c668721ae7fd5c ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2405:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_99c668721ae7fd5c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8a865473bc2b049c" hs_bindgen_8a865473bc2b049c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init_ptr #-}

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2417:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a865473bc2b049c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fd5d4b98e13cfd51" hs_bindgen_fd5d4b98e13cfd51 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy_ptr #-}

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2425:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fd5d4b98e13cfd51

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_step1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d3b0263945f8f98a" hs_bindgen_d3b0263945f8f98a ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:2440:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3b0263945f8f98a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_server_session_step2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b6c4d2ca5450346f" hs_bindgen_b6c4d2ca5450346f ::
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

__defined at:__ @botan\/ffi.h:2459:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6c4d2ca5450346f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_generate_verifier_ptr@
-}
foreign import ccall unsafe "hs_bindgen_29ecca6d6595c6ab" hs_bindgen_29ecca6d6595c6ab ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:2475:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29ecca6d6595c6ab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_client_agree_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e4c4b3b8eb6829e4" hs_bindgen_e4c4b3b8eb6829e4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:2502:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4c4b3b8eb6829e4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_srp6_group_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a90f546b3a4ddc1e" hs_bindgen_a90f546b3a4ddc1e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size_ptr #-}

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2520:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a90f546b3a4ddc1e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_zfec_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8b9f90b9ab701fbf" hs_bindgen_8b9f90b9ab701fbf ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

{-# NOINLINE botan_zfec_encode_ptr #-}

{-| Encode some bytes with certain ZFEC parameters.

  [__@K@ /(input)/__]: the number of shares needed for recovery

  [__@N@ /(input)/__]: the number of shares generated

  [__@input@ /(input)/__]: the data to FEC

  [__@size@ /(input)/__]: the length in bytes of input, which must be a multiple of K

  [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [N][size / K].  For all n in range, an encoded block will be written to the memory starting at outputs[n][0].

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_zfec_encode@

__defined at:__ @botan\/ffi.h:2541:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b9f90b9ab701fbf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_zfec_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a875e9556bea1fa1" hs_bindgen_a875e9556bea1fa1 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt))

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

__defined at:__ @botan\/ffi.h:2562:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a875e9556bea1fa1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_supports_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7298e12822fe1672" hs_bindgen_7298e12822fe1672 ::
     IO (Ptr.FunPtr (IO FC.CInt))

{-# NOINLINE botan_tpm2_supports_crypto_backend_ptr #-}

{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2587:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend_ptr :: Ptr.FunPtr (IO FC.CInt)
botan_tpm2_supports_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7298e12822fe1672

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_22d7b87bfef4217a" hs_bindgen_22d7b87bfef4217a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22d7b87bfef4217a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_init_ex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_19a4c9daae3dfaa1" hs_bindgen_19a4c9daae3dfaa1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ex_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2605:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_19a4c9daae3dfaa1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_from_esys_ptr@
-}
foreign import ccall unsafe "hs_bindgen_37b3100e16813a10" hs_bindgen_37b3100e16813a10 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_from_esys_ptr #-}

{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2616:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt)
botan_tpm2_ctx_from_esys_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37b3100e16813a10

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f2c6fc4f6c00a17c" hs_bindgen_f2c6fc4f6c00a17c ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_enable_crypto_backend_ptr #-}

{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2628:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_ctx_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2c6fc4f6c00a17c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_ctx_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_23d0dd50a32da4a0" hs_bindgen_23d0dd50a32da4a0 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_destroy_ptr #-}

{-| Frees all resources of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2635:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_ctx_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23d0dd50a32da4a0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c35eb8f1e24f9e8" hs_bindgen_8c35eb8f1e24f9e8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_enable_crypto_backend_ptr #-}

{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2649:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c35eb8f1e24f9e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_crypto_backend_state_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_46761ffa3ae2ce80" hs_bindgen_46761ffa3ae2ce80 ::
     IO (Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_crypto_backend_state_destroy_ptr #-}

{-| Frees all resources of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2661:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt)
botan_tpm2_crypto_backend_state_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_46761ffa3ae2ce80

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_da8ccfc34a24d707" hs_bindgen_da8ccfc34a24d707 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_rng_init_ptr #-}

{-| Initialize a random number generator object via TPM2

  [__@rng_out@ /(input)/__]: rng object to create

  [__@ctx@ /(input)/__]: TPM2 context

  [__@s1@ /(input)/__]: the first session to use (optional, may be nullptr)

  [__@s2@ /(input)/__]: the second session to use (optional, may be nullptr)

  [__@s3@ /(input)/__]: the third session to use (optional, may be nullptr)

__C declaration:__ @botan_tpm2_rng_init@

__defined at:__ @botan\/ffi.h:2672:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da8ccfc34a24d707

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_unauthenticated_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7bb7a60d84d8fd97" hs_bindgen_7bb7a60d84d8fd97 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_unauthenticated_session_init_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2684:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_unauthenticated_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bb7a60d84d8fd97

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_10_0_get_botan_tpm2_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e961eb2257463e88" hs_bindgen_e961eb2257463e88 ::
     IO (Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_session_destroy_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2691:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e961eb2257463e88
