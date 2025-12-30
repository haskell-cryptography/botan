{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_4_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_4_0
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_error_description */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_64acc4c5fe21e436 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_error_last_exception_message */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_6bb54e2a41d41eb9 (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_ffi_api_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_65fde5655b671f46 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_ffi_supports_api */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_53c5ac52bcc4b528 (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_1bafcc7ebd98dd60 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_major */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_64d4bc282e7259e0 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_minor */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0a7690706a7c779e (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_patch */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_758e4053ba4fee99 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_datestamp */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_9a26490a8f888736 (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_constant_time_compare */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76dcddf641ceca42 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_same_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9e7d8b4d5528f2ae (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_scrub_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_47db9579c2c7bb4f (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hex_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3261946924124dcf (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hex_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba977921b2584d44 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_base64_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2685ddc78030f564 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_base64_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cee9be8f1bcb9ec0 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a075b6b55a380e06 (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_init_custom */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a5cb0817bc80300 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c08badd61bb4544e (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_system_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f56f9862979f5d4b (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_reseed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_649eac91f7a991b9 (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_reseed_from_rng */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55e76379f134ed8f (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_add_entropy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b3f4a95361bc6de (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_93a0226b3f7c0033 (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f5b755451067036 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_copy_state */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_06e380172229b059 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9da1999562e8bac (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b88937272878d3db (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9dcc36b4a4f6543d (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0d7c864f485d69d0 (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87f9b142b8e80aa3 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4a46b2093e45fe3c (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c7b0423e3f5e095 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_02c8022b57fd65a1 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9bccc82012d4696f (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_262b9917c8b147fa (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_set_nonce */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d73d09132df13f23 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cca995a0da7b5c2e (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7f7d23e4bca5f244 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd53c0de2bee345e (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a63af68d4eee8fb (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d5b85b8a6e4fc1e (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29606a9739d479bb (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa7215bc593a390b (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e84916571fe51133 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ee1c92175b645fe (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_valid_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03980f7ea3c456bf (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_tag_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0b89f1419677dfb1 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_is_authenticated */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5a26cc4bf9b5ef2 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_is_authenticated;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_requires_entire_message */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74671ccef010e71a (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_requires_entire_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_default_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_65b5661bc5418205 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa2a3ec6dccd9208 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_ideal_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6472d110af779c6 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_query_keylen */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc3014f3bd051370 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a72cb1098d261e6c (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c6cd6b22d934d93 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_reset */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_876a707956e66a44 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_set_associated_data */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f868ca3886b896cb (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_start */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b02b5353e48fea4d (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a876415b19e1454a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fdfebedfcd156f96 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59c467ed01590c39 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pbkdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6f83e8f03e7fd369 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pbkdf_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e6c9ad724d88b9e0 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pwdhash */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_80aabb2b59b6821f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pwdhash_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12724fcf7df6cf0f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_scrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e51d05bf6a3ee3c2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_kdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34476a542c9be04a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5086b32cc14028f2 (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aba9100cc1b0cdf6 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bf8c6e74dbfabb6 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11c506f19eeb8e28 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b157539cbf8dbac6 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_encrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50aea5b5e2afebd2 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_decrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d67c57d0319e3181 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_525cfa628165178f (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_58d56961a8b4239c (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_41f5f994653d59ba (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_77214274e480959d (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_hex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1379604f721bfa6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbdae87b134c863b (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28719e4197a66377 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49b5a4658ecbe652 (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_mp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2453a4b87d6f4210 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_51370941b96931aa (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_radix_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_55136ecf4f5c72aa (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_num_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_77f402e848e5cac6 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_num_bytes */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f6aed97639087b9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8a62a5358b68577 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_from_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c85d8247695a2f8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_uint32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c23afd2bacada091 (void)) ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_positive */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7a479c4c1e1700c4 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_negative */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22151dae4680e17f (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_flip_sign */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7ab7786c7b0150a2 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_zero */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_93b18b63c404913a (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_odd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dcf3c2866a437be4 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_even */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42297785f1d4de08 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_add_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fff348af10fa54e9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_sub_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5cee733550af3ecc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_add */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_43dcd4a771d2e786 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_sub */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_afc1ed3c1310b1f8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_70644b03a8188d47 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_div */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1749fd80bd32355e (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mod_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4b1e117b0677f3a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7be7bad505c48825 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e125972f9dd58394 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_swap */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a1612d989c1b53b3 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_powmod */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8673af39aadf77b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_lshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4016dd5e3200f38f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e8907da751afd8d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mod_inverse */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_21de4854953e4205 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rand_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31218b1bd89d3215 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rand_range */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea37b74c8fe36f40 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_gcd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_efe3a5ef3d74ae08 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_prime */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_562b7d9205568e7d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_get_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18eba22b82760420 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1155fee8f7671763 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_clear_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11802f51649365e0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_bcrypt_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_98e05029315f6748 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_bcrypt_is_valid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_14a27e21db6a30ef (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4feadde04b56d397 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0bf456ee48d8b8e2 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b77444d2d62f491 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9af352560f09bba4 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f10bf87ceb45d528 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eb81a041bffa3102 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c49664f5de9d3831 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b94a48b7986f394d (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f0fa5545170db79b (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3258d92286eea54c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eb1c6c3188b7db25 (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3851972ceb78d653 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33374861ef0f39b9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c9754c4d866a095f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a08372a724e78c1 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f73275b9e39e91ba (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted_pbkdf_msec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d45d7dd88c8d6654 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted_pbkdf_iter */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f2b0ba1bd78fab5a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40cd4338fcc27231 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_der_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c1619b0abb634f7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a785b9abd266f09 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_pem_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6b3144406930516f (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3e6fd1d34c5eee3 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3f16aa9348bb784 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e9f898c37a462927 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf2c77b0cb7a2044 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be4f4ffcce16b9aa (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dccb7235f83b8a73 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_44a26174a627818e (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_estimated_strength */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69b54c951633427f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16b6f04f280be643 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45c1ef2c1fe2aff5 (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0d9f53c80ba005e5 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33ef0e9e2b41f67c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c0a3886d297de20 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_rsa_pkcs1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64159be9b65898f8 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_813b45eb7787b9b3 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_437b59a48d4a2d1b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_d */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddd2722823a374ec (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9eed697569305a60 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b13f1df670e76338 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a331722340745c2 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e078bf878bbe1d36 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a46c6d200ebd9b3d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a20a8cdfff5d8454 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_25715227c09c7023 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1594dca9d0d7100c (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_dsa_get_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_25db139faf335689 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e39fe67420b1c45 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33aaed7bbc091adc (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_g */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40e24e57c42bc01a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_85294fb2388d0bc9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_79bda72693975679 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e56b1c6d13fc423f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dda62d86fa0e7d9f (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_33d2197f9d0cb1e0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8334b25cf13f7bf0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1582fd43a4f0fdfc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_ed25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7079a54f45fd9ede (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ed25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_093669f8239d91ff (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4d9bc25ba29de55f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ed448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_10703d63c004bbe7 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_ed448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf695e9976a80f00 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ed448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69658e0b90b2d82b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[57]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9e211fd28ed393a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6130404349e32c1d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_x25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_211e4265d5972509 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_x25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3eef3ed9103a682f (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe99fc51f95089ba (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_x448 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8280cdd0512da518 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x448;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_x448_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba8dae651668a261 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_privkey_x448_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_x448_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_381f8318060549c3 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[56]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x448_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_58b385f63f092db9 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ca92747cc32c3dc2 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59dbefdf75dbff75 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_59e8d7582a77db90 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ecc_key_used_explicit_encoding */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_693b5c59f514a09e (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_ecc_key_used_explicit_encoding;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_487ed3b0016087b5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0a792e809729f834 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e055a3b7fb6fd052 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_86a52f588cd2d454 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_90b3eb062453007b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_84bbc6d5d5756d93 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6258ac4f376cd45b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30e357979a98640e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_sm2_compute_za */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_471a75280edbcc88 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_ec_public_point */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a7cf1bcce23d78b4 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e914dc4cfa60c51 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_18e410af6dd482e7 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29f5cc643fde682c (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_084684cef97a0cfc (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bec3c29c24aea9e (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be17d726ff713fd7 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0ea9dba62fc455b0 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_db5da4354895e43f (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0e3b090d82bf1d9d (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1ac00b9bbeb39ee8 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a662d630c7d394d6 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7e0819dc22ff9e61 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d3443353c0d05976 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b4be8a3482828a6b (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_540d39d78fb95fad (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a8944193ea889a44 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f71fb8eadce65dc (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0edd9551f224ca90 (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24ea2cf1b76ef2dc (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_export_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a9276f40d410485 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_view_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7df980707970145 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_abf76b9a7e766cfc (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec11b1782aead0b6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c00036b1c458ba8 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b3ac1f744086ecee (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b4c90864d469a2f (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3e8594d76474ec68 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_create_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b255988005aa0cec (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa1f62838cd371f5 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3d0e3122fab464c (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_990907f61db0d0b6 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a4d6e4220adfd5bf (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pkcs_hash_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b6226b8d9ca87c85 (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mceies_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6ba3af1ccd521950 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mceies_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f5f650e3e8cc4c23 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fe2d548b3609f216 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e2efb228292003bd (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bcb41e5e4e0b9e15 (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_dup */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6e27d630cc9276d0 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_time_starts */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8c7430f663ce1c90 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_time_expires */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c7e5ab2274ad0391 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_not_before */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16b1051881ce3c37 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_not_after */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29f589cbbc367701 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa2bc01345d12bf7 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_serial_number */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_64ab5d0795cd76ec (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_authority_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_12c27985600a3433 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_subject_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ece2901601a2d208 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0ddbf7e7bb671e81 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_view_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b507437d932def61 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_public_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f8f04255cf2f0397 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_issuer_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c5af886f3dea1864 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_subject_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a1e77a1b81b1b261 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_to_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc4fb58e586fd9cc (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_view_as_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c41aee3df30e2ff (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_allowed_usage */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a4df6fc33bbf760 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_hostname_match */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e07aab7e452bab9 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_verify */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c599b4ead34764a6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_validation_status */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_8644c280c74b135b (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8733c040b3c0a963 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_65e3816ad4930aad (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c31a63010368ab68 (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_is_revoked */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_686d66251cbadfdd (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_verify_with_crl */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_573154686d78373c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_key_wrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a3a390b5ae7346c7 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_key_unwrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ea23732ffb229f4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_nist_kw_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f17b8696a3d0b731 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_nist_kw_dec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_56df5f802030ba48 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2817b505dd04990a (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_67353fa6fc62b909 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87d40bcdf8f3c922 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2e72cc023ec77832 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87ff976fde7fffe3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74880ba2fdaa97d4 (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d60be0a667ecfa43 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_553ebf6002ebf8d8 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_fe1_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5b6c3e61329b447d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_899ff2b61db70f9b (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c7b031a618374c2 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32ccb9e6377dedb3 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5d67c700ccf08e30 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_912c097c372c3416 (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_step1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a0c76a5c4ccbf59c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_step2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e668144401423031 (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_generate_verifier */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0ce58bbf34b4c195 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_client_agree */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_353d1967b68dc4b2 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_group_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cedd74b22309d4c4 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_zfec_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f6ed65378843d06 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_zfec_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d0407624b71f8138 (void)) ("
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

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_error_description@
foreign import ccall unsafe "hs_bindgen_64acc4c5fe21e436" hs_bindgen_64acc4c5fe21e436 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description #-}
{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:158:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64acc4c5fe21e436

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_6bb54e2a41d41eb9" hs_bindgen_6bb54e2a41d41eb9 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_last_exception_message #-}
{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:167:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_last_exception_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bb54e2a41d41eb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_65fde5655b671f46" hs_bindgen_65fde5655b671f46 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version #-}
{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:174:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65fde5655b671f46

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_53c5ac52bcc4b528" hs_bindgen_53c5ac52bcc4b528 ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api #-}
{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:180:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_53c5ac52bcc4b528

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_string@
foreign import ccall unsafe "hs_bindgen_1bafcc7ebd98dd60" hs_bindgen_1bafcc7ebd98dd60 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string #-}
{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:185:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bafcc7ebd98dd60

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_major@
foreign import ccall unsafe "hs_bindgen_64d4bc282e7259e0" hs_bindgen_64d4bc282e7259e0 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major #-}
{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:190:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64d4bc282e7259e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_0a7690706a7c779e" hs_bindgen_0a7690706a7c779e ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor #-}
{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:195:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a7690706a7c779e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_758e4053ba4fee99" hs_bindgen_758e4053ba4fee99 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch #-}
{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:200:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_758e4053ba4fee99

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_9a26490a8f888736" hs_bindgen_9a26490a8f888736 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp #-}
{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:206:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a26490a8f888736

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_76dcddf641ceca42" hs_bindgen_76dcddf641ceca42 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare #-}
{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:211:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76dcddf641ceca42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_9e7d8b4d5528f2ae" hs_bindgen_9e7d8b4d5528f2ae ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem #-}
{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:217:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9e7d8b4d5528f2ae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_47db9579c2c7bb4f" hs_bindgen_47db9579c2c7bb4f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem #-}
{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:223:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_47db9579c2c7bb4f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_3261946924124dcf" hs_bindgen_3261946924124dcf ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hex_encode #-}
{-| Perform hex encoding

  [__@x@ /(input)/__]: is some binary data

  [__@len@ /(input)/__]: length of x in bytes

  [__@out@ /(input)/__]: an array of at least x*2 bytes

  [__@flags@ /(input)/__]: flags out be upper or lower case?

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_encode@

__defined at:__ @botan\/ffi.h:235:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hex_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3261946924124dcf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_ba977921b2584d44" hs_bindgen_ba977921b2584d44 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hex_decode #-}
{-| Perform hex decoding

  [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

  [__@in_len@ /(input)/__]: the length of hex_str

  [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

  [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hex_decode@

__defined at:__ @botan\/ffi.h:245:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hex_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hex_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba977921b2584d44

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_2685ddc78030f564" hs_bindgen_2685ddc78030f564 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode #-}
{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:250:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2685ddc78030f564

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_cee9be8f1bcb9ec0" hs_bindgen_cee9be8f1bcb9ec0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode #-}
{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:255:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cee9be8f1bcb9ec0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_a075b6b55a380e06" hs_bindgen_a075b6b55a380e06 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_rng_init #-}
{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:272:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_rng_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a075b6b55a380e06

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_9a5cb0817bc80300" hs_bindgen_9a5cb0817bc80300 ::
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

__defined at:__ @botan\/ffi.h:284:5@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init_custom :: Ptr.FunPtr ((Ptr.Ptr Botan_rng_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr Void) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)) -> (Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())) -> IO FC.CInt)
botan_rng_init_custom =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a5cb0817bc80300

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_c08badd61bb4544e" hs_bindgen_c08badd61bb4544e ::
     IO (Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_get #-}
{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:298:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get :: Ptr.FunPtr (Botan_rng_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c08badd61bb4544e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_f56f9862979f5d4b" hs_bindgen_f56f9862979f5d4b ::
     IO (Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_system_rng_get #-}
{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:306:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_system_rng_get =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f56f9862979f5d4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_649eac91f7a991b9" hs_bindgen_649eac91f7a991b9 ::
     IO (Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed #-}
{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:316:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed :: Ptr.FunPtr (Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_649eac91f7a991b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_55e76379f134ed8f" hs_bindgen_55e76379f134ed8f ::
     IO (Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_reseed_from_rng #-}
{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:326:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng :: Ptr.FunPtr (Botan_rng_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_reseed_from_rng =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55e76379f134ed8f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_5b3f4a95361bc6de" hs_bindgen_5b3f4a95361bc6de ::
     IO (Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_rng_add_entropy #-}
{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:336:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy :: Ptr.FunPtr (Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_rng_add_entropy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b3f4a95361bc6de

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_93a0226b3f7c0033" hs_bindgen_93a0226b3f7c0033 ::
     IO (Ptr.FunPtr (Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_rng_destroy #-}
{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:343:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy :: Ptr.FunPtr (Botan_rng_t -> IO FC.CInt)
botan_rng_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_93a0226b3f7c0033

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_7f5b755451067036" hs_bindgen_7f5b755451067036 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_hash_init #-}
{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_hash_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f5b755451067036

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_06e380172229b059" hs_bindgen_06e380172229b059 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_copy_state #-}
{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:365:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state :: Ptr.FunPtr ((Ptr.Ptr Botan_hash_t) -> Botan_hash_t -> IO FC.CInt)
botan_hash_copy_state =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_06e380172229b059

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_d9da1999562e8bac" hs_bindgen_d9da1999562e8bac ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_output_length #-}
{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:373:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9da1999562e8bac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_b88937272878d3db" hs_bindgen_b88937272878d3db ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_block_size #-}
{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:381:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b88937272878d3db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_9dcc36b4a4f6543d" hs_bindgen_9dcc36b4a4f6543d ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hash_update #-}
{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:390:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hash_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9dcc36b4a4f6543d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_0d7c864f485d69d0" hs_bindgen_0d7c864f485d69d0 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_hash_final #-}
{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:400:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final :: Ptr.FunPtr (Botan_hash_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_hash_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0d7c864f485d69d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_87f9b142b8e80aa3" hs_bindgen_87f9b142b8e80aa3 ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_clear #-}
{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:408:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87f9b142b8e80aa3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_4a46b2093e45fe3c" hs_bindgen_4a46b2093e45fe3c ::
     IO (Ptr.FunPtr (Botan_hash_t -> IO FC.CInt))

{-# NOINLINE botan_hash_destroy #-}
{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:415:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy :: Ptr.FunPtr (Botan_hash_t -> IO FC.CInt)
botan_hash_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4a46b2093e45fe3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_6c7b0423e3f5e095" hs_bindgen_6c7b0423e3f5e095 ::
     IO (Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_hash_name #-}
{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:423:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name :: Ptr.FunPtr (Botan_hash_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_hash_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c7b0423e3f5e095

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_02c8022b57fd65a1" hs_bindgen_02c8022b57fd65a1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mac_init #-}
{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:438:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mac_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mac_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_02c8022b57fd65a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_9bccc82012d4696f" hs_bindgen_9bccc82012d4696f ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_output_length #-}
{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:446:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9bccc82012d4696f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_262b9917c8b147fa" hs_bindgen_262b9917c8b147fa ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_key #-}
{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:455:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_262b9917c8b147fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_d73d09132df13f23" hs_bindgen_d73d09132df13f23 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_set_nonce #-}
{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:464:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_set_nonce =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d73d09132df13f23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_cca995a0da7b5c2e" hs_bindgen_cca995a0da7b5c2e ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mac_update #-}
{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:473:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mac_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cca995a0da7b5c2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_7f7d23e4bca5f244" hs_bindgen_7f7d23e4bca5f244 ::
     IO (Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mac_final #-}
{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:483:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final :: Ptr.FunPtr (Botan_mac_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mac_final =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7f7d23e4bca5f244

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_bd53c0de2bee345e" hs_bindgen_bd53c0de2bee345e ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_clear #-}
{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:491:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bd53c0de2bee345e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_2a63af68d4eee8fb" hs_bindgen_2a63af68d4eee8fb ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_name #-}
{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:499:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a63af68d4eee8fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_4d5b85b8a6e4fc1e" hs_bindgen_4d5b85b8a6e4fc1e ::
     IO (Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mac_get_keyspec #-}
{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:509:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec :: Ptr.FunPtr (Botan_mac_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mac_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d5b85b8a6e4fc1e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_29606a9739d479bb" hs_bindgen_29606a9739d479bb ::
     IO (Ptr.FunPtr (Botan_mac_t -> IO FC.CInt))

{-# NOINLINE botan_mac_destroy #-}
{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy :: Ptr.FunPtr (Botan_mac_t -> IO FC.CInt)
botan_mac_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29606a9739d479bb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_fa7215bc593a390b" hs_bindgen_fa7215bc593a390b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init #-}
{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:533:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa7215bc593a390b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_e84916571fe51133" hs_bindgen_e84916571fe51133 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name #-}
{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:538:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e84916571fe51133

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_2ee1c92175b645fe" hs_bindgen_2ee1c92175b645fe ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length #-}
{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:543:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ee1c92175b645fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_03980f7ea3c456bf" hs_bindgen_03980f7ea3c456bf ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length #-}
{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:548:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03980f7ea3c456bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_0b89f1419677dfb1" hs_bindgen_0b89f1419677dfb1 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length #-}
{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:553:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0b89f1419677dfb1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_is_authenticated@
foreign import ccall unsafe "hs_bindgen_b5a26cc4bf9b5ef2" hs_bindgen_b5a26cc4bf9b5ef2 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_is_authenticated #-}
{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:558:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_is_authenticated =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5a26cc4bf9b5ef2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_requires_entire_message@
foreign import ccall unsafe "hs_bindgen_74671ccef010e71a" hs_bindgen_74671ccef010e71a ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_requires_entire_message #-}
{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:565:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_requires_entire_message =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74671ccef010e71a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_65b5661bc5418205" hs_bindgen_65b5661bc5418205 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length #-}
{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:570:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65b5661bc5418205

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_aa2a3ec6dccd9208" hs_bindgen_aa2a3ec6dccd9208 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity #-}
{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:576:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa2a3ec6dccd9208

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_e6472d110af779c6" hs_bindgen_e6472d110af779c6 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity #-}
{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:582:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6472d110af779c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_bc3014f3bd051370" hs_bindgen_bc3014f3bd051370 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen #-}
{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:588:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc3014f3bd051370

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_a72cb1098d261e6c" hs_bindgen_a72cb1098d261e6c ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec #-}
{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:594:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a72cb1098d261e6c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_4c6cd6b22d934d93" hs_bindgen_4c6cd6b22d934d93 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key #-}
{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:599:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c6cd6b22d934d93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_876a707956e66a44" hs_bindgen_876a707956e66a44 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_reset #-}
{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:609:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_reset =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_876a707956e66a44

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_f868ca3886b896cb" hs_bindgen_f868ca3886b896cb ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data #-}
{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:614:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f868ca3886b896cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_b02b5353e48fea4d" hs_bindgen_b02b5353e48fea4d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start #-}
{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:619:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b02b5353e48fea4d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_a876415b19e1454a" hs_bindgen_a876415b19e1454a ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update #-}
{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:627:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a876415b19e1454a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_fdfebedfcd156f96" hs_bindgen_fdfebedfcd156f96 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear #-}
{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:639:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fdfebedfcd156f96

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_59c467ed01590c39" hs_bindgen_59c467ed01590c39 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_destroy #-}
{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:645:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59c467ed01590c39

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_6f83e8f03e7fd369" hs_bindgen_6f83e8f03e7fd369 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf #-}
{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:664:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6f83e8f03e7fd369

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_e6c9ad724d88b9e0" hs_bindgen_e6c9ad724d88b9e0 ::
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

__defined at:__ @botan\/ffi.h:697:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pbkdf_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pbkdf_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e6c9ad724d88b9e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_80aabb2b59b6821f" hs_bindgen_80aabb2b59b6821f ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash #-}
{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_80aabb2b59b6821f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_12724fcf7df6cf0f" hs_bindgen_12724fcf7df6cf0f ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed #-}
{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:748:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_12724fcf7df6cf0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_e51d05bf6a3ee3c2" hs_bindgen_e51d05bf6a3ee3c2 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt #-}
{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:767:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e51d05bf6a3ee3c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_kdf@
foreign import ccall unsafe "hs_bindgen_34476a542c9be04a" hs_bindgen_34476a542c9be04a ::
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

__defined at:__ @botan\/ffi.h:790:5@

__exported by:__ @botan\/ffi.h@
-}
botan_kdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_kdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34476a542c9be04a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_5086b32cc14028f2" hs_bindgen_5086b32cc14028f2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init #-}
{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:808:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5086b32cc14028f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_aba9100cc1b0cdf6" hs_bindgen_aba9100cc1b0cdf6 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_destroy #-}
{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:814:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aba9100cc1b0cdf6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_6bf8c6e74dbfabb6" hs_bindgen_6bf8c6e74dbfabb6 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_clear #-}
{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:820:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bf8c6e74dbfabb6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_11c506f19eeb8e28" hs_bindgen_11c506f19eeb8e28 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key #-}
{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:825:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11c506f19eeb8e28

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_b157539cbf8dbac6" hs_bindgen_b157539cbf8dbac6 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size #-}
{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:831:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b157539cbf8dbac6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_50aea5b5e2afebd2" hs_bindgen_50aea5b5e2afebd2 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks #-}
{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:837:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50aea5b5e2afebd2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_d67c57d0319e3181" hs_bindgen_d67c57d0319e3181 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks #-}
{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:843:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d67c57d0319e3181

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_525cfa628165178f" hs_bindgen_525cfa628165178f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_name #-}
{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:851:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_525cfa628165178f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_58d56961a8b4239c" hs_bindgen_58d56961a8b4239c ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_get_keyspec #-}
{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:861:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec :: Ptr.FunPtr (Botan_block_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_block_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_58d56961a8b4239c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_41f5f994653d59ba" hs_bindgen_41f5f994653d59ba ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init #-}
{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_41f5f994653d59ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_77214274e480959d" hs_bindgen_77214274e480959d ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_destroy #-}
{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:880:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_77214274e480959d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_d1379604f721bfa6" hs_bindgen_d1379604f721bfa6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex #-}
{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:885:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1379604f721bfa6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_fbdae87b134c863b" hs_bindgen_fbdae87b134c863b ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str #-}
{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fbdae87b134c863b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_28719e4197a66377" hs_bindgen_28719e4197a66377 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear #-}
{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28719e4197a66377

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_49b5a4658ecbe652" hs_bindgen_49b5a4658ecbe652 ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int #-}
{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49b5a4658ecbe652

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_2453a4b87d6f4210" hs_bindgen_2453a4b87d6f4210 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp #-}
{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:905:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2453a4b87d6f4210

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_51370941b96931aa" hs_bindgen_51370941b96931aa ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str #-}
{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:910:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_51370941b96931aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_55136ecf4f5c72aa" hs_bindgen_55136ecf4f5c72aa ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str #-}
{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:916:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_55136ecf4f5c72aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_77f402e848e5cac6" hs_bindgen_77f402e848e5cac6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits #-}
{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:921:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_77f402e848e5cac6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_3f6aed97639087b9" hs_bindgen_3f6aed97639087b9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes #-}
{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f6aed97639087b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_a8a62a5358b68577" hs_bindgen_a8a62a5358b68577 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin #-}
{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8a62a5358b68577

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_9c85d8247695a2f8" hs_bindgen_9c85d8247695a2f8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin #-}
{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c85d8247695a2f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_c23afd2bacada091" hs_bindgen_c23afd2bacada091 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32 #-}
{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c23afd2bacada091

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_7a479c4c1e1700c4" hs_bindgen_7a479c4c1e1700c4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive #-}
{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:948:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7a479c4c1e1700c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_22151dae4680e17f" hs_bindgen_22151dae4680e17f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative #-}
{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:953:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22151dae4680e17f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_7ab7786c7b0150a2" hs_bindgen_7ab7786c7b0150a2 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign #-}
{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:955:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7ab7786c7b0150a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_93b18b63c404913a" hs_bindgen_93b18b63c404913a ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero #-}
{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:957:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_93b18b63c404913a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_dcf3c2866a437be4" hs_bindgen_dcf3c2866a437be4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd #-}
{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:959:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dcf3c2866a437be4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_42297785f1d4de08" hs_bindgen_42297785f1d4de08 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even #-}
{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:960:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_42297785f1d4de08

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_fff348af10fa54e9" hs_bindgen_fff348af10fa54e9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32 #-}
{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:962:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fff348af10fa54e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_5cee733550af3ecc" hs_bindgen_5cee733550af3ecc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32 #-}
{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:963:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5cee733550af3ecc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_43dcd4a771d2e786" hs_bindgen_43dcd4a771d2e786 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add #-}
{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:965:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_43dcd4a771d2e786

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_afc1ed3c1310b1f8" hs_bindgen_afc1ed3c1310b1f8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub #-}
{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_afc1ed3c1310b1f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_70644b03a8188d47" hs_bindgen_70644b03a8188d47 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul #-}
{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:967:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_70644b03a8188d47

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_1749fd80bd32355e" hs_bindgen_1749fd80bd32355e ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div #-}
{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1749fd80bd32355e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_f4b1e117b0677f3a" hs_bindgen_f4b1e117b0677f3a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul #-}
{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:973:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4b1e117b0677f3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_7be7bad505c48825" hs_bindgen_7be7bad505c48825 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal #-}
{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:980:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7be7bad505c48825

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_e125972f9dd58394" hs_bindgen_e125972f9dd58394 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp #-}
{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:987:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e125972f9dd58394

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_a1612d989c1b53b3" hs_bindgen_a1612d989c1b53b3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap #-}
{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:992:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a1612d989c1b53b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_a8673af39aadf77b" hs_bindgen_a8673af39aadf77b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod #-}
{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:996:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8673af39aadf77b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_4016dd5e3200f38f" hs_bindgen_4016dd5e3200f38f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift #-}
{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:998:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4016dd5e3200f38f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_8e8907da751afd8d" hs_bindgen_8e8907da751afd8d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift #-}
{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:999:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e8907da751afd8d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_21de4854953e4205" hs_bindgen_21de4854953e4205 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse #-}
{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1001:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_21de4854953e4205

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_31218b1bd89d3215" hs_bindgen_31218b1bd89d3215 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits #-}
{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1003:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_31218b1bd89d3215

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_ea37b74c8fe36f40" hs_bindgen_ea37b74c8fe36f40 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range #-}
{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1006:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea37b74c8fe36f40

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_efe3a5ef3d74ae08" hs_bindgen_efe3a5ef3d74ae08 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd #-}
{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1008:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_efe3a5ef3d74ae08

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_562b7d9205568e7d" hs_bindgen_562b7d9205568e7d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime #-}
{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1015:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_562b7d9205568e7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_18eba22b82760420" hs_bindgen_18eba22b82760420 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit #-}
{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1022:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18eba22b82760420

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_1155fee8f7671763" hs_bindgen_1155fee8f7671763 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit #-}
{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1027:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1155fee8f7671763

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_11802f51649365e0" hs_bindgen_11802f51649365e0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit #-}
{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1032:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_11802f51649365e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_98e05029315f6748" hs_bindgen_98e05029315f6748 ::
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

__defined at:__ @botan\/ffi.h:1050:5@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_generate :: Ptr.FunPtr ((Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_bcrypt_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_98e05029315f6748

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_14a27e21db6a30ef" hs_bindgen_14a27e21db6a30ef ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_bcrypt_is_valid #-}
{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1061:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_bcrypt_is_valid =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_14a27e21db6a30ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_4feadde04b56d397" hs_bindgen_4feadde04b56d397 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_create #-}
{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1077:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> IO FC.CInt)
botan_privkey_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4feadde04b56d397

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_0bf456ee48d8b8e2" hs_bindgen_0bf456ee48d8b8e2 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key #-}
{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1081:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0bf456ee48d8b8e2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_9b77444d2d62f491" hs_bindgen_9b77444d2d62f491 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa #-}
{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1084:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b77444d2d62f491

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_9af352560f09bba4" hs_bindgen_9af352560f09bba4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa #-}
{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1086:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9af352560f09bba4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_f10bf87ceb45d528" hs_bindgen_f10bf87ceb45d528 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh #-}
{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1088:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f10bf87ceb45d528

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_eb81a041bffa3102" hs_bindgen_eb81a041bffa3102 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece #-}
{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1090:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eb81a041bffa3102

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_c49664f5de9d3831" hs_bindgen_c49664f5de9d3831 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh #-}
{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1092:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c49664f5de9d3831

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_b94a48b7986f394d" hs_bindgen_b94a48b7986f394d ::
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

__defined at:__ @botan\/ffi.h:1112:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b94a48b7986f394d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_f0fa5545170db79b" hs_bindgen_f0fa5545170db79b ::
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

__defined at:__ @botan\/ffi.h:1134:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f0fa5545170db79b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_3258d92286eea54c" hs_bindgen_3258d92286eea54c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load #-}
{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1142:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3258d92286eea54c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_eb1c6c3188b7db25" hs_bindgen_eb1c6c3188b7db25 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1147:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy :: Ptr.FunPtr (Botan_privkey_t -> IO FC.CInt)
botan_privkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eb1c6c3188b7db25

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_3851972ceb78d653" hs_bindgen_3851972ceb78d653 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export #-}
{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1159:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3851972ceb78d653

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_33374861ef0f39b9" hs_bindgen_33374861ef0f39b9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der #-}
{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1164:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33374861ef0f39b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_c9754c4d866a095f" hs_bindgen_c9754c4d866a095f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem #-}
{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1169:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c9754c4d866a095f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_8a08372a724e78c1" hs_bindgen_8a08372a724e78c1 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name #-}
{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1171:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a08372a724e78c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_f73275b9e39e91ba" hs_bindgen_f73275b9e39e91ba ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted #-}
{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1178:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f73275b9e39e91ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_d45d7dd88c8d6654" hs_bindgen_d45d7dd88c8d6654 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1193:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d45d7dd88c8d6654

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_f2b0ba1bd78fab5a" hs_bindgen_f2b0ba1bd78fab5a ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter #-}
{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1208:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f2b0ba1bd78fab5a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_40cd4338fcc27231" hs_bindgen_40cd4338fcc27231 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1225:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_40cd4338fcc27231

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_1c1619b0abb634f7" hs_bindgen_1c1619b0abb634f7 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_der_timed #-}
{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1240:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_encrypted_der_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c1619b0abb634f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_9a785b9abd266f09" hs_bindgen_9a785b9abd266f09 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1256:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a785b9abd266f09

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_6b3144406930516f" hs_bindgen_6b3144406930516f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_encrypted_pem_timed #-}
{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1271:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_encrypted_pem_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6b3144406930516f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_a3e6fd1d34c5eee3" hs_bindgen_a3e6fd1d34c5eee3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load #-}
{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1282:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3e6fd1d34c5eee3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_d3f16aa9348bb784" hs_bindgen_d3f16aa9348bb784 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey #-}
{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1284:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3f16aa9348bb784

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_e9f898c37a462927" hs_bindgen_e9f898c37a462927 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export #-}
{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1286:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e9f898c37a462927

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_bf2c77b0cb7a2044" hs_bindgen_bf2c77b0cb7a2044 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der #-}
{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1291:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf2c77b0cb7a2044

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_be4f4ffcce16b9aa" hs_bindgen_be4f4ffcce16b9aa ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem #-}
{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1296:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_be4f4ffcce16b9aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_dccb7235f83b8a73" hs_bindgen_dccb7235f83b8a73 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name #-}
{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1298:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dccb7235f83b8a73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_44a26174a627818e" hs_bindgen_44a26174a627818e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key #-}
{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1303:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_44a26174a627818e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_69b54c951633427f" hs_bindgen_69b54c951633427f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength #-}
{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1305:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69b54c951633427f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_16b6f04f280be643" hs_bindgen_16b6f04f280be643 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint #-}
{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1308:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16b6f04f280be643

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_45c1ef2c1fe2aff5" hs_bindgen_45c1ef2c1fe2aff5 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1313:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45c1ef2c1fe2aff5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_0d9f53c80ba005e5" hs_bindgen_0d9f53c80ba005e5 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field #-}
{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1318:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0d9f53c80ba005e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_33ef0e9e2b41f67c" hs_bindgen_33ef0e9e2b41f67c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field #-}
{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33ef0e9e2b41f67c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_9c0a3886d297de20" hs_bindgen_9c0a3886d297de20 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa #-}
{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c0a3886d297de20

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_64159be9b65898f8" hs_bindgen_64159be9b65898f8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1 #-}
{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1327:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64159be9b65898f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_813b45eb7787b9b3" hs_bindgen_813b45eb7787b9b3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p #-}
{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1330:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_813b45eb7787b9b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_437b59a48d4a2d1b" hs_bindgen_437b59a48d4a2d1b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q #-}
{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1332:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_437b59a48d4a2d1b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_ddd2722823a374ec" hs_bindgen_ddd2722823a374ec ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d #-}
{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddd2722823a374ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_9eed697569305a60" hs_bindgen_9eed697569305a60 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n #-}
{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1336:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9eed697569305a60

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_b13f1df670e76338" hs_bindgen_b13f1df670e76338 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e #-}
{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1338:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b13f1df670e76338

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_2a331722340745c2" hs_bindgen_2a331722340745c2 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey #-}
{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1341:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a331722340745c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_e078bf878bbe1d36" hs_bindgen_e078bf878bbe1d36 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa #-}
{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1343:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e078bf878bbe1d36

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_a46c6d200ebd9b3d" hs_bindgen_a46c6d200ebd9b3d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1346:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a46c6d200ebd9b3d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_a20a8cdfff5d8454" hs_bindgen_a20a8cdfff5d8454 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1348:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a20a8cdfff5d8454

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_25715227c09c7023" hs_bindgen_25715227c09c7023 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa #-}
{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1354:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_25715227c09c7023

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_1594dca9d0d7100c" hs_bindgen_1594dca9d0d7100c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1357:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1594dca9d0d7100c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_25db139faf335689" hs_bindgen_25db139faf335689 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x #-}
{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1360:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_25db139faf335689

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_8e39fe67420b1c45" hs_bindgen_8e39fe67420b1c45 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1363:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e39fe67420b1c45

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_33aaed7bbc091adc" hs_bindgen_33aaed7bbc091adc ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1365:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33aaed7bbc091adc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_40e24e57c42bc01a" hs_bindgen_40e24e57c42bc01a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1367:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_40e24e57c42bc01a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_85294fb2388d0bc9" hs_bindgen_85294fb2388d0bc9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1369:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_85294fb2388d0bc9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_79bda72693975679" hs_bindgen_79bda72693975679 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh #-}
{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1384:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_79bda72693975679

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_e56b1c6d13fc423f" hs_bindgen_e56b1c6d13fc423f ::
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

__defined at:__ @botan\/ffi.h:1398:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e56b1c6d13fc423f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_dda62d86fa0e7d9f" hs_bindgen_dda62d86fa0e7d9f ::
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

__defined at:__ @botan\/ffi.h:1416:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_dda62d86fa0e7d9f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_33d2197f9d0cb1e0" hs_bindgen_33d2197f9d0cb1e0 ::
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

__defined at:__ @botan\/ffi.h:1431:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_elgamal :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_elgamal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_33d2197f9d0cb1e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_8334b25cf13f7bf0" hs_bindgen_8334b25cf13f7bf0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519 #-}
{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1437:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8334b25cf13f7bf0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_1582fd43a4f0fdfc" hs_bindgen_1582fd43a4f0fdfc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519 #-}
{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1439:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1582fd43a4f0fdfc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_7079a54f45fd9ede" hs_bindgen_7079a54f45fd9ede ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1441:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7079a54f45fd9ede

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_093669f8239d91ff" hs_bindgen_093669f8239d91ff ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1443:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_093669f8239d91ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_4d9bc25ba29de55f" hs_bindgen_4d9bc25ba29de55f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed448 #-}
{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1449:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4d9bc25ba29de55f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_10703d63c004bbe7" hs_bindgen_10703d63c004bbe7 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed448 #-}
{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1451:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_10703d63c004bbe7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_ed448_get_privkey@
foreign import ccall unsafe "hs_bindgen_bf695e9976a80f00" hs_bindgen_bf695e9976a80f00 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1453:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bf695e9976a80f00

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ed448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_69658e0b90b2d82b" hs_bindgen_69658e0b90b2d82b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1455:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69658e0b90b2d82b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_d9e211fd28ed393a" hs_bindgen_d9e211fd28ed393a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519 #-}
{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1461:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9e211fd28ed393a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_6130404349e32c1d" hs_bindgen_6130404349e32c1d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519 #-}
{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1463:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6130404349e32c1d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_211e4265d5972509" hs_bindgen_211e4265d5972509 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1465:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_211e4265d5972509

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_3eef3ed9103a682f" hs_bindgen_3eef3ed9103a682f ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1467:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3eef3ed9103a682f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_x448@
foreign import ccall unsafe "hs_bindgen_fe99fc51f95089ba" hs_bindgen_fe99fc51f95089ba ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x448 #-}
{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1473:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe99fc51f95089ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_x448@
foreign import ccall unsafe "hs_bindgen_8280cdd0512da518" hs_bindgen_8280cdd0512da518 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x448 #-}
{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1475:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x448 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8280cdd0512da518

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_x448_get_privkey@
foreign import ccall unsafe "hs_bindgen_ba8dae651668a261" hs_bindgen_ba8dae651668a261 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x448_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1477:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x448_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ba8dae651668a261

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_x448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_381f8318060549c3" hs_bindgen_381f8318060549c3 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x448_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1479:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x448_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_381f8318060549c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_58b385f63f092db9" hs_bindgen_58b385f63f092db9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber #-}
{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1485:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_58b385f63f092db9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_ca92747cc32c3dc2" hs_bindgen_ca92747cc32c3dc2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber #-}
{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1487:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ca92747cc32c3dc2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_59dbefdf75dbff75" hs_bindgen_59dbefdf75dbff75 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1490:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59dbefdf75dbff75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_59e8d7582a77db90" hs_bindgen_59e8d7582a77db90 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1493:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_59e8d7582a77db90

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall unsafe "hs_bindgen_693b5c59f514a09e" hs_bindgen_693b5c59f514a09e ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ecc_key_used_explicit_encoding #-}
{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1499:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding :: Ptr.FunPtr (Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_ecc_key_used_explicit_encoding =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_693b5c59f514a09e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_487ed3b0016087b5" hs_bindgen_487ed3b0016087b5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa #-}
{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1502:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_487ed3b0016087b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_0a792e809729f834" hs_bindgen_0a792e809729f834 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa #-}
{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1505:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0a792e809729f834

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_e055a3b7fb6fd052" hs_bindgen_e055a3b7fb6fd052 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh #-}
{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1508:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e055a3b7fb6fd052

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_86a52f588cd2d454" hs_bindgen_86a52f588cd2d454 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh #-}
{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1511:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_86a52f588cd2d454

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_90b3eb062453007b" hs_bindgen_90b3eb062453007b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2 #-}
{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1514:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90b3eb062453007b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_84bbc6d5d5756d93" hs_bindgen_84bbc6d5d5756d93 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2 #-}
{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1517:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_84bbc6d5d5756d93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_6258ac4f376cd45b" hs_bindgen_6258ac4f376cd45b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1521:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6258ac4f376cd45b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_30e357979a98640e" hs_bindgen_30e357979a98640e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1525:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_30e357979a98640e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_471a75280edbcc88" hs_bindgen_471a75280edbcc88 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za #-}
{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1528:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_471a75280edbcc88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_a7cf1bcce23d78b4" hs_bindgen_a7cf1bcce23d78b4 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point #-}
{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1535:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a7cf1bcce23d78b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_5e914dc4cfa60c51" hs_bindgen_5e914dc4cfa60c51 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1543:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5e914dc4cfa60c51

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_18e410af6dd482e7" hs_bindgen_18e410af6dd482e7 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1548:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> IO FC.CInt)
botan_pk_op_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_18e410af6dd482e7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_29f5cc643fde682c" hs_bindgen_29f5cc643fde682c ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1551:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29f5cc643fde682c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_084684cef97a0cfc" hs_bindgen_084684cef97a0cfc ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt #-}
{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1554:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_084684cef97a0cfc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_6bec3c29c24aea9e" hs_bindgen_6bec3c29c24aea9e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1567:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bec3c29c24aea9e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_be17d726ff713fd7" hs_bindgen_be17d726ff713fd7 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> IO FC.CInt)
botan_pk_op_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_be17d726ff713fd7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_0ea9dba62fc455b0" hs_bindgen_0ea9dba62fc455b0 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1575:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0ea9dba62fc455b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_db5da4354895e43f" hs_bindgen_db5da4354895e43f ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt #-}
{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1578:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_db5da4354895e43f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_0e3b090d82bf1d9d" hs_bindgen_0e3b090d82bf1d9d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create #-}
{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1590:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0e3b090d82bf1d9d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_1ac00b9bbeb39ee8" hs_bindgen_1ac00b9bbeb39ee8 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy :: Ptr.FunPtr (Botan_pk_op_sign_t -> IO FC.CInt)
botan_pk_op_sign_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1ac00b9bbeb39ee8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_a662d630c7d394d6" hs_bindgen_a662d630c7d394d6 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length #-}
{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1597:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a662d630c7d394d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_7e0819dc22ff9e61" hs_bindgen_7e0819dc22ff9e61 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update #-}
{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1599:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7e0819dc22ff9e61

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_d3443353c0d05976" hs_bindgen_d3443353c0d05976 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish #-}
{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1602:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d3443353c0d05976

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_b4be8a3482828a6b" hs_bindgen_b4be8a3482828a6b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create #-}
{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1610:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4be8a3482828a6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_540d39d78fb95fad" hs_bindgen_540d39d78fb95fad ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1618:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy :: Ptr.FunPtr (Botan_pk_op_verify_t -> IO FC.CInt)
botan_pk_op_verify_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_540d39d78fb95fad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_a8944193ea889a44" hs_bindgen_a8944193ea889a44 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update #-}
{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a8944193ea889a44

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_5f71fb8eadce65dc" hs_bindgen_5f71fb8eadce65dc ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish #-}
{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1621:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f71fb8eadce65dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_0edd9551f224ca90" hs_bindgen_0edd9551f224ca90 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1629:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0edd9551f224ca90

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_24ea2cf1b76ef2dc" hs_bindgen_24ea2cf1b76ef2dc ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1634:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy :: Ptr.FunPtr (Botan_pk_op_ka_t -> IO FC.CInt)
botan_pk_op_key_agreement_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_24ea2cf1b76ef2dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_3a9276f40d410485" hs_bindgen_3a9276f40d410485 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1636:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3a9276f40d410485

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_c7df980707970145" hs_bindgen_c7df980707970145 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1639:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7df980707970145

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_abf76b9a7e766cfc" hs_bindgen_abf76b9a7e766cfc ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1641:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_abf76b9a7e766cfc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_ec11b1782aead0b6" hs_bindgen_ec11b1782aead0b6 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement #-}
{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1644:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec11b1782aead0b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_0c00036b1c458ba8" hs_bindgen_0c00036b1c458ba8 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1658:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c00036b1c458ba8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_b3ac1f744086ecee" hs_bindgen_b3ac1f744086ecee ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1663:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> IO FC.CInt)
botan_pk_op_kem_encrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3ac1f744086ecee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_8b4c90864d469a2f" hs_bindgen_8b4c90864d469a2f ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1666:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b4c90864d469a2f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_3e8594d76474ec68" hs_bindgen_3e8594d76474ec68 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1671:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3e8594d76474ec68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_b255988005aa0cec" hs_bindgen_b255988005aa0cec ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1675:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b255988005aa0cec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_aa1f62838cd371f5" hs_bindgen_aa1f62838cd371f5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1688:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa1f62838cd371f5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_a3d0e3122fab464c" hs_bindgen_a3d0e3122fab464c ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1693:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> IO FC.CInt)
botan_pk_op_kem_decrypt_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3d0e3122fab464c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_990907f61db0d0b6" hs_bindgen_990907f61db0d0b6 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1696:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_990907f61db0d0b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_a4d6e4220adfd5bf" hs_bindgen_a4d6e4220adfd5bf ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1701:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a4d6e4220adfd5bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_b6226b8d9ca87c85" hs_bindgen_b6226b8d9ca87c85 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id #-}
{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1714:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b6226b8d9ca87c85

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_6ba3af1ccd521950" hs_bindgen_6ba3af1ccd521950 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt #-}
{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1721:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6ba3af1ccd521950

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_f5f650e3e8cc4c23" hs_bindgen_f5f650e3e8cc4c23 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt #-}
{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1736:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f5f650e3e8cc4c23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_fe2d548b3609f216" hs_bindgen_fe2d548b3609f216 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load #-}
{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1751:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fe2d548b3609f216

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_e2efb228292003bd" hs_bindgen_e2efb228292003bd ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file #-}
{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e2efb228292003bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_bcb41e5e4e0b9e15" hs_bindgen_bcb41e5e4e0b9e15 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1757:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy :: Ptr.FunPtr (Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bcb41e5e4e0b9e15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_6e27d630cc9276d0" hs_bindgen_6e27d630cc9276d0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup #-}
{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1759:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6e27d630cc9276d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_8c7430f663ce1c90" hs_bindgen_8c7430f663ce1c90 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts #-}
{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1762:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8c7430f663ce1c90

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_c7e5ab2274ad0391" hs_bindgen_c7e5ab2274ad0391 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires #-}
{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1763:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c7e5ab2274ad0391

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_16b1051881ce3c37" hs_bindgen_16b1051881ce3c37 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before #-}
{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1765:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16b1051881ce3c37

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_29f589cbbc367701" hs_bindgen_29f589cbbc367701 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after #-}
{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29f589cbbc367701

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_aa2bc01345d12bf7" hs_bindgen_aa2bc01345d12bf7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint #-}
{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1769:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa2bc01345d12bf7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_64ab5d0795cd76ec" hs_bindgen_64ab5d0795cd76ec ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number #-}
{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_64ab5d0795cd76ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_12c27985600a3433" hs_bindgen_12c27985600a3433 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1772:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_12c27985600a3433

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_ece2901601a2d208" hs_bindgen_ece2901601a2d208 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1773:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ece2901601a2d208

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_0ddbf7e7bb671e81" hs_bindgen_0ddbf7e7bb671e81 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1775:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0ddbf7e7bb671e81

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_b507437d932def61" hs_bindgen_b507437d932def61 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1778:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b507437d932def61

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_f8f04255cf2f0397" hs_bindgen_f8f04255cf2f0397 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1780:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f8f04255cf2f0397

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_c5af886f3dea1864" hs_bindgen_c5af886f3dea1864 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1783:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c5af886f3dea1864

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_a1e77a1b81b1b261" hs_bindgen_a1e77a1b81b1b261 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1787:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a1e77a1b81b1b261

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_bc4fb58e586fd9cc" hs_bindgen_bc4fb58e586fd9cc ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string #-}
{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1790:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc4fb58e586fd9cc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_4c41aee3df30e2ff" hs_bindgen_4c41aee3df30e2ff ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string #-}
{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1793:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c41aee3df30e2ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_1a4df6fc33bbf760" hs_bindgen_1a4df6fc33bbf760 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage #-}
{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1809:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a4df6fc33bbf760

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_2e07aab7e452bab9" hs_bindgen_2e07aab7e452bab9 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match #-}
{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1815:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e07aab7e452bab9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_c599b4ead34764a6" hs_bindgen_c599b4ead34764a6 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify #-}
{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1826:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c599b4ead34764a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_8644c280c74b135b" hs_bindgen_8644c280c74b135b ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status #-}
{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1841:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8644c280c74b135b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_8733c040b3c0a963" hs_bindgen_8733c040b3c0a963 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file #-}
{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1849:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8733c040b3c0a963

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_65e3816ad4930aad" hs_bindgen_65e3816ad4930aad ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load #-}
{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1851:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_65e3816ad4930aad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_c31a63010368ab68" hs_bindgen_c31a63010368ab68 ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy #-}
{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1853:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c31a63010368ab68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_686d66251cbadfdd" hs_bindgen_686d66251cbadfdd ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked #-}
{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1859:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_686d66251cbadfdd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_573154686d78373c" hs_bindgen_573154686d78373c ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl #-}
{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1866:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_573154686d78373c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_a3a390b5ae7346c7" hs_bindgen_a3a390b5ae7346c7 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394 #-}
{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1884:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a3a390b5ae7346c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_3ea23732ffb229f4" hs_bindgen_3ea23732ffb229f4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394 #-}
{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1893:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3ea23732ffb229f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_f17b8696a3d0b731" hs_bindgen_f17b8696a3d0b731 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc #-}
{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1901:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f17b8696a3d0b731

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_56df5f802030ba48" hs_bindgen_56df5f802030ba48 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec #-}
{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1911:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_56df5f802030ba48

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_2817b505dd04990a" hs_bindgen_2817b505dd04990a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init #-}
{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1930:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2817b505dd04990a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_67353fa6fc62b909" hs_bindgen_67353fa6fc62b909 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt))

{-# NOINLINE botan_hotp_destroy #-}
{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1937:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy :: Ptr.FunPtr (Botan_hotp_t -> IO FC.CInt)
botan_hotp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_67353fa6fc62b909

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_87d40bcdf8f3c922" hs_bindgen_87d40bcdf8f3c922 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate #-}
{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1943:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87d40bcdf8f3c922

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_2e72cc023ec77832" hs_bindgen_2e72cc023ec77832 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check #-}
{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1949:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2e72cc023ec77832

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_87ff976fde7fffe3" hs_bindgen_87ff976fde7fffe3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init #-}
{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1962:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_87ff976fde7fffe3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_74880ba2fdaa97d4" hs_bindgen_74880ba2fdaa97d4 ::
     IO (Ptr.FunPtr (Botan_totp_t -> IO FC.CInt))

{-# NOINLINE botan_totp_destroy #-}
{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1970:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy :: Ptr.FunPtr (Botan_totp_t -> IO FC.CInt)
botan_totp_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74880ba2fdaa97d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_d60be0a667ecfa43" hs_bindgen_d60be0a667ecfa43 ::
     IO (Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_totp_generate #-}
{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1979:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate :: Ptr.FunPtr (Botan_totp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_totp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d60be0a667ecfa43

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_553ebf6002ebf8d8" hs_bindgen_553ebf6002ebf8d8 ::
     IO (Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_check #-}
{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:1990:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check :: Ptr.FunPtr (Botan_totp_t -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_553ebf6002ebf8d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_5b6c3e61329b447d" hs_bindgen_5b6c3e61329b447d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init #-}
{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2001:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5b6c3e61329b447d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_899ff2b61db70f9b" hs_bindgen_899ff2b61db70f9b ::
     IO (Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt))

{-# NOINLINE botan_fpe_destroy #-}
{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2008:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy :: Ptr.FunPtr (Botan_fpe_t -> IO FC.CInt)
botan_fpe_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_899ff2b61db70f9b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_3c7b031a618374c2" hs_bindgen_3c7b031a618374c2 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt #-}
{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2011:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c7b031a618374c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_32ccb9e6377dedb3" hs_bindgen_32ccb9e6377dedb3 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt #-}
{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2014:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32ccb9e6377dedb3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_5d67c700ccf08e30" hs_bindgen_5d67c700ccf08e30 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_init #-}
{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2026:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init :: Ptr.FunPtr ((Ptr.Ptr Botan_srp6_server_session_t) -> IO FC.CInt)
botan_srp6_server_session_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5d67c700ccf08e30

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_912c097c372c3416" hs_bindgen_912c097c372c3416 ::
     IO (Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt))

{-# NOINLINE botan_srp6_server_session_destroy #-}
{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2034:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy :: Ptr.FunPtr (Botan_srp6_server_session_t -> IO FC.CInt)
botan_srp6_server_session_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_912c097c372c3416

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_a0c76a5c4ccbf59c" hs_bindgen_a0c76a5c4ccbf59c ::
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

__defined at:__ @botan\/ffi.h:2049:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step1 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a0c76a5c4ccbf59c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_e668144401423031" hs_bindgen_e668144401423031 ::
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

__defined at:__ @botan\/ffi.h:2068:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_step2 :: Ptr.FunPtr (Botan_srp6_server_session_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_server_session_step2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e668144401423031

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_0ce58bbf34b4c195" hs_bindgen_0ce58bbf34b4c195 ::
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

__defined at:__ @botan\/ffi.h:2084:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_generate_verifier :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_generate_verifier =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0ce58bbf34b4c195

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_353d1967b68dc4b2" hs_bindgen_353d1967b68dc4b2 ::
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

__defined at:__ @botan\/ffi.h:2111:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_client_agree :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_client_agree =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_353d1967b68dc4b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_cedd74b22309d4c4" hs_bindgen_cedd74b22309d4c4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size #-}
{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2129:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cedd74b22309d4c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_5f6ed65378843d06" hs_bindgen_5f6ed65378843d06 ::
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

__defined at:__ @botan\/ffi.h:2150:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_encode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5f6ed65378843d06

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_get_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_d0407624b71f8138" hs_bindgen_d0407624b71f8138 ::
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

__defined at:__ @botan\/ffi.h:2171:5@

__exported by:__ @botan\/ffi.h@
-}
botan_zfec_decode :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)) -> IO FC.CInt)
botan_zfec_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d0407624b71f8138
