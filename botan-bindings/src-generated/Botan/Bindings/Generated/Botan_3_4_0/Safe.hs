{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_4_0.Safe where

import           Botan.Bindings.Generated.Botan_3_4_0
import           Data.Void (Void)
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "char const *hs_bindgen_05b71054e23787ff ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_2ae69152271aa51a (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_454ceb97b4a7ad46 (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_88911375a56f132a ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_1662d838605b7fa6 (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_868d15573e1895f9 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_a42e2e5778fc4f8f (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_d9b3bf1e32a4cede (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_1b90dba0d2a61143 (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_0e113b8ab565c3c5 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b6b028382673ca2e ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5fb92f8e9445bb7d ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0ef445f64797818a ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_9e1a416011942d5e ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_97bd3526bea11574 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_10d937e395024dd6 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_582e770e76bff14f ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_19c03b293830d285 ("
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
  , "  return botan_rng_init_custom(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_c6e4b43059e59a54 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3fd4094dda55c533 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fc29f708465b0c4e ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_429e01c2c03fff5e ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_78e834ebac8c8c4e ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e755ffaee501d646 ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e5470ccce231a733 ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_536e6b5acf1ee70f ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c4e5f5a2aa448c3e ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bdb1f24eaebe47be ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_facbd3303e6efecb ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f21d6da545d01561 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d32b68f35912f48c ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_94dacc7aa543221a ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_3d314049a52d3740 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4a253f014bbc056e ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bc61396929ae8d68 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e7e7020235f3fca5 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_645c9e4a6478ccad ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a7caf1c8cf18fdf9 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0c9dfc940249db65 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b44879609ca079f8 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_7bf8bf60c4e39ed5 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_73506ab25807ebe0 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_cc44cc8e0a27708f ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2ad2797834f99f05 ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bb06713b138d9082 ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8a18e3bdfbe6d31e ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e1161a4d9f4678e6 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d160d184cde8e92f ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fa335bae7eaea180 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_is_authenticated(arg1);"
  , "}"
  , "signed int hs_bindgen_89714d86101f0568 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_requires_entire_message(arg1);"
  , "}"
  , "signed int hs_bindgen_2f17e5d3f6ab6c3c ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e1817846807b56d6 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_84486517e1e6559b ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_756fdd3d27c8ad95 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cb0919e668a52103 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3655b3d3a89eeee2 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a785f12fecc1471d ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_0517c16e315675a4 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_59af36fab9e595b3 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7487ae15f1fc5664 ("
  , "  botan_cipher_t arg1,"
  , "  uint32_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4,"
  , "  size_t *arg5,"
  , "  uint8_t const *arg6,"
  , "  size_t arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_cipher_update(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_39ff388775bbcf8a ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_3db30f76d52eeb5f ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_21829f9fcd253258 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  size_t arg7"
  , ")"
  , "{"
  , "  return botan_pbkdf(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "signed int hs_bindgen_4873a0e7a1227394 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  size_t arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_pbkdf_timed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_844c5c917fa12c84 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4,"
  , "  uint8_t *arg5,"
  , "  size_t arg6,"
  , "  char const *arg7,"
  , "  size_t arg8,"
  , "  uint8_t const *arg9,"
  , "  size_t arg10"
  , ")"
  , "{"
  , "  return botan_pwdhash(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "signed int hs_bindgen_21c7830e64ba9b82 ("
  , "  char const *arg1,"
  , "  uint32_t arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4,"
  , "  size_t *arg5,"
  , "  uint8_t *arg6,"
  , "  size_t arg7,"
  , "  char const *arg8,"
  , "  size_t arg9,"
  , "  uint8_t const *arg10,"
  , "  size_t arg11"
  , ")"
  , "{"
  , "  return botan_pwdhash_timed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);"
  , "}"
  , "signed int hs_bindgen_cff7aabf08af16e8 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2,"
  , "  char const *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5,"
  , "  size_t arg6,"
  , "  size_t arg7,"
  , "  size_t arg8"
  , ")"
  , "{"
  , "  return botan_scrypt(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_c934f1307e09b050 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5,"
  , "  uint8_t const *arg6,"
  , "  size_t arg7,"
  , "  uint8_t const *arg8,"
  , "  size_t arg9"
  , ")"
  , "{"
  , "  return botan_kdf(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "signed int hs_bindgen_1d1ab24628c4cb38 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_80047c300447e3d2 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_94ade787f74b0bc8 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_b8cf0211632b15cb ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a28489b34242c9da ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_71ce52e8359e83f2 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_424f9b7e4569c5c2 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5526fec75c31f171 ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d3743e126cfea760 ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e99254f56499e7c5 ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_f76dd89a00d91437 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e4dde9dec4b5f351 ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fab258755a50dfd3 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d09de39e0b5c2793 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_6378256e2a426d86 ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bc9cd238b0b0b0c3 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_133244223494361d ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fbc2d15f5f007445 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1215dff05d1792cb ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3c293bd83d15a18b ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7f1ec9f99650bb75 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9ef9ae5a7fdabc99 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1b1607423e78deec ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c91cf2074129b0ad ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_c503c180adfb15b2 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_e2c9e12f479d4990 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_029f8433ea472bae ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_038160899c8bb47f ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_5c85d33f8d936d2f ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_edc33f5e46602c91 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_83e7fcc121a9e54e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d37824b9b6cf2777 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_47b18e56cc73bc77 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ee0b7b33059a0fa2 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_02e314d1f63e0d74 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ce49ebadca8eea27 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_37a3ad2bc9a0b800 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8467d7b9975c462d ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_be030a792edef867 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_57e50db656c9f8cb ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f61f0a31974f9146 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1ef0d2f18959d054 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3b2e059a1b76ed78 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b50e2bd459a647d5 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f9939c35a1f355a2 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d2f0747ccaa7ac97 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1f7287c1d4e30bfa ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c95b79d40c40c628 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3e8e48c428d4c0dd ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_aa09e107e1a2356a ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2fabc723b9c490c0 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4,"
  , "  size_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return botan_bcrypt_generate(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_7b9ca654b42bf337 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_552355f6fdb0fda3 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b77d2e17c68553eb ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2d83cee3e51854ba ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_153be7b34aa68dd9 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4fac372bfa85be2b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d58b816764f12dd5 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_9465f44efbaa77f7 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dc5e34d6c6dffec6 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1011ce95ae1d9112 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_2d7692f9818bd854 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_35e2e7aa5a96d66c ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_5603a920be6c624b ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1b05903f4377a635 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8efd85df41650f78 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_39d1214ae23ee893 ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2f637e50227c0691 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  botan_rng_t arg4,"
  , "  char const *arg5,"
  , "  char const *arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  return botan_privkey_export_encrypted(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "signed int hs_bindgen_e5e37c0eaf9352c1 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
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
  , "  return botan_privkey_export_encrypted_pbkdf_msec(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "signed int hs_bindgen_090b50aad1b34d9f ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  botan_rng_t arg4,"
  , "  char const *arg5,"
  , "  size_t arg6,"
  , "  char const *arg7,"
  , "  char const *arg8,"
  , "  uint32_t arg9"
  , ")"
  , "{"
  , "  return botan_privkey_export_encrypted_pbkdf_iter(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "signed int hs_bindgen_f3f08978c7c0d7bd ("
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
  , "  return botan_privkey_view_encrypted_der(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_1c8d6740bf69f194 ("
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
  , "  return botan_privkey_view_encrypted_der_timed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_00a97b89cee67fd2 ("
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
  , "  return botan_privkey_view_encrypted_pem(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_782a3bd70940e514 ("
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
  , "  return botan_privkey_view_encrypted_pem_timed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_833bf54f5818e4e5 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e3b2f498b6464b77 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_79d67ff0840d4b23 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_fdaf927e8ee7bdee ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9049f13d96d473d8 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3895fd03eae90c9e ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d5b93b2a912ebd17 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_25b13fd4f1bf67dd ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cd3ee62f5dffacc6 ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_56aa838d4d649418 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_c7524243a6dcf8fa ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e351f071fad35538 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a48e4572f08a2c8b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_db59b2ad2eea111d ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7ab3675b22ac6013 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f1f59f28223df35d ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1d0641c153d7f6da ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_54dba0caec0e4826 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_94b9b35ccd360279 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0952e259fff3a00c ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_47b5e0cfedf25eb8 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_17ab4b2b502c954a ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e87e0fa318fdf3b ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b4a8194b90d96a70 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_a58532db0188a0cf ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e8d05e566cdb0042 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_73be26ab4ad4ece9 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fa1ce55da4d2efd5 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7ee0b3d83aee55b0 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3310c1fbb0977528 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c8b762a4014e34b9 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7f071c0db57e7eed ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1e50890854ec176d ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4551b604dc51f2a1 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_26b254ca94ec80e9 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b58b16cf8d91b465 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d36489b17ec7099e ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_50101ec289a5a6d5 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e28ff585362f0d29 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_15f07e93c775ad18 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c37f0d0d5b0bed27 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_758b730dc08c59d6 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5932b1d96ba68b58 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_76a42d8e149d1223 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_27b600f16d6065bf ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bd19c60961558127 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ac07e19dea838342 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9ffdba2d05cdd3c6 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_80306915ad55ca78 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6deda284e2264ac0 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0ae274dd0566de18 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1ea7dd76a53b72ce ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b0e0051153aa4f25 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d595e5c035da62dc ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_77dcb7b74bbc859d ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_ecc_key_used_explicit_encoding(arg1);"
  , "}"
  , "signed int hs_bindgen_52c270e8c6b63e26 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_26af3325e17a0196 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_cd08bfd9a01be58e ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f4ffcf75e54bec18 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7aa0dcfb766d475a ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4c0b4fcd89e2d9a5 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_97d7f7f0b785b8d1 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_564366b06f05c75c ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_04847ed297c98153 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_299fb8da41c3c304 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fbaba0abd5380221 ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_47661a8e772a2452 ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4e0fa4d9ea5a6c13 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4d070268e36780f1 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_03481ba2485d6155 ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c30f8dbda34c9de8 ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_37f322431b0919c7 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ea4b20156c4cbd3d ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_9b80cd8a88bfd74b ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1d94a2b062dd9556 ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4328b0d72424c119 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d0b336253d8415c0 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3d6da7c8edd93d2e ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a01917dbef81541e ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4fca2bf72dfb94fa ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ada0d1c0fd1154cd ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e0af2714d85552d3 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6a7dfe1dc85fc33b ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e27b8da06a2ca062 ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e4d5ba09478503aa ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0f333b8d67f66563 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6cdc1159e87df67a ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f8d1faf0a230c988 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5,"
  , "  uint8_t const *arg6,"
  , "  size_t arg7"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "signed int hs_bindgen_4d81b6f9991a63a1 ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9189e9c6a7efa8ed ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_6af0de6f34942045 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ff43fd162f17566b ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_aefba414cefb9f8b ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  size_t arg5,"
  , "  uint8_t *arg6,"
  , "  size_t *arg7,"
  , "  uint8_t *arg8,"
  , "  size_t *arg9"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create_shared_key(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "signed int hs_bindgen_d7606665a994244c ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_95556347ea2797f6 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2aa3d3c3494197c0 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3ca91f0c80576de1 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5,"
  , "  size_t arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_8d2886914f22d425 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_93524a7861ff6e6b ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5,"
  , "  uint8_t const *arg6,"
  , "  size_t arg7,"
  , "  uint8_t *arg8,"
  , "  size_t *arg9"
  , ")"
  , "{"
  , "  return botan_mceies_encrypt(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);"
  , "}"
  , "signed int hs_bindgen_846dd7d03a5d8e3f ("
  , "  botan_privkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_mceies_decrypt(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_f0de3a6389772fbe ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a384012731ae4618 ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9ac8cb74170e0ad5 ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_6f134dc73c35e577 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b7d206b1fcbf0c58 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ef32f801a5125567 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fe9243493ba1daa6 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_facafaa28cf91181 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_85dd951037df5143 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7041bbb54580a4c4 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_91b93bbf856652b4 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c83bb7ebfc5444aa ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9228befe7cf1f2da ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8ecf9705f46ac444 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d763c744fae944bf ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_dd9f335a63dd17a0 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_5ac5132374ca9181 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_3ff2957a6f239c64 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_36a6e1aa8e6b8cd4 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_51dd4743f5d1e053 ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ad654f826f3bc050 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_893f76f7421b9d18 ("
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
  , "  return botan_x509_cert_verify(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);"
  , "}"
  , "char const *hs_bindgen_a837b0f47521da42 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_8a5b596f56c631b5 ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_481095fc59aee777 ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7deb587a9ea0186f ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ea09e42ba9e7e089 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_78f60cfa7500e1cb ("
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
  , "  return botan_x509_cert_verify_with_crl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);"
  , "}"
  , "signed int hs_bindgen_4e51ac9531a87dea ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t *arg5,"
  , "  size_t *arg6"
  , ")"
  , "{"
  , "  return botan_key_wrap3394(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_9dd335b51096e46f ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t *arg5,"
  , "  size_t *arg6"
  , ")"
  , "{"
  , "  return botan_key_unwrap3394(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_8c2604fd5e7812f3 ("
  , "  char const *arg1,"
  , "  signed int arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_nist_kw_enc(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_91865306e412607d ("
  , "  char const *arg1,"
  , "  signed int arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_nist_kw_dec(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_40a4a50f4c9d3772 ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_9685ca6731570e56 ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_21c94c0ad2a40311 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_975b378aa7634fcf ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e71f24fafb1f8b22 ("
  , "  botan_totp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5,"
  , "  size_t arg6"
  , ")"
  , "{"
  , "  return botan_totp_init(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_db022f277a5c8f93 ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_db44e934e68a9486 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c3a047dba2d47e4e ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6509e65b31385e15 ("
  , "  botan_fpe_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  size_t arg5,"
  , "  uint32_t arg6"
  , ")"
  , "{"
  , "  return botan_fpe_fe1_init(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  , "signed int hs_bindgen_1ecfea8fe6b9b0b7 ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ae56b8230f428729 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f56d8dbb65696693 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_79d10c0b3792fc01 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_3bade2710870e10e ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_9335abda7f7e2163 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  char const *arg5,"
  , "  botan_rng_t arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_f66557d5c9f6b269 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_da99519a4fc6417c ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5,"
  , "  char const *arg6,"
  , "  uint8_t *arg7,"
  , "  size_t *arg8"
  , ")"
  , "{"
  , "  return botan_srp6_generate_verifier(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_5ae2908131f8a9e7 ("
  , "  char const *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  uint8_t const *arg5,"
  , "  size_t arg6,"
  , "  uint8_t const *arg7,"
  , "  size_t arg8,"
  , "  botan_rng_t arg9,"
  , "  uint8_t *arg10,"
  , "  size_t *arg11,"
  , "  uint8_t *arg12,"
  , "  size_t *arg13"
  , ")"
  , "{"
  , "  return botan_srp6_client_agree(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13);"
  , "}"
  , "signed int hs_bindgen_adbed589e3e1ad2a ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8fec80ca03d39b91 ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_757aa212390314ca ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  size_t const *arg3,"
  , "  uint8_t *const *arg4,"
  , "  size_t arg5,"
  , "  uint8_t **arg6"
  , ")"
  , "{"
  , "  return botan_zfec_decode(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_error_description@
foreign import ccall safe "hs_bindgen_05b71054e23787ff" hs_bindgen_05b71054e23787ff ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:158:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description ::
     FC.CInt
     -- ^ __C declaration:__ @err@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_description = hs_bindgen_05b71054e23787ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_error_last_exception_message@
foreign import ccall safe "hs_bindgen_2ae69152271aa51a" hs_bindgen_2ae69152271aa51a ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:167:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_last_exception_message =
  hs_bindgen_2ae69152271aa51a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_ffi_api_version@
foreign import ccall safe "hs_bindgen_454ceb97b4a7ad46" hs_bindgen_454ceb97b4a7ad46 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:174:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: IO HsBindgen.Runtime.Prelude.Word32
botan_ffi_api_version = hs_bindgen_454ceb97b4a7ad46

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_ffi_supports_api@
foreign import ccall safe "hs_bindgen_88911375a56f132a" hs_bindgen_88911375a56f132a ::
     HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:180:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @api_version@
  -> IO FC.CInt
botan_ffi_supports_api = hs_bindgen_88911375a56f132a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_version_string@
foreign import ccall safe "hs_bindgen_1662d838605b7fa6" hs_bindgen_1662d838605b7fa6 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:185:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_version_string = hs_bindgen_1662d838605b7fa6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_version_major@
foreign import ccall safe "hs_bindgen_868d15573e1895f9" hs_bindgen_868d15573e1895f9 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:190:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_major = hs_bindgen_868d15573e1895f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_version_minor@
foreign import ccall safe "hs_bindgen_a42e2e5778fc4f8f" hs_bindgen_a42e2e5778fc4f8f ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:195:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_minor = hs_bindgen_a42e2e5778fc4f8f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_version_patch@
foreign import ccall safe "hs_bindgen_d9b3bf1e32a4cede" hs_bindgen_d9b3bf1e32a4cede ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:200:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_patch = hs_bindgen_d9b3bf1e32a4cede

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_version_datestamp@
foreign import ccall safe "hs_bindgen_1b90dba0d2a61143" hs_bindgen_1b90dba0d2a61143 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:206:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_datestamp = hs_bindgen_1b90dba0d2a61143

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_constant_time_compare@
foreign import ccall safe "hs_bindgen_0e113b8ab565c3c5" hs_bindgen_0e113b8ab565c3c5 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:211:28@

__exported by:__ @botan\/ffi.h@
-}
botan_constant_time_compare ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_constant_time_compare =
  hs_bindgen_0e113b8ab565c3c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_same_mem@
foreign import ccall safe "hs_bindgen_b6b028382673ca2e" hs_bindgen_b6b028382673ca2e ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:217:28@

__exported by:__ @botan\/ffi.h@
-}
botan_same_mem ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_same_mem = hs_bindgen_b6b028382673ca2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_scrub_mem@
foreign import ccall safe "hs_bindgen_5fb92f8e9445bb7d" hs_bindgen_5fb92f8e9445bb7d ::
     Ptr.Ptr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:223:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @mem@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_scrub_mem = hs_bindgen_5fb92f8e9445bb7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hex_encode@
foreign import ccall safe "hs_bindgen_0ef445f64797818a" hs_bindgen_0ef445f64797818a ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

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
botan_hex_encode ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@x@ /(input)/__]: is some binary data

     __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@len@ /(input)/__]: length of x in bytes

     __C declaration:__ @len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@out@ /(input)/__]: an array of at least x*2 bytes

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@flags@ /(input)/__]: flags out be upper or lower case?

     __C declaration:__ @flags@
     -}
  -> IO FC.CInt
botan_hex_encode = hs_bindgen_0ef445f64797818a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hex_decode@
foreign import ccall safe "hs_bindgen_9e1a416011942d5e" hs_bindgen_9e1a416011942d5e ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
botan_hex_decode ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hex_str@ /(input)/__]: a string of hex chars (whitespace is ignored)

     __C declaration:__ @hex_str@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@in_len@ /(input)/__]: the length of hex_str

     __C declaration:__ @in_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: the output buffer should be at least strlen(hex_str)/2 bytes

     __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

     __C declaration:__ @out_len@
     -}
  -> IO FC.CInt
botan_hex_decode = hs_bindgen_9e1a416011942d5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_base64_encode@
foreign import ccall safe "hs_bindgen_97bd3526bea11574" hs_bindgen_97bd3526bea11574 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:250:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_encode ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_base64_encode = hs_bindgen_97bd3526bea11574

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_base64_decode@
foreign import ccall safe "hs_bindgen_10d937e395024dd6" hs_bindgen_10d937e395024dd6 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:255:28@

__exported by:__ @botan\/ffi.h@
-}
botan_base64_decode ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @base64_str@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_base64_decode = hs_bindgen_10d937e395024dd6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_init@
foreign import ccall safe "hs_bindgen_582e770e76bff14f" hs_bindgen_582e770e76bff14f ::
     Ptr.Ptr Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:272:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_init ::
     Ptr.Ptr Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

     __C declaration:__ @rng_type@
     -}
  -> IO FC.CInt
botan_rng_init = hs_bindgen_582e770e76bff14f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_init_custom@
foreign import ccall safe "hs_bindgen_19c03b293830d285" hs_bindgen_19c03b293830d285 ::
     Ptr.Ptr Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr Void
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
  -> IO FC.CInt

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
botan_rng_init_custom ::
     Ptr.Ptr Botan_rng_t
     {- ^

        [__@rng_out@ /(input)/__]: rng object to create

     __C declaration:__ @rng_out@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@rng_name@ /(input)/__]: name of the rng

     __C declaration:__ @rng_name@
     -}
  -> Ptr.Ptr Void
     {- ^

        [__@context@ /(input)/__]: An application-specific context passed to the callback functions

     __C declaration:__ @context@
     -}
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
     {- ^

        [__@get_cb@ /(input)/__]: Callback for getting random bytes from the rng, return 0 for success

     __C declaration:__ @get_cb@
     -}
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> (HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8) -> HsBindgen.Runtime.Prelude.CSize -> IO FC.CInt)
     {- ^

        [__@add_entropy_cb@ /(input)/__]: Callback for adding entropy to the rng, return 0 for success, may be NULL

     __C declaration:__ @add_entropy_cb@
     -}
  -> Ptr.FunPtr ((Ptr.Ptr Void) -> IO ())
     {- ^

        [__@destroy_cb@ /(input)/__]: Callback called when rng is destroyed, may be NULL

     __C declaration:__ @destroy_cb@
     -}
  -> IO FC.CInt
botan_rng_init_custom = hs_bindgen_19c03b293830d285

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_get@
foreign import ccall safe "hs_bindgen_c6e4b43059e59a54" hs_bindgen_c6e4b43059e59a54 ::
     Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:298:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_get ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: output buffer of size out_len

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: number of requested bytes

     __C declaration:__ @out_len@
     -}
  -> IO FC.CInt
botan_rng_get = hs_bindgen_c6e4b43059e59a54

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_system_rng_get@
foreign import ccall safe "hs_bindgen_3fd4094dda55c533" hs_bindgen_3fd4094dda55c533 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:306:28@

__exported by:__ @botan\/ffi.h@
-}
botan_system_rng_get ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: output buffer of size out_len

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: number of requested bytes

     __C declaration:__ @out_len@
     -}
  -> IO FC.CInt
botan_system_rng_get = hs_bindgen_3fd4094dda55c533

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_reseed@
foreign import ccall safe "hs_bindgen_fc29f708465b0c4e" hs_bindgen_fc29f708465b0c4e ::
     Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:316:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@bits@ /(input)/__]: number of bits to reseed with

     __C declaration:__ @bits@
     -}
  -> IO FC.CInt
botan_rng_reseed = hs_bindgen_fc29f708465b0c4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_reseed_from_rng@
foreign import ccall safe "hs_bindgen_429e01c2c03fff5e" hs_bindgen_429e01c2c03fff5e ::
     Botan_rng_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:326:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_reseed_from_rng ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> Botan_rng_t
     {- ^

        [__@source_rng@ /(input)/__]: the rng that will be read from

     __C declaration:__ @source_rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@bits@ /(input)/__]: number of bits to reseed with

     __C declaration:__ @bits@
     -}
  -> IO FC.CInt
botan_rng_reseed_from_rng =
  hs_bindgen_429e01c2c03fff5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_add_entropy@
foreign import ccall safe "hs_bindgen_78e834ebac8c8c4e" hs_bindgen_78e834ebac8c8c4e ::
     Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:336:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_add_entropy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@entropy@ /(input)/__]: the data to add

     __C declaration:__ @entropy@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@entropy_len@ /(input)/__]: length of entropy buffer

     __C declaration:__ @entropy_len@
     -}
  -> IO FC.CInt
botan_rng_add_entropy = hs_bindgen_78e834ebac8c8c4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_rng_destroy@
foreign import ccall safe "hs_bindgen_e755ffaee501d646" hs_bindgen_e755ffaee501d646 ::
     Botan_rng_t
  -> IO FC.CInt

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:343:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_rng_destroy = hs_bindgen_e755ffaee501d646

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_init@
foreign import ccall safe "hs_bindgen_e5470ccce231a733" hs_bindgen_e5470ccce231a733 ::
     Ptr.Ptr Botan_hash_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_init ::
     Ptr.Ptr Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

     __C declaration:__ @hash_name@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

     __C declaration:__ @flags@
     -}
  -> IO FC.CInt
botan_hash_init = hs_bindgen_e5470ccce231a733

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_copy_state@
foreign import ccall safe "hs_bindgen_536e6b5acf1ee70f" hs_bindgen_536e6b5acf1ee70f ::
     Ptr.Ptr Botan_hash_t
  -> Botan_hash_t
  -> IO FC.CInt

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:365:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_copy_state ::
     Ptr.Ptr Botan_hash_t
     {- ^

        [__@dest@ /(input)/__]: destination hash object

     __C declaration:__ @dest@
     -}
  -> Botan_hash_t
     {- ^

        [__@source@ /(input)/__]: source hash object

     __C declaration:__ @source@
     -}
  -> IO FC.CInt
botan_hash_copy_state = hs_bindgen_536e6b5acf1ee70f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_output_length@
foreign import ccall safe "hs_bindgen_c4e5f5a2aa448c3e" hs_bindgen_c4e5f5a2aa448c3e ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:373:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_output_length ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

     __C declaration:__ @output_length@
     -}
  -> IO FC.CInt
botan_hash_output_length =
  hs_bindgen_c4e5f5a2aa448c3e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_block_size@
foreign import ccall safe "hs_bindgen_bdb1f24eaebe47be" hs_bindgen_bdb1f24eaebe47be ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:381:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_block_size ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

     __C declaration:__ @block_size@
     -}
  -> IO FC.CInt
botan_hash_block_size = hs_bindgen_bdb1f24eaebe47be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_update@
foreign import ccall safe "hs_bindgen_facbd3303e6efecb" hs_bindgen_facbd3303e6efecb ::
     Botan_hash_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:390:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_update ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

     __C declaration:__ @in_len@
     -}
  -> IO FC.CInt
botan_hash_update = hs_bindgen_facbd3303e6efecb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_final@
foreign import ccall safe "hs_bindgen_f21d6da545d01561" hs_bindgen_f21d6da545d01561 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:400:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_final ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: output buffer

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_hash_final = hs_bindgen_f21d6da545d01561

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_clear@
foreign import ccall safe "hs_bindgen_d32b68f35912f48c" hs_bindgen_d32b68f35912f48c ::
     Botan_hash_t
  -> IO FC.CInt

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:408:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_clear = hs_bindgen_d32b68f35912f48c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_destroy@
foreign import ccall safe "hs_bindgen_94dacc7aa543221a" hs_bindgen_94dacc7aa543221a ::
     Botan_hash_t
  -> IO FC.CInt

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:415:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_destroy = hs_bindgen_94dacc7aa543221a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hash_name@
foreign import ccall safe "hs_bindgen_3d314049a52d3740" hs_bindgen_3d314049a52d3740 ::
     Botan_hash_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:423:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_name ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: the object to read

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@name@ /(input)/__]: output buffer

     __C declaration:__ @name@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

     __C declaration:__ @name_len@
     -}
  -> IO FC.CInt
botan_hash_name = hs_bindgen_3d314049a52d3740

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_init@
foreign import ccall safe "hs_bindgen_4a253f014bbc056e" hs_bindgen_4a253f014bbc056e ::
     Ptr.Ptr Botan_mac_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:438:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_init ::
     Ptr.Ptr Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

     __C declaration:__ @mac_name@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

     __C declaration:__ @flags@
     -}
  -> IO FC.CInt
botan_mac_init = hs_bindgen_4a253f014bbc056e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_output_length@
foreign import ccall safe "hs_bindgen_bc61396929ae8d68" hs_bindgen_bc61396929ae8d68 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:446:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_output_length ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

     __C declaration:__ @output_length@
     -}
  -> IO FC.CInt
botan_mac_output_length = hs_bindgen_bc61396929ae8d68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_set_key@
foreign import ccall safe "hs_bindgen_e7e7020235f3fca5" hs_bindgen_e7e7020235f3fca5 ::
     Botan_mac_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:455:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_key ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@key@ /(input)/__]: buffer holding the key

     __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@key_len@ /(input)/__]: size of the key buffer in bytes

     __C declaration:__ @key_len@
     -}
  -> IO FC.CInt
botan_mac_set_key = hs_bindgen_e7e7020235f3fca5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_set_nonce@
foreign import ccall safe "hs_bindgen_645c9e4a6478ccad" hs_bindgen_645c9e4a6478ccad ::
     Botan_mac_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:464:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_set_nonce ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@nonce@ /(input)/__]: buffer holding the key

     __C declaration:__ @nonce@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

     __C declaration:__ @nonce_len@
     -}
  -> IO FC.CInt
botan_mac_set_nonce = hs_bindgen_645c9e4a6478ccad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_update@
foreign import ccall safe "hs_bindgen_a7caf1c8cf18fdf9" hs_bindgen_a7caf1c8cf18fdf9 ::
     Botan_mac_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:473:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_update ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@buf@ /(input)/__]: input buffer

     __C declaration:__ @buf@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@len@ /(input)/__]: number of bytes to read from the input buffer

     __C declaration:__ @len@
     -}
  -> IO FC.CInt
botan_mac_update = hs_bindgen_a7caf1c8cf18fdf9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_final@
foreign import ccall safe "hs_bindgen_0c9dfc940249db65" hs_bindgen_0c9dfc940249db65 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:483:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_final ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: output buffer

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_mac_final = hs_bindgen_0c9dfc940249db65

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_clear@
foreign import ccall safe "hs_bindgen_b44879609ca079f8" hs_bindgen_b44879609ca079f8 ::
     Botan_mac_t
  -> IO FC.CInt

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:491:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_clear = hs_bindgen_b44879609ca079f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_name@
foreign import ccall safe "hs_bindgen_7bf8bf60c4e39ed5" hs_bindgen_7bf8bf60c4e39ed5 ::
     Botan_mac_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:499:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_name ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: the object to read

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@name@ /(input)/__]: output buffer

     __C declaration:__ @name@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

     __C declaration:__ @name_len@
     -}
  -> IO FC.CInt
botan_mac_name = hs_bindgen_7bf8bf60c4e39ed5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_get_keyspec@
foreign import ccall safe "hs_bindgen_73506ab25807ebe0" hs_bindgen_73506ab25807ebe0 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:509:5@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_get_keyspec ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: the object to read

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

     __C declaration:__ @out_minimum_keylength@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

     __C declaration:__ @out_maximum_keylength@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

     __C declaration:__ @out_keylength_modulo@
     -}
  -> IO FC.CInt
botan_mac_get_keyspec = hs_bindgen_73506ab25807ebe0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mac_destroy@
foreign import ccall safe "hs_bindgen_cc44cc8e0a27708f" hs_bindgen_cc44cc8e0a27708f ::
     Botan_mac_t
  -> IO FC.CInt

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_destroy = hs_bindgen_cc44cc8e0a27708f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_init@
foreign import ccall safe "hs_bindgen_2ad2797834f99f05" hs_bindgen_2ad2797834f99f05 ::
     Ptr.Ptr Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:533:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_init ::
     Ptr.Ptr Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_cipher_init = hs_bindgen_2ad2797834f99f05

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_name@
foreign import ccall safe "hs_bindgen_bb06713b138d9082" hs_bindgen_bb06713b138d9082 ::
     Botan_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:538:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_name ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @name@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @name_len@
  -> IO FC.CInt
botan_cipher_name = hs_bindgen_bb06713b138d9082

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_output_length@
foreign import ccall safe "hs_bindgen_8a18e3bdfbe6d31e" hs_bindgen_8a18e3bdfbe6d31e ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:543:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_output_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_cipher_output_length =
  hs_bindgen_8a18e3bdfbe6d31e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_valid_nonce_length@
foreign import ccall safe "hs_bindgen_e1161a4d9f4678e6" hs_bindgen_e1161a4d9f4678e6 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:548:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_valid_nonce_length =
  hs_bindgen_e1161a4d9f4678e6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_get_tag_length@
foreign import ccall safe "hs_bindgen_d160d184cde8e92f" hs_bindgen_d160d184cde8e92f ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:553:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tag_size@
  -> IO FC.CInt
botan_cipher_get_tag_length =
  hs_bindgen_d160d184cde8e92f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_is_authenticated@
foreign import ccall safe "hs_bindgen_fa335bae7eaea180" hs_bindgen_fa335bae7eaea180 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:558:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_is_authenticated =
  hs_bindgen_fa335bae7eaea180

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_requires_entire_message@
foreign import ccall safe "hs_bindgen_89714d86101f0568" hs_bindgen_89714d86101f0568 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:565:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_requires_entire_message =
  hs_bindgen_89714d86101f0568

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_get_default_nonce_length@
foreign import ccall safe "hs_bindgen_2f17e5d3f6ab6c3c" hs_bindgen_2f17e5d3f6ab6c3c ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:570:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_get_default_nonce_length =
  hs_bindgen_2f17e5d3f6ab6c3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_get_update_granularity@
foreign import ccall safe "hs_bindgen_e1817846807b56d6" hs_bindgen_e1817846807b56d6 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:576:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_update_granularity =
  hs_bindgen_e1817846807b56d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_get_ideal_update_granularity@
foreign import ccall safe "hs_bindgen_84486517e1e6559b" hs_bindgen_84486517e1e6559b ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:582:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_ideal_update_granularity =
  hs_bindgen_84486517e1e6559b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_query_keylen@
foreign import ccall safe "hs_bindgen_756fdd3d27c8ad95" hs_bindgen_756fdd3d27c8ad95 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:588:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_query_keylen ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_minimum_keylength@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_maximum_keylength@
  -> IO FC.CInt
botan_cipher_query_keylen =
  hs_bindgen_756fdd3d27c8ad95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_cb0919e668a52103" hs_bindgen_cb0919e668a52103 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:594:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_keyspec ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @min_keylen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @max_keylen@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @mod_keylen@
  -> IO FC.CInt
botan_cipher_get_keyspec =
  hs_bindgen_cb0919e668a52103

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_set_key@
foreign import ccall safe "hs_bindgen_3655b3d3a89eeee2" hs_bindgen_3655b3d3a89eeee2 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:599:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_key ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_cipher_set_key = hs_bindgen_3655b3d3a89eeee2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_reset@
foreign import ccall safe "hs_bindgen_a785f12fecc1471d" hs_bindgen_a785f12fecc1471d ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:609:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_reset = hs_bindgen_a785f12fecc1471d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_set_associated_data@
foreign import ccall safe "hs_bindgen_0517c16e315675a4" hs_bindgen_0517c16e315675a4 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:614:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_set_associated_data ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ad@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ad_len@
  -> IO FC.CInt
botan_cipher_set_associated_data =
  hs_bindgen_0517c16e315675a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_start@
foreign import ccall safe "hs_bindgen_59af36fab9e595b3" hs_bindgen_59af36fab9e595b3 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:619:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_start ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @nonce@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nonce_len@
  -> IO FC.CInt
botan_cipher_start = hs_bindgen_59af36fab9e595b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_update@
foreign import ccall safe "hs_bindgen_7487ae15f1fc5664" hs_bindgen_7487ae15f1fc5664 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_cipher_update'
-}
botan_cipher_update_wrapper ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_size@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_written@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @input_bytes@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @input_size@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @input_consumed@
  -> IO FC.CInt
botan_cipher_update_wrapper =
  hs_bindgen_7487ae15f1fc5664

{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:627:5@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_size@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_written@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @input_bytes@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @input_size@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @input_consumed@
  -> IO FC.CInt
botan_cipher_update =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x5 (\ptr8 ->
                                                                  hs_bindgen_7487ae15f1fc5664 x0 x1 x2 x3 x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_clear@
foreign import ccall safe "hs_bindgen_39ff388775bbcf8a" hs_bindgen_39ff388775bbcf8a ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:639:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear ::
     Botan_cipher_t
     -- ^ __C declaration:__ @hash@
  -> IO FC.CInt
botan_cipher_clear = hs_bindgen_39ff388775bbcf8a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_cipher_destroy@
foreign import ccall safe "hs_bindgen_3db30f76d52eeb5f" hs_bindgen_3db30f76d52eeb5f ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:645:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_destroy = hs_bindgen_3db30f76d52eeb5f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pbkdf@
foreign import ccall safe "hs_bindgen_21829f9fcd253258" hs_bindgen_21829f9fcd253258 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pbkdf'
-}
botan_pbkdf_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @iterations@
  -> IO FC.CInt
botan_pbkdf_wrapper = hs_bindgen_21829f9fcd253258

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:664:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @iterations@
  -> IO FC.CInt
botan_pbkdf =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr7 ->
                                                                hs_bindgen_21829f9fcd253258 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x5 x6)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pbkdf_timed@
foreign import ccall safe "hs_bindgen_4873a0e7a1227394" hs_bindgen_4873a0e7a1227394 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pbkdf_timed'
-}
botan_pbkdf_timed_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@pbkdf_algo@ /(input)/__]: PBKDF algorithm, e.g., "PBKDF2(SHA-256)"

     __C declaration:__ @pbkdf_algo@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: buffer to store the derived key, must be of out_len bytes

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the desired length of the key to produce

     __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@passphrase@ /(input)/__]: the password to derive the key from

     __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a randomly chosen salt

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: length of salt in bytes

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@milliseconds_to_run@ /(input)/__]: if iterations is zero, then instead the PBKDF is run until milliseconds_to_run milliseconds has passed

     __C declaration:__ @milliseconds_to_run@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_iterations_used@ /(input)/__]: set to the number iterations executed

     __C declaration:__ @out_iterations_used@
     -}
  -> IO FC.CInt
botan_pbkdf_timed_wrapper =
  hs_bindgen_4873a0e7a1227394

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
botan_pbkdf_timed ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@pbkdf_algo@ /(input)/__]: PBKDF algorithm, e.g., "PBKDF2(SHA-256)"

     __C declaration:__ @pbkdf_algo@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: buffer to store the derived key, must be of out_len bytes

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the desired length of the key to produce

     __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@passphrase@ /(input)/__]: the password to derive the key from

     __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a randomly chosen salt

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: length of salt in bytes

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@milliseconds_to_run@ /(input)/__]: if iterations is zero, then instead the PBKDF is run until milliseconds_to_run milliseconds has passed

     __C declaration:__ @milliseconds_to_run@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_iterations_used@ /(input)/__]: set to the number iterations executed

     __C declaration:__ @out_iterations_used@
     -}
  -> IO FC.CInt
botan_pbkdf_timed =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr8 ->
                                                                  hs_bindgen_4873a0e7a1227394 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pwdhash@
foreign import ccall safe "hs_bindgen_844c5c917fa12c84" hs_bindgen_844c5c917fa12c84 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pwdhash'
-}
botan_pwdhash_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param1@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param2@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param3@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @passphrase_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pwdhash_wrapper = hs_bindgen_844c5c917fa12c84

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:721:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param1@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param2@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param3@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @passphrase_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pwdhash =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    \x9 ->
                      HsBindgen.Runtime.IncompleteArray.withPtr x8 (\ptr10 ->
                                                                      hs_bindgen_844c5c917fa12c84 x0 x1 x2 x3 x4 x5 x6 x7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x9)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pwdhash_timed@
foreign import ccall safe "hs_bindgen_21c7830e64ba9b82" hs_bindgen_21c7830e64ba9b82 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pwdhash_timed'
-}
botan_pwdhash_timed_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @algo@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @msec@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param1@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param2@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param3@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @passphrase_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pwdhash_timed_wrapper =
  hs_bindgen_21c7830e64ba9b82

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:748:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @algo@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @msec@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param1@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param2@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @param3@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @passphrase_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pwdhash_timed =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    \x9 ->
                      \x10 ->
                        HsBindgen.Runtime.IncompleteArray.withPtr x9 (\ptr11 ->
                                                                        hs_bindgen_21c7830e64ba9b82 x0 x1 x2 x3 x4 x5 x6 x7 x8 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x10)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_scrypt@
foreign import ccall safe "hs_bindgen_cff7aabf08af16e8" hs_bindgen_cff7aabf08af16e8 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_scrypt'
-}
botan_scrypt_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @r@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @p@
  -> IO FC.CInt
botan_scrypt_wrapper = hs_bindgen_cff7aabf08af16e8

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:767:5@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @r@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @p@
  -> IO FC.CInt
botan_scrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr8 ->
                                                                  hs_bindgen_cff7aabf08af16e8 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_kdf@
foreign import ccall safe "hs_bindgen_c934f1307e09b050" hs_bindgen_c934f1307e09b050 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_kdf'
-}
botan_kdf_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@kdf_algo@ /(input)/__]: KDF algorithm, e.g., "SP800-56C"

     __C declaration:__ @kdf_algo@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: buffer holding the derived key, must be of length out_len

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the desired output length in bytes

     __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@secret@ /(input)/__]: the secret input

     __C declaration:__ @secret@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@secret_len@ /(input)/__]: size of secret in bytes

     __C declaration:__ @secret_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a diversifier

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: size of salt in bytes

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@label@ /(input)/__]: purpose for the derived keying material

     __C declaration:__ @label@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@label_len@ /(input)/__]: size of label in bytes

     __C declaration:__ @label_len@
     -}
  -> IO FC.CInt
botan_kdf_wrapper = hs_bindgen_c934f1307e09b050

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
botan_kdf ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@kdf_algo@ /(input)/__]: KDF algorithm, e.g., "SP800-56C"

     __C declaration:__ @kdf_algo@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: buffer holding the derived key, must be of length out_len

     __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the desired output length in bytes

     __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@secret@ /(input)/__]: the secret input

     __C declaration:__ @secret@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@secret_len@ /(input)/__]: size of secret in bytes

     __C declaration:__ @secret_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a diversifier

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: size of salt in bytes

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@label@ /(input)/__]: purpose for the derived keying material

     __C declaration:__ @label@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@label_len@ /(input)/__]: size of label in bytes

     __C declaration:__ @label_len@
     -}
  -> IO FC.CInt
botan_kdf =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    HsBindgen.Runtime.IncompleteArray.withPtr x7 (\ptr9 ->
                                                                    HsBindgen.Runtime.IncompleteArray.withPtr x5 (\ptr10 ->
                                                                                                                    HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr11 ->
                                                                                                                                                                    hs_bindgen_c934f1307e09b050 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x6 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x8)))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_init@
foreign import ccall safe "hs_bindgen_1d1ab24628c4cb38" hs_bindgen_1d1ab24628c4cb38 ::
     Ptr.Ptr Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:808:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init ::
     Ptr.Ptr Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_name@
  -> IO FC.CInt
botan_block_cipher_init = hs_bindgen_1d1ab24628c4cb38

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_destroy@
foreign import ccall safe "hs_bindgen_80047c300447e3d2" hs_bindgen_80047c300447e3d2 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:814:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_destroy =
  hs_bindgen_80047c300447e3d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_clear@
foreign import ccall safe "hs_bindgen_94ade787f74b0bc8" hs_bindgen_94ade787f74b0bc8 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:820:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_clear =
  hs_bindgen_94ade787f74b0bc8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_set_key@
foreign import ccall safe "hs_bindgen_b8cf0211632b15cb" hs_bindgen_b8cf0211632b15cb ::
     Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_set_key'
-}
botan_block_cipher_set_key_wrapper ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_block_cipher_set_key_wrapper =
  hs_bindgen_b8cf0211632b15cb

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:825:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_block_cipher_set_key =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_b8cf0211632b15cb x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_block_size@
foreign import ccall safe "hs_bindgen_a28489b34242c9da" hs_bindgen_a28489b34242c9da ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:831:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_block_size =
  hs_bindgen_a28489b34242c9da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_encrypt_blocks@
foreign import ccall safe "hs_bindgen_71ce52e8359e83f2" hs_bindgen_71ce52e8359e83f2 ::
     Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_encrypt_blocks'
-}
botan_block_cipher_encrypt_blocks_wrapper ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @blocks@
  -> IO FC.CInt
botan_block_cipher_encrypt_blocks_wrapper =
  hs_bindgen_71ce52e8359e83f2

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:837:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @blocks@
  -> IO FC.CInt
botan_block_cipher_encrypt_blocks =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_71ce52e8359e83f2 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_decrypt_blocks@
foreign import ccall safe "hs_bindgen_424f9b7e4569c5c2" hs_bindgen_424f9b7e4569c5c2 ::
     Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_decrypt_blocks'
-}
botan_block_cipher_decrypt_blocks_wrapper ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @blocks@
  -> IO FC.CInt
botan_block_cipher_decrypt_blocks_wrapper =
  hs_bindgen_424f9b7e4569c5c2

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:843:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @blocks@
  -> IO FC.CInt
botan_block_cipher_decrypt_blocks =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_424f9b7e4569c5c2 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_name@
foreign import ccall safe "hs_bindgen_5526fec75c31f171" hs_bindgen_5526fec75c31f171 ::
     Botan_block_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:851:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_name ::
     Botan_block_cipher_t
     {- ^

        [__@cipher@ /(input)/__]: the object to read

     __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@name@ /(input)/__]: output buffer

     __C declaration:__ @name@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

     __C declaration:__ @name_len@
     -}
  -> IO FC.CInt
botan_block_cipher_name = hs_bindgen_5526fec75c31f171

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_block_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_d3743e126cfea760" hs_bindgen_d3743e126cfea760 ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:861:5@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_get_keyspec ::
     Botan_block_cipher_t
     {- ^

        [__@cipher@ /(input)/__]: the object to read

     __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

     __C declaration:__ @out_minimum_keylength@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

     __C declaration:__ @out_maximum_keylength@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

     __C declaration:__ @out_keylength_modulo@
     -}
  -> IO FC.CInt
botan_block_cipher_get_keyspec =
  hs_bindgen_d3743e126cfea760

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_init@
foreign import ccall safe "hs_bindgen_e99254f56499e7c5" hs_bindgen_e99254f56499e7c5 ::
     Ptr.Ptr Botan_mp_t
  -> IO FC.CInt

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_init = hs_bindgen_e99254f56499e7c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_destroy@
foreign import ccall safe "hs_bindgen_f76dd89a00d91437" hs_bindgen_f76dd89a00d91437 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:880:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_destroy = hs_bindgen_f76dd89a00d91437

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_to_hex@
foreign import ccall safe "hs_bindgen_e4dde9dec4b5f351" hs_bindgen_e4dde9dec4b5f351 ::
     Botan_mp_t
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:885:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> IO FC.CInt
botan_mp_to_hex = hs_bindgen_e4dde9dec4b5f351

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_to_str@
foreign import ccall safe "hs_bindgen_fab258755a50dfd3" hs_bindgen_fab258755a50dfd3 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @base@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_mp_to_str = hs_bindgen_fab258755a50dfd3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_clear@
foreign import ccall safe "hs_bindgen_d09de39e0b5c2793" hs_bindgen_d09de39e0b5c2793 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_clear = hs_bindgen_d09de39e0b5c2793

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_set_from_int@
foreign import ccall safe "hs_bindgen_6378256e2a426d86" hs_bindgen_6378256e2a426d86 ::
     Botan_mp_t
  -> FC.CInt
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> FC.CInt
     -- ^ __C declaration:__ @initial_value@
  -> IO FC.CInt
botan_mp_set_from_int = hs_bindgen_6378256e2a426d86

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_set_from_mp@
foreign import ccall safe "hs_bindgen_bc9cd238b0b0b0c3" hs_bindgen_bc9cd238b0b0b0c3 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:905:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> Botan_mp_t
     -- ^ __C declaration:__ @source@
  -> IO FC.CInt
botan_mp_set_from_mp = hs_bindgen_bc9cd238b0b0b0c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_set_from_str@
foreign import ccall safe "hs_bindgen_133244223494361d" hs_bindgen_133244223494361d ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:910:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @str@
  -> IO FC.CInt
botan_mp_set_from_str = hs_bindgen_133244223494361d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_set_from_radix_str@
foreign import ccall safe "hs_bindgen_fbc2d15f5f007445" hs_bindgen_fbc2d15f5f007445 ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:916:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_radix_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @str@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @radix@
  -> IO FC.CInt
botan_mp_set_from_radix_str =
  hs_bindgen_fbc2d15f5f007445

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_num_bits@
foreign import ccall safe "hs_bindgen_1215dff05d1792cb" hs_bindgen_1215dff05d1792cb ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:921:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bits@
  -> IO FC.CInt
botan_mp_num_bits = hs_bindgen_1215dff05d1792cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_num_bytes@
foreign import ccall safe "hs_bindgen_3c293bd83d15a18b" hs_bindgen_3c293bd83d15a18b ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_mp_num_bytes = hs_bindgen_3c293bd83d15a18b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_to_bin@
foreign import ccall safe "hs_bindgen_7f1ec9f99650bb75" hs_bindgen_7f1ec9f99650bb75 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> IO FC.CInt
botan_mp_to_bin = hs_bindgen_7f1ec9f99650bb75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_from_bin@
foreign import ccall safe "hs_bindgen_9ef9ae5a7fdabc99" hs_bindgen_9ef9ae5a7fdabc99 ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mp_from_bin'
-}
botan_mp_from_bin_wrapper ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @vec_len@
  -> IO FC.CInt
botan_mp_from_bin_wrapper =
  hs_bindgen_9ef9ae5a7fdabc99

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @vec_len@
  -> IO FC.CInt
botan_mp_from_bin =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_9ef9ae5a7fdabc99 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_to_uint32@
foreign import ccall safe "hs_bindgen_1b1607423e78deec" hs_bindgen_1b1607423e78deec ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @val@
  -> IO FC.CInt
botan_mp_to_uint32 = hs_bindgen_1b1607423e78deec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_positive@
foreign import ccall safe "hs_bindgen_c91cf2074129b0ad" hs_bindgen_c91cf2074129b0ad ::
     Botan_mp_t
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:948:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_positive = hs_bindgen_c91cf2074129b0ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_negative@
foreign import ccall safe "hs_bindgen_c503c180adfb15b2" hs_bindgen_c503c180adfb15b2 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:953:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_negative = hs_bindgen_c503c180adfb15b2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_flip_sign@
foreign import ccall safe "hs_bindgen_e2c9e12f479d4990" hs_bindgen_e2c9e12f479d4990 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:955:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_flip_sign = hs_bindgen_e2c9e12f479d4990

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_zero@
foreign import ccall safe "hs_bindgen_029f8433ea472bae" hs_bindgen_029f8433ea472bae ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:957:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_zero = hs_bindgen_029f8433ea472bae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_odd@
foreign import ccall safe "hs_bindgen_038160899c8bb47f" hs_bindgen_038160899c8bb47f ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:959:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_odd = hs_bindgen_038160899c8bb47f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_even@
foreign import ccall safe "hs_bindgen_5c85d33f8d936d2f" hs_bindgen_5c85d33f8d936d2f ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:960:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_even = hs_bindgen_5c85d33f8d936d2f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_add_u32@
foreign import ccall safe "hs_bindgen_edc33f5e46602c91" hs_bindgen_edc33f5e46602c91 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:962:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add_u32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_add_u32 = hs_bindgen_edc33f5e46602c91

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_sub_u32@
foreign import ccall safe "hs_bindgen_83e7fcc121a9e54e" hs_bindgen_83e7fcc121a9e54e ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:963:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub_u32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_sub_u32 = hs_bindgen_83e7fcc121a9e54e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_add@
foreign import ccall safe "hs_bindgen_d37824b9b6cf2777" hs_bindgen_d37824b9b6cf2777 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:965:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_add ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_add = hs_bindgen_d37824b9b6cf2777

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_sub@
foreign import ccall safe "hs_bindgen_47b18e56cc73bc77" hs_bindgen_47b18e56cc73bc77 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_sub ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_sub = hs_bindgen_47b18e56cc73bc77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_mul@
foreign import ccall safe "hs_bindgen_ee0b7b33059a0fa2" hs_bindgen_ee0b7b33059a0fa2 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:967:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mul ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_mul = hs_bindgen_ee0b7b33059a0fa2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_div@
foreign import ccall safe "hs_bindgen_02e314d1f63e0d74" hs_bindgen_02e314d1f63e0d74 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_div ::
     Botan_mp_t
     -- ^ __C declaration:__ @quotient@
  -> Botan_mp_t
     -- ^ __C declaration:__ @remainder@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_div = hs_bindgen_02e314d1f63e0d74

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_mod_mul@
foreign import ccall safe "hs_bindgen_ce49ebadca8eea27" hs_bindgen_ce49ebadca8eea27 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:973:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_mul ::
     Botan_mp_t
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> Botan_mp_t
     -- ^ __C declaration:__ @mod@
  -> IO FC.CInt
botan_mp_mod_mul = hs_bindgen_ce49ebadca8eea27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_equal@
foreign import ccall safe "hs_bindgen_37a3ad2bc9a0b800" hs_bindgen_37a3ad2bc9a0b800 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:980:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_equal = hs_bindgen_37a3ad2bc9a0b800

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_cmp@
foreign import ccall safe "hs_bindgen_8467d7b9975c462d" hs_bindgen_8467d7b9975c462d ::
     Ptr.Ptr FC.CInt
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:987:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_cmp ::
     Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @result@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_cmp = hs_bindgen_8467d7b9975c462d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_swap@
foreign import ccall safe "hs_bindgen_be030a792edef867" hs_bindgen_be030a792edef867 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:992:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_swap = hs_bindgen_be030a792edef867

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_powmod@
foreign import ccall safe "hs_bindgen_57e50db656c9f8cb" hs_bindgen_57e50db656c9f8cb ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:996:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_powmod ::
     Botan_mp_t
     -- ^ __C declaration:__ @out@
  -> Botan_mp_t
     -- ^ __C declaration:__ @base@
  -> Botan_mp_t
     -- ^ __C declaration:__ @exponent@
  -> Botan_mp_t
     -- ^ __C declaration:__ @modulus@
  -> IO FC.CInt
botan_mp_powmod = hs_bindgen_57e50db656c9f8cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_lshift@
foreign import ccall safe "hs_bindgen_f61f0a31974f9146" hs_bindgen_f61f0a31974f9146 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:998:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_lshift ::
     Botan_mp_t
     -- ^ __C declaration:__ @out@
  -> Botan_mp_t
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shift@
  -> IO FC.CInt
botan_mp_lshift = hs_bindgen_f61f0a31974f9146

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_rshift@
foreign import ccall safe "hs_bindgen_1ef0d2f18959d054" hs_bindgen_1ef0d2f18959d054 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:999:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rshift ::
     Botan_mp_t
     -- ^ __C declaration:__ @out@
  -> Botan_mp_t
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shift@
  -> IO FC.CInt
botan_mp_rshift = hs_bindgen_1ef0d2f18959d054

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_mod_inverse@
foreign import ccall safe "hs_bindgen_3b2e059a1b76ed78" hs_bindgen_3b2e059a1b76ed78 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1001:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_mod_inverse ::
     Botan_mp_t
     -- ^ __C declaration:__ @out@
  -> Botan_mp_t
     -- ^ __C declaration:__ @in'@
  -> Botan_mp_t
     -- ^ __C declaration:__ @modulus@
  -> IO FC.CInt
botan_mp_mod_inverse = hs_bindgen_3b2e059a1b76ed78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_rand_bits@
foreign import ccall safe "hs_bindgen_b50e2bd459a647d5" hs_bindgen_b50e2bd459a647d5 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1003:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_bits ::
     Botan_mp_t
     -- ^ __C declaration:__ @rand_out@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bits@
  -> IO FC.CInt
botan_mp_rand_bits = hs_bindgen_b50e2bd459a647d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_rand_range@
foreign import ccall safe "hs_bindgen_f9939c35a1f355a2" hs_bindgen_f9939c35a1f355a2 ::
     Botan_mp_t
  -> Botan_rng_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1006:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_rand_range ::
     Botan_mp_t
     -- ^ __C declaration:__ @rand_out@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> Botan_mp_t
     -- ^ __C declaration:__ @lower_bound@
  -> Botan_mp_t
     -- ^ __C declaration:__ @upper_bound@
  -> IO FC.CInt
botan_mp_rand_range = hs_bindgen_f9939c35a1f355a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_gcd@
foreign import ccall safe "hs_bindgen_d2f0747ccaa7ac97" hs_bindgen_d2f0747ccaa7ac97 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1008:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_gcd ::
     Botan_mp_t
     -- ^ __C declaration:__ @out@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_gcd = hs_bindgen_d2f0747ccaa7ac97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_is_prime@
foreign import ccall safe "hs_bindgen_1f7287c1d4e30bfa" hs_bindgen_1f7287c1d4e30bfa ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1015:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_prime ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @test_prob@
  -> IO FC.CInt
botan_mp_is_prime = hs_bindgen_1f7287c1d4e30bfa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_get_bit@
foreign import ccall safe "hs_bindgen_c95b79d40c40c628" hs_bindgen_c95b79d40c40c628 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1022:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_get_bit = hs_bindgen_c95b79d40c40c628

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_set_bit@
foreign import ccall safe "hs_bindgen_3e8e48c428d4c0dd" hs_bindgen_3e8e48c428d4c0dd ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1027:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_set_bit = hs_bindgen_3e8e48c428d4c0dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mp_clear_bit@
foreign import ccall safe "hs_bindgen_aa09e107e1a2356a" hs_bindgen_aa09e107e1a2356a ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1032:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_clear_bit = hs_bindgen_aa09e107e1a2356a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_bcrypt_generate@
foreign import ccall safe "hs_bindgen_2fabc723b9c490c0" hs_bindgen_2fabc723b9c490c0 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

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
botan_bcrypt_generate ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@out@ /(input)/__]: buffer holding the password hash, should be of length 64 bytes

     __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the desired output length in bytes

     __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the password

     __C declaration:__ @password@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: a random number generator

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@work_factor@ /(input)/__]: how much work to do to slow down guessing attacks

     __C declaration:__ @work_factor@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

     __C declaration:__ @flags@
     -}
  -> IO FC.CInt
botan_bcrypt_generate = hs_bindgen_2fabc723b9c490c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_bcrypt_is_valid@
foreign import ccall safe "hs_bindgen_7b9ca654b42bf337" hs_bindgen_7b9ca654b42bf337 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1061:28@

__exported by:__ @botan\/ffi.h@
-}
botan_bcrypt_is_valid ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@pass@ /(input)/__]: the password to check against

     __C declaration:__ @pass@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash@ /(input)/__]: the stored hash to check against

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_bcrypt_is_valid = hs_bindgen_7b9ca654b42bf337

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create@
foreign import ccall safe "hs_bindgen_552355f6fdb0fda3" hs_bindgen_552355f6fdb0fda3 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_rng_t
  -> IO FC.CInt

{-| Create a new private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

  [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_privkey_create@

__defined at:__ @botan\/ffi.h:1077:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_create ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: the new object will be placed here

     __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

     __C declaration:__ @algo_name@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@algo_params@ /(input)/__]: is specific to the algorithm. For RSA, specifies the modulus bit length. For ECC is the name of the curve.

     __C declaration:__ @algo_params@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: a random number generator

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_privkey_create = hs_bindgen_552355f6fdb0fda3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_check_key@
foreign import ccall safe "hs_bindgen_b77d2e17c68553eb" hs_bindgen_b77d2e17c68553eb ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1081:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_check_key ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_check_key = hs_bindgen_b77d2e17c68553eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_rsa@
foreign import ccall safe "hs_bindgen_2d83cee3e51854ba" hs_bindgen_2d83cee3e51854ba ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1084:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_rsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n_bits@
  -> IO FC.CInt
botan_privkey_create_rsa =
  hs_bindgen_2d83cee3e51854ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_ecdsa@
foreign import ccall safe "hs_bindgen_153be7b34aa68dd9" hs_bindgen_153be7b34aa68dd9 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1086:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @params@
  -> IO FC.CInt
botan_privkey_create_ecdsa =
  hs_bindgen_153be7b34aa68dd9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_ecdh@
foreign import ccall safe "hs_bindgen_4fac372bfa85be2b" hs_bindgen_4fac372bfa85be2b ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1088:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_ecdh ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @params@
  -> IO FC.CInt
botan_privkey_create_ecdh =
  hs_bindgen_4fac372bfa85be2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_mceliece@
foreign import ccall safe "hs_bindgen_d58b816764f12dd5" hs_bindgen_d58b816764f12dd5 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1090:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_mceliece ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @t@
  -> IO FC.CInt
botan_privkey_create_mceliece =
  hs_bindgen_d58b816764f12dd5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_dh@
foreign import ccall safe "hs_bindgen_9465f44efbaa77f7" hs_bindgen_9465f44efbaa77f7 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1092:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_create_dh ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @param@
  -> IO FC.CInt
botan_privkey_create_dh = hs_bindgen_9465f44efbaa77f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_dsa@
foreign import ccall safe "hs_bindgen_dc5e34d6c6dffec6" hs_bindgen_dc5e34d6c6dffec6 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
botan_privkey_create_dsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: handler to the resulting key

     __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: initialized PRNG

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@pbits@ /(input)/__]: length of the key in bits. Must be between in range (1024, 3072) and multiple of 64. Bit size of the prime 'p'

     __C declaration:__ @pbits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@qbits@ /(input)/__]: order of the subgroup. Must be in range (160, 256) and multiple of 8

     __C declaration:__ @qbits@
     -}
  -> IO FC.CInt
botan_privkey_create_dsa =
  hs_bindgen_dc5e34d6c6dffec6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_create_elgamal@
foreign import ccall safe "hs_bindgen_1011ce95ae1d9112" hs_bindgen_1011ce95ae1d9112 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
botan_privkey_create_elgamal ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: handler to the resulting key

     __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: initialized PRNG

     __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@pbits@ /(input)/__]: length of the key in bits. Must be at least 1024

     __C declaration:__ @pbits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@qbits@ /(input)/__]: order of the subgroup. Must be at least 160

     __C declaration:__ @qbits@
     -}
  -> IO FC.CInt
botan_privkey_create_elgamal =
  hs_bindgen_1011ce95ae1d9112

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load@
foreign import ccall safe "hs_bindgen_2d7692f9818bd854" hs_bindgen_2d7692f9818bd854 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load'
-}
botan_privkey_load_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @password@
  -> IO FC.CInt
botan_privkey_load_wrapper =
  hs_bindgen_2d7692f9818bd854

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1142:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @password@
  -> IO FC.CInt
botan_privkey_load =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr5 ->
                                                            hs_bindgen_2d7692f9818bd854 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_destroy@
foreign import ccall safe "hs_bindgen_35e2e7aa5a96d66c" hs_bindgen_35e2e7aa5a96d66c ::
     Botan_privkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1147:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_destroy = hs_bindgen_35e2e7aa5a96d66c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_export@
foreign import ccall safe "hs_bindgen_5603a920be6c624b" hs_bindgen_5603a920be6c624b ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1159:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_export = hs_bindgen_5603a920be6c624b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_der@
foreign import ccall safe "hs_bindgen_1b05903f4377a635" hs_bindgen_1b05903f4377a635 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1164:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_der ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_der = hs_bindgen_1b05903f4377a635

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_pem@
foreign import ccall safe "hs_bindgen_8efd85df41650f78" hs_bindgen_8efd85df41650f78 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1169:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_pem ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_pem = hs_bindgen_8efd85df41650f78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_algo_name@
foreign import ccall safe "hs_bindgen_39d1214ae23ee893" hs_bindgen_39d1214ae23ee893 ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1171:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_algo_name ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_privkey_algo_name = hs_bindgen_39d1214ae23ee893

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_export_encrypted@
foreign import ccall safe "hs_bindgen_2f637e50227c0691" hs_bindgen_2f637e50227c0691 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1178:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @encryption_algo@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_export_encrypted =
  hs_bindgen_2f637e50227c0691

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall safe "hs_bindgen_e5e37c0eaf9352c1" hs_bindgen_e5e37c0eaf9352c1 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1193:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_msec ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @pbkdf_msec_runtime@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_iterations_out@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_export_encrypted_pbkdf_msec =
  hs_bindgen_e5e37c0eaf9352c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall safe "hs_bindgen_090b50aad1b34d9f" hs_bindgen_090b50aad1b34d9f ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1208:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_encrypted_pbkdf_iter ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_iterations@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_export_encrypted_pbkdf_iter =
  hs_bindgen_090b50aad1b34d9f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_encrypted_der@
foreign import ccall safe "hs_bindgen_f3f08978c7c0d7bd" hs_bindgen_f3f08978c7c0d7bd ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1225:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_iterations@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_encrypted_der =
  hs_bindgen_f3f08978c7c0d7bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_encrypted_der_timed@
foreign import ccall safe "hs_bindgen_1c8d6740bf69f194" hs_bindgen_1c8d6740bf69f194 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1240:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_der_timed ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_runtime_msec@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_encrypted_der_timed =
  hs_bindgen_1c8d6740bf69f194

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_encrypted_pem@
foreign import ccall safe "hs_bindgen_00a97b89cee67fd2" hs_bindgen_00a97b89cee67fd2 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1256:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_iterations@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_encrypted_pem =
  hs_bindgen_00a97b89cee67fd2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_encrypted_pem_timed@
foreign import ccall safe "hs_bindgen_782a3bd70940e514" hs_bindgen_782a3bd70940e514 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1271:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_encrypted_pem_timed ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @passphrase@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @pbkdf_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pbkdf_runtime_msec@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_encrypted_pem_timed =
  hs_bindgen_782a3bd70940e514

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load@
foreign import ccall safe "hs_bindgen_833bf54f5818e4e5" hs_bindgen_833bf54f5818e4e5 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load'
-}
botan_pubkey_load_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_pubkey_load_wrapper =
  hs_bindgen_833bf54f5818e4e5

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1282:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_pubkey_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_833bf54f5818e4e5 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_export_pubkey@
foreign import ccall safe "hs_bindgen_e3b2f498b6464b77" hs_bindgen_e3b2f498b6464b77 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1284:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @out@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @in'@
  -> IO FC.CInt
botan_privkey_export_pubkey =
  hs_bindgen_e3b2f498b6464b77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_export@
foreign import ccall safe "hs_bindgen_79d67ff0840d4b23" hs_bindgen_79d67ff0840d4b23 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1286:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_export ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pubkey_export = hs_bindgen_79d67ff0840d4b23

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_view_der@
foreign import ccall safe "hs_bindgen_fdaf927e8ee7bdee" hs_bindgen_fdaf927e8ee7bdee ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1291:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_der ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pubkey_view_der = hs_bindgen_fdaf927e8ee7bdee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_view_pem@
foreign import ccall safe "hs_bindgen_9049f13d96d473d8" hs_bindgen_9049f13d96d473d8 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1296:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_pem ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pubkey_view_pem = hs_bindgen_9049f13d96d473d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_algo_name@
foreign import ccall safe "hs_bindgen_3895fd03eae90c9e" hs_bindgen_3895fd03eae90c9e ::
     Botan_pubkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1298:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_algo_name ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pubkey_algo_name = hs_bindgen_3895fd03eae90c9e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_check_key@
foreign import ccall safe "hs_bindgen_d5b93b2a912ebd17" hs_bindgen_d5b93b2a912ebd17 ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1303:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_check_key ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pubkey_check_key = hs_bindgen_d5b93b2a912ebd17

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_estimated_strength@
foreign import ccall safe "hs_bindgen_25b13fd4f1bf67dd" hs_bindgen_25b13fd4f1bf67dd ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1305:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @estimate@
  -> IO FC.CInt
botan_pubkey_estimated_strength =
  hs_bindgen_25b13fd4f1bf67dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_fingerprint@
foreign import ccall safe "hs_bindgen_cd3ee62f5dffacc6" hs_bindgen_cd3ee62f5dffacc6 ::
     Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1308:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_fingerprint ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pubkey_fingerprint =
  hs_bindgen_cd3ee62f5dffacc6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_destroy@
foreign import ccall safe "hs_bindgen_56aa838d4d649418" hs_bindgen_56aa838d4d649418 ::
     Botan_pubkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1313:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_destroy = hs_bindgen_56aa838d4d649418

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_get_field@
foreign import ccall safe "hs_bindgen_c7524243a6dcf8fa" hs_bindgen_c7524243a6dcf8fa ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1318:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_get_field ::
     Botan_mp_t
     -- ^ __C declaration:__ @output@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @field_name@
  -> IO FC.CInt
botan_pubkey_get_field = hs_bindgen_c7524243a6dcf8fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_get_field@
foreign import ccall safe "hs_bindgen_e351f071fad35538" hs_bindgen_e351f071fad35538 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_get_field ::
     Botan_mp_t
     -- ^ __C declaration:__ @output@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @field_name@
  -> IO FC.CInt
botan_privkey_get_field = hs_bindgen_e351f071fad35538

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_rsa@
foreign import ccall safe "hs_bindgen_a48e4572f08a2c8b" hs_bindgen_a48e4572f08a2c8b ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> IO FC.CInt
botan_privkey_load_rsa = hs_bindgen_a48e4572f08a2c8b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_rsa_pkcs1@
foreign import ccall safe "hs_bindgen_db59b2ad2eea111d" hs_bindgen_db59b2ad2eea111d ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_rsa_pkcs1'
-}
botan_privkey_load_rsa_pkcs1_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_privkey_load_rsa_pkcs1_wrapper =
  hs_bindgen_db59b2ad2eea111d

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1327:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @len@
  -> IO FC.CInt
botan_privkey_load_rsa_pkcs1 =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_db59b2ad2eea111d x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_p@
foreign import ccall safe "hs_bindgen_7ab3675b22ac6013" hs_bindgen_7ab3675b22ac6013 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1330:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_p = hs_bindgen_7ab3675b22ac6013

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_q@
foreign import ccall safe "hs_bindgen_f1f59f28223df35d" hs_bindgen_f1f59f28223df35d ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1332:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_q = hs_bindgen_f1f59f28223df35d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_d@
foreign import ccall safe "hs_bindgen_1d0641c153d7f6da" hs_bindgen_1d0641c153d7f6da ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1334:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_d = hs_bindgen_1d0641c153d7f6da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_54dba0caec0e4826" hs_bindgen_54dba0caec0e4826 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1336:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_n = hs_bindgen_54dba0caec0e4826

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_94b9b35ccd360279" hs_bindgen_94b9b35ccd360279 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1338:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_e = hs_bindgen_94b9b35ccd360279

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_rsa_get_privkey@
foreign import ccall safe "hs_bindgen_0952e259fff3a00c" hs_bindgen_0952e259fff3a00c ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1341:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_privkey_rsa_get_privkey =
  hs_bindgen_0952e259fff3a00c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_rsa@
foreign import ccall safe "hs_bindgen_47b5e0cfedf25eb8" hs_bindgen_47b5e0cfedf25eb8 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1343:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_rsa ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> IO FC.CInt
botan_pubkey_load_rsa = hs_bindgen_47b5e0cfedf25eb8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_17ab4b2b502c954a" hs_bindgen_17ab4b2b502c954a ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1346:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_e = hs_bindgen_17ab4b2b502c954a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_2e87e0fa318fdf3b" hs_bindgen_2e87e0fa318fdf3b ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1348:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_n = hs_bindgen_2e87e0fa318fdf3b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_dsa@
foreign import ccall safe "hs_bindgen_b4a8194b90d96a70" hs_bindgen_b4a8194b90d96a70 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1354:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_mp_t
     -- ^ __C declaration:__ @g@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> IO FC.CInt
botan_privkey_load_dsa = hs_bindgen_b4a8194b90d96a70

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_dsa@
foreign import ccall safe "hs_bindgen_a58532db0188a0cf" hs_bindgen_a58532db0188a0cf ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1357:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_dsa ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_mp_t
     -- ^ __C declaration:__ @g@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_pubkey_load_dsa = hs_bindgen_a58532db0188a0cf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_dsa_get_x@
foreign import ccall safe "hs_bindgen_e8d05e566cdb0042" hs_bindgen_e8d05e566cdb0042 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1360:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_dsa_get_x = hs_bindgen_e8d05e566cdb0042

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_dsa_get_p@
foreign import ccall safe "hs_bindgen_73be26ab4ad4ece9" hs_bindgen_73be26ab4ad4ece9 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1363:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_p = hs_bindgen_73be26ab4ad4ece9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_dsa_get_q@
foreign import ccall safe "hs_bindgen_fa1ce55da4d2efd5" hs_bindgen_fa1ce55da4d2efd5 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1365:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_q = hs_bindgen_fa1ce55da4d2efd5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_dsa_get_g@
foreign import ccall safe "hs_bindgen_7ee0b3d83aee55b0" hs_bindgen_7ee0b3d83aee55b0 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1367:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_g = hs_bindgen_7ee0b3d83aee55b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_dsa_get_y@
foreign import ccall safe "hs_bindgen_3310c1fbb0977528" hs_bindgen_3310c1fbb0977528 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1369:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y ::
     Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_y = hs_bindgen_3310c1fbb0977528

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_dh@
foreign import ccall safe "hs_bindgen_c8b762a4014e34b9" hs_bindgen_c8b762a4014e34b9 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1384:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_dh ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_mp_t
     -- ^ __C declaration:__ @g@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> IO FC.CInt
botan_privkey_load_dh = hs_bindgen_c8b762a4014e34b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_dh@
foreign import ccall safe "hs_bindgen_7f071c0db57e7eed" hs_bindgen_7f071c0db57e7eed ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

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
botan_pubkey_load_dh ::
     Ptr.Ptr Botan_pubkey_t
     {- ^

        [__@key@ /(input)/__]: variable populated with key material

     __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^

        [__@p@ /(input)/__]: prime order of a Z_p group

     __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^

        [__@g@ /(input)/__]: group generator

     __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^

        [__@y@ /(input)/__]: public key

     __C declaration:__ @y@
     -}
  -> IO FC.CInt
botan_pubkey_load_dh = hs_bindgen_7f071c0db57e7eed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_elgamal@
foreign import ccall safe "hs_bindgen_1e50890854ec176d" hs_bindgen_1e50890854ec176d ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

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
botan_pubkey_load_elgamal ::
     Ptr.Ptr Botan_pubkey_t
     {- ^

        [__@key@ /(input)/__]: variable populated with key material

     __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^

        [__@p@ /(input)/__]: prime order of a Z_p group

     __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^

        [__@g@ /(input)/__]: group generator

     __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^

        [__@y@ /(input)/__]: public key

     __C declaration:__ @y@
     -}
  -> IO FC.CInt
botan_pubkey_load_elgamal =
  hs_bindgen_1e50890854ec176d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_elgamal@
foreign import ccall safe "hs_bindgen_4551b604dc51f2a1" hs_bindgen_4551b604dc51f2a1 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

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
botan_privkey_load_elgamal ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: variable populated with key material

     __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^

        [__@p@ /(input)/__]: prime order of a Z_p group

     __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^

        [__@g@ /(input)/__]: group generator

     __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^

        [__@x@ /(input)/__]: private key

     __C declaration:__ @x@
     -}
  -> IO FC.CInt
botan_privkey_load_elgamal =
  hs_bindgen_4551b604dc51f2a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_ed25519@
foreign import ccall safe "hs_bindgen_26b254ca94ec80e9" hs_bindgen_26b254ca94ec80e9 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_ed25519'
-}
botan_privkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_ed25519_wrapper =
  hs_bindgen_26b254ca94ec80e9

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1437:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_ed25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_26b254ca94ec80e9 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_ed25519@
foreign import ccall safe "hs_bindgen_b58b16cf8d91b465" hs_bindgen_b58b16cf8d91b465 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_ed25519'
-}
botan_pubkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_ed25519_wrapper =
  hs_bindgen_b58b16cf8d91b465

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1439:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_ed25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_b58b16cf8d91b465 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_ed25519_get_privkey@
foreign import ccall safe "hs_bindgen_d36489b17ec7099e" hs_bindgen_d36489b17ec7099e ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1441:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed25519_get_privkey =
  hs_bindgen_d36489b17ec7099e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_ed25519_get_pubkey@
foreign import ccall safe "hs_bindgen_50101ec289a5a6d5" hs_bindgen_50101ec289a5a6d5 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1443:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed25519_get_pubkey =
  hs_bindgen_50101ec289a5a6d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_ed448@
foreign import ccall safe "hs_bindgen_e28ff585362f0d29" hs_bindgen_e28ff585362f0d29 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_ed448'
-}
botan_privkey_load_ed448_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_ed448_wrapper =
  hs_bindgen_e28ff585362f0d29

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1449:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed448 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_ed448 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_e28ff585362f0d29 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_ed448@
foreign import ccall safe "hs_bindgen_15f07e93c775ad18" hs_bindgen_15f07e93c775ad18 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_ed448'
-}
botan_pubkey_load_ed448_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_ed448_wrapper =
  hs_bindgen_15f07e93c775ad18

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1451:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed448 ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 57) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_ed448 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_15f07e93c775ad18 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_ed448_get_privkey@
foreign import ccall safe "hs_bindgen_c37f0d0d5b0bed27" hs_bindgen_c37f0d0d5b0bed27 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1453:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed448_get_privkey =
  hs_bindgen_c37f0d0d5b0bed27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_ed448_get_pubkey@
foreign import ccall safe "hs_bindgen_758b730dc08c59d6" hs_bindgen_758b730dc08c59d6 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1455:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed448_get_pubkey =
  hs_bindgen_758b730dc08c59d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_x25519@
foreign import ccall safe "hs_bindgen_5932b1d96ba68b58" hs_bindgen_5932b1d96ba68b58 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_x25519'
-}
botan_privkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_x25519_wrapper =
  hs_bindgen_5932b1d96ba68b58

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1461:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_x25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_5932b1d96ba68b58 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_x25519@
foreign import ccall safe "hs_bindgen_76a42d8e149d1223" hs_bindgen_76a42d8e149d1223 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_x25519'
-}
botan_pubkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_x25519_wrapper =
  hs_bindgen_76a42d8e149d1223

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1463:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_x25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_76a42d8e149d1223 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_x25519_get_privkey@
foreign import ccall safe "hs_bindgen_27b600f16d6065bf" hs_bindgen_27b600f16d6065bf ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1465:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x25519_get_privkey =
  hs_bindgen_27b600f16d6065bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_x25519_get_pubkey@
foreign import ccall safe "hs_bindgen_bd19c60961558127" hs_bindgen_bd19c60961558127 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1467:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x25519_get_pubkey =
  hs_bindgen_bd19c60961558127

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_x448@
foreign import ccall safe "hs_bindgen_ac07e19dea838342" hs_bindgen_ac07e19dea838342 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_x448'
-}
botan_privkey_load_x448_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_x448_wrapper =
  hs_bindgen_ac07e19dea838342

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1473:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x448 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> IO FC.CInt
botan_privkey_load_x448 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_ac07e19dea838342 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_x448@
foreign import ccall safe "hs_bindgen_9ffdba2d05cdd3c6" hs_bindgen_9ffdba2d05cdd3c6 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_x448'
-}
botan_pubkey_load_x448_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_x448_wrapper =
  hs_bindgen_9ffdba2d05cdd3c6

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1475:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x448 ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 56) HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_load_x448 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    hs_bindgen_9ffdba2d05cdd3c6 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_x448_get_privkey@
foreign import ccall safe "hs_bindgen_80306915ad55ca78" hs_bindgen_80306915ad55ca78 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1477:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x448_get_privkey =
  hs_bindgen_80306915ad55ca78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_x448_get_pubkey@
foreign import ccall safe "hs_bindgen_6deda284e2264ac0" hs_bindgen_6deda284e2264ac0 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1479:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x448_get_pubkey =
  hs_bindgen_6deda284e2264ac0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_kyber@
foreign import ccall safe "hs_bindgen_0ae274dd0566de18" hs_bindgen_0ae274dd0566de18 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_kyber'
-}
botan_privkey_load_kyber_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_privkey_load_kyber_wrapper =
  hs_bindgen_0ae274dd0566de18

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1485:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_privkey_load_kyber =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_0ae274dd0566de18 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_kyber@
foreign import ccall safe "hs_bindgen_1ea7dd76a53b72ce" hs_bindgen_1ea7dd76a53b72ce ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_kyber'
-}
botan_pubkey_load_kyber_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_pubkey_load_kyber_wrapper =
  hs_bindgen_1ea7dd76a53b72ce

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1487:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_pubkey_load_kyber =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_1ea7dd76a53b72ce x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_view_kyber_raw_key@
foreign import ccall safe "hs_bindgen_b0e0051153aa4f25" hs_bindgen_b0e0051153aa4f25 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1490:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_kyber_raw_key ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_kyber_raw_key =
  hs_bindgen_b0e0051153aa4f25

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_view_kyber_raw_key@
foreign import ccall safe "hs_bindgen_d595e5c035da62dc" hs_bindgen_d595e5c035da62dc ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1493:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_kyber_raw_key ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pubkey_view_kyber_raw_key =
  hs_bindgen_d595e5c035da62dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall safe "hs_bindgen_77dcb7b74bbc859d" hs_bindgen_77dcb7b74bbc859d ::
     Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1499:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_ecc_key_used_explicit_encoding =
  hs_bindgen_77dcb7b74bbc859d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_52c270e8c6b63e26" hs_bindgen_52c270e8c6b63e26 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1502:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @scalar@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_privkey_load_ecdsa =
  hs_bindgen_52c270e8c6b63e26

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_26af3325e17a0196" hs_bindgen_26af3325e17a0196 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1505:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdsa ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_y@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_pubkey_load_ecdsa = hs_bindgen_26af3325e17a0196

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_ecdh@
foreign import ccall safe "hs_bindgen_cd08bfd9a01be58e" hs_bindgen_cd08bfd9a01be58e ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1508:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ecdh ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_y@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_pubkey_load_ecdh = hs_bindgen_cd08bfd9a01be58e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_ecdh@
foreign import ccall safe "hs_bindgen_f4ffcf75e54bec18" hs_bindgen_f4ffcf75e54bec18 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1511:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ecdh ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @scalar@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_privkey_load_ecdh = hs_bindgen_f4ffcf75e54bec18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_sm2@
foreign import ccall safe "hs_bindgen_7aa0dcfb766d475a" hs_bindgen_7aa0dcfb766d475a ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1514:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2 ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_y@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_pubkey_load_sm2 = hs_bindgen_7aa0dcfb766d475a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_sm2@
foreign import ccall safe "hs_bindgen_4c0b4fcd89e2d9a5" hs_bindgen_4c0b4fcd89e2d9a5 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1517:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2 ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @scalar@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_privkey_load_sm2 = hs_bindgen_4c0b4fcd89e2d9a5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_97d7f7f0b785b8d1" hs_bindgen_97d7f7f0b785b8d1 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1521:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_sm2_enc ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @public_y@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_pubkey_load_sm2_enc =
  hs_bindgen_97d7f7f0b785b8d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_privkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_564366b06f05c75c" hs_bindgen_564366b06f05c75c ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1525:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_sm2_enc ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_mp_t
     -- ^ __C declaration:__ @scalar@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @curve_name@
  -> IO FC.CInt
botan_privkey_load_sm2_enc =
  hs_bindgen_564366b06f05c75c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_sm2_compute_za@
foreign import ccall safe "hs_bindgen_04847ed297c98153" hs_bindgen_04847ed297c98153 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1528:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_sm2_compute_za ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @ident@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_algo@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_sm2_compute_za =
  hs_bindgen_04847ed297c98153

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pubkey_view_ec_public_point@
foreign import ccall safe "hs_bindgen_299fb8da41c3c304" hs_bindgen_299fb8da41c3c304 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1535:5@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_ec_public_point ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pubkey_view_ec_public_point =
  hs_bindgen_299fb8da41c3c304

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_encrypt_create@
foreign import ccall safe "hs_bindgen_fbaba0abd5380221" hs_bindgen_fbaba0abd5380221 ::
     Ptr.Ptr Botan_pk_op_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1543:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_create ::
     Ptr.Ptr Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @padding@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pk_op_encrypt_create =
  hs_bindgen_fbaba0abd5380221

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_encrypt_destroy@
foreign import ccall safe "hs_bindgen_47661a8e772a2452" hs_bindgen_47661a8e772a2452 ::
     Botan_pk_op_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1548:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_encrypt_destroy =
  hs_bindgen_47661a8e772a2452

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_encrypt_output_length@
foreign import ccall safe "hs_bindgen_4e0fa4d9ea5a6c13" hs_bindgen_4e0fa4d9ea5a6c13 ::
     Botan_pk_op_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1551:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_output_length ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ptext_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ctext_len@
  -> IO FC.CInt
botan_pk_op_encrypt_output_length =
  hs_bindgen_4e0fa4d9ea5a6c13

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_encrypt@
foreign import ccall safe "hs_bindgen_4d070268e36780f1" hs_bindgen_4d070268e36780f1 ::
     Botan_pk_op_encrypt_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_encrypt'
-}
botan_pk_op_encrypt_wrapper ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @plaintext@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @plaintext_len@
  -> IO FC.CInt
botan_pk_op_encrypt_wrapper =
  hs_bindgen_4d070268e36780f1

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1554:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @plaintext@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @plaintext_len@
  -> IO FC.CInt
botan_pk_op_encrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr6 ->
                                                              hs_bindgen_4d070268e36780f1 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_decrypt_create@
foreign import ccall safe "hs_bindgen_03481ba2485d6155" hs_bindgen_03481ba2485d6155 ::
     Ptr.Ptr Botan_pk_op_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1567:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_create ::
     Ptr.Ptr Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @padding@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pk_op_decrypt_create =
  hs_bindgen_03481ba2485d6155

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_decrypt_destroy@
foreign import ccall safe "hs_bindgen_c30f8dbda34c9de8" hs_bindgen_c30f8dbda34c9de8 ::
     Botan_pk_op_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_decrypt_destroy =
  hs_bindgen_c30f8dbda34c9de8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_decrypt_output_length@
foreign import ccall safe "hs_bindgen_37f322431b0919c7" hs_bindgen_37f322431b0919c7 ::
     Botan_pk_op_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1575:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_output_length ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ctext_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ptext_len@
  -> IO FC.CInt
botan_pk_op_decrypt_output_length =
  hs_bindgen_37f322431b0919c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_decrypt@
foreign import ccall safe "hs_bindgen_ea4b20156c4cbd3d" hs_bindgen_ea4b20156c4cbd3d ::
     Botan_pk_op_decrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_decrypt'
-}
botan_pk_op_decrypt_wrapper ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ciphertext@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ciphertext_len@
  -> IO FC.CInt
botan_pk_op_decrypt_wrapper =
  hs_bindgen_ea4b20156c4cbd3d

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1578:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ciphertext@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ciphertext_len@
  -> IO FC.CInt
botan_pk_op_decrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr5 ->
                                                            hs_bindgen_ea4b20156c4cbd3d x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_sign_create@
foreign import ccall safe "hs_bindgen_9b80cd8a88bfd74b" hs_bindgen_9b80cd8a88bfd74b ::
     Ptr.Ptr Botan_pk_op_sign_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1590:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_create ::
     Ptr.Ptr Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_and_padding@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pk_op_sign_create = hs_bindgen_9b80cd8a88bfd74b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_sign_destroy@
foreign import ccall safe "hs_bindgen_1d94a2b062dd9556" hs_bindgen_1d94a2b062dd9556 ::
     Botan_pk_op_sign_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_sign_destroy =
  hs_bindgen_1d94a2b062dd9556

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_sign_output_length@
foreign import ccall safe "hs_bindgen_4328b0d72424c119" hs_bindgen_4328b0d72424c119 ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1597:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @olen@
  -> IO FC.CInt
botan_pk_op_sign_output_length =
  hs_bindgen_4328b0d72424c119

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_sign_update@
foreign import ccall safe "hs_bindgen_d0b336253d8415c0" hs_bindgen_d0b336253d8415c0 ::
     Botan_pk_op_sign_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_sign_update'
-}
botan_pk_op_sign_update_wrapper ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> IO FC.CInt
botan_pk_op_sign_update_wrapper =
  hs_bindgen_d0b336253d8415c0

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1599:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> IO FC.CInt
botan_pk_op_sign_update =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_d0b336253d8415c0 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_sign_finish@
foreign import ccall safe "hs_bindgen_3d6da7c8edd93d2e" hs_bindgen_3d6da7c8edd93d2e ::
     Botan_pk_op_sign_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1602:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_finish ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @sig@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @sig_len@
  -> IO FC.CInt
botan_pk_op_sign_finish = hs_bindgen_3d6da7c8edd93d2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_verify_create@
foreign import ccall safe "hs_bindgen_a01917dbef81541e" hs_bindgen_a01917dbef81541e ::
     Ptr.Ptr Botan_pk_op_verify_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1610:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_create ::
     Ptr.Ptr Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_and_padding@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pk_op_verify_create =
  hs_bindgen_a01917dbef81541e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_verify_destroy@
foreign import ccall safe "hs_bindgen_4fca2bf72dfb94fa" hs_bindgen_4fca2bf72dfb94fa ::
     Botan_pk_op_verify_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1618:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_verify_destroy =
  hs_bindgen_4fca2bf72dfb94fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_verify_update@
foreign import ccall safe "hs_bindgen_ada0d1c0fd1154cd" hs_bindgen_ada0d1c0fd1154cd ::
     Botan_pk_op_verify_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_verify_update'
-}
botan_pk_op_verify_update_wrapper ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> IO FC.CInt
botan_pk_op_verify_update_wrapper =
  hs_bindgen_ada0d1c0fd1154cd

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @in'@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @in_len@
  -> IO FC.CInt
botan_pk_op_verify_update =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_ada0d1c0fd1154cd x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_verify_finish@
foreign import ccall safe "hs_bindgen_e0af2714d85552d3" hs_bindgen_e0af2714d85552d3 ::
     Botan_pk_op_verify_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_verify_finish'
-}
botan_pk_op_verify_finish_wrapper ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @sig@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @sig_len@
  -> IO FC.CInt
botan_pk_op_verify_finish_wrapper =
  hs_bindgen_e0af2714d85552d3

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1621:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @sig@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @sig_len@
  -> IO FC.CInt
botan_pk_op_verify_finish =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_e0af2714d85552d3 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement_create@
foreign import ccall safe "hs_bindgen_6a7dfe1dc85fc33b" hs_bindgen_6a7dfe1dc85fc33b ::
     Ptr.Ptr Botan_pk_op_ka_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1629:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_create ::
     Ptr.Ptr Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @kdf@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_pk_op_key_agreement_create =
  hs_bindgen_6a7dfe1dc85fc33b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement_destroy@
foreign import ccall safe "hs_bindgen_e27b8da06a2ca062" hs_bindgen_e27b8da06a2ca062 ::
     Botan_pk_op_ka_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1634:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_key_agreement_destroy =
  hs_bindgen_e27b8da06a2ca062

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement_export_public@
foreign import ccall safe "hs_bindgen_e4d5ba09478503aa" hs_bindgen_e4d5ba09478503aa ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1636:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_export_public ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_export_public =
  hs_bindgen_e4d5ba09478503aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement_view_public@
foreign import ccall safe "hs_bindgen_0f333b8d67f66563" hs_bindgen_0f333b8d67f66563 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1639:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_view_public ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pk_op_key_agreement_view_public =
  hs_bindgen_0f333b8d67f66563

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement_size@
foreign import ccall safe "hs_bindgen_6cdc1159e87df67a" hs_bindgen_6cdc1159e87df67a ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1641:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_size =
  hs_bindgen_6cdc1159e87df67a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_key_agreement@
foreign import ccall safe "hs_bindgen_f8d1faf0a230c988" hs_bindgen_f8d1faf0a230c988 ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_key_agreement'
-}
botan_pk_op_key_agreement_wrapper ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @other_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @other_key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_wrapper =
  hs_bindgen_f8d1faf0a230c988

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1644:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @other_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @other_key_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> IO FC.CInt
botan_pk_op_key_agreement =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                HsBindgen.Runtime.IncompleteArray.withPtr x5 (\ptr7 ->
                                                                HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr8 ->
                                                                                                                hs_bindgen_f8d1faf0a230c988 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x6))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_encrypt_create@
foreign import ccall safe "hs_bindgen_4d81b6f9991a63a1" hs_bindgen_4d81b6f9991a63a1 ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1658:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @kdf@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_create =
  hs_bindgen_4d81b6f9991a63a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_encrypt_destroy@
foreign import ccall safe "hs_bindgen_9189e9c6a7efa8ed" hs_bindgen_9189e9c6a7efa8ed ::
     Botan_pk_op_kem_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1663:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_destroy =
  hs_bindgen_9189e9c6a7efa8ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_6af0de6f34942045" hs_bindgen_6af0de6f34942045 ::
     Botan_pk_op_kem_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1666:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_shared_key_length ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_length@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_shared_key_length@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_shared_key_length =
  hs_bindgen_6af0de6f34942045

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall safe "hs_bindgen_ff43fd162f17566b" hs_bindgen_ff43fd162f17566b ::
     Botan_pk_op_kem_encrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1671:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_encapsulated_key_length@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_encapsulated_key_length =
  hs_bindgen_ff43fd162f17566b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall safe "hs_bindgen_aefba414cefb9f8b" hs_bindgen_aefba414cefb9f8b ::
     Botan_pk_op_kem_encrypt_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_kem_encrypt_create_shared_key'
-}
botan_pk_op_kem_encrypt_create_shared_key_wrapper ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @shared_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @encapsulated_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @encapsulated_key_len@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_create_shared_key_wrapper =
  hs_bindgen_aefba414cefb9f8b

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1675:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @shared_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @encapsulated_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @encapsulated_key_len@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_create_shared_key =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr9 ->
                                                                    hs_bindgen_aefba414cefb9f8b x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 x4 x5 x6 x7 x8)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_decrypt_create@
foreign import ccall safe "hs_bindgen_d7606665a994244c" hs_bindgen_d7606665a994244c ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1688:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_create ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @kdf@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_create =
  hs_bindgen_d7606665a994244c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_decrypt_destroy@
foreign import ccall safe "hs_bindgen_95556347ea2797f6" hs_bindgen_95556347ea2797f6 ::
     Botan_pk_op_kem_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1693:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_destroy =
  hs_bindgen_95556347ea2797f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_2aa3d3c3494197c0" hs_bindgen_2aa3d3c3494197c0 ::
     Botan_pk_op_kem_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1696:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key_length ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_length@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_shared_key_length@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_shared_key_length =
  hs_bindgen_2aa3d3c3494197c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall safe "hs_bindgen_3ca91f0c80576de1" hs_bindgen_3ca91f0c80576de1 ::
     Botan_pk_op_kem_decrypt_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_kem_decrypt_shared_key'
-}
botan_pk_op_kem_decrypt_shared_key_wrapper ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @encapsulated_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @encapsulated_key_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @shared_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shared_key_len@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_shared_key_wrapper =
  hs_bindgen_3ca91f0c80576de1

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1701:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @salt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @salt_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @encapsulated_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @encapsulated_key_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @desired_shared_key_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @shared_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @shared_key_len@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_shared_key =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr8 ->
                                                                  HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr9 ->
                                                                                                                  hs_bindgen_3ca91f0c80576de1 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_pkcs_hash_id@
foreign import ccall safe "hs_bindgen_8d2886914f22d425" hs_bindgen_8d2886914f22d425 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1714:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pkcs_hash_id ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_name@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pkcs_id@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pkcs_id_len@
  -> IO FC.CInt
botan_pkcs_hash_id = hs_bindgen_8d2886914f22d425

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mceies_encrypt@
foreign import ccall safe "hs_bindgen_93524a7861ff6e6b" hs_bindgen_93524a7861ff6e6b ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mceies_encrypt'
-}
botan_mceies_encrypt_wrapper ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @mce_key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @aead@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pt_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ad@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ad_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ct@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ct_len@
  -> IO FC.CInt
botan_mceies_encrypt_wrapper =
  hs_bindgen_93524a7861ff6e6b

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1721:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @mce_key@
  -> Botan_rng_t
     -- ^ __C declaration:__ @rng@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @aead@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pt@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pt_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ad@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ad_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ct@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ct_len@
  -> IO FC.CInt
botan_mceies_encrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    HsBindgen.Runtime.IncompleteArray.withPtr x5 (\ptr9 ->
                                                                    HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr10 ->
                                                                                                                    hs_bindgen_93524a7861ff6e6b x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x6 x7 x8))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_mceies_decrypt@
foreign import ccall safe "hs_bindgen_846dd7d03a5d8e3f" hs_bindgen_846dd7d03a5d8e3f ::
     Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mceies_decrypt'
-}
botan_mceies_decrypt_wrapper ::
     Botan_privkey_t
     -- ^ __C declaration:__ @mce_key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @aead@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ct@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ct_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ad@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ad_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pt@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pt_len@
  -> IO FC.CInt
botan_mceies_decrypt_wrapper =
  hs_bindgen_846dd7d03a5d8e3f

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1736:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt ::
     Botan_privkey_t
     -- ^ __C declaration:__ @mce_key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @aead@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ct@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ct_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @ad@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ad_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pt@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @pt_len@
  -> IO FC.CInt
botan_mceies_decrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr8 ->
                                                                  HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr9 ->
                                                                                                                  hs_bindgen_846dd7d03a5d8e3f x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_load@
foreign import ccall safe "hs_bindgen_f0de3a6389772fbe" hs_bindgen_f0de3a6389772fbe ::
     Ptr.Ptr Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_x509_cert_load'
-}
botan_x509_cert_load_wrapper ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @cert_len@
  -> IO FC.CInt
botan_x509_cert_load_wrapper =
  hs_bindgen_f0de3a6389772fbe

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1751:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @cert_len@
  -> IO FC.CInt
botan_x509_cert_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_f0de3a6389772fbe x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_load_file@
foreign import ccall safe "hs_bindgen_a384012731ae4618" hs_bindgen_a384012731ae4618 ::
     Ptr.Ptr Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO FC.CInt
botan_x509_cert_load_file =
  hs_bindgen_a384012731ae4618

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_destroy@
foreign import ccall safe "hs_bindgen_9ac8cb74170e0ad5" hs_bindgen_9ac8cb74170e0ad5 ::
     Botan_x509_cert_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1757:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_destroy = hs_bindgen_9ac8cb74170e0ad5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_dup@
foreign import ccall safe "hs_bindgen_6f134dc73c35e577" hs_bindgen_6f134dc73c35e577 ::
     Ptr.Ptr Botan_x509_cert_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1759:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @new_cert@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_dup = hs_bindgen_6f134dc73c35e577

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_time_starts@
foreign import ccall safe "hs_bindgen_b7d206b1fcbf0c58" hs_bindgen_b7d206b1fcbf0c58 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1762:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_starts ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_time_starts =
  hs_bindgen_b7d206b1fcbf0c58

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_time_expires@
foreign import ccall safe "hs_bindgen_ef32f801a5125567" hs_bindgen_ef32f801a5125567 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1763:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_time_expires ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_time_expires =
  hs_bindgen_ef32f801a5125567

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_not_before@
foreign import ccall safe "hs_bindgen_fe9243493ba1daa6" hs_bindgen_fe9243493ba1daa6 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1765:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_before =
  hs_bindgen_fe9243493ba1daa6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_not_after@
foreign import ccall safe "hs_bindgen_facafaa28cf91181" hs_bindgen_facafaa28cf91181 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_after =
  hs_bindgen_facafaa28cf91181

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_fingerprint@
foreign import ccall safe "hs_bindgen_85dd951037df5143" hs_bindgen_85dd951037df5143 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1769:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_fingerprint ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_fingerprint =
  hs_bindgen_85dd951037df5143

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_serial_number@
foreign import ccall safe "hs_bindgen_7041bbb54580a4c4" hs_bindgen_7041bbb54580a4c4 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1771:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_serial_number ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_serial_number =
  hs_bindgen_7041bbb54580a4c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_authority_key_id@
foreign import ccall safe "hs_bindgen_91b93bbf856652b4" hs_bindgen_91b93bbf856652b4 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1772:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_authority_key_id ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_authority_key_id =
  hs_bindgen_91b93bbf856652b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_subject_key_id@
foreign import ccall safe "hs_bindgen_c83bb7ebfc5444aa" hs_bindgen_c83bb7ebfc5444aa ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1773:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_key_id ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_subject_key_id =
  hs_bindgen_c83bb7ebfc5444aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_public_key_bits@
foreign import ccall safe "hs_bindgen_9228befe7cf1f2da" hs_bindgen_9228befe7cf1f2da ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1775:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key_bits ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_public_key_bits =
  hs_bindgen_9228befe7cf1f2da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_view_public_key_bits@
foreign import ccall safe "hs_bindgen_8ecf9705f46ac444" hs_bindgen_8ecf9705f46ac444 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1778:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_public_key_bits ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_x509_cert_view_public_key_bits =
  hs_bindgen_8ecf9705f46ac444

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_public_key@
foreign import ccall safe "hs_bindgen_d763c744fae944bf" hs_bindgen_d763c744fae944bf ::
     Botan_x509_cert_t
  -> Ptr.Ptr Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1780:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_x509_cert_get_public_key =
  hs_bindgen_d763c744fae944bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_issuer_dn@
foreign import ccall safe "hs_bindgen_dd9f335a63dd17a0" hs_bindgen_dd9f335a63dd17a0 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1783:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_issuer_dn ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @index@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_issuer_dn =
  hs_bindgen_dd9f335a63dd17a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_get_subject_dn@
foreign import ccall safe "hs_bindgen_5ac5132374ca9181" hs_bindgen_5ac5132374ca9181 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1787:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_subject_dn ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @index@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_get_subject_dn =
  hs_bindgen_5ac5132374ca9181

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_to_string@
foreign import ccall safe "hs_bindgen_3ff2957a6f239c64" hs_bindgen_3ff2957a6f239c64 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1790:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_to_string ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_x509_cert_to_string =
  hs_bindgen_3ff2957a6f239c64

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_view_as_string@
foreign import ccall safe "hs_bindgen_36a6e1aa8e6b8cd4" hs_bindgen_36a6e1aa8e6b8cd4 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1793:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_view_as_string ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_x509_cert_view_as_string =
  hs_bindgen_36a6e1aa8e6b8cd4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_allowed_usage@
foreign import ccall safe "hs_bindgen_51dd4743f5d1e053" hs_bindgen_51dd4743f5d1e053 ::
     Botan_x509_cert_t
  -> FC.CUInt
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1809:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> FC.CUInt
     -- ^ __C declaration:__ @key_usage@
  -> IO FC.CInt
botan_x509_cert_allowed_usage =
  hs_bindgen_51dd4743f5d1e053

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_hostname_match@
foreign import ccall safe "hs_bindgen_ad654f826f3bc050" hs_bindgen_ad654f826f3bc050 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1815:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> IO FC.CInt
botan_x509_cert_hostname_match =
  hs_bindgen_ad654f826f3bc050

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_verify@
foreign import ccall safe "hs_bindgen_893f76f7421b9d18" hs_bindgen_893f76f7421b9d18 ::
     Ptr.Ptr FC.CInt
  -> Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1826:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify ::
     Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @validation_result@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
     -- ^ __C declaration:__ @intermediates@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @intermediates_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
     -- ^ __C declaration:__ @trusted@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @trusted_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @trusted_path@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @required_strength@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @reference_time@
  -> IO FC.CInt
botan_x509_cert_verify = hs_bindgen_893f76f7421b9d18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_validation_status@
foreign import ccall safe "hs_bindgen_a837b0f47521da42" hs_bindgen_a837b0f47521da42 ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1841:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status ::
     FC.CInt
     -- ^ __C declaration:__ @code@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_x509_cert_validation_status =
  hs_bindgen_a837b0f47521da42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_crl_load_file@
foreign import ccall safe "hs_bindgen_8a5b596f56c631b5" hs_bindgen_8a5b596f56c631b5 ::
     Ptr.Ptr Botan_x509_crl_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1849:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @crl_path@
  -> IO FC.CInt
botan_x509_crl_load_file =
  hs_bindgen_8a5b596f56c631b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_crl_load@
foreign import ccall safe "hs_bindgen_481095fc59aee777" hs_bindgen_481095fc59aee777 ::
     Ptr.Ptr Botan_x509_crl_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_x509_crl_load'
-}
botan_x509_crl_load_wrapper ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @crl_bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @crl_bits_len@
  -> IO FC.CInt
botan_x509_crl_load_wrapper =
  hs_bindgen_481095fc59aee777

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1851:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @crl_bits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @crl_bits_len@
  -> IO FC.CInt
botan_x509_crl_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        hs_bindgen_481095fc59aee777 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_crl_destroy@
foreign import ccall safe "hs_bindgen_7deb587a9ea0186f" hs_bindgen_7deb587a9ea0186f ::
     Botan_x509_crl_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1853:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> IO FC.CInt
botan_x509_crl_destroy = hs_bindgen_7deb587a9ea0186f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_is_revoked@
foreign import ccall safe "hs_bindgen_ea09e42ba9e7e089" hs_bindgen_ea09e42ba9e7e089 ::
     Botan_x509_crl_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1859:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_is_revoked = hs_bindgen_ea09e42ba9e7e089

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_x509_cert_verify_with_crl@
foreign import ccall safe "hs_bindgen_78f60cfa7500e1cb" hs_bindgen_78f60cfa7500e1cb ::
     Ptr.Ptr FC.CInt
  -> Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1866:5@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_verify_with_crl ::
     Ptr.Ptr FC.CInt
     -- ^ __C declaration:__ @validation_result@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
     -- ^ __C declaration:__ @intermediates@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @intermediates_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_cert_t
     -- ^ __C declaration:__ @trusted@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @trusted_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr Botan_x509_crl_t
     -- ^ __C declaration:__ @crls@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @crls_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @trusted_path@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @required_strength@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @reference_time@
  -> IO FC.CInt
botan_x509_cert_verify_with_crl =
  hs_bindgen_78f60cfa7500e1cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_key_wrap3394@
foreign import ccall safe "hs_bindgen_4e51ac9531a87dea" hs_bindgen_4e51ac9531a87dea ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_key_wrap3394'
-}
botan_key_wrap3394_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> IO FC.CInt
botan_key_wrap3394_wrapper =
  hs_bindgen_4e51ac9531a87dea

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1884:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 ::
     HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> IO FC.CInt
botan_key_wrap3394 =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr6 ->
                                                              HsBindgen.Runtime.IncompleteArray.withPtr x0 (\ptr7 ->
                                                                                                              hs_bindgen_4e51ac9531a87dea (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_key_unwrap3394@
foreign import ccall safe "hs_bindgen_9dd335b51096e46f" hs_bindgen_9dd335b51096e46f ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_key_unwrap3394'
-}
botan_key_unwrap3394_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_key_unwrap3394_wrapper =
  hs_bindgen_9dd335b51096e46f

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1893:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 ::
     HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_key_unwrap3394 =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr6 ->
                                                              HsBindgen.Runtime.IncompleteArray.withPtr x0 (\ptr7 ->
                                                                                                              hs_bindgen_9dd335b51096e46f (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_nist_kw_enc@
foreign import ccall safe "hs_bindgen_8c2604fd5e7812f3" hs_bindgen_8c2604fd5e7812f3 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> FC.CInt
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_nist_kw_enc'
-}
botan_nist_kw_enc_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> FC.CInt
     -- ^ __C declaration:__ @padded@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> IO FC.CInt
botan_nist_kw_enc_wrapper =
  hs_bindgen_8c2604fd5e7812f3

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1901:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> FC.CInt
     -- ^ __C declaration:__ @padded@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> IO FC.CInt
botan_nist_kw_enc =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr8 ->
                                                                  HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr9 ->
                                                                                                                  hs_bindgen_8c2604fd5e7812f3 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_nist_kw_dec@
foreign import ccall safe "hs_bindgen_91865306e412607d" hs_bindgen_91865306e412607d ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> FC.CInt
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_nist_kw_dec'
-}
botan_nist_kw_dec_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> FC.CInt
     -- ^ __C declaration:__ @padded@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_nist_kw_dec_wrapper =
  hs_bindgen_91865306e412607d

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1911:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_algo@
  -> FC.CInt
     -- ^ __C declaration:__ @padded@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @wrapped_key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @wrapped_key_len@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @kek@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @kek_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> IO FC.CInt
botan_nist_kw_dec =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr8 ->
                                                                  HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr9 ->
                                                                                                                  hs_bindgen_91865306e412607d x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hotp_init@
foreign import ccall safe "hs_bindgen_40a4a50f4c9d3772" hs_bindgen_40a4a50f4c9d3772 ::
     Ptr.Ptr Botan_hotp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_hotp_init'
-}
botan_hotp_init_wrapper ::
     Ptr.Ptr Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @digits@
  -> IO FC.CInt
botan_hotp_init_wrapper = hs_bindgen_40a4a50f4c9d3772

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1930:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init ::
     Ptr.Ptr Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @digits@
  -> IO FC.CInt
botan_hotp_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr5 ->
                                                            hs_bindgen_40a4a50f4c9d3772 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hotp_destroy@
foreign import ccall safe "hs_bindgen_9685ca6731570e56" hs_bindgen_9685ca6731570e56 ::
     Botan_hotp_t
  -> IO FC.CInt

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1937:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> IO FC.CInt
botan_hotp_destroy = hs_bindgen_9685ca6731570e56

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hotp_generate@
foreign import ccall safe "hs_bindgen_21c94c0ad2a40311" hs_bindgen_21c94c0ad2a40311 ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1943:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_generate ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @hotp_code@
  -> HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @hotp_counter@
  -> IO FC.CInt
botan_hotp_generate = hs_bindgen_21c94c0ad2a40311

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_hotp_check@
foreign import ccall safe "hs_bindgen_975b378aa7634fcf" hs_bindgen_975b378aa7634fcf ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1949:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_check ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @next_hotp_counter@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @hotp_code@
  -> HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @hotp_counter@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @resync_range@
  -> IO FC.CInt
botan_hotp_check = hs_bindgen_975b378aa7634fcf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_totp_init@
foreign import ccall safe "hs_bindgen_e71f24fafb1f8b22" hs_bindgen_e71f24fafb1f8b22 ::
     Ptr.Ptr Botan_totp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_totp_init'
-}
botan_totp_init_wrapper ::
     Ptr.Ptr Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @digits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @time_step@
  -> IO FC.CInt
botan_totp_init_wrapper = hs_bindgen_e71f24fafb1f8b22

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1962:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init ::
     Ptr.Ptr Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hash_algo@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @digits@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @time_step@
  -> IO FC.CInt
botan_totp_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr6 ->
                                                              hs_bindgen_e71f24fafb1f8b22 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x2 x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_totp_destroy@
foreign import ccall safe "hs_bindgen_db022f277a5c8f93" hs_bindgen_db022f277a5c8f93 ::
     Botan_totp_t
  -> IO FC.CInt

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1970:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy ::
     Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> IO FC.CInt
botan_totp_destroy = hs_bindgen_db022f277a5c8f93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_totp_generate@
foreign import ccall safe "hs_bindgen_db44e934e68a9486" hs_bindgen_db44e934e68a9486 ::
     Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1979:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_generate ::
     Botan_totp_t
     {- ^

        [__@totp@ /(input)/__]: the TOTP object

     __C declaration:__ @totp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@totp_code@ /(input)/__]: the OTP code will be written here

     __C declaration:__ @totp_code@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^

        [__@timestamp@ /(input)/__]: the current local timestamp

     __C declaration:__ @timestamp@
     -}
  -> IO FC.CInt
botan_totp_generate = hs_bindgen_db44e934e68a9486

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_totp_check@
foreign import ccall safe "hs_bindgen_c3a047dba2d47e4e" hs_bindgen_c3a047dba2d47e4e ::
     Botan_totp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:1990:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_check ::
     Botan_totp_t
     {- ^

        [__@totp@ /(input)/__]: the TOTP object

     __C declaration:__ @totp@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^

        [__@totp_code@ /(input)/__]: the presented OTP

     __C declaration:__ @totp_code@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^

        [__@timestamp@ /(input)/__]: the current local timestamp

     __C declaration:__ @timestamp@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

     __C declaration:__ @acceptable_clock_drift@
     -}
  -> IO FC.CInt
botan_totp_check = hs_bindgen_c3a047dba2d47e4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_fpe_fe1_init@
foreign import ccall safe "hs_bindgen_6509e65b31385e15" hs_bindgen_6509e65b31385e15 ::
     Ptr.Ptr Botan_fpe_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Pointer-based API for 'botan_fpe_fe1_init'
-}
botan_fpe_fe1_init_wrapper ::
     Ptr.Ptr Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @rounds@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_fpe_fe1_init_wrapper =
  hs_bindgen_6509e65b31385e15

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2001:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init ::
     Ptr.Ptr Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @rounds@
  -> HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @flags@
  -> IO FC.CInt
botan_fpe_fe1_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr6 ->
                                                              hs_bindgen_6509e65b31385e15 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_fpe_destroy@
foreign import ccall safe "hs_bindgen_1ecfea8fe6b9b0b7" hs_bindgen_1ecfea8fe6b9b0b7 ::
     Botan_fpe_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2008:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> IO FC.CInt
botan_fpe_destroy = hs_bindgen_1ecfea8fe6b9b0b7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_fpe_encrypt@
foreign import ccall safe "hs_bindgen_ae56b8230f428729" hs_bindgen_ae56b8230f428729 ::
     Botan_fpe_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_fpe_encrypt'
-}
botan_fpe_encrypt_wrapper ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @tweak@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tweak_len@
  -> IO FC.CInt
botan_fpe_encrypt_wrapper =
  hs_bindgen_ae56b8230f428729

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2011:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @tweak@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tweak_len@
  -> IO FC.CInt
botan_fpe_encrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr4 ->
                                                          hs_bindgen_ae56b8230f428729 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_fpe_decrypt@
foreign import ccall safe "hs_bindgen_f56d8dbb65696693" hs_bindgen_f56d8dbb65696693 ::
     Botan_fpe_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_fpe_decrypt'
-}
botan_fpe_decrypt_wrapper ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @tweak@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tweak_len@
  -> IO FC.CInt
botan_fpe_decrypt_wrapper =
  hs_bindgen_f56d8dbb65696693

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2014:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @tweak@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tweak_len@
  -> IO FC.CInt
botan_fpe_decrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr4 ->
                                                          hs_bindgen_f56d8dbb65696693 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_server_session_init@
foreign import ccall safe "hs_bindgen_79d10c0b3792fc01" hs_bindgen_79d10c0b3792fc01 ::
     Ptr.Ptr Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2026:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_init ::
     Ptr.Ptr Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> IO FC.CInt
botan_srp6_server_session_init =
  hs_bindgen_79d10c0b3792fc01

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_server_session_destroy@
foreign import ccall safe "hs_bindgen_3bade2710870e10e" hs_bindgen_3bade2710870e10e ::
     Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2034:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_server_session_destroy ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> IO FC.CInt
botan_srp6_server_session_destroy =
  hs_bindgen_3bade2710870e10e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_server_session_step1@
foreign import ccall safe "hs_bindgen_9335abda7f7e2163" hs_bindgen_9335abda7f7e2163 ::
     Botan_srp6_server_session_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_server_session_step1'
-}
botan_srp6_server_session_step1_wrapper ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@verifier@ /(input)/__]: the verification value saved from client registration

     __C declaration:__ @verifier@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

     __C declaration:__ @verifier_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: the SRP group id

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: the SRP hash in use

     __C declaration:__ @hash_id@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng_obj@ /(input)/__]: a random number generator object

     __C declaration:__ @rng_obj@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @b_pub@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @b_pub_len@
  -> IO FC.CInt
botan_srp6_server_session_step1_wrapper =
  hs_bindgen_9335abda7f7e2163

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
botan_srp6_server_session_step1 ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@verifier@ /(input)/__]: the verification value saved from client registration

     __C declaration:__ @verifier@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

     __C declaration:__ @verifier_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: the SRP group id

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: the SRP hash in use

     __C declaration:__ @hash_id@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng_obj@ /(input)/__]: a random number generator object

     __C declaration:__ @rng_obj@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @b_pub@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @b_pub_len@
  -> IO FC.CInt
botan_srp6_server_session_step1 =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr8 ->
                                                                  hs_bindgen_9335abda7f7e2163 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x2 x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_server_session_step2@
foreign import ccall safe "hs_bindgen_f66557d5c9f6b269" hs_bindgen_f66557d5c9f6b269 ::
     Botan_srp6_server_session_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_server_session_step2'
-}
botan_srp6_server_session_step2_wrapper ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @a@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @a_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@key@ /(input)/__]: out buffer to store the symmetric key value

     __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@key_len@ /(input)/__]: symmetric key length

     __C declaration:__ @key_len@
     -}
  -> IO FC.CInt
botan_srp6_server_session_step2_wrapper =
  hs_bindgen_f66557d5c9f6b269

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
botan_srp6_server_session_step2 ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @a@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @a_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@key@ /(input)/__]: out buffer to store the symmetric key value

     __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@key_len@ /(input)/__]: symmetric key length

     __C declaration:__ @key_len@
     -}
  -> IO FC.CInt
botan_srp6_server_session_step2 =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr5 ->
                                                            hs_bindgen_f66557d5c9f6b269 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_generate_verifier@
foreign import ccall safe "hs_bindgen_da99519a4fc6417c" hs_bindgen_da99519a4fc6417c ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_generate_verifier'
-}
botan_srp6_generate_verifier_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@identifier@ /(input)/__]: a username or other client identifier

     __C declaration:__ @identifier@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the secret used to authenticate user

     __C declaration:__ @password@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a randomly chosen value, at least 128 bits long

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: the length of salt

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: specifies a secure hash function

     __C declaration:__ @hash_id@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@verifier@ /(input)/__]: out buffer to store the SRP-6 verifier value

     __C declaration:__ @verifier@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

     __C declaration:__ @verifier_len@
     -}
  -> IO FC.CInt
botan_srp6_generate_verifier_wrapper =
  hs_bindgen_da99519a4fc6417c

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
botan_srp6_generate_verifier ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@identifier@ /(input)/__]: a username or other client identifier

     __C declaration:__ @identifier@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the secret used to authenticate user

     __C declaration:__ @password@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: a randomly chosen value, at least 128 bits long

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: the length of salt

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: specifies a secure hash function

     __C declaration:__ @hash_id@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@verifier@ /(input)/__]: out buffer to store the SRP-6 verifier value

     __C declaration:__ @verifier@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@verifier_len@ /(input)/__]: SRP-6 verifier value length

     __C declaration:__ @verifier_len@
     -}
  -> IO FC.CInt
botan_srp6_generate_verifier =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr8 ->
                                                                  hs_bindgen_da99519a4fc6417c x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_client_agree@
foreign import ccall safe "hs_bindgen_5ae2908131f8a9e7" hs_bindgen_5ae2908131f8a9e7 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_client_agree'
-}
botan_srp6_client_agree_wrapper ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@username@ /(input)/__]: the username we are attempting login for

     __C declaration:__ @username@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the password we are attempting to use

     __C declaration:__ @password@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: specifies a secure hash function

     __C declaration:__ @hash_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: is the salt value sent by the server

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: the length of salt

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @b@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @b_len@
  -> Botan_rng_t
     {- ^

        [__@rng_obj@ /(input)/__]: is a random number generator object

     __C declaration:__ @rng_obj@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @a@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @a_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @k@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @k_len@
  -> IO FC.CInt
botan_srp6_client_agree_wrapper =
  hs_bindgen_5ae2908131f8a9e7

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
botan_srp6_client_agree ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@username@ /(input)/__]: the username we are attempting login for

     __C declaration:__ @username@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the password we are attempting to use

     __C declaration:__ @password@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@hash_id@ /(input)/__]: specifies a secure hash function

     __C declaration:__ @hash_id@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@salt@ /(input)/__]: is the salt value sent by the server

     __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@salt_len@ /(input)/__]: the length of salt

     __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @b@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @b_len@
  -> Botan_rng_t
     {- ^

        [__@rng_obj@ /(input)/__]: is a random number generator object

     __C declaration:__ @rng_obj@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @a@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @a_len@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @k@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @k_len@
  -> IO FC.CInt
botan_srp6_client_agree =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              \x6 ->
                \x7 ->
                  \x8 ->
                    \x9 ->
                      \x10 ->
                        \x11 ->
                          \x12 ->
                            HsBindgen.Runtime.IncompleteArray.withPtr x6 (\ptr13 ->
                                                                            HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr14 ->
                                                                                                                            hs_bindgen_5ae2908131f8a9e7 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr14) x5 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr13) x7 x8 x9 x10 x11 x12))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_srp6_group_size@
foreign import ccall safe "hs_bindgen_adbed589e3e1ad2a" hs_bindgen_adbed589e3e1ad2a ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2129:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @group_id@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @group_p_bytes@
  -> IO FC.CInt
botan_srp6_group_size = hs_bindgen_adbed589e3e1ad2a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_zfec_encode@
foreign import ccall safe "hs_bindgen_8fec80ca03d39b91" hs_bindgen_8fec80ca03d39b91 ::
     HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
  -> IO FC.CInt

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
botan_zfec_encode ::
     HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @k@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@input@ /(input)/__]: the data to FEC

     __C declaration:__ @input@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@size@ /(input)/__]: the length in bytes of input, which must be a multiple of K

     __C declaration:__ @size@
     -}
  -> Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
     {- ^

        [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [N][size / K].  For all n in range, an encoded block will be written to the memory starting at outputs[n][0].

     __C declaration:__ @outputs@
     -}
  -> IO FC.CInt
botan_zfec_encode = hs_bindgen_8fec80ca03d39b91

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_4_0_Safe_botan_zfec_decode@
foreign import ccall safe "hs_bindgen_757aa212390314ca" hs_bindgen_757aa212390314ca ::
     HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
  -> IO FC.CInt

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
botan_zfec_decode ::
     HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @k@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@indexes@ /(input)/__]: The index into the encoder's outputs for the corresponding element of the inputs array. Must be of length K.

     __C declaration:__ @indexes@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
     {- ^

        [__@inputs@ /(input)/__]: K previously encoded shares to decode

     __C declaration:__ @inputs@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@shareSize@ /(input)/__]: the length in bytes of each input

     __C declaration:__ @shareSize@
     -}
  -> Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
     {- ^

        [__@outputs@ /(input)/__]: An out parameter pointing to a fully allocated array of size [K][shareSize].  For all k in range, a decoded block will written to the memory starting at outputs[k][0].

     __C declaration:__ @outputs@
     -}
  -> IO FC.CInt
botan_zfec_decode = hs_bindgen_757aa212390314ca
