{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_1_0.FunPtr where

import           Botan.Bindings.Generated.Botan_3_1_0
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_error_description */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_c984d344e939af21 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_error_description;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_error_last_exception_message */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_90cffefabf6ce84d (void)) (void)"
  , "{"
  , "  return &botan_error_last_exception_message;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_ffi_api_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2a1cc43388e86450 (void)) (void)"
  , "{"
  , "  return &botan_ffi_api_version;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_ffi_supports_api */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1861138f33423ada (void)) ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return &botan_ffi_supports_api;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_string */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_05846eb566059fd0 (void)) (void)"
  , "{"
  , "  return &botan_version_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_major */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b4b75daf510f9903 (void)) (void)"
  , "{"
  , "  return &botan_version_major;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_minor */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2f7ab7ef1ea99468 (void)) (void)"
  , "{"
  , "  return &botan_version_minor;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_patch */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_599a715b7a2dd035 (void)) (void)"
  , "{"
  , "  return &botan_version_patch;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_datestamp */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8d483748c340b98c (void)) (void)"
  , "{"
  , "  return &botan_version_datestamp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_constant_time_compare */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_02ff0d5f384d20ec (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_constant_time_compare;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_same_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0580fe3d684957b9 (void)) ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_same_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_scrub_mem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c05a8a703e0cd5d1 (void)) ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_scrub_mem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hex_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_084ddc41bb87ffb6 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_hex_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hex_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ad898594aa79a7f6 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_hex_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_base64_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7bc4b2fedf567f69 (void)) ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_base64_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c2461771afac0b2 (void)) ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_base64_decode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a973b662217e96b (void)) ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_rng_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_init_custom */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e0b68521297aec2b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_15bc892ad33db29e (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_system_rng_get */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_892fe5acbdd22e17 (void)) ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_system_rng_get;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_reseed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cb679c1f405727f4 (void)) ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_rng_reseed;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_reseed_from_rng */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34659c601f97dcbc (void)) ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_reseed_from_rng;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_add_entropy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_630d91f05c179598 (void)) ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_rng_add_entropy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50a81b3f6aa05e7d (void)) ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return &botan_rng_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_15d636221b94faeb (void)) ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_copy_state */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a5ea0cf60fe4ee3 (void)) ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return &botan_hash_copy_state;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d97fa77e8147a566 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_01697607fdde05e8 (void)) ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_hash_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_27bfc89956f851fc (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_hash_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d57e46ebd354aee (void)) ("
  , "  botan_hash_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_hash_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_50d58a911be70a78 (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4c861712edd85edb (void)) ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return &botan_hash_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_100518c7941125c9 (void)) ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_hash_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_edaaea31474b3722 (void)) ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_89b410fd2ea0efe9 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mac_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_daa135b65354f39b (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_set_nonce */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9eb2a336b7c55bd4 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_set_nonce;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c9862aa71a9158b (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mac_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_final */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7cb77cef2cbddd18 (void)) ("
  , "  botan_mac_t arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mac_final;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8a1b89b1c140f693 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ef3a908351928979 (void)) ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_mac_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a0cbecf60bc41f47 (void)) ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mac_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c3a5cb71ff7eb8b6 (void)) ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return &botan_mac_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_535d4bda7131885c (void)) ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b346aa2fff383267 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_652682d231cc9324 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_valid_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a7296dd82c8f3c6 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_valid_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_tag_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_294b6119a77a31c0 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_tag_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_default_nonce_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_467e57a5d575a7ee (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_default_nonce_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ea0aaf2d2fd78c65 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_ideal_update_granularity */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e231c71580ba807e (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_cipher_get_ideal_update_granularity;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_query_keylen */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ec3be4e4fb7a1e7b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_query_keylen;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f268bae2cd02d276 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4736075bf8fdb96b (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_reset */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_30b4c74390efecea (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_reset;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_set_associated_data */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4031d408df7c286 (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_set_associated_data;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_start */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2a46fcbe5ee7438a (void)) ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_cipher_start;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ba69fcf7c27989d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_faad17868968624f (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_639e2b54b0237ce3 (void)) ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pbkdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24383d7e0df7f468 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pbkdf_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3233c7a28ee1f309 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pwdhash */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9824e5cf734b7a4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pwdhash_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aa2828b15bbe9e5e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_scrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c1018e96984a00d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_kdf */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_34ce214f980147b3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d839a2a989c9db1e (void)) ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_block_cipher_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_923b101901d4d197 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39c62a67d85b9cc7 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_set_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2cace606da312e0f (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_set_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_block_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eea6b6e095b063e3 (void)) ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return &botan_block_cipher_block_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_encrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b466fa71a644473d (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_encrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_decrypt_blocks */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b8b46558e756d31f (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const arg2[],"
  , "  uint8_t arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_decrypt_blocks;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a800f0a72b482e69 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_block_cipher_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_get_keyspec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d883c017fa7c4e36 (void)) ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_block_cipher_get_keyspec;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_08bec23138504491 (void)) ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return &botan_mp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1bee9cee4d4e6661 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_hex */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_da7d2ede62ef5a34 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_hex;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9ed3470b458e9bd6 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_mp_to_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_clear */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92e50770a644f8c3 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_clear;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_int */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7441f04831f372b (void)) ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_int;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_mp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1e1a9b910c7e8157 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_mp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ccce0c23b8addd7b (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_radix_str */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_63b3cf7defcc891c (void)) ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_set_from_radix_str;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_num_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_74c42a1f9a09f96d (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_num_bytes */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bbeb0160804ebcc0 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_num_bytes;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d702023259a0aa80 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2[]"
  , ")"
  , "{"
  , "  return &botan_mp_to_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_from_bin */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d2625ff764d83e34 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_from_bin;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_uint32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_156d6531962be1ae (void)) ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return &botan_mp_to_uint32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_positive */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_470a65aa1e83f5f1 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_positive;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_negative */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c443f9b4fd7b21b (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_negative;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_flip_sign */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_013c16e981263148 (void)) ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return &botan_mp_flip_sign;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_zero */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0fc9eb18a503de07 (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_zero;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_odd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_540983be7f92ab9f (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_odd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_even */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1c0fa3172b977c4a (void)) ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return &botan_mp_is_even;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_add_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0787aab62f57ef7b (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_sub_u32 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5af95ed7ccd80d16 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub_u32;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_add */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8803bf9237c48d16 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_add;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_sub */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2fec59d24796290c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_sub;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0d96d96b4e841958 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_div */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_587b1ae718c1b48f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_div;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mod_mul */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d2ba8e4c31496b8 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_mod_mul;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_equal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28d465f42561f911 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return &botan_mp_equal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_cmp */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_49e90c3900095fd2 (void)) ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_cmp;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_swap */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_550e65bf2c133c02 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_swap;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_powmod */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_72a9fe5c23606da4 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_powmod;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_lshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5dac198a2fb1690a (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_lshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rshift */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c888bc19de3a2080 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rshift;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mod_inverse */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ab66bd06ec77e7c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_mod_inverse;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rand_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a99daaba50ba46d1 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_rand_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rand_range */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48ac9ee31bfa841d (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return &botan_mp_rand_range;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_gcd */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9849fd9d3a176d04 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return &botan_mp_gcd;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_prime */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6767a7d3682f5508 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_mp_is_prime;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_get_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8b3c8dbbf748ec71 (void)) ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_get_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a05f97f0bab6d840 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_set_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_clear_bit */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a97b9da87f9f4827 (void)) ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return &botan_mp_clear_bit;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_bcrypt_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c906621cfbff0fa8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_bcrypt_is_valid */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_883d798b0e34b3e0 (void)) ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_bcrypt_is_valid;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b0bf5e6f0a80bba (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b683636bd2431a0b (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9eaf35659e105d22 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b5f436e1202235b0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6a5455e4ae65be63 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_mceliece */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc9912f414cdf8e9 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_mceliece;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_958d3260e1e16115 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_52a2f543dc51c46e (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a71d0f55772e035 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_create_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d367b6486f2f3408 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6d50eec1a9ee799b (void)) ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_privkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e131bc7733b137c4 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3321edd9192fd8d5 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_048cc7c9ee34559e (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3c6bab665e608ea6 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d901cd2532bccd4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted_pbkdf_msec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6fbf3e331f38940e (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted_pbkdf_iter */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3bc7164232b4f04d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8d20f9a70b96c133 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_der_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b3a83529efc387b4 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9c6fb96e7f371b4c (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_pem_timed */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_870c44175a40a6f5 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45afe0fe0fbea323 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e9c1a706efecc97b (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_export_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_export */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d159d98245541b93 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_export;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_der */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1dec6c16747057b (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_der;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_pem */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fa3580f9d480acf1 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_pem;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_algo_name */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_93569d3f02d88712 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_algo_name;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_check_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_66b86cb28794f9ab (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_check_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_estimated_strength */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2296a3669e3bdce5 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_estimated_strength;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b73ef4f79cadafab (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_427afa3eed6a5e4a (void)) ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return &botan_pubkey_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b00897c1d5e30c6f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_get_field */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c07ed93eb73670f (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_get_field;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a8af66bb1d1e3e5 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_rsa_pkcs1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_929f3171e7db843a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_rsa_pkcs1;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c02e7fffdd42fc88 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fbf6e981a68824be (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_d */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22af9c7e26470520 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_d;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4b88ef9108ee51c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2ba514683f957377 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d9a88bdf972039f7 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_rsa_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_rsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3db085169585f5c4 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_rsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_rsa_get_e */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_32c949ab6a9243a0 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_e;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_rsa_get_n */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8bfdf1046b606f3c (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_rsa_get_n;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d695fdda0a1cf96c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_dsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54aa4e96c52b5333 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_dsa_get_x */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7d3b8b68b36c942 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_privkey_dsa_get_x;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_p */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7d25e0fa3abd8933 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_p;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_q */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22327e299baba3e9 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_q;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_g */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_28a78cecdf136864 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_g;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_y */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_96c38dd4f7b48423 (void)) ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return &botan_pubkey_dsa_get_y;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d54db0721202a8b2 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_dh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b19e38ad807001f8 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_dh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1798bfbc951e0385 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_elgamal */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54fc527e97e88004 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return &botan_privkey_load_elgamal;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d865ae1f7eb00dc3 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ed25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3fb0112f4be0606a (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ed25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_ed25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5c9c2b4617d4ad0f (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[64]"
  , ")"
  , "{"
  , "  return &botan_privkey_ed25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_ed25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_76d90a6311d4d365 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_ed25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b398fd9e8904317c (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_x25519 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f0bf5647f16e145d (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_x25519;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_x25519_get_privkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ebee54007c70ba27 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_privkey_x25519_get_privkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_x25519_get_pubkey */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f7e049a6a9fc86ef (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t arg2[32]"
  , ")"
  , "{"
  , "  return &botan_pubkey_x25519_get_pubkey;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4de4abe486772c0 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_kyber */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8441b0574e3aa3c2 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_kyber;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_16befcde1a9ecbb9 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_kyber_raw_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6bc9d0df91232585 (void)) ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_kyber_raw_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_857528be0f8ff07f (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ecdsa */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_98faca79b3e9de83 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdsa;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_69662a22a05b3ddc (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ecdh */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d5d5a08ad91cbe73 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_ecdh;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1709cc4369e96892 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_sm2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31153f298456e672 (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a220708d85710858 (void)) ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return &botan_pubkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_sm2_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b53048cb13cef2a (void)) ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_privkey_load_sm2_enc;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_sm2_compute_za */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_23d5e02528b571b0 (void)) ("
  , "  uint8_t arg1[],"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return &botan_pubkey_sm2_compute_za;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_ec_public_point */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_93b8968bbd6c6c19 (void)) ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pubkey_view_ec_public_point;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4de0d80c19c42e44 (void)) ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_508f239234c164c5 (void)) ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_742e0e08e8bdd240 (void)) ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_encrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2c1930cbd5775cd8 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39e986e3893fa8e1 (void)) ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0465a27083fe79d2 (void)) ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45e180871dde546a (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_07c0c785d3274150 (void)) ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3,"
  , "  uint8_t const arg4[],"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_pk_op_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0bb981497f544beb (void)) ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5db3dddb405ed661 (void)) ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_output_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_113234c7732db5f9 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_output_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b0c96fd228234630 (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c5b52c7a18a55aff (void)) ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_sign_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_256cf2cc545d54f2 (void)) ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_29f27c5e57413b6a (void)) ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_update */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d806d9825df2cc13 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_update;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_finish */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1a38962a6db0c5a4 (void)) ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_verify_finish;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c4647a6cd33aa2ca (void)) ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c29d88027322890d (void)) ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_export_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_22d8359d76c68577 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_export_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_view_public */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b45acb04ba2ea0b3 (void)) ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_view_public;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c3e26e6a7d2c8b2 (void)) ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_key_agreement_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7c6a85d1e5539c2b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0fd5b4c04e28b1b2 (void)) ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_380c05cb86c73e36 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3e0a8edcd495c19d (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3b75577977ede661 (void)) ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_encrypt_encapsulated_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_create_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8341789f526f2d88 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_create */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_de621b5ce164f299 (void)) ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_create;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5ac8a11e304f55af (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_shared_key_length */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d1e77bfec3faaf75 (void)) ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pk_op_kem_decrypt_shared_key_length;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_shared_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eecfabdf0a5d9c1d (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pkcs_hash_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3e8c6a423628e91e (void)) ("
  , "  char const *arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_pkcs_hash_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mceies_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_687fe36f13564e21 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mceies_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3fff518d5c2e61bf (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_44317dfa3b6df4a9 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1b877c85f2846330 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c82958c49ce69ce (void)) ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_dup */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3f24cca29324c5a0 (void)) ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_dup;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_time_starts */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_834231806d077665 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_starts;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_time_expires */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_865f4f71544eb2b9 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_time_expires;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_not_before */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_aaa4a70d1b404e17 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_before;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_not_after */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f53c64b33accc3ab (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_not_after;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_fingerprint */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_39d7acbc005aa79e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t arg3[],"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_fingerprint;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_serial_number */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8d2cb116e7d29014 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_serial_number;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_authority_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c47b6264dd833cce (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_authority_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_subject_key_id */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d46e6c12cad834ad (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_key_id;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ddc2a97267d4ca58 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_view_public_key_bits */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a4e35e4978d22a0e (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_public_key_bits;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_public_key */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_baedc4e16e4add60 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_public_key;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_issuer_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99c92820fa62162a (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_issuer_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_subject_dn */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a4fc987f6f45aeba (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_x509_cert_get_subject_dn;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_to_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_1d53f912a90a75be (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char arg2[],"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_to_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_view_as_string */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ee20f5a364048f2f (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return &botan_x509_cert_view_as_string;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_allowed_usage */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_99cf2eac4ac571eb (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_allowed_usage;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_hostname_match */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_26e0196120177bc7 (void)) ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_cert_hostname_match;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_verify */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e16e809c27bee47a (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_validation_status */"
  , "__attribute__ ((const))"
  , "char const *(*hs_bindgen_07ad969277c9c3d4 (void)) ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return &botan_x509_cert_validation_status;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_load_file */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_248fd67e3c385587 (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load_file;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_load */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8e48473d4019fb1c (void)) ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return &botan_x509_crl_load;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cdf20f52e3160c4a (void)) ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return &botan_x509_crl_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_is_revoked */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6c7607519b0dc65f (void)) ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return &botan_x509_is_revoked;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_verify_with_crl */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_98a5065a0f4a8149 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_key_wrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_4bf7fa2fa5c7afbf (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_key_unwrap3394 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2d2244d1ba1abcba (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_nist_kw_enc */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_48bf0ef859845cc3 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_nist_kw_dec */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3ee92f158e3e1ce5 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2818794b4717669d (void)) ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5a451412ddadf575 (void)) ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return &botan_hotp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_54dd0bf79ff7d657 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_hotp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_35e5a4f36ca24207 (void)) ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return &botan_hotp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_809ab830a01e48cb (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f4506b7aa53acd7c (void)) ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return &botan_totp_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_generate */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cc5a9a838caa177e (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return &botan_totp_generate;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_check */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5894bd34af768b69 (void)) ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_totp_check;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_fe1_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c8cffb0a90972ed (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_055dbc48fa491d42 (void)) ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return &botan_fpe_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_encrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_039c52e9251642a6 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_encrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_decrypt */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9efebcc95b04ab97 (void)) ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const arg3[],"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return &botan_fpe_decrypt;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_init */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42efb7b45d89a707 (void)) ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_init;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_destroy */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5803af92f7644ccb (void)) ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_destroy;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_step1 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_eba2a15cadf5b72b (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_step2 */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_03a57b24ce2b54c0 (void)) ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const arg2[],"
  , "  size_t arg3,"
  , "  uint8_t arg4[],"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return &botan_srp6_server_session_step2;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_generate_verifier */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c82b69e79c0113d6 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_client_agree */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_21491b0b88acea46 (void)) ("
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
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_group_size */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6eba69d790623e68 (void)) ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return &botan_srp6_group_size;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_zfec_encode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_45c684097a9e3b77 (void)) ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return &botan_zfec_encode;"
  , "}"
  , "/* botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_zfec_decode */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_453cab746cefe0d5 (void)) ("
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

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_error_description@
foreign import ccall unsafe "hs_bindgen_c984d344e939af21" hs_bindgen_c984d344e939af21 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_error_description #-}
{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:144:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_error_description =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c984d344e939af21

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_90cffefabf6ce84d" hs_bindgen_90cffefabf6ce84d ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_90cffefabf6ce84d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_2a1cc43388e86450" hs_bindgen_2a1cc43388e86450 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_ffi_api_version #-}
{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:160:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_ffi_api_version =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a1cc43388e86450

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_1861138f33423ada" hs_bindgen_1861138f33423ada ::
     IO (Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_ffi_supports_api #-}
{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:166:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api :: Ptr.FunPtr (HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_ffi_supports_api =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1861138f33423ada

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_string@
foreign import ccall unsafe "hs_bindgen_05846eb566059fd0" hs_bindgen_05846eb566059fd0 ::
     IO (Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_version_string #-}
{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:171:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: Ptr.FunPtr (IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_version_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_05846eb566059fd0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_major@
foreign import ccall unsafe "hs_bindgen_b4b75daf510f9903" hs_bindgen_b4b75daf510f9903 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_major #-}
{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:176:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_major =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b4b75daf510f9903

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_2f7ab7ef1ea99468" hs_bindgen_2f7ab7ef1ea99468 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_minor #-}
{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:181:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_minor =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2f7ab7ef1ea99468

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_599a715b7a2dd035" hs_bindgen_599a715b7a2dd035 ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_patch #-}
{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_patch =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_599a715b7a2dd035

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_8d483748c340b98c" hs_bindgen_8d483748c340b98c ::
     IO (Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32))

{-# NOINLINE botan_version_datestamp #-}
{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: Ptr.FunPtr (IO HsBindgen.Runtime.Prelude.Word32)
botan_version_datestamp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d483748c340b98c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_02ff0d5f384d20ec" hs_bindgen_02ff0d5f384d20ec ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_constant_time_compare #-}
{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:197:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_constant_time_compare =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_02ff0d5f384d20ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_0580fe3d684957b9" hs_bindgen_0580fe3d684957b9 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_same_mem #-}
{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:203:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_same_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0580fe3d684957b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_c05a8a703e0cd5d1" hs_bindgen_c05a8a703e0cd5d1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrub_mem #-}
{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:209:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem :: Ptr.FunPtr ((Ptr.Ptr Void) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrub_mem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c05a8a703e0cd5d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_084ddc41bb87ffb6" hs_bindgen_084ddc41bb87ffb6 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_084ddc41bb87ffb6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_ad898594aa79a7f6" hs_bindgen_ad898594aa79a7f6 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ad898594aa79a7f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_7bc4b2fedf567f69" hs_bindgen_7bc4b2fedf567f69 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_encode #-}
{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_encode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7bc4b2fedf567f69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_4c2461771afac0b2" hs_bindgen_4c2461771afac0b2 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_base64_decode #-}
{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_base64_decode =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c2461771afac0b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_8a973b662217e96b" hs_bindgen_8a973b662217e96b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a973b662217e96b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_e0b68521297aec2b" hs_bindgen_e0b68521297aec2b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e0b68521297aec2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_15bc892ad33db29e" hs_bindgen_15bc892ad33db29e ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15bc892ad33db29e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_892fe5acbdd22e17" hs_bindgen_892fe5acbdd22e17 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_892fe5acbdd22e17

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_cb679c1f405727f4" hs_bindgen_cb679c1f405727f4 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cb679c1f405727f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_34659c601f97dcbc" hs_bindgen_34659c601f97dcbc ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34659c601f97dcbc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_630d91f05c179598" hs_bindgen_630d91f05c179598 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_630d91f05c179598

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_50a81b3f6aa05e7d" hs_bindgen_50a81b3f6aa05e7d ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50a81b3f6aa05e7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_15d636221b94faeb" hs_bindgen_15d636221b94faeb ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_15d636221b94faeb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_6a5ea0cf60fe4ee3" hs_bindgen_6a5ea0cf60fe4ee3 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a5ea0cf60fe4ee3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_d97fa77e8147a566" hs_bindgen_d97fa77e8147a566 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d97fa77e8147a566

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_01697607fdde05e8" hs_bindgen_01697607fdde05e8 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_01697607fdde05e8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_27bfc89956f851fc" hs_bindgen_27bfc89956f851fc ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_27bfc89956f851fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_7d57e46ebd354aee" hs_bindgen_7d57e46ebd354aee ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d57e46ebd354aee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_50d58a911be70a78" hs_bindgen_50d58a911be70a78 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_50d58a911be70a78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_4c861712edd85edb" hs_bindgen_4c861712edd85edb ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4c861712edd85edb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_100518c7941125c9" hs_bindgen_100518c7941125c9 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_100518c7941125c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_edaaea31474b3722" hs_bindgen_edaaea31474b3722 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_edaaea31474b3722

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_89b410fd2ea0efe9" hs_bindgen_89b410fd2ea0efe9 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_89b410fd2ea0efe9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_daa135b65354f39b" hs_bindgen_daa135b65354f39b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_daa135b65354f39b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_9eb2a336b7c55bd4" hs_bindgen_9eb2a336b7c55bd4 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9eb2a336b7c55bd4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_7c9862aa71a9158b" hs_bindgen_7c9862aa71a9158b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c9862aa71a9158b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_7cb77cef2cbddd18" hs_bindgen_7cb77cef2cbddd18 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7cb77cef2cbddd18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_8a1b89b1c140f693" hs_bindgen_8a1b89b1c140f693 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8a1b89b1c140f693

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_ef3a908351928979" hs_bindgen_ef3a908351928979 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ef3a908351928979

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_a0cbecf60bc41f47" hs_bindgen_a0cbecf60bc41f47 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a0cbecf60bc41f47

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_c3a5cb71ff7eb8b6" hs_bindgen_c3a5cb71ff7eb8b6 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c3a5cb71ff7eb8b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_535d4bda7131885c" hs_bindgen_535d4bda7131885c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_cipher_init #-}
{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_535d4bda7131885c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_b346aa2fff383267" hs_bindgen_b346aa2fff383267 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_name #-}
{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b346aa2fff383267

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_652682d231cc9324" hs_bindgen_652682d231cc9324 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_output_length #-}
{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:529:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_652682d231cc9324

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_2a7296dd82c8f3c6" hs_bindgen_2a7296dd82c8f3c6 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_valid_nonce_length #-}
{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:534:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_valid_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a7296dd82c8f3c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_294b6119a77a31c0" hs_bindgen_294b6119a77a31c0 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_tag_length #-}
{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:539:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_tag_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_294b6119a77a31c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_467e57a5d575a7ee" hs_bindgen_467e57a5d575a7ee ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_default_nonce_length #-}
{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:544:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_default_nonce_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_467e57a5d575a7ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_ea0aaf2d2fd78c65" hs_bindgen_ea0aaf2d2fd78c65 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_update_granularity #-}
{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ea0aaf2d2fd78c65

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_e231c71580ba807e" hs_bindgen_e231c71580ba807e ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_ideal_update_granularity #-}
{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:556:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_ideal_update_granularity =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e231c71580ba807e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_ec3be4e4fb7a1e7b" hs_bindgen_ec3be4e4fb7a1e7b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_query_keylen #-}
{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:562:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_query_keylen =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ec3be4e4fb7a1e7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_f268bae2cd02d276" hs_bindgen_f268bae2cd02d276 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_get_keyspec #-}
{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:568:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec :: Ptr.FunPtr (Botan_cipher_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_get_keyspec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f268bae2cd02d276

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_4736075bf8fdb96b" hs_bindgen_4736075bf8fdb96b ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_key #-}
{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:573:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4736075bf8fdb96b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_30b4c74390efecea" hs_bindgen_30b4c74390efecea ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_30b4c74390efecea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_f4031d408df7c286" hs_bindgen_f4031d408df7c286 ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_set_associated_data #-}
{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:588:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_set_associated_data =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4031d408df7c286

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_2a46fcbe5ee7438a" hs_bindgen_2a46fcbe5ee7438a ::
     IO (Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_cipher_start #-}
{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:593:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start :: Ptr.FunPtr (Botan_cipher_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_cipher_start =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2a46fcbe5ee7438a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_3ba69fcf7c27989d" hs_bindgen_3ba69fcf7c27989d ::
     IO (Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_cipher_update #-}
{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:601:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update :: Ptr.FunPtr (Botan_cipher_t -> HsBindgen.Runtime.Prelude.Word32 -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_cipher_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3ba69fcf7c27989d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_faad17868968624f" hs_bindgen_faad17868968624f ::
     IO (Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_cipher_clear #-}
{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear :: Ptr.FunPtr (Botan_cipher_t -> IO FC.CInt)
botan_cipher_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_faad17868968624f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_639e2b54b0237ce3" hs_bindgen_639e2b54b0237ce3 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_639e2b54b0237ce3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_24383d7e0df7f468" hs_bindgen_24383d7e0df7f468 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pbkdf #-}
{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:638:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pbkdf =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_24383d7e0df7f468

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_3233c7a28ee1f309" hs_bindgen_3233c7a28ee1f309 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3233c7a28ee1f309

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_f9824e5cf734b7a4" hs_bindgen_f9824e5cf734b7a4 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash #-}
{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:695:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f9824e5cf734b7a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_aa2828b15bbe9e5e" hs_bindgen_aa2828b15bbe9e5e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pwdhash_timed #-}
{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:722:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pwdhash_timed =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aa2828b15bbe9e5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_0c1018e96984a00d" hs_bindgen_0c1018e96984a00d ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_scrypt #-}
{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:741:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_scrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c1018e96984a00d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_kdf@
foreign import ccall unsafe "hs_bindgen_34ce214f980147b3" hs_bindgen_34ce214f980147b3 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_34ce214f980147b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_d839a2a989c9db1e" hs_bindgen_d839a2a989c9db1e ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_init #-}
{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:782:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init :: Ptr.FunPtr ((Ptr.Ptr Botan_block_cipher_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_block_cipher_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d839a2a989c9db1e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_923b101901d4d197" hs_bindgen_923b101901d4d197 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_923b101901d4d197

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_39c62a67d85b9cc7" hs_bindgen_39c62a67d85b9cc7 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39c62a67d85b9cc7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_2cace606da312e0f" hs_bindgen_2cace606da312e0f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_set_key #-}
{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:799:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_set_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2cace606da312e0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_eea6b6e095b063e3" hs_bindgen_eea6b6e095b063e3 ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_block_size #-}
{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:805:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size :: Ptr.FunPtr (Botan_block_cipher_t -> IO FC.CInt)
botan_block_cipher_block_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eea6b6e095b063e3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_b466fa71a644473d" hs_bindgen_b466fa71a644473d ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_encrypt_blocks #-}
{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:811:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_encrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b466fa71a644473d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_b8b46558e756d31f" hs_bindgen_b8b46558e756d31f ::
     IO (Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_block_cipher_decrypt_blocks #-}
{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:817:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks :: Ptr.FunPtr (Botan_block_cipher_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_block_cipher_decrypt_blocks =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b8b46558e756d31f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_a800f0a72b482e69" hs_bindgen_a800f0a72b482e69 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a800f0a72b482e69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_d883c017fa7c4e36" hs_bindgen_d883c017fa7c4e36 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d883c017fa7c4e36

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_08bec23138504491" hs_bindgen_08bec23138504491 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt))

{-# NOINLINE botan_mp_init #-}
{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:848:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_mp_t) -> IO FC.CInt)
botan_mp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_08bec23138504491

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_1bee9cee4d4e6661" hs_bindgen_1bee9cee4d4e6661 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1bee9cee4d4e6661

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_da7d2ede62ef5a34" hs_bindgen_da7d2ede62ef5a34 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_hex #-}
{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:859:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr FC.CChar) -> IO FC.CInt)
botan_mp_to_hex =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_da7d2ede62ef5a34

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_9ed3470b458e9bd6" hs_bindgen_9ed3470b458e9bd6 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_str #-}
{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.Word8 -> (Ptr.Ptr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_to_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9ed3470b458e9bd6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_92e50770a644f8c3" hs_bindgen_92e50770a644f8c3 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_clear #-}
{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:869:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_clear =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_92e50770a644f8c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_b7441f04831f372b" hs_bindgen_b7441f04831f372b ::
     IO (Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_int #-}
{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int :: Ptr.FunPtr (Botan_mp_t -> FC.CInt -> IO FC.CInt)
botan_mp_set_from_int =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b7441f04831f372b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_1e1a9b910c7e8157" hs_bindgen_1e1a9b910c7e8157 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_mp #-}
{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:879:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_set_from_mp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1e1a9b910c7e8157

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_ccce0c23b8addd7b" hs_bindgen_ccce0c23b8addd7b ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_str #-}
{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:884:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_mp_set_from_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ccce0c23b8addd7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_63b3cf7defcc891c" hs_bindgen_63b3cf7defcc891c ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_from_radix_str #-}
{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_from_radix_str =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_63b3cf7defcc891c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_74c42a1f9a09f96d" hs_bindgen_74c42a1f9a09f96d ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bits #-}
{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_74c42a1f9a09f96d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_bbeb0160804ebcc0" hs_bindgen_bbeb0160804ebcc0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mp_num_bytes #-}
{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mp_num_bytes =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bbeb0160804ebcc0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_d702023259a0aa80" hs_bindgen_d702023259a0aa80 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_bin #-}
{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:905:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_mp_to_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d702023259a0aa80

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_d2625ff764d83e34" hs_bindgen_d2625ff764d83e34 ::
     IO (Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_from_bin #-}
{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:910:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin :: Ptr.FunPtr (Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_from_bin =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d2625ff764d83e34

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_156d6531962be1ae" hs_bindgen_156d6531962be1ae ::
     IO (Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt))

{-# NOINLINE botan_mp_to_uint32 #-}
{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:915:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 :: Ptr.FunPtr (Botan_mp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> IO FC.CInt)
botan_mp_to_uint32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_156d6531962be1ae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_470a65aa1e83f5f1" hs_bindgen_470a65aa1e83f5f1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_positive #-}
{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:922:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_positive =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_470a65aa1e83f5f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_6c443f9b4fd7b21b" hs_bindgen_6c443f9b4fd7b21b ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_negative #-}
{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:927:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_negative =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c443f9b4fd7b21b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_013c16e981263148" hs_bindgen_013c16e981263148 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_flip_sign #-}
{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:929:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_flip_sign =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_013c16e981263148

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_0fc9eb18a503de07" hs_bindgen_0fc9eb18a503de07 ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_zero #-}
{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_zero =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0fc9eb18a503de07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_540983be7f92ab9f" hs_bindgen_540983be7f92ab9f ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_odd #-}
{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:933:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_odd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_540983be7f92ab9f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_1c0fa3172b977c4a" hs_bindgen_1c0fa3172b977c4a ::
     IO (Ptr.FunPtr (Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_is_even #-}
{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:934:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even :: Ptr.FunPtr (Botan_mp_t -> IO FC.CInt)
botan_mp_is_even =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1c0fa3172b977c4a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_0787aab62f57ef7b" hs_bindgen_0787aab62f57ef7b ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_add_u32 #-}
{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_add_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0787aab62f57ef7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_5af95ed7ccd80d16" hs_bindgen_5af95ed7ccd80d16 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_mp_sub_u32 #-}
{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:937:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_mp_sub_u32 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5af95ed7ccd80d16

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_8803bf9237c48d16" hs_bindgen_8803bf9237c48d16 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_add #-}
{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:939:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_add =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8803bf9237c48d16

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_2fec59d24796290c" hs_bindgen_2fec59d24796290c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_sub #-}
{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:940:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_sub =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2fec59d24796290c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_0d96d96b4e841958" hs_bindgen_0d96d96b4e841958 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mul #-}
{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0d96d96b4e841958

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_587b1ae718c1b48f" hs_bindgen_587b1ae718c1b48f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_div #-}
{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:944:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_div =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_587b1ae718c1b48f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_7d2ba8e4c31496b8" hs_bindgen_7d2ba8e4c31496b8 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_mul #-}
{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:947:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_mul =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d2ba8e4c31496b8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_28d465f42561f911" hs_bindgen_28d465f42561f911 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_equal #-}
{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:954:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_equal =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28d465f42561f911

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_49e90c3900095fd2" hs_bindgen_49e90c3900095fd2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_cmp #-}
{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:961:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_cmp =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_49e90c3900095fd2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_550e65bf2c133c02" hs_bindgen_550e65bf2c133c02 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_swap #-}
{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_swap =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_550e65bf2c133c02

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_72a9fe5c23606da4" hs_bindgen_72a9fe5c23606da4 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_powmod #-}
{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_powmod =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_72a9fe5c23606da4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_5dac198a2fb1690a" hs_bindgen_5dac198a2fb1690a ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_lshift #-}
{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:972:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_lshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5dac198a2fb1690a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_c888bc19de3a2080" hs_bindgen_c888bc19de3a2080 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rshift #-}
{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:973:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rshift =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c888bc19de3a2080

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_2ab66bd06ec77e7c" hs_bindgen_2ab66bd06ec77e7c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_mod_inverse #-}
{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:975:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_mod_inverse =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ab66bd06ec77e7c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_a99daaba50ba46d1" hs_bindgen_a99daaba50ba46d1 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_bits #-}
{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:977:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_rand_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a99daaba50ba46d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_48ac9ee31bfa841d" hs_bindgen_48ac9ee31bfa841d ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_rand_range #-}
{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:980:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_rand_range =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48ac9ee31bfa841d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_9849fd9d3a176d04" hs_bindgen_9849fd9d3a176d04 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_mp_gcd #-}
{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:985:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd :: Ptr.FunPtr (Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_mp_gcd =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9849fd9d3a176d04

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_6767a7d3682f5508" hs_bindgen_6767a7d3682f5508 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_is_prime #-}
{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:992:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime :: Ptr.FunPtr (Botan_mp_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_is_prime =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6767a7d3682f5508

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_8b3c8dbbf748ec71" hs_bindgen_8b3c8dbbf748ec71 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_get_bit #-}
{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:999:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_get_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8b3c8dbbf748ec71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_a05f97f0bab6d840" hs_bindgen_a05f97f0bab6d840 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_set_bit #-}
{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1004:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_set_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a05f97f0bab6d840

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_a97b9da87f9f4827" hs_bindgen_a97b9da87f9f4827 ::
     IO (Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_mp_clear_bit #-}
{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1009:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit :: Ptr.FunPtr (Botan_mp_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_mp_clear_bit =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a97b9da87f9f4827

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_c906621cfbff0fa8" hs_bindgen_c906621cfbff0fa8 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c906621cfbff0fa8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_883d798b0e34b3e0" hs_bindgen_883d798b0e34b3e0 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_883d798b0e34b3e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_1b0bf5e6f0a80bba" hs_bindgen_1b0bf5e6f0a80bba ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b0bf5e6f0a80bba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_b683636bd2431a0b" hs_bindgen_b683636bd2431a0b ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_check_key #-}
{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b683636bd2431a0b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_9eaf35659e105d22" hs_bindgen_9eaf35659e105d22 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_rsa #-}
{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1061:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9eaf35659e105d22

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_b5f436e1202235b0" hs_bindgen_b5f436e1202235b0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdsa #-}
{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1063:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b5f436e1202235b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_6a5455e4ae65be63" hs_bindgen_6a5455e4ae65be63 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_ecdh #-}
{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1065:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6a5455e4ae65be63

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_bc9912f414cdf8e9" hs_bindgen_bc9912f414cdf8e9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_mceliece #-}
{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1067:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_create_mceliece =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_bc9912f414cdf8e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_958d3260e1e16115" hs_bindgen_958d3260e1e16115 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_create_dh #-}
{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1069:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_create_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_958d3260e1e16115

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_52a2f543dc51c46e" hs_bindgen_52a2f543dc51c46e ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_52a2f543dc51c46e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_1a71d0f55772e035" hs_bindgen_1a71d0f55772e035 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a71d0f55772e035

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_d367b6486f2f3408" hs_bindgen_d367b6486f2f3408 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load #-}
{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1119:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d367b6486f2f3408

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_6d50eec1a9ee799b" hs_bindgen_6d50eec1a9ee799b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6d50eec1a9ee799b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_e131bc7733b137c4" hs_bindgen_e131bc7733b137c4 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export #-}
{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e131bc7733b137c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_3321edd9192fd8d5" hs_bindgen_3321edd9192fd8d5 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_der #-}
{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3321edd9192fd8d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_048cc7c9ee34559e" hs_bindgen_048cc7c9ee34559e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_pem #-}
{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_privkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_048cc7c9ee34559e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_3c6bab665e608ea6" hs_bindgen_3c6bab665e608ea6 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_privkey_algo_name #-}
{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1148:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_privkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3c6bab665e608ea6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_3d901cd2532bccd4" hs_bindgen_3d901cd2532bccd4 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted #-}
{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1155:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3d901cd2532bccd4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_6fbf3e331f38940e" hs_bindgen_6fbf3e331f38940e ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_msec #-}
{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1170:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_msec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6fbf3e331f38940e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_3bc7164232b4f04d" hs_bindgen_3bc7164232b4f04d ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_encrypted_pbkdf_iter #-}
{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1185:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_export_encrypted_pbkdf_iter =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3bc7164232b4f04d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_8d20f9a70b96c133" hs_bindgen_8d20f9a70b96c133 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d20f9a70b96c133

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_b3a83529efc387b4" hs_bindgen_b3a83529efc387b4 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b3a83529efc387b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_9c6fb96e7f371b4c" hs_bindgen_9c6fb96e7f371b4c ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9c6fb96e7f371b4c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_870c44175a40a6f5" hs_bindgen_870c44175a40a6f5 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_870c44175a40a6f5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_45afe0fe0fbea323" hs_bindgen_45afe0fe0fbea323 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load #-}
{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1259:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45afe0fe0fbea323

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_e9c1a706efecc97b" hs_bindgen_e9c1a706efecc97b ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_export_pubkey #-}
{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1261:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_export_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e9c1a706efecc97b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_d159d98245541b93" hs_bindgen_d159d98245541b93 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_export #-}
{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1263:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_export =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d159d98245541b93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_d1dec6c16747057b" hs_bindgen_d1dec6c16747057b ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_der #-}
{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_der =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1dec6c16747057b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_fa3580f9d480acf1" hs_bindgen_fa3580f9d480acf1 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_pem #-}
{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_pubkey_view_pem =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fa3580f9d480acf1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_93569d3f02d88712" hs_bindgen_93569d3f02d88712 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_algo_name #-}
{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1275:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_algo_name =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_93569d3f02d88712

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_66b86cb28794f9ab" hs_bindgen_66b86cb28794f9ab ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pubkey_check_key #-}
{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1280:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pubkey_check_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_66b86cb28794f9ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_2296a3669e3bdce5" hs_bindgen_2296a3669e3bdce5 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_estimated_strength #-}
{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1282:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength :: Ptr.FunPtr (Botan_pubkey_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_estimated_strength =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2296a3669e3bdce5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_b73ef4f79cadafab" hs_bindgen_b73ef4f79cadafab ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_fingerprint #-}
{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1285:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint :: Ptr.FunPtr (Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pubkey_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b73ef4f79cadafab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_427afa3eed6a5e4a" hs_bindgen_427afa3eed6a5e4a ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_427afa3eed6a5e4a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_b00897c1d5e30c6f" hs_bindgen_b00897c1d5e30c6f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_get_field #-}
{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1295:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b00897c1d5e30c6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_7c07ed93eb73670f" hs_bindgen_7c07ed93eb73670f ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_get_field #-}
{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1297:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_get_field =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c07ed93eb73670f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_9a8af66bb1d1e3e5" hs_bindgen_9a8af66bb1d1e3e5 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa #-}
{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1302:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9a8af66bb1d1e3e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_929f3171e7db843a" hs_bindgen_929f3171e7db843a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_rsa_pkcs1 #-}
{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1304:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_rsa_pkcs1 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_929f3171e7db843a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_c02e7fffdd42fc88" hs_bindgen_c02e7fffdd42fc88 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_p #-}
{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1307:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c02e7fffdd42fc88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_fbf6e981a68824be" hs_bindgen_fbf6e981a68824be ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_q #-}
{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1309:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_fbf6e981a68824be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_22af9c7e26470520" hs_bindgen_22af9c7e26470520 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_d #-}
{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1311:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_d =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22af9c7e26470520

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_f4b88ef9108ee51c" hs_bindgen_f4b88ef9108ee51c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_n #-}
{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1313:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4b88ef9108ee51c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_2ba514683f957377" hs_bindgen_2ba514683f957377 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_e #-}
{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1315:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2ba514683f957377

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_d9a88bdf972039f7" hs_bindgen_d9a88bdf972039f7 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_privkey_rsa_get_privkey #-}
{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1318:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_privkey_rsa_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d9a88bdf972039f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_3db085169585f5c4" hs_bindgen_3db085169585f5c4 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_rsa #-}
{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_rsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3db085169585f5c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_32c949ab6a9243a0" hs_bindgen_32c949ab6a9243a0 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_e #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1323:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_e =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_32c949ab6a9243a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_8bfdf1046b606f3c" hs_bindgen_8bfdf1046b606f3c ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_rsa_get_n #-}
{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_rsa_get_n =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8bfdf1046b606f3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_d695fdda0a1cf96c" hs_bindgen_d695fdda0a1cf96c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dsa #-}
{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1331:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d695fdda0a1cf96c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_54aa4e96c52b5333" hs_bindgen_54aa4e96c52b5333 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_dsa #-}
{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1334:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_pubkey_load_dsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54aa4e96c52b5333

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_b7d3b8b68b36c942" hs_bindgen_b7d3b8b68b36c942 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_dsa_get_x #-}
{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1337:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x :: Ptr.FunPtr (Botan_mp_t -> Botan_privkey_t -> IO FC.CInt)
botan_privkey_dsa_get_x =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b7d3b8b68b36c942

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_7d25e0fa3abd8933" hs_bindgen_7d25e0fa3abd8933 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_p #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1340:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_p =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7d25e0fa3abd8933

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_22327e299baba3e9" hs_bindgen_22327e299baba3e9 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_q #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1342:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_q =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22327e299baba3e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_28a78cecdf136864" hs_bindgen_28a78cecdf136864 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_g #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1344:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_g =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_28a78cecdf136864

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_96c38dd4f7b48423" hs_bindgen_96c38dd4f7b48423 ::
     IO (Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_dsa_get_y #-}
{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1346:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y :: Ptr.FunPtr (Botan_mp_t -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_dsa_get_y =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_96c38dd4f7b48423

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_d54db0721202a8b2" hs_bindgen_d54db0721202a8b2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_dh #-}
{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1361:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> Botan_mp_t -> Botan_mp_t -> IO FC.CInt)
botan_privkey_load_dh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d54db0721202a8b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_b19e38ad807001f8" hs_bindgen_b19e38ad807001f8 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b19e38ad807001f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_1798bfbc951e0385" hs_bindgen_1798bfbc951e0385 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1798bfbc951e0385

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_54fc527e97e88004" hs_bindgen_54fc527e97e88004 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54fc527e97e88004

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_d865ae1f7eb00dc3" hs_bindgen_d865ae1f7eb00dc3 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ed25519 #-}
{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1414:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d865ae1f7eb00dc3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_3fb0112f4be0606a" hs_bindgen_3fb0112f4be0606a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ed25519 #-}
{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1416:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_ed25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3fb0112f4be0606a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_5c9c2b4617d4ad0f" hs_bindgen_5c9c2b4617d4ad0f ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_ed25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1418:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 64) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_ed25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5c9c2b4617d4ad0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_76d90a6311d4d365" hs_bindgen_76d90a6311d4d365 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_ed25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1420:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_ed25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_76d90a6311d4d365

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_b398fd9e8904317c" hs_bindgen_b398fd9e8904317c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_x25519 #-}
{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1426:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b398fd9e8904317c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_f0bf5647f16e145d" hs_bindgen_f0bf5647f16e145d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_x25519 #-}
{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1428:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_load_x25519 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f0bf5647f16e145d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_ebee54007c70ba27" hs_bindgen_ebee54007c70ba27 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_privkey_x25519_get_privkey #-}
{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1430:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey :: Ptr.FunPtr (Botan_privkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_privkey_x25519_get_privkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ebee54007c70ba27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_f7e049a6a9fc86ef" hs_bindgen_f7e049a6a9fc86ef ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_x25519_get_pubkey #-}
{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1432:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey :: Ptr.FunPtr (Botan_pubkey_t -> ((HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8) -> IO FC.CInt)
botan_pubkey_x25519_get_pubkey =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f7e049a6a9fc86ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_f4de4abe486772c0" hs_bindgen_f4de4abe486772c0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_kyber #-}
{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1438:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_privkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4de4abe486772c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_8441b0574e3aa3c2" hs_bindgen_8441b0574e3aa3c2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_kyber #-}
{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1440:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pubkey_load_kyber =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8441b0574e3aa3c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_16befcde1a9ecbb9" hs_bindgen_16befcde1a9ecbb9 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_privkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1443:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_privkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_16befcde1a9ecbb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_6bc9d0df91232585" hs_bindgen_6bc9d0df91232585 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_kyber_raw_key #-}
{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1446:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_kyber_raw_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6bc9d0df91232585

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_857528be0f8ff07f" hs_bindgen_857528be0f8ff07f ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdsa #-}
{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1452:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_857528be0f8ff07f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_98faca79b3e9de83" hs_bindgen_98faca79b3e9de83 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdsa #-}
{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1455:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdsa =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_98faca79b3e9de83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_69662a22a05b3ddc" hs_bindgen_69662a22a05b3ddc ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_ecdh #-}
{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_69662a22a05b3ddc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_d5d5a08ad91cbe73" hs_bindgen_d5d5a08ad91cbe73 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_ecdh #-}
{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1467:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_ecdh =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d5d5a08ad91cbe73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_1709cc4369e96892" hs_bindgen_1709cc4369e96892 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2 #-}
{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1470:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1709cc4369e96892

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_31153f298456e672" hs_bindgen_31153f298456e672 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2 #-}
{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1476:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_31153f298456e672

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_a220708d85710858" hs_bindgen_a220708d85710858 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pubkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1480:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_pubkey_t) -> Botan_mp_t -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pubkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a220708d85710858

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_9b53048cb13cef2a" hs_bindgen_9b53048cb13cef2a ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_privkey_load_sm2_enc #-}
{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1487:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc :: Ptr.FunPtr ((Ptr.Ptr Botan_privkey_t) -> Botan_mp_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_privkey_load_sm2_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9b53048cb13cef2a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_23d5e02528b571b0" hs_bindgen_23d5e02528b571b0 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt))

{-# NOINLINE botan_pubkey_sm2_compute_za #-}
{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1490:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> Botan_pubkey_t -> IO FC.CInt)
botan_pubkey_sm2_compute_za =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_23d5e02528b571b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_93b8968bbd6c6c19" hs_bindgen_93b8968bbd6c6c19 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pubkey_view_ec_public_point #-}
{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1497:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point :: Ptr.FunPtr (Botan_pubkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pubkey_view_ec_public_point =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_93b8968bbd6c6c19

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_4de0d80c19c42e44" hs_bindgen_4de0d80c19c42e44 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1505:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4de0d80c19c42e44

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_508f239234c164c5" hs_bindgen_508f239234c164c5 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_508f239234c164c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_742e0e08e8bdd240" hs_bindgen_742e0e08e8bdd240 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1513:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_encrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_742e0e08e8bdd240

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_2c1930cbd5775cd8" hs_bindgen_2c1930cbd5775cd8 ::
     IO (Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_encrypt #-}
{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1516:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt :: Ptr.FunPtr (Botan_pk_op_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2c1930cbd5775cd8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_39e986e3893fa8e1" hs_bindgen_39e986e3893fa8e1 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1529:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39e986e3893fa8e1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_0465a27083fe79d2" hs_bindgen_0465a27083fe79d2 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0465a27083fe79d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_45e180871dde546a" hs_bindgen_45e180871dde546a ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt_output_length #-}
{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1537:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_decrypt_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45e180871dde546a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_07c0c785d3274150" hs_bindgen_07c0c785d3274150 ::
     IO (Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_decrypt #-}
{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1540:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt :: Ptr.FunPtr (Botan_pk_op_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_07c0c785d3274150

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_0bb981497f544beb" hs_bindgen_0bb981497f544beb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_create #-}
{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1552:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_sign_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_sign_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0bb981497f544beb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_5db3dddb405ed661" hs_bindgen_5db3dddb405ed661 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5db3dddb405ed661

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_113234c7732db5f9" hs_bindgen_113234c7732db5f9 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_output_length #-}
{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1559:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length :: Ptr.FunPtr (Botan_pk_op_sign_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_output_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_113234c7732db5f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_b0c96fd228234630" hs_bindgen_b0c96fd228234630 ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_update #-}
{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1561:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update :: Ptr.FunPtr (Botan_pk_op_sign_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_sign_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b0c96fd228234630

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_c5b52c7a18a55aff" hs_bindgen_c5b52c7a18a55aff ::
     IO (Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_sign_finish #-}
{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1564:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish :: Ptr.FunPtr (Botan_pk_op_sign_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_sign_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c5b52c7a18a55aff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_256cf2cc545d54f2" hs_bindgen_256cf2cc545d54f2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_create #-}
{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1572:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_verify_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_verify_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_256cf2cc545d54f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_29f27c5e57413b6a" hs_bindgen_29f27c5e57413b6a ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_29f27c5e57413b6a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_d806d9825df2cc13" hs_bindgen_d806d9825df2cc13 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_update #-}
{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1582:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_update =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d806d9825df2cc13

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_1a38962a6db0c5a4" hs_bindgen_1a38962a6db0c5a4 ::
     IO (Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_verify_finish #-}
{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1583:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish :: Ptr.FunPtr (Botan_pk_op_verify_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_verify_finish =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1a38962a6db0c5a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_c4647a6cd33aa2ca" hs_bindgen_c4647a6cd33aa2ca ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_create #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1591:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_ka_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_pk_op_key_agreement_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c4647a6cd33aa2ca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_c29d88027322890d" hs_bindgen_c29d88027322890d ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c29d88027322890d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_22d8359d76c68577" hs_bindgen_22d8359d76c68577 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_export_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1598:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_export_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_22d8359d76c68577

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_b45acb04ba2ea0b3" hs_bindgen_b45acb04ba2ea0b3 ::
     IO (Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_view_public #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1601:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public :: Ptr.FunPtr (Botan_privkey_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_pk_op_key_agreement_view_public =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_b45acb04ba2ea0b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_6c3e26e6a7d2c8b2" hs_bindgen_6c3e26e6a7d2c8b2 ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement_size #-}
{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1603:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size :: Ptr.FunPtr (Botan_pk_op_ka_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_key_agreement_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c3e26e6a7d2c8b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_7c6a85d1e5539c2b" hs_bindgen_7c6a85d1e5539c2b ::
     IO (Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_pk_op_key_agreement #-}
{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1606:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement :: Ptr.FunPtr (Botan_pk_op_ka_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_pk_op_key_agreement =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_7c6a85d1e5539c2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_0fd5b4c04e28b1b2" hs_bindgen_0fd5b4c04e28b1b2 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1620:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_encrypt_t) -> Botan_pubkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0fd5b4c04e28b1b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_380c05cb86c73e36" hs_bindgen_380c05cb86c73e36 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_380c05cb86c73e36

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_3e0a8edcd495c19d" hs_bindgen_3e0a8edcd495c19d ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1628:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3e0a8edcd495c19d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_3b75577977ede661" hs_bindgen_3b75577977ede661 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_encapsulated_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1633:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_encapsulated_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3b75577977ede661

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_8341789f526f2d88" hs_bindgen_8341789f526f2d88 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_encrypt_create_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1637:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_encrypt_t -> Botan_rng_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_encrypt_create_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8341789f526f2d88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_de621b5ce164f299" hs_bindgen_de621b5ce164f299 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_create #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1650:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create :: Ptr.FunPtr ((Ptr.Ptr Botan_pk_op_kem_decrypt_t) -> Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_pk_op_kem_decrypt_create =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_de621b5ce164f299

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_5ac8a11e304f55af" hs_bindgen_5ac8a11e304f55af ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5ac8a11e304f55af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_d1e77bfec3faaf75" hs_bindgen_d1e77bfec3faaf75 ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key_length #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1658:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> HsBindgen.Runtime.Prelude.CSize -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key_length =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d1e77bfec3faaf75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_eecfabdf0a5d9c1d" hs_bindgen_eecfabdf0a5d9c1d ::
     IO (Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pk_op_kem_decrypt_shared_key #-}
{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1663:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key :: Ptr.FunPtr (Botan_pk_op_kem_decrypt_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pk_op_kem_decrypt_shared_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eecfabdf0a5d9c1d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_3e8c6a423628e91e" hs_bindgen_3e8c6a423628e91e ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_pkcs_hash_id #-}
{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1676:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_pkcs_hash_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3e8c6a423628e91e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_687fe36f13564e21" hs_bindgen_687fe36f13564e21 ::
     IO (Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_encrypt #-}
{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1683:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt :: Ptr.FunPtr (Botan_pubkey_t -> Botan_rng_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_687fe36f13564e21

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_3fff518d5c2e61bf" hs_bindgen_3fff518d5c2e61bf ::
     IO (Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_mceies_decrypt #-}
{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1698:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt :: Ptr.FunPtr (Botan_privkey_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_mceies_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3fff518d5c2e61bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_44317dfa3b6df4a9" hs_bindgen_44317dfa3b6df4a9 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load #-}
{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1713:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_cert_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_44317dfa3b6df4a9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_1b877c85f2846330" hs_bindgen_1b877c85f2846330 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_load_file #-}
{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1714:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1b877c85f2846330

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_0c82958c49ce69ce" hs_bindgen_0c82958c49ce69ce ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c82958c49ce69ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_3f24cca29324c5a0" hs_bindgen_3f24cca29324c5a0 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_dup #-}
{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_cert_t) -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_cert_dup =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3f24cca29324c5a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_834231806d077665" hs_bindgen_834231806d077665 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_starts #-}
{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_starts =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_834231806d077665

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_865f4f71544eb2b9" hs_bindgen_865f4f71544eb2b9 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_time_expires #-}
{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1725:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_time_expires =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_865f4f71544eb2b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_aaa4a70d1b404e17" hs_bindgen_aaa4a70d1b404e17 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_before #-}
{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_before =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_aaa4a70d1b404e17

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_f53c64b33accc3ab" hs_bindgen_f53c64b33accc3ab ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_not_after #-}
{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1728:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> IO FC.CInt)
botan_x509_cert_not_after =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f53c64b33accc3ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_39d7acbc005aa79e" hs_bindgen_39d7acbc005aa79e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_fingerprint #-}
{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1731:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_fingerprint =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_39d7acbc005aa79e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_8d2cb116e7d29014" hs_bindgen_8d2cb116e7d29014 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_serial_number #-}
{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1733:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_serial_number =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8d2cb116e7d29014

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_c47b6264dd833cce" hs_bindgen_c47b6264dd833cce ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_authority_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1734:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_authority_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c47b6264dd833cce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_d46e6c12cad834ad" hs_bindgen_d46e6c12cad834ad ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_key_id #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1735:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_key_id =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_d46e6c12cad834ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_ddc2a97267d4ca58" hs_bindgen_ddc2a97267d4ca58 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1737:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ddc2a97267d4ca58

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_a4e35e4978d22a0e" hs_bindgen_a4e35e4978d22a0e ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_public_key_bits #-}
{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1740:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_bin_fn -> IO FC.CInt)
botan_x509_cert_view_public_key_bits =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a4e35e4978d22a0e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_baedc4e16e4add60" hs_bindgen_baedc4e16e4add60 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_public_key #-}
{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1742:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key :: Ptr.FunPtr (Botan_x509_cert_t -> (Ptr.Ptr Botan_pubkey_t) -> IO FC.CInt)
botan_x509_cert_get_public_key =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_baedc4e16e4add60

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_99c92820fa62162a" hs_bindgen_99c92820fa62162a ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_issuer_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1745:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_issuer_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_99c92820fa62162a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_a4fc987f6f45aeba" hs_bindgen_a4fc987f6f45aeba ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_get_subject_dn #-}
{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1749:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_get_subject_dn =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_a4fc987f6f45aeba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_1d53f912a90a75be" hs_bindgen_1d53f912a90a75be ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_to_string #-}
{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_x509_cert_to_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_1d53f912a90a75be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_ee20f5a364048f2f" hs_bindgen_ee20f5a364048f2f ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_view_as_string #-}
{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1755:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string :: Ptr.FunPtr (Botan_x509_cert_t -> Botan_view_ctx -> Botan_view_str_fn -> IO FC.CInt)
botan_x509_cert_view_as_string =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_ee20f5a364048f2f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_99cf2eac4ac571eb" hs_bindgen_99cf2eac4ac571eb ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_allowed_usage #-}
{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage :: Ptr.FunPtr (Botan_x509_cert_t -> FC.CUInt -> IO FC.CInt)
botan_x509_cert_allowed_usage =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_99cf2eac4ac571eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_26e0196120177bc7" hs_bindgen_26e0196120177bc7 ::
     IO (Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_hostname_match #-}
{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1777:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match :: Ptr.FunPtr (Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_cert_hostname_match =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_26e0196120177bc7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_e16e809c27bee47a" hs_bindgen_e16e809c27bee47a ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_e16e809c27bee47a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_07ad969277c9c3d4" hs_bindgen_07ad969277c9c3d4 ::
     IO (Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)))

{-# NOINLINE botan_x509_cert_validation_status #-}
{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1803:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status :: Ptr.FunPtr (FC.CInt -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar))
botan_x509_cert_validation_status =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_07ad969277c9c3d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_248fd67e3c385587" hs_bindgen_248fd67e3c385587 ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load_file #-}
{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1811:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> IO FC.CInt)
botan_x509_crl_load_file =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_248fd67e3c385587

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_8e48473d4019fb1c" hs_bindgen_8e48473d4019fb1c ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_load #-}
{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1813:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load :: Ptr.FunPtr ((Ptr.Ptr Botan_x509_crl_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_x509_crl_load =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_8e48473d4019fb1c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_cdf20f52e3160c4a" hs_bindgen_cdf20f52e3160c4a ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt))

{-# NOINLINE botan_x509_crl_destroy #-}
{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1815:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy :: Ptr.FunPtr (Botan_x509_crl_t -> IO FC.CInt)
botan_x509_crl_destroy =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cdf20f52e3160c4a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_6c7607519b0dc65f" hs_bindgen_6c7607519b0dc65f ::
     IO (Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt))

{-# NOINLINE botan_x509_is_revoked #-}
{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1821:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked :: Ptr.FunPtr (Botan_x509_crl_t -> Botan_x509_cert_t -> IO FC.CInt)
botan_x509_is_revoked =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6c7607519b0dc65f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_98a5065a0f4a8149" hs_bindgen_98a5065a0f4a8149 ::
     IO (Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_x509_cert_verify_with_crl #-}
{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1828:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl :: Ptr.FunPtr ((Ptr.Ptr FC.CInt) -> Botan_x509_cert_t -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_x509_cert_verify_with_crl =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_98a5065a0f4a8149

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_4bf7fa2fa5c7afbf" hs_bindgen_4bf7fa2fa5c7afbf ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_wrap3394 #-}
{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1846:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_wrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_4bf7fa2fa5c7afbf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_2d2244d1ba1abcba" hs_bindgen_2d2244d1ba1abcba ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_key_unwrap3394 #-}
{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1855:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 :: Ptr.FunPtr ((HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_key_unwrap3394 =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2d2244d1ba1abcba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_48bf0ef859845cc3" hs_bindgen_48bf0ef859845cc3 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_enc #-}
{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1863:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_enc =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_48bf0ef859845cc3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_3ee92f158e3e1ce5" hs_bindgen_3ee92f158e3e1ce5 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_nist_kw_dec #-}
{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1873:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> FC.CInt -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_nist_kw_dec =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_3ee92f158e3e1ce5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_2818794b4717669d" hs_bindgen_2818794b4717669d ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_init #-}
{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1892:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_hotp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_2818794b4717669d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_5a451412ddadf575" hs_bindgen_5a451412ddadf575 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5a451412ddadf575

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_54dd0bf79ff7d657" hs_bindgen_54dd0bf79ff7d657 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt))

{-# NOINLINE botan_hotp_generate #-}
{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1905:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word32) -> HsBindgen.Runtime.Prelude.Word64 -> IO FC.CInt)
botan_hotp_generate =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_54dd0bf79ff7d657

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_35e5a4f36ca24207" hs_bindgen_35e5a4f36ca24207 ::
     IO (Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_hotp_check #-}
{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1911:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check :: Ptr.FunPtr (Botan_hotp_t -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word64) -> HsBindgen.Runtime.Prelude.Word32 -> HsBindgen.Runtime.Prelude.Word64 -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_hotp_check =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_35e5a4f36ca24207

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_809ab830a01e48cb" hs_bindgen_809ab830a01e48cb ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_totp_init #-}
{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1924:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init :: Ptr.FunPtr ((Ptr.Ptr Botan_totp_t) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_totp_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_809ab830a01e48cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_f4506b7aa53acd7c" hs_bindgen_f4506b7aa53acd7c ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_f4506b7aa53acd7c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_cc5a9a838caa177e" hs_bindgen_cc5a9a838caa177e ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_cc5a9a838caa177e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_5894bd34af768b69" hs_bindgen_5894bd34af768b69 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5894bd34af768b69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_0c8cffb0a90972ed" hs_bindgen_0c8cffb0a90972ed ::
     IO (Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt))

{-# NOINLINE botan_fpe_fe1_init #-}
{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:1963:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init :: Ptr.FunPtr ((Ptr.Ptr Botan_fpe_t) -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.CSize -> HsBindgen.Runtime.Prelude.Word32 -> IO FC.CInt)
botan_fpe_fe1_init =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_0c8cffb0a90972ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_055dbc48fa491d42" hs_bindgen_055dbc48fa491d42 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_055dbc48fa491d42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_039c52e9251642a6" hs_bindgen_039c52e9251642a6 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_encrypt #-}
{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:1973:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_encrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_039c52e9251642a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_9efebcc95b04ab97" hs_bindgen_9efebcc95b04ab97 ::
     IO (Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt))

{-# NOINLINE botan_fpe_decrypt #-}
{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:1976:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt :: Ptr.FunPtr (Botan_fpe_t -> Botan_mp_t -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
botan_fpe_decrypt =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_9efebcc95b04ab97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_42efb7b45d89a707" hs_bindgen_42efb7b45d89a707 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_42efb7b45d89a707

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_5803af92f7644ccb" hs_bindgen_5803af92f7644ccb ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_5803af92f7644ccb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_eba2a15cadf5b72b" hs_bindgen_eba2a15cadf5b72b ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_eba2a15cadf5b72b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_03a57b24ce2b54c0" hs_bindgen_03a57b24ce2b54c0 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_03a57b24ce2b54c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_c82b69e79c0113d6" hs_bindgen_c82b69e79c0113d6 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_c82b69e79c0113d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_21491b0b88acea46" hs_bindgen_21491b0b88acea46 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_21491b0b88acea46

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_6eba69d790623e68" hs_bindgen_6eba69d790623e68 ::
     IO (Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt))

{-# NOINLINE botan_srp6_group_size #-}
{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2091:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size :: Ptr.FunPtr ((HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.CSize) -> IO FC.CInt)
botan_srp6_group_size =
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_6eba69d790623e68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_45c684097a9e3b77" hs_bindgen_45c684097a9e3b77 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_45c684097a9e3b77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_1_0_get_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_453cab746cefe0d5" hs_bindgen_453cab746cefe0d5 ::
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
  GHC.IO.Unsafe.unsafePerformIO hs_bindgen_453cab746cefe0d5
