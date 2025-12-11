{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_7_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_7_0
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_error_description_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_3372eee0e3889efb (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_error_last_exception_message_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_ab4c43721b8025cc (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_ffi_api_version_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d2a857c821b6d665 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_ffi_supports_api_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a73b5fd6898ddec4 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_string_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_f2f10c2177eaeba5 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_major_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1e364406c8d0f3b8 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_minor_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d4adb92d71c27f85 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_patch_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d834df98009ef0ab (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_datestamp_ptr */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d625b51c85345c06 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_constant_time_compare_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_360b1c90863504a9 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_same_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4e41ced316106108 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_scrub_mem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_41a0b701305a9812 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hex_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99e9039565566770 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hex_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acca68f835a02ed4 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_base64_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf4de8939fa38a97 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_base64_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40187051c2f9eb03 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca16f85da278f7b7 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_init_custom_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2ccba44e1e7a3b6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_20259e659d5d22ee (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_system_rng_get_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a72e70fd8e8cab98 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_reseed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2d78de5d611988ad (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_reseed_from_rng_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3059811db08f5a6d (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_add_entropy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0714eda3c6554a41 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9c516c46762edee (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2f5309cecb21015b (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_copy_state_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_159b24d3be326f19 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b94a2fff8634cc0d (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55102dabeafa6e3e (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32c5da8e3eb7d2a0 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d5d6e9d9003a22c9 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1e3db99fd5f5523b (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6aa1d6bd83317186 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_20f1543acbbc11b6 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_989250f637c97436 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_476ddc8985b6d90e (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ab5e232008c4e9b3 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_set_nonce_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5159852602aca2cf (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4e0cc0bf3aafd22e (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_final_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ab49f6d3c08580df (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89b985550a346dd4 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_61031b9dbe0ee82b (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9d03cfc3b20e149 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d59104254be82cd (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03489934b13df6f6 (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a5d80af79d87594c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d032d69618b6efa (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_valid_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a0b46c24c8cda55d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_tag_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49bfee0c35c3bcca (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_is_authenticated_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8eca10bc52fdfcb9 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_requires_entire_message_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_403bbc73f97a5b1f (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_default_nonce_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cb7f1d15aa0f019f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0dbd882818194079 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_ideal_update_granularity_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54512e500560896f (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_query_keylen_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a20c3574c3f84438 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ab0e65a9a45ac3e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a4a92f26368bdc7b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_reset_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_692ce19887378951 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_set_associated_data_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49bc7c78294b0bbc (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_start_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3ee64877e5de2c0 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b641fe208b226222 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2677ceb2aa570dfc (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9f66be082c7fb8be (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pbkdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b913dbe5784ef4ea (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pbkdf_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45c9015587f86eb8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pwdhash_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12584884604096de (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pwdhash_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddfd73a5c14d26e5 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_scrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bb03e4da8bf996e0 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_kdf_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d8fc940eb97853c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c4f97dfbcbe8f48 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d423755363533abe (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f2c3d24e35470b9 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_set_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f1fa263cf87d2927 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_block_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4bd16227eeb4cb3c (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_encrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04c71c164bcdc5b8 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_decrypt_blocks_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33cf4fe10d538f43 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69dfe9d2ef3102f8 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_get_keyspec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0db1cab382185647 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4d5851970ba659f (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9451d76551178404 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_hex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3e6866e5b712ab1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_15d3c17672b37188 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_clear_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16278af6bd0f56b0 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_int_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_13724acde6a82c66 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_mp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d4fc7815503d9e2d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_550ce8118a05792f (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_radix_str_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9202bfd38139b329 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_num_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cece6541c29afe0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_num_bytes_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e76b7e4fb521381f (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28e4e3d4e8b2db22 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_from_bin_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b19b300c30468a3 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_uint32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ff34900eddddff48 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_positive_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59653a804f07789d (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_negative_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_88bd6c5541853f0a (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_flip_sign_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42d77e13a77f0f1c (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_zero_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_580b4a6ec3bbdc2c (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_odd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5aa86c85a4e30025 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_even_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a168558d1038f19f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_add_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f4a0317a2a796ff (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_sub_u32_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3413602c68e128cf (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_add_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c9fbd7e4a671fb6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_sub_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0dfe00300e3bdabf (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_253d4af8a5cf3000 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_div_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23743c14adbdc7ea (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mod_mul_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cd22af55c909f75e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_equal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10d554e03a917f7e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_cmp_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48609be4d39a3766 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_swap_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a29c9f0abd0ea47 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_powmod_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4b7e4d3494d3ce9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_lshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_117c340ed9db4fc7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rshift_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a25e27d0452c93a7 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mod_inverse_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0433144f2a98176f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rand_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18e43bebc5aefd10 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rand_range_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3dee11bd750d1768 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_gcd_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89cc3bfeea52408a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_prime_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_129c70dc5349da29 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_get_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7077ddce91b233b2 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f57530d4f92f58a9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_clear_bit_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c78948bcdc65bb78 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_bcrypt_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_14e0bdf5a28196a3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_bcrypt_is_valid_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_183947cebeda9516 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bdf82cf228dae4cc (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_956c2e4b28865435 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_43377ded5f82fa6c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7b9446d1645ac2e9 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_05e719e39015d07a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbf3fb3ec559aa89 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_37c4d3bbc078706c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eeb4319e080bec8b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4ca4c2fc7cab5c44 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87072f48b1e3ed74 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_66c069c572cb316e (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e76f0d90fac2c534 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bbac398b01c14e97 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76e0ff75bdec4447 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4351a76beb57a751 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e1b8578292a4ea58 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a751937edb79d0fb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1f52e11179d1eb5e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fc9fbd4becee9857 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6cdc71f25bd2f767 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_der_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8a2d6d9f53257c9 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c41d53cd2b98f599 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_pem_timed_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e1711691a22143eb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5eb38bcf4ef82cdf (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47d06b5ab76ee973 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_export_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3979b37ccfb3b38e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_der_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_73dea15c3fe77c18 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_pem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dcd844b7e9068b98 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_raw_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_527fb4f13ad93338 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_raw;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_algo_name_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_760cc061ed64a330 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_check_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4722133500e430d4 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_estimated_strength_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f2e4c21714ced5b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2b8487e072d58a20 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_829debcd9b88668b (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eddbaa3e30d92a08 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_get_field_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d6e5bf9f3079278e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_639aab9a7bce8cd6 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_rsa_pkcs1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32b3570933262547 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_411e1430160e1418 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e41e8eb1b7ce27f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_d_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3758bd54c0d67e98 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d138d0fb95e3316 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6096d6f996bae227 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2b0c462a204131e8 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_rsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_83a39cbd6f7c8798 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_rsa_get_e_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72d3954186ea11ce (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_rsa_get_n_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c554e26c7dcafb9a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8508064dfddf7ab (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6df7b6f37f2d41cf (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_dsa_get_x_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_554dcf5acb32a441 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_p_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a45653cb39ee483 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_q_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cfff3c4cec0ece8e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_g_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_731c424b65745794 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_y_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c30807cdbf5e825 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e02394294e50eff9 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_dh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aaae673691fadbe1 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_752e2e0146e2e627 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_elgamal_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0cf90dc1f340fdc0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5299d0f7e693f28 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ed25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_270dce5bdd7d01ec (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_ed25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b2c76deb4bc8896b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ed25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2e1528d9a489b6f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32aa0d11b3d55b4d (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ed448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55efb068f3db06cc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_ed448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_38b629adb85e195b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ed448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6ee652a9320a4442 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_53a57246c15fa3b7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_x25519_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d22dca283f97d44c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_x25519_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5943bffe5f4eb4a5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_x25519_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1bf61a1a1882448 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c420ea284a3735a4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_x448_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a2b5bc12351cbc9 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_x448_get_privkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a7b16aa0c593ce62 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_x448_get_pubkey_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e85b4bb76615298f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5ee3aa8968bda246 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ml_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_092b5e6d45126ae8 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8ef3d03913d7735c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_kyber_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10d56590b4af6f6c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d7049769a38db45c (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_kyber_raw_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f8a3187c394f5338 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_52ee0b353f231110 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_frodokem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f5f36e41fc387189 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_frodokem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_647ebb57af5475e7 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_classic_mceliece_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dad6a112dd6027aa (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_classic_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a43ba049bdc1ebc (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ml_kem_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2779e8e8d58d166 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ml_kem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5848712d54d44782 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_slh_dsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28a62256f98419af (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_slh_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cd4281b78e18688c (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_925d9697e49fe0c5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ecdsa_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8dcfd2328d8f18fe (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c4ac753235e7701 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ecdh_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b16cc142bc156cf5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e3268dafa05378df (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_sm2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3907b74b6d634011 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e3f60898b7c48fdc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_sm2_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca6e8cc5b65e135e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_sm2_compute_za_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd784a134dab4ff9 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_ec_public_point_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fb36d5c3a6401e08 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_60874a9b8ee7704d (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0b5144f4dfe481ec (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c233c0414598bf8 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d27ba913be062555 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6949a3245b54d91d (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89729e1da8f39cd4 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_26810d6540e21021 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a7b110864d6cff7 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_850dcde59e09621c (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_323bb95a0cc27922 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_output_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c8f42712a3887c2b (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_567fb86110740c7b (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_984e8a1f27308035 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2b7a4e6c12cbe004 (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1de1856feb7a47cc (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_update_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e96298b34cd5cc4a (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_finish_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c82c50bf4661f5fe (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6248c31d151f2dc1 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d12e651c88f88a4b (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_export_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e13c8476caf7b068 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_view_public_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f3201a066fd07259 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_81ecefbdc44a69a9 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6da925fa5d63a672 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47a2bbd2e6e37779 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d36baa40cf3f4275 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_419fefd96f39f4c8 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_63701091dc3f4a89 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51a877f1b66f29f4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_create_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0e0dc175ebbd76c5 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4321d1e239dce1d2 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f8d5cc16a97feb83 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_shared_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f761c85657ca082 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pkcs_hash_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6a489b17ed7195c (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mceies_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86309ad92f7acf16 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mceies_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d66a9543c903d3f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59623cb48b99415a (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7eb6d1cac8c29838 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d87db2cde342ba3 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_dup_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dbd2cfded2ebe1f8 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_time_starts_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_109b2192f4d3b167 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_time_expires_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d995ce50e91802cd (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_not_before_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4b6cbbb4ee4278a3 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_not_after_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0d1cccc9f316e211 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_fingerprint_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_af540bedd16d6eea (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_serial_number_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89ca4e035d644f25 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_authority_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9c553786605e68e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_subject_key_id_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b627ef33f66a3e85 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2fc0766560e31b2 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_view_public_key_bits_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e3339978aedc12e6 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_public_key_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a6081d9c8a2d9e28 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_issuer_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa99ad6ccb243514 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_subject_dn_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dae3037c44b358ef (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_to_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_605517747de2e548 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_view_as_string_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6709e460ee0fa63 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_allowed_usage_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a8cd248fc166dd1 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_hostname_match_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fb85620971cfe993 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_verify_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_447ec54b6f1a6953 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_validation_status_ptr */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_4996b01984f79d43 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_load_file_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a3a44039cda2c68 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_load_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9499bfd043f53a35 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70b6286243495240 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_is_revoked_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7bf3f810e9b1688a (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_verify_with_crl_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_edd4bb19009c536f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_key_wrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_529740cdba6a9a3e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_key_unwrap3394_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8f7d4541d0d1256c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_nist_kw_enc_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef787505f57a7810 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_nist_kw_dec_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9f5d1198f9a862bd (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d92ebbbfb893f435 (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72d8d5b84dc6229a (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fb410059b5d772c8 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b98836b35576392b (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0b78430423b86a6f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_deb87c2f3b38d522 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_generate_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba3adf37f2774916 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_check_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c29d33e90fd5385 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_fe1_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0759b6c2d4cc1e20 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92f98af4dc1699de (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_encrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2ddc1df575e1829 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_decrypt_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b0670a5ee0e020f9 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca65b7bff68ef04f (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4b45ab565fe8b31c (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_step1_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d68c7df8c739b1dd (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_step2_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_165085e856866c6a (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_generate_verifier_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_acaa931e84c24be9 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_client_agree_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_00f7053964728b20 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_group_size_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31ac02f1f6299e70 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_zfec_encode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e0ec2e3f45673b40 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_zfec_decode_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b20b0332ac02fdd9 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_supports_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c275722421f1b45a (void)) (void)"
  , "{"
  , "  return &botan_tpm2_supports_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4f6e65c97fbb7741 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_init_ex_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_79cf6542e3aa67d0 (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_init_ex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_from_esys_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12ac5cfa12a36f1b (void)) ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_from_esys;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc3f1dd45ca8afa7 (void)) ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_537bd7e0d39b4019 (void)) ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_ctx_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_enable_crypto_backend_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4e2599c61834ac1 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return &botan_tpm2_enable_crypto_backend;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_crypto_backend_state_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48b209d0be0f10c4 (void)) ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_crypto_backend_state_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_rng_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_965c2d18a2dc3789 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return &botan_tpm2_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_unauthenticated_session_init_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe7e031b2367eb9e (void)) ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return &botan_tpm2_unauthenticated_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_session_destroy_ptr */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_09621a8d51b55ebf (void)) ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_tpm2_session_destroy;"
  , "}"
  ]))

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_error_description_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3372eee0e3889efb" hs_bindgen_3372eee0e3889efb ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description_ptr #-}

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:170:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3372eee0e3889efb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_error_last_exception_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ab4c43721b8025cc" hs_bindgen_ab4c43721b8025cc ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message_ptr #-}

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:179:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ab4c43721b8025cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_ffi_api_version_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d2a857c821b6d665" hs_bindgen_d2a857c821b6d665 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version_ptr #-}

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2a857c821b6d665

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_ffi_supports_api_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a73b5fd6898ddec4" hs_bindgen_a73b5fd6898ddec4 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api_ptr #-}

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:192:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a73b5fd6898ddec4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f2f10c2177eaeba5" hs_bindgen_f2f10c2177eaeba5 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string_ptr #-}

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:197:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string_ptr :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2f10c2177eaeba5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_major_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1e364406c8d0f3b8" hs_bindgen_1e364406c8d0f3b8 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major_ptr #-}

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:202:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e364406c8d0f3b8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_minor_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d4adb92d71c27f85" hs_bindgen_d4adb92d71c27f85 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor_ptr #-}

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:207:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d4adb92d71c27f85

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_patch_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d834df98009ef0ab" hs_bindgen_d834df98009ef0ab ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch_ptr #-}

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:212:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d834df98009ef0ab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_version_datestamp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d625b51c85345c06" hs_bindgen_d625b51c85345c06 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp_ptr #-}

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:218:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp_ptr :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d625b51c85345c06

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_constant_time_compare_ptr@
-}
foreign import ccall unsafe "hs_bindgen_360b1c90863504a9" hs_bindgen_360b1c90863504a9 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare_ptr #-}

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:223:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_360b1c90863504a9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_same_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4e41ced316106108" hs_bindgen_4e41ced316106108 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem_ptr #-}

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:229:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4e41ced316106108

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_scrub_mem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_41a0b701305a9812" hs_bindgen_41a0b701305a9812 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem_ptr #-}

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:235:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem_ptr :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_41a0b701305a9812

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hex_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_99e9039565566770" hs_bindgen_99e9039565566770 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode_ptr #-}

{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:247:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_99e9039565566770

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hex_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_acca68f835a02ed4" hs_bindgen_acca68f835a02ed4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode_ptr #-}

{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:257:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acca68f835a02ed4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_base64_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bf4de8939fa38a97" hs_bindgen_bf4de8939fa38a97 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode_ptr #-}

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:262:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf4de8939fa38a97

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_base64_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_40187051c2f9eb03" hs_bindgen_40187051c2f9eb03 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode_ptr #-}

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:267:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_40187051c2f9eb03

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca16f85da278f7b7" hs_bindgen_ca16f85da278f7b7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init_ptr #-}

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:286:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca16f85da278f7b7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_init_custom_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e2ccba44e1e7a3b6" hs_bindgen_e2ccba44e1e7a3b6 ::
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

__defined at:__ @botan\/ffi.h:298:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2ccba44e1e7a3b6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_20259e659d5d22ee" hs_bindgen_20259e659d5d22ee ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get_ptr #-}

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:312:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get_ptr :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_20259e659d5d22ee

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_system_rng_get_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a72e70fd8e8cab98" hs_bindgen_a72e70fd8e8cab98 ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get_ptr #-}

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:320:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a72e70fd8e8cab98

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_reseed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2d78de5d611988ad" hs_bindgen_2d78de5d611988ad ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_ptr #-}

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:330:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_ptr :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2d78de5d611988ad

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_reseed_from_rng_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3059811db08f5a6d" hs_bindgen_3059811db08f5a6d ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng_ptr #-}

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:340:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng_ptr :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3059811db08f5a6d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_add_entropy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0714eda3c6554a41" hs_bindgen_0714eda3c6554a41 ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy_ptr #-}

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:350:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy_ptr :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0714eda3c6554a41

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_rng_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f9c516c46762edee" hs_bindgen_f9c516c46762edee ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy_ptr #-}

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy_ptr :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9c516c46762edee

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2f5309cecb21015b" hs_bindgen_2f5309cecb21015b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init_ptr #-}

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:371:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f5309cecb21015b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_copy_state_ptr@
-}
foreign import ccall unsafe "hs_bindgen_159b24d3be326f19" hs_bindgen_159b24d3be326f19 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state_ptr #-}

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:379:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_159b24d3be326f19

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b94a2fff8634cc0d" hs_bindgen_b94a2fff8634cc0d ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length_ptr #-}

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:387:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b94a2fff8634cc0d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_55102dabeafa6e3e" hs_bindgen_55102dabeafa6e3e ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size_ptr #-}

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:395:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55102dabeafa6e3e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32c5da8e3eb7d2a0" hs_bindgen_32c5da8e3eb7d2a0 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update_ptr #-}

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:404:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32c5da8e3eb7d2a0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d5d6e9d9003a22c9" hs_bindgen_d5d6e9d9003a22c9 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final_ptr #-}

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:414:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final_ptr :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d5d6e9d9003a22c9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1e3db99fd5f5523b" hs_bindgen_1e3db99fd5f5523b ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear_ptr #-}

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:422:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e3db99fd5f5523b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6aa1d6bd83317186" hs_bindgen_6aa1d6bd83317186 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy_ptr #-}

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:429:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy_ptr :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6aa1d6bd83317186

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hash_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_20f1543acbbc11b6" hs_bindgen_20f1543acbbc11b6 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name_ptr #-}

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:437:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name_ptr :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_20f1543acbbc11b6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_989250f637c97436" hs_bindgen_989250f637c97436 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init_ptr #-}

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:452:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_989250f637c97436

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_476ddc8985b6d90e" hs_bindgen_476ddc8985b6d90e ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length_ptr #-}

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:460:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_476ddc8985b6d90e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ab5e232008c4e9b3" hs_bindgen_ab5e232008c4e9b3 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key_ptr #-}

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ab5e232008c4e9b3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_set_nonce_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5159852602aca2cf" hs_bindgen_5159852602aca2cf ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce_ptr #-}

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:478:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5159852602aca2cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4e0cc0bf3aafd22e" hs_bindgen_4e0cc0bf3aafd22e ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update_ptr #-}

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:487:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4e0cc0bf3aafd22e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_final_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ab49f6d3c08580df" hs_bindgen_ab49f6d3c08580df ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final_ptr #-}

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:497:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final_ptr :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ab49f6d3c08580df

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89b985550a346dd4" hs_bindgen_89b985550a346dd4 ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear_ptr #-}

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:505:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89b985550a346dd4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_61031b9dbe0ee82b" hs_bindgen_61031b9dbe0ee82b ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name_ptr #-}

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:513:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_61031b9dbe0ee82b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f9d03cfc3b20e149" hs_bindgen_f9d03cfc3b20e149 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec_ptr #-}

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:523:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec_ptr :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9d03cfc3b20e149

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mac_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1d59104254be82cd" hs_bindgen_1d59104254be82cd ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy_ptr #-}

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:533:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy_ptr :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d59104254be82cd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_03489934b13df6f6" hs_bindgen_03489934b13df6f6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init_ptr #-}

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:547:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03489934b13df6f6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a5d80af79d87594c" hs_bindgen_a5d80af79d87594c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name_ptr #-}

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:552:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a5d80af79d87594c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1d032d69618b6efa" hs_bindgen_1d032d69618b6efa ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length_ptr #-}

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:557:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d032d69618b6efa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_valid_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a0b46c24c8cda55d" hs_bindgen_a0b46c24c8cda55d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length_ptr #-}

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:562:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a0b46c24c8cda55d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_tag_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49bfee0c35c3bcca" hs_bindgen_49bfee0c35c3bcca ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length_ptr #-}

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:567:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49bfee0c35c3bcca

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_is_authenticated_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8eca10bc52fdfcb9" hs_bindgen_8eca10bc52fdfcb9 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated_ptr #-}

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8eca10bc52fdfcb9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_requires_entire_message_ptr@
-}
foreign import ccall unsafe "hs_bindgen_403bbc73f97a5b1f" hs_bindgen_403bbc73f97a5b1f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message_ptr #-}

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:579:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_403bbc73f97a5b1f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_default_nonce_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cb7f1d15aa0f019f" hs_bindgen_cb7f1d15aa0f019f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length_ptr #-}

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cb7f1d15aa0f019f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0dbd882818194079" hs_bindgen_0dbd882818194079 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity_ptr #-}

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:590:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0dbd882818194079

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_ideal_update_granularity_ptr@
-}
foreign import ccall unsafe "hs_bindgen_54512e500560896f" hs_bindgen_54512e500560896f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity_ptr #-}

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54512e500560896f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_query_keylen_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a20c3574c3f84438" hs_bindgen_a20c3574c3f84438 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen_ptr #-}

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:602:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a20c3574c3f84438

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7ab0e65a9a45ac3e" hs_bindgen_7ab0e65a9a45ac3e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec_ptr #-}

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:608:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ab0e65a9a45ac3e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a4a92f26368bdc7b" hs_bindgen_a4a92f26368bdc7b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key_ptr #-}

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a4a92f26368bdc7b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_reset_ptr@
-}
foreign import ccall unsafe "hs_bindgen_692ce19887378951" hs_bindgen_692ce19887378951 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset_ptr #-}

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:623:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_692ce19887378951

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_set_associated_data_ptr@
-}
foreign import ccall unsafe "hs_bindgen_49bc7c78294b0bbc" hs_bindgen_49bc7c78294b0bbc ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data_ptr #-}

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:628:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49bc7c78294b0bbc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_start_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a3ee64877e5de2c0" hs_bindgen_a3ee64877e5de2c0 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start_ptr #-}

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:633:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start_ptr :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3ee64877e5de2c0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b641fe208b226222" hs_bindgen_b641fe208b226222 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update_ptr #-}

{-|

  Encrypt/Decrypt some data and/or finalize the encryption/decryption

  This encrypts as many bytes from @input_bytes@ into @output_bytes@ as possible. Unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, this function will consume bytes in multiples of botan_cipher_get_update_granularity(). @input_consumed@ and @output_written@ will be set accordingly and it is the caller's responsibility to adapt their buffers accordingly before calling this function again. Note that, unless ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` is set, the cipher will at most generate @input_size@ output bytes.

  Eventually, the caller must set the ``BOTAN_CIPHER_UPDATE_FLAG_FINAL`` flag to indicate that no more input will be provided. This will cause the cipher to consume all given input bytes and produce the final output; or return a ``BOTAN_FFI_ERROR_INSUFFICIENT_BUFFER_SPACE`` error if the given output buffer was too small. In the latter case, @output_written@ will be set to the required buffer size. Calling again with ``BOTAN_CIPHER_UPDATE_FLAG_FINAL``, a big enough buffer and no further input will then produce the final output.

  Note that some ciphers require the entire message to be provided before any output is produced.

  __see:__ botan_cipher_requires_entire_message().

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:660:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update_ptr :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b641fe208b226222

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2677ceb2aa570dfc" hs_bindgen_2677ceb2aa570dfc ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear_ptr #-}

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:672:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2677ceb2aa570dfc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9f66be082c7fb8be" hs_bindgen_9f66be082c7fb8be ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy_ptr #-}

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:678:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy_ptr :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9f66be082c7fb8be

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pbkdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b913dbe5784ef4ea" hs_bindgen_b913dbe5784ef4ea ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf_ptr #-}

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:697:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b913dbe5784ef4ea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pbkdf_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_45c9015587f86eb8" hs_bindgen_45c9015587f86eb8 ::
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

__defined at:__ @botan\/ffi.h:730:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45c9015587f86eb8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pwdhash_ptr@
-}
foreign import ccall unsafe "hs_bindgen_12584884604096de" hs_bindgen_12584884604096de ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_ptr #-}

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:754:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_12584884604096de

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pwdhash_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ddfd73a5c14d26e5" hs_bindgen_ddfd73a5c14d26e5 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed_ptr #-}

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:781:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddfd73a5c14d26e5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_scrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bb03e4da8bf996e0" hs_bindgen_bb03e4da8bf996e0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt_ptr #-}

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:800:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bb03e4da8bf996e0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_kdf_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4d8fc940eb97853c" hs_bindgen_4d8fc940eb97853c ::
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

__defined at:__ @botan\/ffi.h:823:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d8fc940eb97853c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c4f97dfbcbe8f48" hs_bindgen_8c4f97dfbcbe8f48 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init_ptr #-}

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:841:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c4f97dfbcbe8f48

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d423755363533abe" hs_bindgen_d423755363533abe ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy_ptr #-}

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:847:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d423755363533abe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5f2c3d24e35470b9" hs_bindgen_5f2c3d24e35470b9 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear_ptr #-}

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:853:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f2c3d24e35470b9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_set_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f1fa263cf87d2927" hs_bindgen_f1fa263cf87d2927 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key_ptr #-}

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:858:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f1fa263cf87d2927

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_block_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4bd16227eeb4cb3c" hs_bindgen_4bd16227eeb4cb3c ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size_ptr #-}

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4bd16227eeb4cb3c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_encrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_04c71c164bcdc5b8" hs_bindgen_04c71c164bcdc5b8 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks_ptr #-}

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:870:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_04c71c164bcdc5b8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_decrypt_blocks_ptr@
-}
foreign import ccall unsafe "hs_bindgen_33cf4fe10d538f43" hs_bindgen_33cf4fe10d538f43 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks_ptr #-}

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:876:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33cf4fe10d538f43

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_69dfe9d2ef3102f8" hs_bindgen_69dfe9d2ef3102f8 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name_ptr #-}

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:884:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69dfe9d2ef3102f8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_block_cipher_get_keyspec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0db1cab382185647" hs_bindgen_0db1cab382185647 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec_ptr #-}

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:894:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec_ptr :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0db1cab382185647

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b4d5851970ba659f" hs_bindgen_b4d5851970ba659f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init_ptr #-}

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:907:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4d5851970ba659f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9451d76551178404" hs_bindgen_9451d76551178404 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy_ptr #-}

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:913:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9451d76551178404

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_hex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f3e6866e5b712ab1" hs_bindgen_f3e6866e5b712ab1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex_ptr #-}

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:918:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3e6866e5b712ab1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_15d3c17672b37188" hs_bindgen_15d3c17672b37188 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str_ptr #-}

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:923:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15d3c17672b37188

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_clear_ptr@
-}
foreign import ccall unsafe "hs_bindgen_16278af6bd0f56b0" hs_bindgen_16278af6bd0f56b0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_ptr #-}

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:928:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16278af6bd0f56b0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_int_ptr@
-}
foreign import ccall unsafe "hs_bindgen_13724acde6a82c66" hs_bindgen_13724acde6a82c66 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int_ptr #-}

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:933:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int_ptr :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_13724acde6a82c66

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_mp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d4fc7815503d9e2d" hs_bindgen_d4fc7815503d9e2d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp_ptr #-}

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:938:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d4fc7815503d9e2d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_550ce8118a05792f" hs_bindgen_550ce8118a05792f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str_ptr #-}

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:943:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_550ce8118a05792f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_from_radix_str_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9202bfd38139b329" hs_bindgen_9202bfd38139b329 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str_ptr #-}

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:949:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9202bfd38139b329

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_num_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7cece6541c29afe0" hs_bindgen_7cece6541c29afe0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits_ptr #-}

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:954:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cece6541c29afe0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_num_bytes_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e76b7e4fb521381f" hs_bindgen_e76b7e4fb521381f ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes_ptr #-}

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:959:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e76b7e4fb521381f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_28e4e3d4e8b2db22" hs_bindgen_28e4e3d4e8b2db22 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin_ptr #-}

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:964:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28e4e3d4e8b2db22

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_from_bin_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5b19b300c30468a3" hs_bindgen_5b19b300c30468a3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin_ptr #-}

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:969:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin_ptr :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b19b300c30468a3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_to_uint32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ff34900eddddff48" hs_bindgen_ff34900eddddff48 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32_ptr #-}

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:974:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32_ptr :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ff34900eddddff48

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_positive_ptr@
-}
foreign import ccall unsafe "hs_bindgen_59653a804f07789d" hs_bindgen_59653a804f07789d ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive_ptr #-}

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:981:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59653a804f07789d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_negative_ptr@
-}
foreign import ccall unsafe "hs_bindgen_88bd6c5541853f0a" hs_bindgen_88bd6c5541853f0a ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative_ptr #-}

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:986:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_88bd6c5541853f0a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_flip_sign_ptr@
-}
foreign import ccall unsafe "hs_bindgen_42d77e13a77f0f1c" hs_bindgen_42d77e13a77f0f1c ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign_ptr #-}

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:988:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_42d77e13a77f0f1c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_zero_ptr@
-}
foreign import ccall unsafe "hs_bindgen_580b4a6ec3bbdc2c" hs_bindgen_580b4a6ec3bbdc2c ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero_ptr #-}

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:990:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_580b4a6ec3bbdc2c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_odd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5aa86c85a4e30025" hs_bindgen_5aa86c85a4e30025 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd_ptr #-}

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:992:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5aa86c85a4e30025

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_even_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a168558d1038f19f" hs_bindgen_a168558d1038f19f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even_ptr #-}

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:993:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even_ptr :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a168558d1038f19f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_add_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6f4a0317a2a796ff" hs_bindgen_6f4a0317a2a796ff ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32_ptr #-}

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:995:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f4a0317a2a796ff

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_sub_u32_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3413602c68e128cf" hs_bindgen_3413602c68e128cf ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32_ptr #-}

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:996:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3413602c68e128cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_add_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8c9fbd7e4a671fb6" hs_bindgen_8c9fbd7e4a671fb6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add_ptr #-}

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:998:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c9fbd7e4a671fb6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_sub_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0dfe00300e3bdabf" hs_bindgen_0dfe00300e3bdabf ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_ptr #-}

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:999:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0dfe00300e3bdabf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_253d4af8a5cf3000" hs_bindgen_253d4af8a5cf3000 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1000:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_253d4af8a5cf3000

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_div_ptr@
-}
foreign import ccall unsafe "hs_bindgen_23743c14adbdc7ea" hs_bindgen_23743c14adbdc7ea ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div_ptr #-}

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1003:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23743c14adbdc7ea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mod_mul_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cd22af55c909f75e" hs_bindgen_cd22af55c909f75e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul_ptr #-}

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1006:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd22af55c909f75e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_equal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_10d554e03a917f7e" hs_bindgen_10d554e03a917f7e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal_ptr #-}

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1013:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_10d554e03a917f7e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_cmp_ptr@
-}
foreign import ccall unsafe "hs_bindgen_48609be4d39a3766" hs_bindgen_48609be4d39a3766 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp_ptr #-}

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1020:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48609be4d39a3766

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_swap_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6a29c9f0abd0ea47" hs_bindgen_6a29c9f0abd0ea47 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap_ptr #-}

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1025:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a29c9f0abd0ea47

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_powmod_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f4b7e4d3494d3ce9" hs_bindgen_f4b7e4d3494d3ce9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod_ptr #-}

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1029:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4b7e4d3494d3ce9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_lshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_117c340ed9db4fc7" hs_bindgen_117c340ed9db4fc7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift_ptr #-}

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1031:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_117c340ed9db4fc7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rshift_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a25e27d0452c93a7" hs_bindgen_a25e27d0452c93a7 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift_ptr #-}

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1032:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a25e27d0452c93a7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_mod_inverse_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0433144f2a98176f" hs_bindgen_0433144f2a98176f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse_ptr #-}

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1034:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0433144f2a98176f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rand_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_18e43bebc5aefd10" hs_bindgen_18e43bebc5aefd10 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits_ptr #-}

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1036:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18e43bebc5aefd10

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_rand_range_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3dee11bd750d1768" hs_bindgen_3dee11bd750d1768 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range_ptr #-}

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1039:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3dee11bd750d1768

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_gcd_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89cc3bfeea52408a" hs_bindgen_89cc3bfeea52408a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd_ptr #-}

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1041:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89cc3bfeea52408a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_is_prime_ptr@
-}
foreign import ccall unsafe "hs_bindgen_129c70dc5349da29" hs_bindgen_129c70dc5349da29 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime_ptr #-}

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1048:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_129c70dc5349da29

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_get_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7077ddce91b233b2" hs_bindgen_7077ddce91b233b2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit_ptr #-}

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1055:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7077ddce91b233b2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_set_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f57530d4f92f58a9" hs_bindgen_f57530d4f92f58a9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit_ptr #-}

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1060:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f57530d4f92f58a9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mp_clear_bit_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c78948bcdc65bb78" hs_bindgen_c78948bcdc65bb78 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit_ptr #-}

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1065:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit_ptr :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c78948bcdc65bb78

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_bcrypt_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_14e0bdf5a28196a3" hs_bindgen_14e0bdf5a28196a3 ::
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

__defined at:__ @botan\/ffi.h:1083:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate_ptr :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_14e0bdf5a28196a3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_bcrypt_is_valid_ptr@
-}
foreign import ccall unsafe "hs_bindgen_183947cebeda9516" hs_bindgen_183947cebeda9516 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid_ptr #-}

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1094:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_183947cebeda9516

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bdf82cf228dae4cc" hs_bindgen_bdf82cf228dae4cc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ptr #-}

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1110:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bdf82cf228dae4cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_956c2e4b28865435" hs_bindgen_956c2e4b28865435 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key_ptr #-}

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1114:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_956c2e4b28865435

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_43377ded5f82fa6c" hs_bindgen_43377ded5f82fa6c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1117:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_43377ded5f82fa6c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7b9446d1645ac2e9" hs_bindgen_7b9446d1645ac2e9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1119:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7b9446d1645ac2e9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_05e719e39015d07a" hs_bindgen_05e719e39015d07a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1121:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_05e719e39015d07a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fbf3fb3ec559aa89" hs_bindgen_fbf3fb3ec559aa89 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece_ptr #-}

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1123:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fbf3fb3ec559aa89

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_37c4d3bbc078706c" hs_bindgen_37c4d3bbc078706c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1125:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_37c4d3bbc078706c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eeb4319e080bec8b" hs_bindgen_eeb4319e080bec8b ::
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

__defined at:__ @botan\/ffi.h:1145:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eeb4319e080bec8b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_create_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4ca4c2fc7cab5c44" hs_bindgen_4ca4c2fc7cab5c44 ::
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

__defined at:__ @botan\/ffi.h:1167:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4ca4c2fc7cab5c44

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_87072f48b1e3ed74" hs_bindgen_87072f48b1e3ed74 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ptr #-}

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1175:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87072f48b1e3ed74

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_66c069c572cb316e" hs_bindgen_66c069c572cb316e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1180:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy_ptr :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_66c069c572cb316e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e76f0d90fac2c534" hs_bindgen_e76f0d90fac2c534 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_ptr #-}

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1193:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e76f0d90fac2c534

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bbac398b01c14e97" hs_bindgen_bbac398b01c14e97 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der_ptr #-}

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1198:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bbac398b01c14e97

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_76e0ff75bdec4447" hs_bindgen_76e0ff75bdec4447 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem_ptr #-}

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1203:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76e0ff75bdec4447

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4351a76beb57a751" hs_bindgen_4351a76beb57a751 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_raw_ptr #-}

{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1208:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4351a76beb57a751

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e1b8578292a4ea58" hs_bindgen_e1b8578292a4ea58 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1210:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e1b8578292a4ea58

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a751937edb79d0fb" hs_bindgen_a751937edb79d0fb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1217:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a751937edb79d0fb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_pbkdf_msec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1f52e11179d1eb5e" hs_bindgen_1f52e11179d1eb5e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec_ptr #-}

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1232:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1f52e11179d1eb5e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_encrypted_pbkdf_iter_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fc9fbd4becee9857" hs_bindgen_fc9fbd4becee9857 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter_ptr #-}

{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1247:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fc9fbd4becee9857

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6cdc71f25bd2f767" hs_bindgen_6cdc71f25bd2f767 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1264:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6cdc71f25bd2f767

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_der_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8a2d6d9f53257c9" hs_bindgen_b8a2d6d9f53257c9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed_ptr #-}

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1279:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8a2d6d9f53257c9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c41d53cd2b98f599" hs_bindgen_c41d53cd2b98f599 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1295:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c41d53cd2b98f599

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_encrypted_pem_timed_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e1711691a22143eb" hs_bindgen_e1711691a22143eb ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed_ptr #-}

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1310:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e1711691a22143eb

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5eb38bcf4ef82cdf" hs_bindgen_5eb38bcf4ef82cdf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ptr #-}

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1321:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5eb38bcf4ef82cdf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_export_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_47d06b5ab76ee973" hs_bindgen_47d06b5ab76ee973 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey_ptr #-}

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1323:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47d06b5ab76ee973

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_export_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3979b37ccfb3b38e" hs_bindgen_3979b37ccfb3b38e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export_ptr #-}

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3979b37ccfb3b38e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_der_ptr@
-}
foreign import ccall unsafe "hs_bindgen_73dea15c3fe77c18" hs_bindgen_73dea15c3fe77c18 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der_ptr #-}

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1330:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_73dea15c3fe77c18

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_pem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dcd844b7e9068b98" hs_bindgen_dcd844b7e9068b98 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem_ptr #-}

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1335:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dcd844b7e9068b98

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_raw_ptr@
-}
foreign import ccall unsafe "hs_bindgen_527fb4f13ad93338" hs_bindgen_527fb4f13ad93338 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_raw_ptr #-}

{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1340:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_raw_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_527fb4f13ad93338

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_algo_name_ptr@
-}
foreign import ccall unsafe "hs_bindgen_760cc061ed64a330" hs_bindgen_760cc061ed64a330 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name_ptr #-}

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1342:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_760cc061ed64a330

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_check_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4722133500e430d4" hs_bindgen_4722133500e430d4 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key_ptr #-}

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1347:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4722133500e430d4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_estimated_strength_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3f2e4c21714ced5b" hs_bindgen_3f2e4c21714ced5b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength_ptr #-}

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1349:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f2e4c21714ced5b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2b8487e072d58a20" hs_bindgen_2b8487e072d58a20 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint_ptr #-}

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1352:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint_ptr :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2b8487e072d58a20

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_829debcd9b88668b" hs_bindgen_829debcd9b88668b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_829debcd9b88668b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_eddbaa3e30d92a08" hs_bindgen_eddbaa3e30d92a08 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field_ptr #-}

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1362:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eddbaa3e30d92a08

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_get_field_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d6e5bf9f3079278e" hs_bindgen_d6e5bf9f3079278e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field_ptr #-}

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1364:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d6e5bf9f3079278e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_639aab9a7bce8cd6" hs_bindgen_639aab9a7bce8cd6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1369:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_639aab9a7bce8cd6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_rsa_pkcs1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32b3570933262547" hs_bindgen_32b3570933262547 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1_ptr #-}

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1371:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32b3570933262547

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_411e1430160e1418" hs_bindgen_411e1430160e1418 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1374:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_411e1430160e1418

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8e41e8eb1b7ce27f" hs_bindgen_8e41e8eb1b7ce27f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1376:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e41e8eb1b7ce27f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_d_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3758bd54c0d67e98" hs_bindgen_3758bd54c0d67e98 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1378:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3758bd54c0d67e98

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6d138d0fb95e3316" hs_bindgen_6d138d0fb95e3316 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1380:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d138d0fb95e3316

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6096d6f996bae227" hs_bindgen_6096d6f996bae227 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1382:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6096d6f996bae227

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_rsa_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2b0c462a204131e8" hs_bindgen_2b0c462a204131e8 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1385:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2b0c462a204131e8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_rsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_83a39cbd6f7c8798" hs_bindgen_83a39cbd6f7c8798 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1387:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_83a39cbd6f7c8798

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_rsa_get_e_ptr@
-}
foreign import ccall unsafe "hs_bindgen_72d3954186ea11ce" hs_bindgen_72d3954186ea11ce ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1390:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_72d3954186ea11ce

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_rsa_get_n_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c554e26c7dcafb9a" hs_bindgen_c554e26c7dcafb9a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n_ptr #-}

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1392:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c554e26c7dcafb9a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b8508064dfddf7ab" hs_bindgen_b8508064dfddf7ab ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1398:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8508064dfddf7ab

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6df7b6f37f2d41cf" hs_bindgen_6df7b6f37f2d41cf ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1401:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6df7b6f37f2d41cf

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_dsa_get_x_ptr@
-}
foreign import ccall unsafe "hs_bindgen_554dcf5acb32a441" hs_bindgen_554dcf5acb32a441 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x_ptr #-}

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1404:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_554dcf5acb32a441

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_p_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7a45653cb39ee483" hs_bindgen_7a45653cb39ee483 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1407:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a45653cb39ee483

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_q_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cfff3c4cec0ece8e" hs_bindgen_cfff3c4cec0ece8e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1409:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cfff3c4cec0ece8e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_g_ptr@
-}
foreign import ccall unsafe "hs_bindgen_731c424b65745794" hs_bindgen_731c424b65745794 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1411:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_731c424b65745794

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_dsa_get_y_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7c30807cdbf5e825" hs_bindgen_7c30807cdbf5e825 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y_ptr #-}

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1413:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y_ptr :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c30807cdbf5e825

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e02394294e50eff9" hs_bindgen_e02394294e50eff9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1428:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e02394294e50eff9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_dh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_aaae673691fadbe1" hs_bindgen_aaae673691fadbe1 ::
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

__defined at:__ @botan\/ffi.h:1442:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aaae673691fadbe1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_752e2e0146e2e627" hs_bindgen_752e2e0146e2e627 ::
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

__defined at:__ @botan\/ffi.h:1460:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_752e2e0146e2e627

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_elgamal_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0cf90dc1f340fdc0" hs_bindgen_0cf90dc1f340fdc0 ::
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

__defined at:__ @botan\/ffi.h:1475:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0cf90dc1f340fdc0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b5299d0f7e693f28" hs_bindgen_b5299d0f7e693f28 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1481:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5299d0f7e693f28

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ed25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_270dce5bdd7d01ec" hs_bindgen_270dce5bdd7d01ec ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1483:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_270dce5bdd7d01ec

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_ed25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b2c76deb4bc8896b" hs_bindgen_b2c76deb4bc8896b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1485:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b2c76deb4bc8896b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ed25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e2e1528d9a489b6f" hs_bindgen_e2e1528d9a489b6f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1487:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2e1528d9a489b6f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_32aa0d11b3d55b4d" hs_bindgen_32aa0d11b3d55b4d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1493:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32aa0d11b3d55b4d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ed448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_55efb068f3db06cc" hs_bindgen_55efb068f3db06cc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1495:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55efb068f3db06cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_ed448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_38b629adb85e195b" hs_bindgen_38b629adb85e195b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1497:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_38b629adb85e195b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ed448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6ee652a9320a4442" hs_bindgen_6ee652a9320a4442 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1499:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6ee652a9320a4442

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_53a57246c15fa3b7" hs_bindgen_53a57246c15fa3b7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1505:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_53a57246c15fa3b7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_x25519_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d22dca283f97d44c" hs_bindgen_d22dca283f97d44c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1507:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d22dca283f97d44c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_x25519_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5943bffe5f4eb4a5" hs_bindgen_5943bffe5f4eb4a5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1509:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5943bffe5f4eb4a5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_x25519_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c1bf61a1a1882448" hs_bindgen_c1bf61a1a1882448 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1511:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c1bf61a1a1882448

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c420ea284a3735a4" hs_bindgen_c420ea284a3735a4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1517:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c420ea284a3735a4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_x448_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1a2b5bc12351cbc9" hs_bindgen_1a2b5bc12351cbc9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1519:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a2b5bc12351cbc9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_x448_get_privkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a7b16aa0c593ce62" hs_bindgen_a7b16aa0c593ce62 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey_ptr #-}

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1521:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey_ptr :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a7b16aa0c593ce62

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_x448_get_pubkey_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e85b4bb76615298f" hs_bindgen_e85b4bb76615298f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey_ptr #-}

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1523:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey_ptr :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e85b4bb76615298f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5ee3aa8968bda246" hs_bindgen_5ee3aa8968bda246 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1530:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5ee3aa8968bda246

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ml_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_092b5e6d45126ae8" hs_bindgen_092b5e6d45126ae8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1533:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_092b5e6d45126ae8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8ef3d03913d7735c" hs_bindgen_8ef3d03913d7735c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1539:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8ef3d03913d7735c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_kyber_ptr@
-}
foreign import ccall unsafe "hs_bindgen_10d56590b4af6f6c" hs_bindgen_10d56590b4af6f6c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1541:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_10d56590b4af6f6c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d7049769a38db45c" hs_bindgen_d7049769a38db45c ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1545:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d7049769a38db45c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_kyber_raw_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f8a3187c394f5338" hs_bindgen_f8a3187c394f5338 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key_ptr #-}

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1549:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f8a3187c394f5338

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_52ee0b353f231110" hs_bindgen_52ee0b353f231110 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_frodokem_ptr #-}

{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1556:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_52ee0b353f231110

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_frodokem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f5f36e41fc387189" hs_bindgen_f5f36e41fc387189 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_frodokem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1559:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_frodokem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f5f36e41fc387189

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_647ebb57af5475e7" hs_bindgen_647ebb57af5475e7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_classic_mceliece_ptr #-}

{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1566:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_647ebb57af5475e7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_classic_mceliece_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dad6a112dd6027aa" hs_bindgen_dad6a112dd6027aa ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_classic_mceliece_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1572:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_classic_mceliece_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dad6a112dd6027aa

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5a43ba049bdc1ebc" hs_bindgen_5a43ba049bdc1ebc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1582:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a43ba049bdc1ebc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ml_kem_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e2779e8e8d58d166" hs_bindgen_e2779e8e8d58d166 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ml_kem_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1585:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ml_kem_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2779e8e8d58d166

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5848712d54d44782" hs_bindgen_5848712d54d44782 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1592:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5848712d54d44782

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_slh_dsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_28a62256f98419af" hs_bindgen_28a62256f98419af ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_slh_dsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1595:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_slh_dsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28a62256f98419af

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_ecc_key_used_explicit_encoding_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cd4281b78e18688c" hs_bindgen_cd4281b78e18688c ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding_ptr #-}

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1601:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding_ptr :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cd4281b78e18688c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_925d9697e49fe0c5" hs_bindgen_925d9697e49fe0c5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1604:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_925d9697e49fe0c5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ecdsa_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8dcfd2328d8f18fe" hs_bindgen_8dcfd2328d8f18fe ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1607:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8dcfd2328d8f18fe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9c4ac753235e7701" hs_bindgen_9c4ac753235e7701 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1610:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c4ac753235e7701

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_ecdh_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b16cc142bc156cf5" hs_bindgen_b16cc142bc156cf5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh_ptr #-}

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1613:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b16cc142bc156cf5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e3268dafa05378df" hs_bindgen_e3268dafa05378df ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1616:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e3268dafa05378df

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_sm2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_3907b74b6d634011" hs_bindgen_3907b74b6d634011 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1619:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3907b74b6d634011

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e3f60898b7c48fdc" hs_bindgen_e3f60898b7c48fdc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1623:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e3f60898b7c48fdc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_privkey_load_sm2_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca6e8cc5b65e135e" hs_bindgen_ca6e8cc5b65e135e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc_ptr #-}

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1627:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca6e8cc5b65e135e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_sm2_compute_za_ptr@
-}
foreign import ccall unsafe "hs_bindgen_bd784a134dab4ff9" hs_bindgen_bd784a134dab4ff9 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za_ptr #-}

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1630:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd784a134dab4ff9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pubkey_view_ec_public_point_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fb36d5c3a6401e08" hs_bindgen_fb36d5c3a6401e08 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point_ptr #-}

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1637:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fb36d5c3a6401e08

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_60874a9b8ee7704d" hs_bindgen_60874a9b8ee7704d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1645:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_60874a9b8ee7704d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0b5144f4dfe481ec" hs_bindgen_0b5144f4dfe481ec ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1650:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b5144f4dfe481ec

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1c233c0414598bf8" hs_bindgen_1c233c0414598bf8 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1653:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c233c0414598bf8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d27ba913be062555" hs_bindgen_d27ba913be062555 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1656:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_ptr :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d27ba913be062555

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6949a3245b54d91d" hs_bindgen_6949a3245b54d91d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1669:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6949a3245b54d91d

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89729e1da8f39cd4" hs_bindgen_89729e1da8f39cd4 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1674:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89729e1da8f39cd4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_26810d6540e21021" hs_bindgen_26810d6540e21021 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1677:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_26810d6540e21021

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4a7b110864d6cff7" hs_bindgen_4a7b110864d6cff7 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_ptr #-}

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1680:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_ptr :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a7b110864d6cff7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_850dcde59e09621c" hs_bindgen_850dcde59e09621c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1692:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_850dcde59e09621c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_323bb95a0cc27922" hs_bindgen_323bb95a0cc27922 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1697:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_323bb95a0cc27922

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_output_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c8f42712a3887c2b" hs_bindgen_c8f42712a3887c2b ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1699:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c8f42712a3887c2b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_567fb86110740c7b" hs_bindgen_567fb86110740c7b ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1701:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_567fb86110740c7b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_sign_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_984e8a1f27308035" hs_bindgen_984e8a1f27308035 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1704:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish_ptr :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_984e8a1f27308035

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_2b7a4e6c12cbe004" hs_bindgen_2b7a4e6c12cbe004 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1712:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2b7a4e6c12cbe004

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_1de1856feb7a47cc" hs_bindgen_1de1856feb7a47cc ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1720:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1de1856feb7a47cc

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_update_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e96298b34cd5cc4a" hs_bindgen_e96298b34cd5cc4a ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1722:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e96298b34cd5cc4a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_verify_finish_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c82c50bf4661f5fe" hs_bindgen_c82c50bf4661f5fe ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish_ptr #-}

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1723:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish_ptr :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c82c50bf4661f5fe

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6248c31d151f2dc1" hs_bindgen_6248c31d151f2dc1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1731:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6248c31d151f2dc1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d12e651c88f88a4b" hs_bindgen_d12e651c88f88a4b ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1736:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d12e651c88f88a4b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_export_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e13c8476caf7b068" hs_bindgen_e13c8476caf7b068 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1738:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e13c8476caf7b068

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_view_public_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f3201a066fd07259" hs_bindgen_f3201a066fd07259 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1741:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public_ptr :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f3201a066fd07259

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_81ecefbdc44a69a9" hs_bindgen_81ecefbdc44a69a9 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1743:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_81ecefbdc44a69a9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_key_agreement_ptr@
-}
foreign import ccall unsafe "hs_bindgen_6da925fa5d63a672" hs_bindgen_6da925fa5d63a672 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_ptr #-}

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1746:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_ptr :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6da925fa5d63a672

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_47a2bbd2e6e37779" hs_bindgen_47a2bbd2e6e37779 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1760:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47a2bbd2e6e37779

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d36baa40cf3f4275" hs_bindgen_d36baa40cf3f4275 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1765:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d36baa40cf3f4275

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_419fefd96f39f4c8" hs_bindgen_419fefd96f39f4c8 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1768:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_419fefd96f39f4c8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_63701091dc3f4a89" hs_bindgen_63701091dc3f4a89 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1773:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_63701091dc3f4a89

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_encrypt_create_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_51a877f1b66f29f4" hs_bindgen_51a877f1b66f29f4 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1777:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51a877f1b66f29f4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_create_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0e0dc175ebbd76c5" hs_bindgen_0e0dc175ebbd76c5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1790:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0e0dc175ebbd76c5

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4321d1e239dce1d2" hs_bindgen_4321d1e239dce1d2 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1795:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4321d1e239dce1d2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_shared_key_length_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f8d5cc16a97feb83" hs_bindgen_f8d5cc16a97feb83 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1798:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f8d5cc16a97feb83

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pk_op_kem_decrypt_shared_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8f761c85657ca082" hs_bindgen_8f761c85657ca082 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_ptr #-}

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1803:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_ptr :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f761c85657ca082

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_pkcs_hash_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e6a489b17ed7195c" hs_bindgen_e6a489b17ed7195c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id_ptr #-}

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1816:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6a489b17ed7195c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mceies_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_86309ad92f7acf16" hs_bindgen_86309ad92f7acf16 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1823:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt_ptr :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86309ad92f7acf16

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_mceies_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5d66a9543c903d3f" hs_bindgen_5d66a9543c903d3f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt_ptr #-}

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1838:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt_ptr :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d66a9543c903d3f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_59623cb48b99415a" hs_bindgen_59623cb48b99415a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1853:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59623cb48b99415a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7eb6d1cac8c29838" hs_bindgen_7eb6d1cac8c29838 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1854:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7eb6d1cac8c29838

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_5d87db2cde342ba3" hs_bindgen_5d87db2cde342ba3 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1859:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d87db2cde342ba3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_dup_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dbd2cfded2ebe1f8" hs_bindgen_dbd2cfded2ebe1f8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup_ptr #-}

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1861:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dbd2cfded2ebe1f8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_time_starts_ptr@
-}
foreign import ccall unsafe "hs_bindgen_109b2192f4d3b167" hs_bindgen_109b2192f4d3b167 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1864:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_109b2192f4d3b167

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_time_expires_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d995ce50e91802cd" hs_bindgen_d995ce50e91802cd ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1865:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d995ce50e91802cd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_not_before_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4b6cbbb4ee4278a3" hs_bindgen_4b6cbbb4ee4278a3 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1867:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4b6cbbb4ee4278a3

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_not_after_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0d1cccc9f316e211" hs_bindgen_0d1cccc9f316e211 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after_ptr #-}

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1868:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0d1cccc9f316e211

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_fingerprint_ptr@
-}
foreign import ccall unsafe "hs_bindgen_af540bedd16d6eea" hs_bindgen_af540bedd16d6eea ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1871:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_af540bedd16d6eea

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_serial_number_ptr@
-}
foreign import ccall unsafe "hs_bindgen_89ca4e035d644f25" hs_bindgen_89ca4e035d644f25 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1873:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89ca4e035d644f25

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_authority_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a9c553786605e68e" hs_bindgen_a9c553786605e68e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1874:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a9c553786605e68e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_subject_key_id_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b627ef33f66a3e85" hs_bindgen_b627ef33f66a3e85 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1875:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b627ef33f66a3e85

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_f2fc0766560e31b2" hs_bindgen_f2fc0766560e31b2 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1877:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2fc0766560e31b2

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_view_public_key_bits_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e3339978aedc12e6" hs_bindgen_e3339978aedc12e6 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1880:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e3339978aedc12e6

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_public_key_ptr@
-}
foreign import ccall unsafe "hs_bindgen_a6081d9c8a2d9e28" hs_bindgen_a6081d9c8a2d9e28 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1882:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a6081d9c8a2d9e28

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_issuer_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fa99ad6ccb243514" hs_bindgen_fa99ad6ccb243514 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1885:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa99ad6ccb243514

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_get_subject_dn_ptr@
-}
foreign import ccall unsafe "hs_bindgen_dae3037c44b358ef" hs_bindgen_dae3037c44b358ef ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn_ptr #-}

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1889:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dae3037c44b358ef

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_to_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_605517747de2e548" hs_bindgen_605517747de2e548 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1892:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_605517747de2e548

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_view_as_string_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e6709e460ee0fa63" hs_bindgen_e6709e460ee0fa63 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string_ptr #-}

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1895:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6709e460ee0fa63

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_allowed_usage_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0a8cd248fc166dd1" hs_bindgen_0a8cd248fc166dd1 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage_ptr #-}

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1911:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a8cd248fc166dd1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_hostname_match_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fb85620971cfe993" hs_bindgen_fb85620971cfe993 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match_ptr #-}

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1917:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match_ptr :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fb85620971cfe993

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_verify_ptr@
-}
foreign import ccall unsafe "hs_bindgen_447ec54b6f1a6953" hs_bindgen_447ec54b6f1a6953 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_ptr #-}

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1928:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_447ec54b6f1a6953

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_validation_status_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4996b01984f79d43" hs_bindgen_4996b01984f79d43 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status_ptr #-}

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1943:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status_ptr :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4996b01984f79d43

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_load_file_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9a3a44039cda2c68" hs_bindgen_9a3a44039cda2c68 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1951:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a3a44039cda2c68

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_load_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9499bfd043f53a35" hs_bindgen_9499bfd043f53a35 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_ptr #-}

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1953:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9499bfd043f53a35

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_crl_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_70b6286243495240" hs_bindgen_70b6286243495240 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy_ptr #-}

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1955:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70b6286243495240

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_is_revoked_ptr@
-}
foreign import ccall unsafe "hs_bindgen_7bf3f810e9b1688a" hs_bindgen_7bf3f810e9b1688a ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked_ptr #-}

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1961:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked_ptr :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bf3f810e9b1688a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_x509_cert_verify_with_crl_ptr@
-}
foreign import ccall unsafe "hs_bindgen_edd4bb19009c536f" hs_bindgen_edd4bb19009c536f ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl_ptr #-}

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1968:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl_ptr :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_edd4bb19009c536f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_key_wrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_529740cdba6a9a3e" hs_bindgen_529740cdba6a9a3e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394_ptr #-}

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1986:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_529740cdba6a9a3e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_key_unwrap3394_ptr@
-}
foreign import ccall unsafe "hs_bindgen_8f7d4541d0d1256c" hs_bindgen_8f7d4541d0d1256c ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394_ptr #-}

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1995:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8f7d4541d0d1256c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_nist_kw_enc_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ef787505f57a7810" hs_bindgen_ef787505f57a7810 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc_ptr #-}

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2003:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef787505f57a7810

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_nist_kw_dec_ptr@
-}
foreign import ccall unsafe "hs_bindgen_9f5d1198f9a862bd" hs_bindgen_9f5d1198f9a862bd ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec_ptr #-}

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2013:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9f5d1198f9a862bd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d92ebbbfb893f435" hs_bindgen_d92ebbbfb893f435 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init_ptr #-}

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2032:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d92ebbbfb893f435

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_72d8d5b84dc6229a" hs_bindgen_72d8d5b84dc6229a ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy_ptr #-}

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2039:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy_ptr :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_72d8d5b84dc6229a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fb410059b5d772c8" hs_bindgen_fb410059b5d772c8 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate_ptr #-}

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2045:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fb410059b5d772c8

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_hotp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b98836b35576392b" hs_bindgen_b98836b35576392b ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check_ptr #-}

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2051:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check_ptr :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b98836b35576392b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0b78430423b86a6f" hs_bindgen_0b78430423b86a6f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init_ptr #-}

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2064:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b78430423b86a6f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_deb87c2f3b38d522" hs_bindgen_deb87c2f3b38d522 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy_ptr #-}

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2072:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy_ptr :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_deb87c2f3b38d522

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_generate_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ba3adf37f2774916" hs_bindgen_ba3adf37f2774916 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate_ptr #-}

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2081:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate_ptr :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba3adf37f2774916

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_totp_check_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4c29d33e90fd5385" hs_bindgen_4c29d33e90fd5385 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check_ptr #-}

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2092:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check_ptr :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c29d33e90fd5385

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_fe1_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_0759b6c2d4cc1e20" hs_bindgen_0759b6c2d4cc1e20 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init_ptr #-}

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2103:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0759b6c2d4cc1e20

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_92f98af4dc1699de" hs_bindgen_92f98af4dc1699de ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy_ptr #-}

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2110:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy_ptr :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92f98af4dc1699de

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_encrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d2ddc1df575e1829" hs_bindgen_d2ddc1df575e1829 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2113:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2ddc1df575e1829

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_fpe_decrypt_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b0670a5ee0e020f9" hs_bindgen_b0670a5ee0e020f9 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt_ptr #-}

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2116:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt_ptr :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b0670a5ee0e020f9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_ca65b7bff68ef04f" hs_bindgen_ca65b7bff68ef04f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init_ptr #-}

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2128:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca65b7bff68ef04f

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4b45ab565fe8b31c" hs_bindgen_4b45ab565fe8b31c ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy_ptr #-}

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2136:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4b45ab565fe8b31c

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_step1_ptr@
-}
foreign import ccall unsafe "hs_bindgen_d68c7df8c739b1dd" hs_bindgen_d68c7df8c739b1dd ::
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

__defined at:__ @botan\/ffi.h:2151:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d68c7df8c739b1dd

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_server_session_step2_ptr@
-}
foreign import ccall unsafe "hs_bindgen_165085e856866c6a" hs_bindgen_165085e856866c6a ::
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

__defined at:__ @botan\/ffi.h:2170:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2_ptr :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_165085e856866c6a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_generate_verifier_ptr@
-}
foreign import ccall unsafe "hs_bindgen_acaa931e84c24be9" hs_bindgen_acaa931e84c24be9 ::
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

__defined at:__ @botan\/ffi.h:2186:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_acaa931e84c24be9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_client_agree_ptr@
-}
foreign import ccall unsafe "hs_bindgen_00f7053964728b20" hs_bindgen_00f7053964728b20 ::
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

__defined at:__ @botan\/ffi.h:2213:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_00f7053964728b20

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_srp6_group_size_ptr@
-}
foreign import ccall unsafe "hs_bindgen_31ac02f1f6299e70" hs_bindgen_31ac02f1f6299e70 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size_ptr #-}

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2231:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size_ptr :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_31ac02f1f6299e70

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_zfec_encode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_e0ec2e3f45673b40" hs_bindgen_e0ec2e3f45673b40 ::
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

__defined at:__ @botan\/ffi.h:2252:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e0ec2e3f45673b40

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_zfec_decode_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b20b0332ac02fdd9" hs_bindgen_b20b0332ac02fdd9 ::
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

__defined at:__ @botan\/ffi.h:2273:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode_ptr :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b20b0332ac02fdd9

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_supports_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_c275722421f1b45a" hs_bindgen_c275722421f1b45a ::
     IO (Ptr.FunPtr (IO FC.CInt))

{-# NOINLINE botan_tpm2_supports_crypto_backend_ptr #-}

{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2298:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend_ptr :: Ptr.FunPtr (IO FC.CInt)
botan_tpm2_supports_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c275722421f1b45a

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_4f6e65c97fbb7741" hs_bindgen_4f6e65c97fbb7741 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2306:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4f6e65c97fbb7741

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_init_ex_ptr@
-}
foreign import ccall unsafe "hs_bindgen_79cf6542e3aa67d0" hs_bindgen_79cf6542e3aa67d0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_init_ex_ptr #-}

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2316:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_tpm2_ctx_init_ex_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_79cf6542e3aa67d0

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_from_esys_ptr@
-}
foreign import ccall unsafe "hs_bindgen_12ac5cfa12a36f1b" hs_bindgen_12ac5cfa12a36f1b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_from_esys_ptr #-}

{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2327:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_ctx_t) -> (Ptr.Ptr ESYS_CONTEXT) -> IO FC.CInt)
botan_tpm2_ctx_from_esys_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_12ac5cfa12a36f1b

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_cc3f1dd45ca8afa7" hs_bindgen_cc3f1dd45ca8afa7 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_enable_crypto_backend_ptr #-}

{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2339:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_ctx_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc3f1dd45ca8afa7

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_ctx_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_537bd7e0d39b4019" hs_bindgen_537bd7e0d39b4019 ::
     IO (Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_ctx_destroy_ptr #-}

{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2346:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_ctx_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_537bd7e0d39b4019

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_enable_crypto_backend_ptr@
-}
foreign import ccall unsafe "hs_bindgen_b4e2599c61834ac1" hs_bindgen_b4e2599c61834ac1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_enable_crypto_backend_ptr #-}

{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2360:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_crypto_backend_state_t) -> (Ptr.Ptr ESYS_CONTEXT) -> Botan_rng_t -> IO FC.CInt)
botan_tpm2_enable_crypto_backend_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4e2599c61834ac1

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_crypto_backend_state_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_48b209d0be0f10c4" hs_bindgen_48b209d0be0f10c4 ::
     IO (Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_crypto_backend_state_destroy_ptr #-}

{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2372:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_crypto_backend_state_t -> IO FC.CInt)
botan_tpm2_crypto_backend_state_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48b209d0be0f10c4

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_rng_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_965c2d18a2dc3789" hs_bindgen_965c2d18a2dc3789 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_rng_init_ptr #-}

{-| Initialize a random number generator object via TPM2

  [__@rng_out@ /(input)/__]: rng object to create

  [__@ctx@ /(input)/__]: TPM2 context

  [__@s1@ /(input)/__]: the first session to use (optional, may be nullptr)

  [__@s2@ /(input)/__]: the second session to use (optional, may be nullptr)

  [__@s3@ /(input)/__]: the third session to use (optional, may be nullptr)

__C declaration:__ @botan_tpm2_rng_init@

__defined at:__ @botan\/ffi.h:2383:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_rng_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> Botan_tpm2_ctx_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_rng_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_965c2d18a2dc3789

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_unauthenticated_session_init_ptr@
-}
foreign import ccall unsafe "hs_bindgen_fe7e031b2367eb9e" hs_bindgen_fe7e031b2367eb9e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_unauthenticated_session_init_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2395:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init_ptr :: Ptr.FunPtr ((Ptr.Ptr Botan_tpm2_session_t) -> Botan_tpm2_ctx_t -> IO FC.CInt)
botan_tpm2_unauthenticated_session_init_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe7e031b2367eb9e

{-| __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_get_botan_tpm2_session_destroy_ptr@
-}
foreign import ccall unsafe "hs_bindgen_09621a8d51b55ebf" hs_bindgen_09621a8d51b55ebf ::
     IO (Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt))

{-# NOINLINE botan_tpm2_session_destroy_ptr #-}

{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2402:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy_ptr :: Ptr.FunPtr (Botan_tpm2_session_t -> IO FC.CInt)
botan_tpm2_session_destroy_ptr =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_09621a8d51b55ebf
