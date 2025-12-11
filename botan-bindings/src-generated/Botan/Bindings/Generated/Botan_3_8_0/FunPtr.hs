{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_8_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_8_0
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_error_description_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_c3538e2608783433 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_error_last_exception_message_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_86977811ea3796fb (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ffi_api_version_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c6af85c922f4ab4a (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ffi_supports_api_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_43294a42b1dbe191 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_string_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_90027e5af5753a4c (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_major_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1b82b0024c435109 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_minor_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3669fd582309b69f (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_patch_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2c5cca763f2e99ec (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_datestamp_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b8d05eb6a0323a52 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_constant_time_compare_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a7e99b08165f531c (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_same_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5bab31352486c9db (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_scrub_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bca462f454d24f3c (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hex_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f1cc7e53cf55e6a (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hex_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71bad4aea009c7f6 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_base64_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9ce9203109af859 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_base64_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ebd2fe8da065a091 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eef39a66a0dd0018 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_init_custom_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32281e74150df21c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_56940dc9f547eeba (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_system_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a7168f05f06df68 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_reseed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e04df6b343d30db3 (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_reseed_from_rng_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c64e900ce1d6d0d5 (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_add_entropy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1ee5933efa22913e (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cae839c4f3ec134 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0eda0669de33e3fe (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_copy_state_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dc7b12a2a79bac2d (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1041617727cd9a3 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_124e5168013d98a2 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76e7a793dda11a8b (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a57a9a209cd9b99f (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5af3f16c6f76cc70 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16fb1939b1327179 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c4a63e0eb2450f4 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c727dc9b3d19a81 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3380335c839dd78c (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b26fbe223889889 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_set_nonce_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2b73ed8acc92c7e8 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33aafc3fd1116454 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0cd0e592f491b027 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_654a42808cb30538 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f8792cf7aeb25acf (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_608f61b2b6f9efc4 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e5e0c51b0ac6de2 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3e231ddac1ba6e25 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de8c5d56b87650c3 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4bc295d04e7c0338 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_valid_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8d5f67cea2f77858 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_tag_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_297ec1c76f9f5d85 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_is_authenticated_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87d0a0d072b22130 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_requires_entire_message_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7619fd5ee227756 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_default_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eaddf8df7ace7da6 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_789b62c76fcb02b9 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_ideal_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dcbd4f17a348885e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_query_keylen_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a54ef540553666d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_319383beed2fb670 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3c830a979918040 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_reset_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_087bb5432245d25b (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_set_associated_data_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_af40b3dcdcd19219 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_start_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6b78c74a460f06f5 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_494bfa66ae46f9a2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e7aa8515e1859de (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32c9a8f708d127f0 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pbkdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be7b0229c963b4be (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pbkdf_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cbbcb904940a94ed (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pwdhash_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a77ea543419fd09 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pwdhash_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f74c6d85b24b1d45 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_scrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d986ad7d6bdc480 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_kdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b62ac5abf9d8dbb6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8d80e4115a57cf29 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_350f55fa3dd81d4e (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_80ac657251c108e9 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f9a17f1732e5472 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_972b1e0673c424c3 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_encrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf09bc7aba2087ed (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_decrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_609f66172376eee6 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8ed616861d9e4248 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_593e263b74db87bc (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bd36bb0b3ed2fc5 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef7b550292fed5d6 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7b0ba3fd5a99da6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_524f8aafae8ee196 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ada5acf95dd4ddab (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_int_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33c2746faf1bd124 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_mp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39529ac84d0898cb (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e91af5824235cfe1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_radix_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bdb220b8fec6d974 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_num_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_614961f89c07411e (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_num_bytes_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3988c761d9217d57 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bcbe1efa8480b8fd (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_from_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74434d28725ae444 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_uint32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e960e566c6e2117 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_positive_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4a1e617c4211013 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_negative_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_56ca4d8256854900 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_flip_sign_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4589ddc4aae280fb (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_zero_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c51fbf97e05bb130 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_odd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e6b06d0ab0d0ffe (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_even_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28a6cb388b7ada0b (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_add_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_391574f3a44a65d7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_sub_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0de71276783787a7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_add_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6087aecf5e570583 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_sub_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_688b55a627f255a6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d7c34f1ed0f6840 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_div_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cccfd81f7c597e1d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mod_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1fb2deab0a0d527a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa0fc3cb41e7d694 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d143a51c4bb4d51 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_swap_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c577d1a868ce3fe7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_powmod_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f745357ab0d93cd8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_lshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3b8269265cb6492a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c73acddf4c1ddad (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mod_inverse_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a00e4eca0cdbc8a2 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rand_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff75540290ec39d4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rand_range_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_493b149af99bd8b8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_gcd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32af273e6f61b352 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_prime_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40a74a50e4490cfa (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_get_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d125f8ff78b4964b (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_190971ed6819db08 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_clear_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59ce5d0c9fcf9947 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_bcrypt_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5950244eb1029c4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_bcrypt_is_valid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18e5d27451ba5b4b (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b888698bbda6c2dc (void)) ("
  , "  botan_asn1_oid_t arg1"
  , ")"
  , "{"
  , "  return &botan_oid_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_from_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f9cebeb4df44533 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_from_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_register_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b2d9b0aa122372c (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_oid_register;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_view_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ca9a194a05437d7 (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_view_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2d5f54c4511f934f (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_oid_view_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a666a454560a3ca (void)) ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_oid_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c40ff5c6210e085 (void)) ("
  , "  signed int *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_asn1_oid_t arg3"
  , ")"
  , "{"
  , "  return &botan_oid_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6b67c67889f5dbed (void)) ("
  , "  botan_ec_group_t arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_supports_application_specific_group_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3094c22a9b74a8d3 (void)) ("
  , "  signed int *arg1"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_application_specific_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_supports_named_group_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9d7d20f8fd356048 (void)) ("
  , "  char const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_supports_named_group;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_params_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_004aef496c0742bc (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_ber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90bc92dfd59e4b41 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_ber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5aff01b128dfa45 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_726753a3721bef24 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6221c922caceac60 (void)) ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_from_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b355ae2dbbbb91b (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cf5c908b5d979144 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_ec_group_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_curve_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_613ca8ca729ed37a (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_curve_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0f69bc45bc08512a (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_a_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_615de33c7d74d8f8 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_a;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_b_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_20896fd7a6ca1d25 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_b;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_g_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ab64cc95a58809d (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_g_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f5c0e1a03a51fd21 (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_g_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_order_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6a7a021abd6efab (void)) ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_get_order;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dd1c154c14280b56 (void)) ("
  , "  botan_ec_group_t arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return &botan_ec_group_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_592baa2ae4e4c430 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_044d6ea4960544d7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  botan_ec_group_t arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_ec_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9084ca5ad5a15e9d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5bd63e946f1bcd9b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9d711ee89b391083 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a67214ce1439d8cc (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5ab0356df49b6bf7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_001a6b23837062ba (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ced0c813d9a7b51b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbab1d1a3ee613d1 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d5747389373d555f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_52cd47e5f1a9698b (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a39f6a45e222c8c (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c73c43ed7e38535 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e45f7c2ed9ae77c3 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e15124fab5589c95 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c2ab1a8bf23927db (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4ef89d8d95ccbfb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f0318c3b9e8b7103 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1ceea72b8591bfcb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_636a109c66a21132 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_der_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_466954e9c1f6bf59 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d20360d0279f261f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_pem_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d0f7222fc12a3dc0 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_305cba3cfb158c12 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_68df5b2f94108483 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c05abaef67d7fdbb (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe3c5218a70ea07f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c556ade94de72292 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cfb89d397e4e1d8 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a7d3ed39a35939e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0298c012ac299ba (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_estimated_strength_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b1a4d1f03c40b036 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e9131ebeec84f79 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7e9f73954650e82 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4972844938be0e20 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c5c52acc1809637 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_67006c964c365d49 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_oid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf8a2e53eb44af52 (void)) ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_oid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_stateful_operation_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3b081646016173ee (void)) ("
  , "  botan_privkey_t arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_stateful_operation;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_remaining_operations_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ad2b70d824a52c7 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_remaining_operations;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fc47b21bd7fef68c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_rsa_pkcs1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e171d89026917d88 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_442a6e039cd2b7f5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6204da65edff61e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_d_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3422243e93d112fc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b494609919e67bc5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1df85816b1911ce4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e93693e30f20602 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8f5b29ca2a15baa (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75ebea11c16a3f1f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a67c8d5cf33ca5e6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b03bf6644dccef2e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_73466c704973949d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_dsa_get_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_461efd8d34db43bf (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b3699457320b5fa9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bba8172c08303455 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_g_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b492d230ab06a48b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4c0a65de941a560 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74843e383b0a0a68 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d562426b572852df (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_237b9fafe1125d12 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5be7b7c41ad6059 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e93a868a3fe36150 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_502fcd87bfd2d864 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_ed25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c11a7dcb0cdc371a (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ed25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa49dd425ee9420e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b26dc151795a370f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b444af97252731be (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_ed448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49ca0d085c4de5e8 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ed448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dbd171b9fa3aca6e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_553e5d8d6736487f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51e0ca879355f839 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_x25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_236efe4af324dad4 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_x25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6b7f76dd0630e9e1 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1edc891135f9cfe3 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_177193a390ee9f81 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_x448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2fbec083afceb417 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_x448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6e60fb7d5a42bae7 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba94a1bed5194b27 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_65440a1f2dd4bd99 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_afde33d281ea9fc0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54d745aeda39ddae (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55caa0e8621f1eb0 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a3d27c2806f14c7 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_669e8409d6be9e8f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f30ad3f4c4eb0f44 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a940bf241fd60d46 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0cb5fb56471cb36e (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bc5d9b4d53b4470 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6e84877fcb5bdb40 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc6fc4b8e4bb3b1b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_75f4687e31415c5d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff4ccc535d257e30 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d3221843a9e8d8e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89ad87ecbd10b294 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ce260a44a0da7541 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_63a040c045d7482c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c0177e65f46956f5 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9473c3e2704cda0d (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e9b4303d2ce70e6a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6792cc35ca767f63 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_sm2_compute_za_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2928afd7dabace08 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_ec_public_point_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d251fcd1f603806e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c50d675867fcec4d (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47dd9178ff022e85 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_83f9e733369ab811 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0739c916d0864cc3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d162fb27207c843a (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_41a2fd66303bf2b5 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c95c135e8918c56 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76030540d28f66d9 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49059fb45fab82c7 (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9a7f814e8fd18c6 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31876ed79f7c9adc (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89a92978bf61df60 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_341eba9a34e4e1d3 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_53be2b9a623a9c47 (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84e682dd8d9f3441 (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c6c302d37dec4622 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9edec6028e5b4d8 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b341d0c811d7b3b (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4f30e85546505a17 (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_export_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_011921fbb0b7086d (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_view_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_663a125d0946f3e5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c6661c47ea648c1 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8391c67dc779edb8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4bbe9c76ed64d5de (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_490d58dfc04fe905 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f0fe2af3d1661cf (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4e58881771a2380 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_182a7444acd59c90 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9356ab4581530f87 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e4664d0f33f3d3ef (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f377baf3a2a8cfb4 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_62d641369ab437eb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pkcs_hash_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d8bfbf7068ebb570 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mceies_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eb8980e90ea7abd3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mceies_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_412f2325ab251871 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a1c8f95ae117f0d (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f04406d1d12c36e2 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b30b67f5a7f67d2e (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_dup_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f07258903bbea5a (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_time_starts_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d7720999199cf5e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_time_expires_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_62dca4cb831b55a1 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_not_before_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c848218120a74c0 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_not_after_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2f7f3f19080b8a1 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5399c7ce287d5cf7 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_serial_number_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_db4d6c5c85603622 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_authority_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef0e3827cc03a07c (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_subject_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fed74df3c096c3a (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e43ec1a9d1c453cc (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_view_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b0d70b5d4218840 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_public_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de592b1637193087 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_issuer_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5b2d9ff4264e399 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_subject_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23702d9e288a4135 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_to_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_096b2b7b979b9b54 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_view_as_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b79166a10f13cd1f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_allowed_usage_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1ac066d72f36328 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_hostname_match_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e31a8e8503d79af (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_verify_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89d43426412b4711 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_validation_status_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_a445278c8b4c8e48 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d0f541dd5573f02e (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a615b54bfcea8d9b (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c9c4717fee7028d8 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_is_revoked_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f094219655bceebe (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_verify_with_crl_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0bc479ba6d2f6e02 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_key_wrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70db5b0e21a1dc11 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_key_unwrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_257cf09792931a9c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_nist_kw_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c73ab45f6d23eda4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_nist_kw_dec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fd1579efa2115462 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bda9f42ccc247b62 (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_901c3910c56237c7 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f69254a72c1c3d4 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28e91ca62963b9cf (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d62e84f270143c85 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_91a5aefe54d5dd39 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_848877fea3868549 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b2105ca5f6d5d2e1 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_fe1_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ae8de9fc664d1171 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d01c9e0e9b49424c (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d8b564195d3fb98 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a795da8e394b9e8 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c4439de14d842a80 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d968b480fa501ae1 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_step1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bdad17a590b6298e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_step2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de09fdf3e2e73c2e (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_generate_verifier_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4e3b80f04d56c275 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_client_agree_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a688c17d0ade53e7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_group_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_57715380d8ca696c (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_zfec_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2840a9a5c0ce35f2 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_zfec_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03395c24fb99a854 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_supports_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0aff1a7e9b3e55fb (void)) (void)"
  , "{"
  , "  return &botan_tpm2_supports_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c432d846d558cde (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_init_ex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64c66a110a15f0b9 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init_ex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_from_esys_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_298452d870f46982 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_from_esys;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b31f8274c1fb9b78 (void)) ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8510ceb9cb5653fa (void)) ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89a451a5f8a8fdc1 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_crypto_backend_state_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da8fdc2dd5e75a23 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_crypto_backend_state_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1395dc8c249021a8 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return &botan_tpm2_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_unauthenticated_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3308377605e3f1d9 (void)) ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_unauthenticated_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_57448582397c6b57 (void)) ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_session_destroy;"
  , "}"
  ]))

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_error_description_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c3538e2608783433" hs_bindgen_c3538e2608783433 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description_ptr #-}

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:174:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c3538e2608783433

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_error_last_exception_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_86977811ea3796fb" hs_bindgen_86977811ea3796fb ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message_ptr #-}

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:183:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86977811ea3796fb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ffi_api_version_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c6af85c922f4ab4a" hs_bindgen_c6af85c922f4ab4a ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version_ptr #-}

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:190:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6af85c922f4ab4a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ffi_supports_api_ptr@
-}
foreign import ccall unsafe "hs_bindgen_43294a42b1dbe191" hs_bindgen_43294a42b1dbe191 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api_ptr #-}

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:196:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_43294a42b1dbe191

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_90027e5af5753a4c" hs_bindgen_90027e5af5753a4c ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string_ptr #-}

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:201:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90027e5af5753a4c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_major_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b82b0024c435109" hs_bindgen_1b82b0024c435109 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major_ptr #-}

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:206:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b82b0024c435109

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_minor_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3669fd582309b69f" hs_bindgen_3669fd582309b69f ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor_ptr #-}

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:211:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3669fd582309b69f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_patch_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2c5cca763f2e99ec" hs_bindgen_2c5cca763f2e99ec ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch_ptr #-}

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:216:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c5cca763f2e99ec

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_version_datestamp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8d05eb6a0323a52" hs_bindgen_b8d05eb6a0323a52 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp_ptr #-}

{-| Return the date this version was released as an integer.

  Returns 0 if the library was not built from an official release

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:223:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8d05eb6a0323a52

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_constant_time_compare_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a7e99b08165f531c" hs_bindgen_a7e99b08165f531c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare_ptr #-}

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:228:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a7e99b08165f531c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_same_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5bab31352486c9db" hs_bindgen_5bab31352486c9db ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem_ptr #-}

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:234:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5bab31352486c9db

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_scrub_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bca462f454d24f3c" hs_bindgen_bca462f454d24f3c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem_ptr #-}

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:240:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bca462f454d24f3c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hex_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7f1cc7e53cf55e6a" hs_bindgen_7f1cc7e53cf55e6a ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode_ptr #-}

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
botan_hex_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f1cc7e53cf55e6a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hex_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_71bad4aea009c7f6" hs_bindgen_71bad4aea009c7f6 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode_ptr #-}

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
botan_hex_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_71bad4aea009c7f6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_base64_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f9ce9203109af859" hs_bindgen_f9ce9203109af859 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode_ptr #-}

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
botan_base64_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9ce9203109af859

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_base64_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ebd2fe8da065a091" hs_bindgen_ebd2fe8da065a091 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode_ptr #-}

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:282:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ebd2fe8da065a091

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eef39a66a0dd0018" hs_bindgen_eef39a66a0dd0018 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_ptr #-}

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:301:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eef39a66a0dd0018

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_init_custom_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32281e74150df21c" hs_bindgen_32281e74150df21c ::
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

__defined at:__ @botan\/ffi.h:313:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32281e74150df21c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_56940dc9f547eeba" hs_bindgen_56940dc9f547eeba ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get_ptr #-}

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:328:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_56940dc9f547eeba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_system_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4a7168f05f06df68" hs_bindgen_4a7168f05f06df68 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get_ptr #-}

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:337:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a7168f05f06df68

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_reseed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e04df6b343d30db3" hs_bindgen_e04df6b343d30db3 ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_ptr #-}

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:347:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_ptr :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e04df6b343d30db3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_reseed_from_rng_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c64e900ce1d6d0d5" hs_bindgen_c64e900ce1d6d0d5 ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng_ptr #-}

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng_ptr :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c64e900ce1d6d0d5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_add_entropy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1ee5933efa22913e" hs_bindgen_1ee5933efa22913e ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy_ptr #-}

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:367:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy_ptr :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1ee5933efa22913e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_rng_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7cae839c4f3ec134" hs_bindgen_7cae839c4f3ec134 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy_ptr #-}

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:374:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy_ptr :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cae839c4f3ec134

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0eda0669de33e3fe" hs_bindgen_0eda0669de33e3fe ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init_ptr #-}

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:388:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0eda0669de33e3fe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_copy_state_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dc7b12a2a79bac2d" hs_bindgen_dc7b12a2a79bac2d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state_ptr #-}

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:396:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dc7b12a2a79bac2d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d1041617727cd9a3" hs_bindgen_d1041617727cd9a3 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length_ptr #-}

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:404:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1041617727cd9a3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_124e5168013d98a2" hs_bindgen_124e5168013d98a2 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size_ptr #-}

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:412:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_124e5168013d98a2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_76e7a793dda11a8b" hs_bindgen_76e7a793dda11a8b ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update_ptr #-}

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:421:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76e7a793dda11a8b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a57a9a209cd9b99f" hs_bindgen_a57a9a209cd9b99f ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final_ptr #-}

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:431:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a57a9a209cd9b99f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5af3f16c6f76cc70" hs_bindgen_5af3f16c6f76cc70 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear_ptr #-}

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:439:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5af3f16c6f76cc70

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_16fb1939b1327179" hs_bindgen_16fb1939b1327179 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy_ptr #-}

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:446:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16fb1939b1327179

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hash_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5c4a63e0eb2450f4" hs_bindgen_5c4a63e0eb2450f4 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name_ptr #-}

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:454:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c4a63e0eb2450f4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3c727dc9b3d19a81" hs_bindgen_3c727dc9b3d19a81 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init_ptr #-}

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c727dc9b3d19a81

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3380335c839dd78c" hs_bindgen_3380335c839dd78c ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length_ptr #-}

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:477:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3380335c839dd78c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7b26fbe223889889" hs_bindgen_7b26fbe223889889 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key_ptr #-}

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:486:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b26fbe223889889

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_set_nonce_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2b73ed8acc92c7e8" hs_bindgen_2b73ed8acc92c7e8 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce_ptr #-}

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:495:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2b73ed8acc92c7e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_33aafc3fd1116454" hs_bindgen_33aafc3fd1116454 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update_ptr #-}

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:504:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33aafc3fd1116454

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0cd0e592f491b027" hs_bindgen_0cd0e592f491b027 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final_ptr #-}

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:514:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0cd0e592f491b027

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_654a42808cb30538" hs_bindgen_654a42808cb30538 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear_ptr #-}

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:522:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_654a42808cb30538

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f8792cf7aeb25acf" hs_bindgen_f8792cf7aeb25acf ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name_ptr #-}

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:530:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f8792cf7aeb25acf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_608f61b2b6f9efc4" hs_bindgen_608f61b2b6f9efc4 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec_ptr #-}

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:540:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_608f61b2b6f9efc4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mac_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2e5e0c51b0ac6de2" hs_bindgen_2e5e0c51b0ac6de2 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy_ptr #-}

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e5e0c51b0ac6de2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3e231ddac1ba6e25" hs_bindgen_3e231ddac1ba6e25 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init_ptr #-}

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:564:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3e231ddac1ba6e25

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_de8c5d56b87650c3" hs_bindgen_de8c5d56b87650c3 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name_ptr #-}

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:569:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de8c5d56b87650c3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4bc295d04e7c0338" hs_bindgen_4bc295d04e7c0338 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length_ptr #-}

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:574:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4bc295d04e7c0338

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_valid_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8d5f67cea2f77858" hs_bindgen_8d5f67cea2f77858 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length_ptr #-}

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:579:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d5f67cea2f77858

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_tag_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_297ec1c76f9f5d85" hs_bindgen_297ec1c76f9f5d85 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length_ptr #-}

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_297ec1c76f9f5d85

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_is_authenticated_ptr@
-}
foreign import ccall unsafe "hs_bindgen_87d0a0d072b22130" hs_bindgen_87d0a0d072b22130 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated_ptr #-}

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:589:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87d0a0d072b22130

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_requires_entire_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c7619fd5ee227756" hs_bindgen_c7619fd5ee227756 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message_ptr #-}

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7619fd5ee227756

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_default_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eaddf8df7ace7da6" hs_bindgen_eaddf8df7ace7da6 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length_ptr #-}

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:601:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eaddf8df7ace7da6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_789b62c76fcb02b9" hs_bindgen_789b62c76fcb02b9 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity_ptr #-}

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:607:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_789b62c76fcb02b9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_ideal_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dcbd4f17a348885e" hs_bindgen_dcbd4f17a348885e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity_ptr #-}

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dcbd4f17a348885e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_query_keylen_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5a54ef540553666d" hs_bindgen_5a54ef540553666d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen_ptr #-}

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:619:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a54ef540553666d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_319383beed2fb670" hs_bindgen_319383beed2fb670 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec_ptr #-}

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:625:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_319383beed2fb670

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a3c830a979918040" hs_bindgen_a3c830a979918040 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key_ptr #-}

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:630:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3c830a979918040

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_reset_ptr@
-}
foreign import ccall unsafe "hs_bindgen_087bb5432245d25b" hs_bindgen_087bb5432245d25b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset_ptr #-}

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:640:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_087bb5432245d25b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_set_associated_data_ptr@
-}
foreign import ccall unsafe "hs_bindgen_af40b3dcdcd19219" hs_bindgen_af40b3dcdcd19219 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data_ptr #-}

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:645:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_af40b3dcdcd19219

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_start_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6b78c74a460f06f5" hs_bindgen_6b78c74a460f06f5 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start_ptr #-}

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:650:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6b78c74a460f06f5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_494bfa66ae46f9a2" hs_bindgen_494bfa66ae46f9a2 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update_ptr #-}

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
botan_cipher_update_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_494bfa66ae46f9a2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7e7aa8515e1859de" hs_bindgen_7e7aa8515e1859de ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear_ptr #-}

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:689:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e7aa8515e1859de

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32c9a8f708d127f0" hs_bindgen_32c9a8f708d127f0 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy_ptr #-}

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:695:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32c9a8f708d127f0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pbkdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_be7b0229c963b4be" hs_bindgen_be7b0229c963b4be ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_ptr #-}

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:714:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_be7b0229c963b4be

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pbkdf_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cbbcb904940a94ed" hs_bindgen_cbbcb904940a94ed ::
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

__defined at:__ @botan\/ffi.h:747:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cbbcb904940a94ed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pwdhash_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3a77ea543419fd09" hs_bindgen_3a77ea543419fd09 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_ptr #-}

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a77ea543419fd09

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pwdhash_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f74c6d85b24b1d45" hs_bindgen_f74c6d85b24b1d45 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed_ptr #-}

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:798:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f74c6d85b24b1d45

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_scrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3d986ad7d6bdc480" hs_bindgen_3d986ad7d6bdc480 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt_ptr #-}

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:817:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d986ad7d6bdc480

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_kdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b62ac5abf9d8dbb6" hs_bindgen_b62ac5abf9d8dbb6 ::
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

__defined at:__ @botan\/ffi.h:840:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b62ac5abf9d8dbb6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8d80e4115a57cf29" hs_bindgen_8d80e4115a57cf29 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init_ptr #-}

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:858:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d80e4115a57cf29

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_350f55fa3dd81d4e" hs_bindgen_350f55fa3dd81d4e ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy_ptr #-}

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_350f55fa3dd81d4e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_80ac657251c108e9" hs_bindgen_80ac657251c108e9 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear_ptr #-}

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:870:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_80ac657251c108e9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6f9a17f1732e5472" hs_bindgen_6f9a17f1732e5472 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key_ptr #-}

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:875:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f9a17f1732e5472

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_972b1e0673c424c3" hs_bindgen_972b1e0673c424c3 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size_ptr #-}

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:881:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_972b1e0673c424c3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_encrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bf09bc7aba2087ed" hs_bindgen_bf09bc7aba2087ed ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks_ptr #-}

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:887:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf09bc7aba2087ed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_decrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_609f66172376eee6" hs_bindgen_609f66172376eee6 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks_ptr #-}

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:893:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_609f66172376eee6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8ed616861d9e4248" hs_bindgen_8ed616861d9e4248 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name_ptr #-}

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:901:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8ed616861d9e4248

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_block_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_593e263b74db87bc" hs_bindgen_593e263b74db87bc ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec_ptr #-}

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:911:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_593e263b74db87bc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1bd36bb0b3ed2fc5" hs_bindgen_1bd36bb0b3ed2fc5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init_ptr #-}

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:924:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bd36bb0b3ed2fc5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ef7b550292fed5d6" hs_bindgen_ef7b550292fed5d6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy_ptr #-}

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:930:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef7b550292fed5d6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_hex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e7b0ba3fd5a99da6" hs_bindgen_e7b0ba3fd5a99da6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex_ptr #-}

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:935:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e7b0ba3fd5a99da6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_524f8aafae8ee196" hs_bindgen_524f8aafae8ee196 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str_ptr #-}

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:940:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_524f8aafae8ee196

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ada5acf95dd4ddab" hs_bindgen_ada5acf95dd4ddab ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_ptr #-}

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:945:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ada5acf95dd4ddab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_int_ptr@
-}
foreign import ccall unsafe "hs_bindgen_33c2746faf1bd124" hs_bindgen_33c2746faf1bd124 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int_ptr #-}

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:950:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int_ptr :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33c2746faf1bd124

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_mp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_39529ac84d0898cb" hs_bindgen_39529ac84d0898cb ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp_ptr #-}

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:955:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39529ac84d0898cb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e91af5824235cfe1" hs_bindgen_e91af5824235cfe1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str_ptr #-}

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:960:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e91af5824235cfe1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_from_radix_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bdb220b8fec6d974" hs_bindgen_bdb220b8fec6d974 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str_ptr #-}

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:966:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bdb220b8fec6d974

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_num_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_614961f89c07411e" hs_bindgen_614961f89c07411e ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits_ptr #-}

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:971:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_614961f89c07411e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_num_bytes_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3988c761d9217d57" hs_bindgen_3988c761d9217d57 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes_ptr #-}

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:976:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3988c761d9217d57

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bcbe1efa8480b8fd" hs_bindgen_bcbe1efa8480b8fd ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin_ptr #-}

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:981:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bcbe1efa8480b8fd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_from_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_74434d28725ae444" hs_bindgen_74434d28725ae444 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin_ptr #-}

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:986:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74434d28725ae444

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_to_uint32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9e960e566c6e2117" hs_bindgen_9e960e566c6e2117 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32_ptr #-}

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:991:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e960e566c6e2117

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_positive_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e4a1e617c4211013" hs_bindgen_e4a1e617c4211013 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive_ptr #-}

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:998:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4a1e617c4211013

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_negative_ptr@
-}
foreign import ccall unsafe "hs_bindgen_56ca4d8256854900" hs_bindgen_56ca4d8256854900 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative_ptr #-}

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:1003:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_56ca4d8256854900

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_flip_sign_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4589ddc4aae280fb" hs_bindgen_4589ddc4aae280fb ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign_ptr #-}

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:1005:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4589ddc4aae280fb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_zero_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c51fbf97e05bb130" hs_bindgen_c51fbf97e05bb130 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero_ptr #-}

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:1007:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c51fbf97e05bb130

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_odd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9e6b06d0ab0d0ffe" hs_bindgen_9e6b06d0ab0d0ffe ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd_ptr #-}

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:1009:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e6b06d0ab0d0ffe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_even_ptr@
-}
foreign import ccall unsafe "hs_bindgen_28a6cb388b7ada0b" hs_bindgen_28a6cb388b7ada0b ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even_ptr #-}

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:1010:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28a6cb388b7ada0b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_add_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_391574f3a44a65d7" hs_bindgen_391574f3a44a65d7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32_ptr #-}

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:1012:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_391574f3a44a65d7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_sub_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0de71276783787a7" hs_bindgen_0de71276783787a7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32_ptr #-}

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:1013:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0de71276783787a7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_add_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6087aecf5e570583" hs_bindgen_6087aecf5e570583 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add_ptr #-}

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:1015:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6087aecf5e570583

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_sub_ptr@
-}
foreign import ccall unsafe "hs_bindgen_688b55a627f255a6" hs_bindgen_688b55a627f255a6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_ptr #-}

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:1016:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_688b55a627f255a6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1d7c34f1ed0f6840" hs_bindgen_1d7c34f1ed0f6840 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1017:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d7c34f1ed0f6840

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_div_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cccfd81f7c597e1d" hs_bindgen_cccfd81f7c597e1d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div_ptr #-}

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1020:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cccfd81f7c597e1d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mod_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1fb2deab0a0d527a" hs_bindgen_1fb2deab0a0d527a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1023:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1fb2deab0a0d527a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fa0fc3cb41e7d694" hs_bindgen_fa0fc3cb41e7d694 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal_ptr #-}

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1030:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa0fc3cb41e7d694

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_cmp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3d143a51c4bb4d51" hs_bindgen_3d143a51c4bb4d51 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp_ptr #-}

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1037:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d143a51c4bb4d51

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_swap_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c577d1a868ce3fe7" hs_bindgen_c577d1a868ce3fe7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap_ptr #-}

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1042:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c577d1a868ce3fe7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_powmod_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f745357ab0d93cd8" hs_bindgen_f745357ab0d93cd8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod_ptr #-}

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1046:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f745357ab0d93cd8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_lshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3b8269265cb6492a" hs_bindgen_3b8269265cb6492a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift_ptr #-}

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1048:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3b8269265cb6492a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c73acddf4c1ddad" hs_bindgen_8c73acddf4c1ddad ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift_ptr #-}

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1049:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c73acddf4c1ddad

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_mod_inverse_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a00e4eca0cdbc8a2" hs_bindgen_a00e4eca0cdbc8a2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse_ptr #-}

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1051:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a00e4eca0cdbc8a2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rand_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ff75540290ec39d4" hs_bindgen_ff75540290ec39d4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits_ptr #-}

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1053:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ff75540290ec39d4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_rand_range_ptr@
-}
foreign import ccall unsafe "hs_bindgen_493b149af99bd8b8" hs_bindgen_493b149af99bd8b8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range_ptr #-}

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1056:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_493b149af99bd8b8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_gcd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32af273e6f61b352" hs_bindgen_32af273e6f61b352 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd_ptr #-}

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32af273e6f61b352

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_is_prime_ptr@
-}
foreign import ccall unsafe "hs_bindgen_40a74a50e4490cfa" hs_bindgen_40a74a50e4490cfa ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime_ptr #-}

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1065:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_40a74a50e4490cfa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_get_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d125f8ff78b4964b" hs_bindgen_d125f8ff78b4964b ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit_ptr #-}

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1072:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d125f8ff78b4964b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_set_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_190971ed6819db08" hs_bindgen_190971ed6819db08 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit_ptr #-}

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1077:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_190971ed6819db08

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mp_clear_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_59ce5d0c9fcf9947" hs_bindgen_59ce5d0c9fcf9947 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit_ptr #-}

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1082:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59ce5d0c9fcf9947

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_bcrypt_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e5950244eb1029c4" hs_bindgen_e5950244eb1029c4 ::
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

__C declaration:__ @botan_bcrypt_generate@

__defined at:__ @botan\/ffi.h:1100:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e5950244eb1029c4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_bcrypt_is_valid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_18e5d27451ba5b4b" hs_bindgen_18e5d27451ba5b4b ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid_ptr #-}

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1111:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18e5d27451ba5b4b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b888698bbda6c2dc" hs_bindgen_b888698bbda6c2dc ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_destroy_ptr #-}

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_destroy@

__defined at:__ @botan\/ffi.h:1122:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_destroy_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b888698bbda6c2dc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_from_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2f9cebeb4df44533" hs_bindgen_2f9cebeb4df44533 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_from_string_ptr #-}

{-| Create an OID from a string, either dot notation (e.g. '1.2.3.4') or a registered name (e.g. 'RSA')

  [__@oid@ /(input)/__]: hanlder to the resulting OID

  [__@oid_str@ /(input)/__]: the name of the OID to create

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_from_string@

__defined at:__ @botan\/ffi.h:1130:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_from_string_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_from_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f9cebeb4df44533

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_register_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b2d9b0aa122372c" hs_bindgen_1b2d9b0aa122372c ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_oid_register_ptr #-}

{-| Registers an OID so that it may later be retrieved by name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_register@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_register_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_oid_register_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b2d9b0aa122372c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_view_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7ca9a194a05437d7" hs_bindgen_7ca9a194a05437d7 ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_string_ptr #-}

{-| View an OID in dot notation

__C declaration:__ @botan_oid_view_string@

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_string_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ca9a194a05437d7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_view_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2d5f54c4511f934f" hs_bindgen_2d5f54c4511f934f ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_oid_view_name_ptr #-}

{-| View an OIDs registered name if it exists, else its dot notation

__C declaration:__ @botan_oid_view_name@

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_name_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_oid_view_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2d5f54c4511f934f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8a666a454560a3ca" hs_bindgen_8a666a454560a3ca ::
     IO (Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_equal_ptr #-}

{-|

  __returns:__ 0 if a != b

  __returns:__ 1 if a == b

  __returns:__ negative number on error

__C declaration:__ @botan_oid_equal@

__defined at:__ @botan\/ffi.h:1153:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_equal_ptr :: Ptr.FunPtr (Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a666a454560a3ca

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_oid_cmp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9c40ff5c6210e085" hs_bindgen_9c40ff5c6210e085 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_oid_cmp_ptr #-}

{-| Sets

  [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

  __returns:__ negative number on error or zero on success

__C declaration:__ @botan_oid_cmp@

__defined at:__ @botan\/ffi.h:1160:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_asn1_oid_t -> Botan_asn1_oid_t -> IO FC.CInt)
botan_oid_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c40ff5c6210e085

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6b67c67889f5dbed" hs_bindgen_6b67c67889f5dbed ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_destroy_ptr #-}

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_destroy@

__defined at:__ @botan\/ffi.h:1171:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_destroy_ptr :: Ptr.FunPtr (Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6b67c67889f5dbed

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_supports_application_specific_group_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3094c22a9b74a8d3" hs_bindgen_3094c22a9b74a8d3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_application_specific_group_ptr #-}

{-| Checks if in this build configuration it is possible to register an application specific elliptic curve and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_ec_group_supports_application_specific_group@

__defined at:__ @botan\/ffi.h:1178:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_application_specific_group_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_application_specific_group_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3094c22a9b74a8d3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_supports_named_group_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9d7d20f8fd356048" hs_bindgen_9d7d20f8fd356048 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_supports_named_group_ptr #-}

{-| Checks if in this build configuration botan_ec_group_from_name(group_ptr, name) will succeed and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_supports_named_group@

__defined at:__ @botan\/ffi.h:1185:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_named_group_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_ec_group_supports_named_group_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9d7d20f8fd356048

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_params_ptr@
-}
foreign import ccall unsafe "hs_bindgen_004aef496c0742bc" hs_bindgen_004aef496c0742bc ::
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

__defined at:__ @botan\/ffi.h:1201:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_params_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_ec_group_from_params_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_004aef496c0742bc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_ber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_90bc92dfd59e4b41" hs_bindgen_90bc92dfd59e4b41 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_ber_ptr #-}

{-| Decode a BER encoded ECC domain parameter set

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@ber@ /(input)/__]: encoding

  [__@ber_len@ /(input)/__]: size of the encoding in bytes

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_ber@

__defined at:__ @botan\/ffi.h:1217:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_ber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_ec_group_from_ber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90bc92dfd59e4b41

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b5aff01b128dfa45" hs_bindgen_b5aff01b128dfa45 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_pem_ptr #-}

{-| Initialize an EC Group from the PEM/ASN.1 encoding

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@pem@ /(input)/__]: encoding

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_pem@

__defined at:__ @botan\/ffi.h:1225:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_pem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5aff01b128dfa45

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_726753a3721bef24" hs_bindgen_726753a3721bef24 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_oid_ptr #-}

{-| Initialize an EC Group from a group named by an object identifier

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@oid@ /(input)/__]: a known OID

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_oid@

__defined at:__ @botan\/ffi.h:1233:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> Botan_asn1_oid_t -> IO FC.CInt)
botan_ec_group_from_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_726753a3721bef24

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_from_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6221c922caceac60" hs_bindgen_6221c922caceac60 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_ec_group_from_name_ptr #-}

{-| Initialize an EC Group from a common group name (eg "secp256r1")

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@name@ /(input)/__]: a known group name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_name@

__defined at:__ @botan\/ffi.h:1241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_name_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_ec_group_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_ec_group_from_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6221c922caceac60

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1b355ae2dbbbb91b" hs_bindgen_1b355ae2dbbbb91b ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_der_ptr #-}

{-| View an EC Group in DER encoding

__C declaration:__ @botan_ec_group_view_der@

__defined at:__ @botan\/ffi.h:1247:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_der_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_ec_group_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b355ae2dbbbb91b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cf5c908b5d979144" hs_bindgen_cf5c908b5d979144 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_ec_group_view_pem_ptr #-}

{-| View an EC Group in PEM encoding

__C declaration:__ @botan_ec_group_view_pem@

__defined at:__ @botan\/ffi.h:1253:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_pem_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_ec_group_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cf5c908b5d979144

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_curve_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_613ca8ca729ed37a" hs_bindgen_613ca8ca729ed37a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_curve_oid_ptr #-}

{-| Get the curve OID of an EC Group

__C declaration:__ @botan_ec_group_get_curve_oid@

__defined at:__ @botan\/ffi.h:1258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_curve_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_curve_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_613ca8ca729ed37a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0f69bc45bc08512a" hs_bindgen_0f69bc45bc08512a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_p_ptr #-}

{-| Get the prime modulus of the field

__C declaration:__ @botan_ec_group_get_p@

__defined at:__ @botan\/ffi.h:1263:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_p_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0f69bc45bc08512a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_a_ptr@
-}
foreign import ccall unsafe "hs_bindgen_615de33c7d74d8f8" hs_bindgen_615de33c7d74d8f8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_a_ptr #-}

{-| Get the a parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_a@

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_a_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_a_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_615de33c7d74d8f8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_b_ptr@
-}
foreign import ccall unsafe "hs_bindgen_20896fd7a6ca1d25" hs_bindgen_20896fd7a6ca1d25 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_b_ptr #-}

{-| Get the b parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_b@

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_b_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_b_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_20896fd7a6ca1d25

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_g_x_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2ab64cc95a58809d" hs_bindgen_2ab64cc95a58809d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_x_ptr #-}

{-| Get the x coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_x@

__defined at:__ @botan\/ffi.h:1278:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_x_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ab64cc95a58809d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_g_y_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f5c0e1a03a51fd21" hs_bindgen_f5c0e1a03a51fd21 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_g_y_ptr #-}

{-| Get the y coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_y@

__defined at:__ @botan\/ffi.h:1283:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_y_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_g_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f5c0e1a03a51fd21

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_get_order_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a6a7a021abd6efab" hs_bindgen_a6a7a021abd6efab ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_get_order_ptr #-}

{-| Get the order of the base point

__C declaration:__ @botan_ec_group_get_order@

__defined at:__ @botan\/ffi.h:1288:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_order_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_get_order_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a6a7a021abd6efab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_group_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dd1c154c14280b56" hs_bindgen_dd1c154c14280b56 ::
     IO (Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt))

{-# NOINLINE botan_ec_group_equal_ptr #-}

{-|

  __returns:__ 0 if curve1 != curve2

  __returns:__ 1 if curve1 == curve2

  __returns:__ negative number on error

__C declaration:__ @botan_ec_group_equal@

__defined at:__ @botan\/ffi.h:1295:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_equal_ptr :: Ptr.FunPtr (Botan_ec_group_t -> Botan_ec_group_t -> IO FC.CInt)
botan_ec_group_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dd1c154c14280b56

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_592baa2ae4e4c430" hs_bindgen_592baa2ae4e4c430 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ptr #-}

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1311:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_592baa2ae4e4c430

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_ec_privkey_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_044d6ea4960544d7" hs_bindgen_044d6ea4960544d7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_ec_privkey_create_ptr #-}

{-| Create a new ec private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

  [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_ec_privkey_create@

__defined at:__ @botan\/ffi.h:1321:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_ec_group_t -> Botan_rng_t -> IO FC.CInt)
botan_ec_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_044d6ea4960544d7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9084ca5ad5a15e9d" hs_bindgen_9084ca5ad5a15e9d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key_ptr #-}

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9084ca5ad5a15e9d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5bd63e946f1bcd9b" hs_bindgen_5bd63e946f1bcd9b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1328:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5bd63e946f1bcd9b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9d711ee89b391083" hs_bindgen_9d711ee89b391083 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1330:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9d711ee89b391083

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a67214ce1439d8cc" hs_bindgen_a67214ce1439d8cc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1332:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a67214ce1439d8cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5ab0356df49b6bf7" hs_bindgen_5ab0356df49b6bf7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece_ptr #-}

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5ab0356df49b6bf7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_001a6b23837062ba" hs_bindgen_001a6b23837062ba ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1336:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_001a6b23837062ba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ced0c813d9a7b51b" hs_bindgen_ced0c813d9a7b51b ::
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

__defined at:__ @botan\/ffi.h:1356:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ced0c813d9a7b51b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_create_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fbab1d1a3ee613d1" hs_bindgen_fbab1d1a3ee613d1 ::
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

__defined at:__ @botan\/ffi.h:1378:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fbab1d1a3ee613d1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d5747389373d555f" hs_bindgen_d5747389373d555f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ptr #-}

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1386:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d5747389373d555f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_52cd47e5f1a9698b" hs_bindgen_52cd47e5f1a9698b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1391:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy_ptr :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_52cd47e5f1a9698b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2a39f6a45e222c8c" hs_bindgen_2a39f6a45e222c8c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_ptr #-}

{-| __C declaration:__ @botan_privkey_export@

    __defined at:__ @botan\/ffi.h:1405:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a39f6a45e222c8c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c73c43ed7e38535" hs_bindgen_8c73c43ed7e38535 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der_ptr #-}

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1410:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c73c43ed7e38535

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e45f7c2ed9ae77c3" hs_bindgen_e45f7c2ed9ae77c3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem_ptr #-}

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1415:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e45f7c2ed9ae77c3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e15124fab5589c95" hs_bindgen_e15124fab5589c95 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_raw_ptr #-}

{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1420:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e15124fab5589c95

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c2ab1a8bf23927db" hs_bindgen_c2ab1a8bf23927db ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1422:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c2ab1a8bf23927db

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f4ef89d8d95ccbfb" hs_bindgen_f4ef89d8d95ccbfb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1429:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4ef89d8d95ccbfb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f0318c3b9e8b7103" hs_bindgen_f0318c3b9e8b7103 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1445:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f0318c3b9e8b7103

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1ceea72b8591bfcb" hs_bindgen_1ceea72b8591bfcb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1ceea72b8591bfcb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_636a109c66a21132" hs_bindgen_636a109c66a21132 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1478:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_636a109c66a21132

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_der_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_466954e9c1f6bf59" hs_bindgen_466954e9c1f6bf59 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1493:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_466954e9c1f6bf59

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d20360d0279f261f" hs_bindgen_d20360d0279f261f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1509:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d20360d0279f261f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_encrypted_pem_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d0f7222fc12a3dc0" hs_bindgen_d0f7222fc12a3dc0 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1524:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0f7222fc12a3dc0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_305cba3cfb158c12" hs_bindgen_305cba3cfb158c12 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ptr #-}

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1535:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_305cba3cfb158c12

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_export_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_68df5b2f94108483" hs_bindgen_68df5b2f94108483 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey_ptr #-}

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1537:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_68df5b2f94108483

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c05abaef67d7fdbb" hs_bindgen_c05abaef67d7fdbb ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export_ptr #-}

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1540:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c05abaef67d7fdbb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fe3c5218a70ea07f" hs_bindgen_fe3c5218a70ea07f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der_ptr #-}

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1545:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe3c5218a70ea07f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c556ade94de72292" hs_bindgen_c556ade94de72292 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem_ptr #-}

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c556ade94de72292

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7cfb89d397e4e1d8" hs_bindgen_7cfb89d397e4e1d8 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_raw_ptr #-}

{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1555:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cfb89d397e4e1d8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4a7d3ed39a35939e" hs_bindgen_4a7d3ed39a35939e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1557:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a7d3ed39a35939e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c0298c012ac299ba" hs_bindgen_c0298c012ac299ba ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key_ptr #-}

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1562:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c0298c012ac299ba

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_estimated_strength_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b1a4d1f03c40b036" hs_bindgen_b1a4d1f03c40b036 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength_ptr #-}

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1564:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b1a4d1f03c40b036

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9e9131ebeec84f79" hs_bindgen_9e9131ebeec84f79 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint_ptr #-}

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1567:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e9131ebeec84f79

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c7e9f73954650e82" hs_bindgen_c7e9f73954650e82 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7e9f73954650e82

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4972844938be0e20" hs_bindgen_4972844938be0e20 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field_ptr #-}

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1577:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4972844938be0e20

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9c5c52acc1809637" hs_bindgen_9c5c52acc1809637 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field_ptr #-}

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1579:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c5c52acc1809637

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_67006c964c365d49" hs_bindgen_67006c964c365d49 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_oid_ptr #-}

{-| __C declaration:__ @botan_pubkey_oid@

    __defined at:__ @botan\/ffi.h:1585:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67006c964c365d49

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_oid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bf8a2e53eb44af52" hs_bindgen_bf8a2e53eb44af52 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_oid_ptr #-}

{-| __C declaration:__ @botan_privkey_oid@

    __defined at:__ @botan\/ffi.h:1588:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_oid_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_asn1_oid_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_oid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf8a2e53eb44af52

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_stateful_operation_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3b081646016173ee" hs_bindgen_3b081646016173ee ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt))

{-# NOINLINE botan_privkey_stateful_operation_ptr #-}

{-| Checks whether a key is stateful and sets

  [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_stateful_operation@

__defined at:__ @botan\/ffi.h:1595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_stateful_operation_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr FC.CInt) -> IO FC.CInt)
botan_privkey_stateful_operation_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3b081646016173ee

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_remaining_operations_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2ad2b70d824a52c7" hs_bindgen_2ad2b70d824a52c7 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_privkey_remaining_operations_ptr #-}

{-| Gets information on many operations a (stateful) key has remaining and sets

  [__@out@ /(input)/__]: to that value

  __returns:__ 0 on success, a negative value on failure or if the key is not stateful

__C declaration:__ @botan_privkey_remaining_operations@

__defined at:__ @botan\/ffi.h:1602:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_remaining_operations_ptr :: Ptr.FunPtr (Botan_privkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_privkey_remaining_operations_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ad2b70d824a52c7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fc47b21bd7fef68c" hs_bindgen_fc47b21bd7fef68c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1607:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fc47b21bd7fef68c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_rsa_pkcs1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e171d89026917d88" hs_bindgen_e171d89026917d88 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1609:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e171d89026917d88

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_442a6e039cd2b7f5" hs_bindgen_442a6e039cd2b7f5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1612:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_442a6e039cd2b7f5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b6204da65edff61e" hs_bindgen_b6204da65edff61e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1614:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6204da65edff61e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_d_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3422243e93d112fc" hs_bindgen_3422243e93d112fc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1616:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3422243e93d112fc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b494609919e67bc5" hs_bindgen_b494609919e67bc5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1618:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b494609919e67bc5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1df85816b1911ce4" hs_bindgen_1df85816b1911ce4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1df85816b1911ce4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_rsa_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2e93693e30f20602" hs_bindgen_2e93693e30f20602 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1623:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e93693e30f20602

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8f5b29ca2a15baa" hs_bindgen_b8f5b29ca2a15baa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1625:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8f5b29ca2a15baa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_75ebea11c16a3f1f" hs_bindgen_75ebea11c16a3f1f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1628:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75ebea11c16a3f1f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a67c8d5cf33ca5e6" hs_bindgen_a67c8d5cf33ca5e6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1630:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a67c8d5cf33ca5e6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b03bf6644dccef2e" hs_bindgen_b03bf6644dccef2e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1636:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b03bf6644dccef2e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_73466c704973949d" hs_bindgen_73466c704973949d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1639:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_73466c704973949d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_dsa_get_x_ptr@
-}
foreign import ccall unsafe "hs_bindgen_461efd8d34db43bf" hs_bindgen_461efd8d34db43bf ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x_ptr #-}

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1642:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_461efd8d34db43bf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b3699457320b5fa9" hs_bindgen_b3699457320b5fa9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1645:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3699457320b5fa9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bba8172c08303455" hs_bindgen_bba8172c08303455 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1647:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bba8172c08303455

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_g_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b492d230ab06a48b" hs_bindgen_b492d230ab06a48b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1649:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b492d230ab06a48b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_dsa_get_y_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b4c0a65de941a560" hs_bindgen_b4c0a65de941a560 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1651:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4c0a65de941a560

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_74843e383b0a0a68" hs_bindgen_74843e383b0a0a68 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1666:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74843e383b0a0a68

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d562426b572852df" hs_bindgen_d562426b572852df ::
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

__defined at:__ @botan\/ffi.h:1680:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d562426b572852df

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_237b9fafe1125d12" hs_bindgen_237b9fafe1125d12 ::
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

__defined at:__ @botan\/ffi.h:1698:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_237b9fafe1125d12

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e5be7b7c41ad6059" hs_bindgen_e5be7b7c41ad6059 ::
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

__defined at:__ @botan\/ffi.h:1713:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e5be7b7c41ad6059

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e93a868a3fe36150" hs_bindgen_e93a868a3fe36150 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1719:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e93a868a3fe36150

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_502fcd87bfd2d864" hs_bindgen_502fcd87bfd2d864 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_502fcd87bfd2d864

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_ed25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c11a7dcb0cdc371a" hs_bindgen_c11a7dcb0cdc371a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c11a7dcb0cdc371a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ed25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fa49dd425ee9420e" hs_bindgen_fa49dd425ee9420e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa49dd425ee9420e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b26dc151795a370f" hs_bindgen_b26dc151795a370f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1733:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b26dc151795a370f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b444af97252731be" hs_bindgen_b444af97252731be ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1735:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b444af97252731be

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_ed448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49ca0d085c4de5e8" hs_bindgen_49ca0d085c4de5e8 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1738:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49ca0d085c4de5e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ed448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dbd171b9fa3aca6e" hs_bindgen_dbd171b9fa3aca6e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1741:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dbd171b9fa3aca6e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_553e5d8d6736487f" hs_bindgen_553e5d8d6736487f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1747:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_553e5d8d6736487f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_51e0ca879355f839" hs_bindgen_51e0ca879355f839 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1749:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51e0ca879355f839

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_x25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_236efe4af324dad4" hs_bindgen_236efe4af324dad4 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_236efe4af324dad4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_x25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6b7f76dd0630e9e1" hs_bindgen_6b7f76dd0630e9e1 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1755:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6b7f76dd0630e9e1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1edc891135f9cfe3" hs_bindgen_1edc891135f9cfe3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1761:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1edc891135f9cfe3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_177193a390ee9f81" hs_bindgen_177193a390ee9f81 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1763:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_177193a390ee9f81

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_x448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2fbec083afceb417" hs_bindgen_2fbec083afceb417 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2fbec083afceb417

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_x448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6e60fb7d5a42bae7" hs_bindgen_6e60fb7d5a42bae7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1769:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6e60fb7d5a42bae7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ba94a1bed5194b27" hs_bindgen_ba94a1bed5194b27 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1776:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba94a1bed5194b27

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_65440a1f2dd4bd99" hs_bindgen_65440a1f2dd4bd99 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1779:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65440a1f2dd4bd99

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_afde33d281ea9fc0" hs_bindgen_afde33d281ea9fc0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1790:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_afde33d281ea9fc0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_54d745aeda39ddae" hs_bindgen_54d745aeda39ddae ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1793:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54d745aeda39ddae

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_55caa0e8621f1eb0" hs_bindgen_55caa0e8621f1eb0 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1797:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55caa0e8621f1eb0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4a3d27c2806f14c7" hs_bindgen_4a3d27c2806f14c7 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1801:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a3d27c2806f14c7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_669e8409d6be9e8f" hs_bindgen_669e8409d6be9e8f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_frodokem_ptr #-}

{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1808:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_669e8409d6be9e8f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f30ad3f4c4eb0f44" hs_bindgen_f30ad3f4c4eb0f44 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_frodokem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1811:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f30ad3f4c4eb0f44

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a940bf241fd60d46" hs_bindgen_a940bf241fd60d46 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_classic_mceliece_ptr #-}

{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1818:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a940bf241fd60d46

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0cb5fb56471cb36e" hs_bindgen_0cb5fb56471cb36e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_classic_mceliece_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1824:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0cb5fb56471cb36e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3bc5d9b4d53b4470" hs_bindgen_3bc5d9b4d53b4470 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1834:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bc5d9b4d53b4470

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6e84877fcb5bdb40" hs_bindgen_6e84877fcb5bdb40 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1837:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6e84877fcb5bdb40

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cc6fc4b8e4bb3b1b" hs_bindgen_cc6fc4b8e4bb3b1b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1844:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc6fc4b8e4bb3b1b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_75f4687e31415c5d" hs_bindgen_75f4687e31415c5d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1847:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_75f4687e31415c5d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ff4ccc535d257e30" hs_bindgen_ff4ccc535d257e30 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding_ptr #-}

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1853:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ff4ccc535d257e30

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5d3221843a9e8d8e" hs_bindgen_5d3221843a9e8d8e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1856:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d3221843a9e8d8e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89ad87ecbd10b294" hs_bindgen_89ad87ecbd10b294 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1859:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89ad87ecbd10b294

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ce260a44a0da7541" hs_bindgen_ce260a44a0da7541 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1862:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ce260a44a0da7541

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_63a040c045d7482c" hs_bindgen_63a040c045d7482c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1865:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_63a040c045d7482c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c0177e65f46956f5" hs_bindgen_c0177e65f46956f5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1868:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c0177e65f46956f5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9473c3e2704cda0d" hs_bindgen_9473c3e2704cda0d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1871:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9473c3e2704cda0d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e9b4303d2ce70e6a" hs_bindgen_e9b4303d2ce70e6a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1875:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e9b4303d2ce70e6a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_privkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6792cc35ca767f63" hs_bindgen_6792cc35ca767f63 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1879:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6792cc35ca767f63

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_sm2_compute_za_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2928afd7dabace08" hs_bindgen_2928afd7dabace08 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za_ptr #-}

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1882:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2928afd7dabace08

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pubkey_view_ec_public_point_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d251fcd1f603806e" hs_bindgen_d251fcd1f603806e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point_ptr #-}

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1889:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d251fcd1f603806e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c50d675867fcec4d" hs_bindgen_c50d675867fcec4d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1897:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c50d675867fcec4d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_47dd9178ff022e85" hs_bindgen_47dd9178ff022e85 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1902:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47dd9178ff022e85

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_83f9e733369ab811" hs_bindgen_83f9e733369ab811 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1905:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_83f9e733369ab811

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0739c916d0864cc3" hs_bindgen_0739c916d0864cc3 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1908:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0739c916d0864cc3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d162fb27207c843a" hs_bindgen_d162fb27207c843a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1921:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d162fb27207c843a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_41a2fd66303bf2b5" hs_bindgen_41a2fd66303bf2b5 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_41a2fd66303bf2b5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6c95c135e8918c56" hs_bindgen_6c95c135e8918c56 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1929:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c95c135e8918c56

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_76030540d28f66d9" hs_bindgen_76030540d28f66d9 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1932:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76030540d28f66d9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49059fb45fab82c7" hs_bindgen_49059fb45fab82c7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1944:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49059fb45fab82c7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d9a7f814e8fd18c6" hs_bindgen_d9a7f814e8fd18c6 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1949:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9a7f814e8fd18c6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_31876ed79f7c9adc" hs_bindgen_31876ed79f7c9adc ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1951:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_31876ed79f7c9adc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89a92978bf61df60" hs_bindgen_89a92978bf61df60 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1953:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89a92978bf61df60

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_sign_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_341eba9a34e4e1d3" hs_bindgen_341eba9a34e4e1d3 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1956:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_341eba9a34e4e1d3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_53be2b9a623a9c47" hs_bindgen_53be2b9a623a9c47 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1964:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_53be2b9a623a9c47

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_84e682dd8d9f3441" hs_bindgen_84e682dd8d9f3441 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1972:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84e682dd8d9f3441

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c6c302d37dec4622" hs_bindgen_c6c302d37dec4622 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1974:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c6c302d37dec4622

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_verify_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f9edec6028e5b4d8" hs_bindgen_f9edec6028e5b4d8 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1975:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9edec6028e5b4d8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5b341d0c811d7b3b" hs_bindgen_5b341d0c811d7b3b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1983:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b341d0c811d7b3b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4f30e85546505a17" hs_bindgen_4f30e85546505a17 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1988:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4f30e85546505a17

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_export_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_011921fbb0b7086d" hs_bindgen_011921fbb0b7086d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1990:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_011921fbb0b7086d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_view_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_663a125d0946f3e5" hs_bindgen_663a125d0946f3e5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1993:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_663a125d0946f3e5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6c6661c47ea648c1" hs_bindgen_6c6661c47ea648c1 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1995:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c6661c47ea648c1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_key_agreement_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8391c67dc779edb8" hs_bindgen_8391c67dc779edb8 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1998:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8391c67dc779edb8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4bbe9c76ed64d5de" hs_bindgen_4bbe9c76ed64d5de ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:2012:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4bbe9c76ed64d5de

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_490d58dfc04fe905" hs_bindgen_490d58dfc04fe905 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:2017:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_490d58dfc04fe905

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6f0fe2af3d1661cf" hs_bindgen_6f0fe2af3d1661cf ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2020:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f0fe2af3d1661cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b4e58881771a2380" hs_bindgen_b4e58881771a2380 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:2025:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4e58881771a2380

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_182a7444acd59c90" hs_bindgen_182a7444acd59c90 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:2029:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_182a7444acd59c90

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9356ab4581530f87" hs_bindgen_9356ab4581530f87 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:2042:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9356ab4581530f87

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e4664d0f33f3d3ef" hs_bindgen_e4664d0f33f3d3ef ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:2047:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e4664d0f33f3d3ef

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f377baf3a2a8cfb4" hs_bindgen_f377baf3a2a8cfb4 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2050:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f377baf3a2a8cfb4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pk_op_kem_decrypt_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_62d641369ab437eb" hs_bindgen_62d641369ab437eb ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:2055:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_62d641369ab437eb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_pkcs_hash_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d8bfbf7068ebb570" hs_bindgen_d8bfbf7068ebb570 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id_ptr #-}

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:2068:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d8bfbf7068ebb570

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mceies_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eb8980e90ea7abd3" hs_bindgen_eb8980e90ea7abd3 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:2075:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eb8980e90ea7abd3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_mceies_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_412f2325ab251871" hs_bindgen_412f2325ab251871 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:2090:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_412f2325ab251871

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2a1c8f95ae117f0d" hs_bindgen_2a1c8f95ae117f0d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:2105:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a1c8f95ae117f0d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f04406d1d12c36e2" hs_bindgen_f04406d1d12c36e2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:2106:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f04406d1d12c36e2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b30b67f5a7f67d2e" hs_bindgen_b30b67f5a7f67d2e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:2111:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b30b67f5a7f67d2e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_dup_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8f07258903bbea5a" hs_bindgen_8f07258903bbea5a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup_ptr #-}

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:2113:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f07258903bbea5a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_time_starts_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7d7720999199cf5e" hs_bindgen_7d7720999199cf5e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:2116:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d7720999199cf5e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_time_expires_ptr@
-}
foreign import ccall unsafe "hs_bindgen_62dca4cb831b55a1" hs_bindgen_62dca4cb831b55a1 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:2117:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_62dca4cb831b55a1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_not_before_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2c848218120a74c0" hs_bindgen_2c848218120a74c0 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:2119:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c848218120a74c0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_not_after_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d2f7f3f19080b8a1" hs_bindgen_d2f7f3f19080b8a1 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:2120:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2f7f3f19080b8a1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5399c7ce287d5cf7" hs_bindgen_5399c7ce287d5cf7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:2123:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5399c7ce287d5cf7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_serial_number_ptr@
-}
foreign import ccall unsafe "hs_bindgen_db4d6c5c85603622" hs_bindgen_db4d6c5c85603622 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:2125:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_db4d6c5c85603622

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_authority_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ef0e3827cc03a07c" hs_bindgen_ef0e3827cc03a07c ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:2126:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef0e3827cc03a07c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_subject_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6fed74df3c096c3a" hs_bindgen_6fed74df3c096c3a ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:2127:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fed74df3c096c3a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e43ec1a9d1c453cc" hs_bindgen_e43ec1a9d1c453cc ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:2129:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e43ec1a9d1c453cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_view_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5b0d70b5d4218840" hs_bindgen_5b0d70b5d4218840 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:2132:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b0d70b5d4218840

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_public_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_de592b1637193087" hs_bindgen_de592b1637193087 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:2134:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de592b1637193087

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_issuer_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b5b2d9ff4264e399" hs_bindgen_b5b2d9ff4264e399 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:2137:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5b2d9ff4264e399

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_get_subject_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_23702d9e288a4135" hs_bindgen_23702d9e288a4135 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:2141:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23702d9e288a4135

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_to_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_096b2b7b979b9b54" hs_bindgen_096b2b7b979b9b54 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:2144:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_096b2b7b979b9b54

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_view_as_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b79166a10f13cd1f" hs_bindgen_b79166a10f13cd1f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:2147:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b79166a10f13cd1f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_allowed_usage_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c1ac066d72f36328" hs_bindgen_c1ac066d72f36328 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage_ptr #-}

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:2163:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1ac066d72f36328

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_hostname_match_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5e31a8e8503d79af" hs_bindgen_5e31a8e8503d79af ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match_ptr #-}

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:2169:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5e31a8e8503d79af

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_verify_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89d43426412b4711" hs_bindgen_89d43426412b4711 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_ptr #-}

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:2180:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89d43426412b4711

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_validation_status_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a445278c8b4c8e48" hs_bindgen_a445278c8b4c8e48 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status_ptr #-}

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:2195:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a445278c8b4c8e48

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d0f541dd5573f02e" hs_bindgen_d0f541dd5573f02e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:2203:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0f541dd5573f02e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a615b54bfcea8d9b" hs_bindgen_a615b54bfcea8d9b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:2205:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a615b54bfcea8d9b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_crl_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c9c4717fee7028d8" hs_bindgen_c9c4717fee7028d8 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy_ptr #-}

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:2207:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c9c4717fee7028d8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_is_revoked_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f094219655bceebe" hs_bindgen_f094219655bceebe ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked_ptr #-}

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:2213:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f094219655bceebe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_x509_cert_verify_with_crl_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0bc479ba6d2f6e02" hs_bindgen_0bc479ba6d2f6e02 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl_ptr #-}

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:2220:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0bc479ba6d2f6e02

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_key_wrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_70db5b0e21a1dc11" hs_bindgen_70db5b0e21a1dc11 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394_ptr #-}

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:2238:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70db5b0e21a1dc11

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_key_unwrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_257cf09792931a9c" hs_bindgen_257cf09792931a9c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394_ptr #-}

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:2247:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_257cf09792931a9c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_nist_kw_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c73ab45f6d23eda4" hs_bindgen_c73ab45f6d23eda4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc_ptr #-}

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2255:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c73ab45f6d23eda4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_nist_kw_dec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fd1579efa2115462" hs_bindgen_fd1579efa2115462 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec_ptr #-}

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2265:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fd1579efa2115462

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bda9f42ccc247b62" hs_bindgen_bda9f42ccc247b62 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init_ptr #-}

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2284:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bda9f42ccc247b62

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_901c3910c56237c7" hs_bindgen_901c3910c56237c7 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy_ptr #-}

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2291:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy_ptr :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_901c3910c56237c7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5f69254a72c1c3d4" hs_bindgen_5f69254a72c1c3d4 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate_ptr #-}

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2297:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f69254a72c1c3d4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_hotp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_28e91ca62963b9cf" hs_bindgen_28e91ca62963b9cf ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check_ptr #-}

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2303:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28e91ca62963b9cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d62e84f270143c85" hs_bindgen_d62e84f270143c85 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init_ptr #-}

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2316:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d62e84f270143c85

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_91a5aefe54d5dd39" hs_bindgen_91a5aefe54d5dd39 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy_ptr #-}

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2324:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy_ptr :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_91a5aefe54d5dd39

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_848877fea3868549" hs_bindgen_848877fea3868549 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate_ptr #-}

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2333:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate_ptr :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_848877fea3868549

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_totp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b2105ca5f6d5d2e1" hs_bindgen_b2105ca5f6d5d2e1 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check_ptr #-}

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2344:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check_ptr :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b2105ca5f6d5d2e1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_fe1_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ae8de9fc664d1171" hs_bindgen_ae8de9fc664d1171 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init_ptr #-}

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2355:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ae8de9fc664d1171

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d01c9e0e9b49424c" hs_bindgen_d01c9e0e9b49424c ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2362:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy_ptr :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d01c9e0e9b49424c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7d8b564195d3fb98" hs_bindgen_7d8b564195d3fb98 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2365:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d8b564195d3fb98

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_fpe_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1a795da8e394b9e8" hs_bindgen_1a795da8e394b9e8 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2368:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a795da8e394b9e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c4439de14d842a80" hs_bindgen_c4439de14d842a80 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init_ptr #-}

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2380:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c4439de14d842a80

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d968b480fa501ae1" hs_bindgen_d968b480fa501ae1 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy_ptr #-}

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2388:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d968b480fa501ae1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_step1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bdad17a590b6298e" hs_bindgen_bdad17a590b6298e ::
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

__defined at:__ @botan\/ffi.h:2403:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bdad17a590b6298e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_server_session_step2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_de09fdf3e2e73c2e" hs_bindgen_de09fdf3e2e73c2e ::
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

__defined at:__ @botan\/ffi.h:2422:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de09fdf3e2e73c2e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_generate_verifier_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4e3b80f04d56c275" hs_bindgen_4e3b80f04d56c275 ::
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

__defined at:__ @botan\/ffi.h:2438:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4e3b80f04d56c275

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_client_agree_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a688c17d0ade53e7" hs_bindgen_a688c17d0ade53e7 ::
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

__defined at:__ @botan\/ffi.h:2465:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a688c17d0ade53e7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_srp6_group_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_57715380d8ca696c" hs_bindgen_57715380d8ca696c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size_ptr #-}

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2483:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_57715380d8ca696c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_zfec_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2840a9a5c0ce35f2" hs_bindgen_2840a9a5c0ce35f2 ::
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

__defined at:__ @botan\/ffi.h:2504:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2840a9a5c0ce35f2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_zfec_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_03395c24fb99a854" hs_bindgen_03395c24fb99a854 ::
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

__defined at:__ @botan\/ffi.h:2525:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03395c24fb99a854

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_supports_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0aff1a7e9b3e55fb" hs_bindgen_0aff1a7e9b3e55fb ::
     IO (Ptr.FunPtr (IO FC.CInt))

{-# NOINLINE botan_tpm2_supports_crypto_backend_ptr #-}

{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2550:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend_ptr :: Ptr.FunPtr (IO FC.CInt)
botan_tpm2_supports_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0aff1a7e9b3e55fb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7c432d846d558cde" hs_bindgen_7c432d846d558cde ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2558:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c432d846d558cde

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_init_ex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_64c66a110a15f0b9" hs_bindgen_64c66a110a15f0b9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ex_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2568:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64c66a110a15f0b9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_from_esys_ptr@
-}
foreign import ccall unsafe "hs_bindgen_298452d870f46982" hs_bindgen_298452d870f46982 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_from_esys_ptr #-}

{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2579:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt)
botan_tpm2_ctx_from_esys_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_298452d870f46982

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b31f8274c1fb9b78" hs_bindgen_b31f8274c1fb9b78 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_enable_crypto_backend_ptr #-}

{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2591:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_ctx_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b31f8274c1fb9b78

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_ctx_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8510ceb9cb5653fa" hs_bindgen_8510ceb9cb5653fa ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_destroy_ptr #-}

{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2598:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_ctx_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8510ceb9cb5653fa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89a451a5f8a8fdc1" hs_bindgen_89a451a5f8a8fdc1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_enable_crypto_backend_ptr #-}

{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2612:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89a451a5f8a8fdc1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_crypto_backend_state_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_da8fdc2dd5e75a23" hs_bindgen_da8fdc2dd5e75a23 ::
     IO (Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_crypto_backend_state_destroy_ptr #-}

{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2624:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt)
botan_tpm2_crypto_backend_state_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da8fdc2dd5e75a23

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1395dc8c249021a8" hs_bindgen_1395dc8c249021a8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_rng_init_ptr #-}

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
botan_tpm2_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1395dc8c249021a8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_unauthenticated_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3308377605e3f1d9" hs_bindgen_3308377605e3f1d9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_unauthenticated_session_init_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2647:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_unauthenticated_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3308377605e3f1d9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_get_botan_tpm2_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_57448582397c6b57" hs_bindgen_57448582397c6b57 ::
     IO (Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_session_destroy_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2654:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_57448582397c6b57
