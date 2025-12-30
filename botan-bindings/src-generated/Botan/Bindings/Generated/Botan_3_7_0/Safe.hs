{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_7_0.Safe where

import           Botan.Bindings.Generated.Botan_3_7_0
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
  , "char const *hs_bindgen_6a135315357d462a ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_06be6dfad56f868c (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_e1eaa49d565fb508 (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_8f4017415c55853c ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_5c961330b2ecda71 (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_3319264a9a065f54 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_a684cb6de88ff8f1 (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_83539410dac1daad (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_a5b3d9083e4faba9 (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_a2fb79f9de93cdcb ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_06a5ec0ccea7f805 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3b857f33b6e2c857 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_67c838e865425fa8 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_092debc2a631f07c ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1261e87167a582ee ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_02878123ea6bd620 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ef25a6263f42621b ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_615d73b7139d470d ("
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
  , "signed int hs_bindgen_0504144f13f963b3 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_65a4298fc86d0666 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_402965ec81355798 ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_24570aaf24e44e22 ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ad0df153d5e2e4bd ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f75c9c39f601ea5e ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_93de43a1c6ab0c97 ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3791fb0938919c6b ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6eb84af648541c11 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_73e8e2391a6d26b9 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0ca883c709bb05ef ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b52d9c20efa37433 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_93719018410b8f3f ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_516fcba29fbfc44a ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ca163f366502aa21 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_24307acd64d3446b ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_679c7f0b6dbf742a ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_13b225099e3960c0 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ac089397a129e60d ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9e8914aa6b74bce7 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_92760ba3226cb1ba ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_352bfa8396cca551 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_fc5dcbaba281eaf7 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a98771984d0f15b0 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e24481d35f3f4671 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_5064f5676a419eba ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4f4f83ba62b2a31f ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3dfb1600eace4882 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_23f13ecd7b18b69d ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b04bbc90f03dd0b8 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7f46dec010479045 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_is_authenticated(arg1);"
  , "}"
  , "signed int hs_bindgen_b403c4d5bfd48db0 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_requires_entire_message(arg1);"
  , "}"
  , "signed int hs_bindgen_ecada04e1d438219 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4c4b45764656bbc7 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9a5d1f3a7edde1a1 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7d3dad4419d6f77c ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bffc78a2fc1e96fc ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_406edea4dbc4b750 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0c584fab46717a15 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_68fd675131b2bc93 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ffbd36663a8ffa45 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2f8c0536d9faa91d ("
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
  , "signed int hs_bindgen_e2e2937b8fe48faa ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_1dfdafbe4d520fe2 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_a708f6f7297be50a ("
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
  , "signed int hs_bindgen_b3b51aba57a3839c ("
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
  , "signed int hs_bindgen_5aeaf435d0bd9e94 ("
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
  , "signed int hs_bindgen_3f9b011800789b7c ("
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
  , "signed int hs_bindgen_bc79024f641314f5 ("
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
  , "signed int hs_bindgen_867091f04fc386bf ("
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
  , "signed int hs_bindgen_71339c5aa87a5d4e ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f234adace30ff902 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_7bb6951de4aecd77 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_a637468afc8a4d3e ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d2f2ccd2162dbf77 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_cd99b949219b7c7e ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4aa275e94dee9828 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_fb93c7d82a4e3189 ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8bb1e040485c6686 ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_52ea4ad98a2d0511 ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_4978c8b3230af493 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_46e7e69ae84ac341 ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fc9770a2da8b8891 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5325875fe06d382a ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_f246daf29a5fdb3c ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3e7afec7de088135 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_aef939b280d37fca ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_78c449caa3d9ff6e ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_acc983e4d4cec91b ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8697eb4c524ef942 ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_128cbb6e9a9149b3 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1ddad785f889dc71 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_efd476c5e178fc88 ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_127cb48a4a36344e ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_7df74a7659868470 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_b6d0dee6188cd754 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_b53ba4ca6f90de17 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_d2cf7ccd51008bc5 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_70aa96add00fd34c ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_5e8e300b3f717a75 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4b0908d0ab78abe7 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_436cfdfab5889533 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cc6f0ddc9782d2b6 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bf73ed1dfc858aa3 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_505b00ce38f67127 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f67def42cd3b2258 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_962a07229229f55b ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0d0377e9cbdf9a1d ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7484c6c88e4ff914 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_71d9cd5cb05e8015 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_229eac08648092d4 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b44da70630bfe290 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3dcd3e23ffee87d0 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e3b038e3b8cc4177 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e880dbf219104647 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_9e666acc6f97b403 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2e431d780a058197 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5a4ddae9cb792e36 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_238b1787b0df861c ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_43a32fcd856acf63 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3c87ff49982c7833 ("
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
  , "signed int hs_bindgen_1911ce4a0ae0333c ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_05e4ff7cb37ef711 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1a12769bda651111 ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b7b454ee45776c6e ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f802fa3f4cb76172 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_157e0c2d35dc1657 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5726791b3ccff053 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1304c3e62c4975f8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5ce40f5406f3fa7c ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_582709725a1a03ed ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e1fda4044fe3f335 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_120ad4f4a9ce20af ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_acc81ab4a5a7c752 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_eef7a431285ee9e3 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_24d36e3df0cd59b5 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_63b1269d7cd1f2e7 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_raw(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_74d455e5a34c3aef ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_91ff0feacfe9a6bc ("
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
  , "signed int hs_bindgen_0d7d269bc906837c ("
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
  , "signed int hs_bindgen_a7c4313988200503 ("
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
  , "signed int hs_bindgen_3184fae2b4d0f1de ("
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
  , "signed int hs_bindgen_b8d8f351e840b322 ("
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
  , "signed int hs_bindgen_a3b7ba1743b44726 ("
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
  , "signed int hs_bindgen_53b02f43cf0a9356 ("
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
  , "signed int hs_bindgen_97c76291a8c3f958 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b15af75dbba51762 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b596781abbf92f4d ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_69b50e7504d6ff7b ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4c0fe976249cb502 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7613484e2191f873 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_raw(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a70e3a884b05512e ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9dbdaa663f4a7152 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c5a3d71ca9959fc0 ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3a3b46466ce64c90 ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c993f9b56f311218 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_43c62db1fb5cd541 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c0a7a601a21ddf43 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2502c587f69b367e ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b8b8a83e886a430c ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a7c79e05b5c6365f ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_18533fec4804c312 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0d6dd28fb3701bb9 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_39b32d8af2824263 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bc0d4e3eba606852 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9c6d2149ddf2d7be ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_acff19655764679d ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7a86e175eccc717d ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5824f75536f131e2 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cd8dc8a8740913c3 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_960ec17caa30b035 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_22e373995f3d06fa ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c222e3654f1fdbce ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_aa1f747ff634d145 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_271c2bdcdc75096d ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3bc6d34d0e35b2ac ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_04ca32c5ac0e99ca ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_715a1082886a655f ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4a9a5a3e67847a41 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7be12027735d3937 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_2e1ad84df60a1bc7 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a3953a03da13150f ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_40a4a99fb4e5ec98 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0610e73b57a4fbb8 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e88331d24c7f895b ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9509ac77acab5896 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e82a3425090f0049 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f6cf403c05296d2a ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d26e158bdf3f34c2 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_df5a6c873efff083 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_52c594fc036aa32e ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e16cb303dad8df87 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6241595faeaf2747 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_954b3de30fd49a22 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_05ff989aaa69070b ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f21e5fcc0128f5cf ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_be0a67aaa5c39f34 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_ml_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_41daf14a14399aa9 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ml_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_de517ae985e79f4a ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c1ba2709640de18b ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_76299c15f0811aee ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7df57e88232fb967 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e80222938455d70c ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_frodokem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1ae1b3542987cf7c ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_frodokem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ceabbcaef3741865 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_classic_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5fa0aed4ec0ca89e ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_classic_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_49be646141df308d ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_ml_kem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6a9c17edf429aa9c ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ml_kem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6a0d9b5774878918 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_slh_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_41898dcba3e5f08f ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_slh_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_89b501c6b9560adc ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_ecc_key_used_explicit_encoding(arg1);"
  , "}"
  , "signed int hs_bindgen_7b23769bd0ce3449 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1d3a09b173133f38 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4638fc0df850754b ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4eb8dd823dbbbed8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_abe6f2dcdf5478f4 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1b46ffce5be18919 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fefca68e25907f6b ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a2a8826650758587 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_10e491167b643cf2 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_746960d0b7167e09 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_aefc1a9d25e74dae ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f8830c59bd10b720 ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e2a6a362b36f4297 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dfe8c45b1638f15e ("
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
  , "signed int hs_bindgen_b5901523abf595e2 ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c1790928dde3508e ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_b75c82aa932d6bcb ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_65209b08ef582bd5 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_59ec7cd231e372f0 ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1c1ffb5d29d8407c ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4b9f89bd4e5f6d0f ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_36c8396febe8e0b1 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c822081dfe5108e6 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_cc5c78a984c87577 ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_066f5134cd6e784c ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_9f02a7efc8c2b452 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_37313ed491ad48b7 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3f1462c7834dd24b ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_378f9e0d6566446f ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_c677022d47794202 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cb21a0bc08a35551 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0016e6718939fe32 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_239149a6321979d6 ("
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
  , "signed int hs_bindgen_3b7a0c2318b5dcc9 ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b5f30fa9d0c81258 ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_88bb7f9b89dc8dbf ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e9cfef35b898e488 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_eeb169b0ad6577c1 ("
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
  , "signed int hs_bindgen_6386fbd52b82238b ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3213e0dcfa712957 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_b85e90d4e38402b8 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9158b16316e3a137 ("
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
  , "signed int hs_bindgen_e201df538704330c ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dfde98fe30efc91d ("
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
  , "signed int hs_bindgen_d30db332b7b027c3 ("
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
  , "signed int hs_bindgen_c66bd73714eff0d2 ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7f10de876cd36002 ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_34ae07a4a65ee491 ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2a21a5ae3046cff2 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_06b10c0969a70977 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3df326aa1a3c72f8 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_53ba660069021029 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ad8520567b92a7d2 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_dccdbf143fa1dbaa ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f7dae0d7cf2d0601 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6f2e32ec83453aed ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2ba7c12ab997c4b0 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9becd69ff5eb4051 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_70e56191902735a7 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_27a346cfa1d5ae44 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_730d8552002452ce ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_f6fd58852aa7bd9b ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_dfb2112cbcf0b30e ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5053dabfef914569 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bd0b5779d90661f9 ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a3f3145a3be8148f ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_29f7f1a0c169bc39 ("
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
  , "char const *hs_bindgen_c3f1f3f66a792867 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_d69b2b54ed9758f8 ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_13eee8095dd47f69 ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_71be83428b9a6327 ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_14daac74ee1c93f9 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_22e5b976e96c65fe ("
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
  , "signed int hs_bindgen_cd29900f6acb87e7 ("
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
  , "signed int hs_bindgen_4d63ce9c2aa16a44 ("
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
  , "signed int hs_bindgen_d41b492d61778b02 ("
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
  , "signed int hs_bindgen_2bfd3a7a2a628c27 ("
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
  , "signed int hs_bindgen_a8d5f50bea0e2bef ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_1530b54d786bd7a1 ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_8c20c7006688d728 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ddadabab65e3c15d ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_bab3e54532e280a7 ("
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
  , "signed int hs_bindgen_46438df5047d44e9 ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_c229226e5488f531 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c53a7fd940d12bc7 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_dacb7ac25dfa1d75 ("
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
  , "signed int hs_bindgen_1cad263553f64693 ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4cdb84555b162b51 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ee838ef77828700b ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_78b4182a955515a1 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_a4abadc2b5bd031c ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ba2e2c596c637428 ("
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
  , "signed int hs_bindgen_207dfe085fc5046b ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_ca00bd988228c8d6 ("
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
  , "signed int hs_bindgen_7da0996954571a0e ("
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
  , "signed int hs_bindgen_bd8762dfea407ba0 ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_89a11713e7afd3ea ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_a1ab8c9c16f93d7d ("
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
  , "signed int hs_bindgen_d50adc72008051cc (void)"
  , "{"
  , "  return botan_tpm2_supports_crypto_backend();"
  , "}"
  , "signed int hs_bindgen_847b9c03146f5a46 ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_35c003860f1c4e94 ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_init_ex(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cd05478e530d06be ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_from_esys(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0ef0684fa58b3178 ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_enable_crypto_backend(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e2d4548f2845fc57 ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_127d8ed3a00f5684 ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return botan_tpm2_enable_crypto_backend(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a05488a377bf13db ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_crypto_backend_state_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_0e0ab053c3eaca6a ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return botan_tpm2_rng_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e33086f3a97e498c ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_unauthenticated_session_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1b8a882c5c83464f ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_session_destroy(arg1);"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_error_description@
foreign import ccall safe "hs_bindgen_6a135315357d462a" hs_bindgen_6a135315357d462a ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:170:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description ::
     FC.CInt
     -- ^ __C declaration:__ @err@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_description = hs_bindgen_6a135315357d462a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_error_last_exception_message@
foreign import ccall safe "hs_bindgen_06be6dfad56f868c" hs_bindgen_06be6dfad56f868c ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:179:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_last_exception_message =
  hs_bindgen_06be6dfad56f868c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_ffi_api_version@
foreign import ccall safe "hs_bindgen_e1eaa49d565fb508" hs_bindgen_e1eaa49d565fb508 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: IO HsBindgen.Runtime.Prelude.Word32
botan_ffi_api_version = hs_bindgen_e1eaa49d565fb508

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_ffi_supports_api@
foreign import ccall safe "hs_bindgen_8f4017415c55853c" hs_bindgen_8f4017415c55853c ::
     HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:192:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @api_version@
  -> IO FC.CInt
botan_ffi_supports_api = hs_bindgen_8f4017415c55853c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_version_string@
foreign import ccall safe "hs_bindgen_5c961330b2ecda71" hs_bindgen_5c961330b2ecda71 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:197:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_version_string = hs_bindgen_5c961330b2ecda71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_version_major@
foreign import ccall safe "hs_bindgen_3319264a9a065f54" hs_bindgen_3319264a9a065f54 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:202:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_major = hs_bindgen_3319264a9a065f54

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_version_minor@
foreign import ccall safe "hs_bindgen_a684cb6de88ff8f1" hs_bindgen_a684cb6de88ff8f1 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:207:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_minor = hs_bindgen_a684cb6de88ff8f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_version_patch@
foreign import ccall safe "hs_bindgen_83539410dac1daad" hs_bindgen_83539410dac1daad ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:212:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_patch = hs_bindgen_83539410dac1daad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_version_datestamp@
foreign import ccall safe "hs_bindgen_a5b3d9083e4faba9" hs_bindgen_a5b3d9083e4faba9 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:218:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_datestamp = hs_bindgen_a5b3d9083e4faba9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_constant_time_compare@
foreign import ccall safe "hs_bindgen_a2fb79f9de93cdcb" hs_bindgen_a2fb79f9de93cdcb ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:223:28@

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
  hs_bindgen_a2fb79f9de93cdcb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_same_mem@
foreign import ccall safe "hs_bindgen_06a5ec0ccea7f805" hs_bindgen_06a5ec0ccea7f805 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:229:28@

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
botan_same_mem = hs_bindgen_06a5ec0ccea7f805

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_scrub_mem@
foreign import ccall safe "hs_bindgen_3b857f33b6e2c857" hs_bindgen_3b857f33b6e2c857 ::
     Ptr.Ptr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:235:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @mem@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_scrub_mem = hs_bindgen_3b857f33b6e2c857

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hex_encode@
foreign import ccall safe "hs_bindgen_67c838e865425fa8" hs_bindgen_67c838e865425fa8 ::
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

__defined at:__ @botan\/ffi.h:247:28@

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
botan_hex_encode = hs_bindgen_67c838e865425fa8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hex_decode@
foreign import ccall safe "hs_bindgen_092debc2a631f07c" hs_bindgen_092debc2a631f07c ::
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

__defined at:__ @botan\/ffi.h:257:28@

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
botan_hex_decode = hs_bindgen_092debc2a631f07c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_base64_encode@
foreign import ccall safe "hs_bindgen_1261e87167a582ee" hs_bindgen_1261e87167a582ee ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:262:28@

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
botan_base64_encode = hs_bindgen_1261e87167a582ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_base64_decode@
foreign import ccall safe "hs_bindgen_02878123ea6bd620" hs_bindgen_02878123ea6bd620 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:267:28@

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
botan_base64_decode = hs_bindgen_02878123ea6bd620

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_init@
foreign import ccall safe "hs_bindgen_ef25a6263f42621b" hs_bindgen_ef25a6263f42621b ::
     Ptr.Ptr Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:286:28@

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

        [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

     __C declaration:__ @rng_type@
     -}
  -> IO FC.CInt
botan_rng_init = hs_bindgen_ef25a6263f42621b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_init_custom@
foreign import ccall safe "hs_bindgen_615d73b7139d470d" hs_bindgen_615d73b7139d470d ::
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

__defined at:__ @botan\/ffi.h:298:5@

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
botan_rng_init_custom = hs_bindgen_615d73b7139d470d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_get@
foreign import ccall safe "hs_bindgen_0504144f13f963b3" hs_bindgen_0504144f13f963b3 ::
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

__defined at:__ @botan\/ffi.h:312:28@

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
botan_rng_get = hs_bindgen_0504144f13f963b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_system_rng_get@
foreign import ccall safe "hs_bindgen_65a4298fc86d0666" hs_bindgen_65a4298fc86d0666 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:320:28@

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
botan_system_rng_get = hs_bindgen_65a4298fc86d0666

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_reseed@
foreign import ccall safe "hs_bindgen_402965ec81355798" hs_bindgen_402965ec81355798 ::
     Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:330:28@

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
botan_rng_reseed = hs_bindgen_402965ec81355798

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_reseed_from_rng@
foreign import ccall safe "hs_bindgen_24570aaf24e44e22" hs_bindgen_24570aaf24e44e22 ::
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

__defined at:__ @botan\/ffi.h:340:28@

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
  hs_bindgen_24570aaf24e44e22

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_add_entropy@
foreign import ccall safe "hs_bindgen_ad0df153d5e2e4bd" hs_bindgen_ad0df153d5e2e4bd ::
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

__defined at:__ @botan\/ffi.h:350:28@

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
botan_rng_add_entropy = hs_bindgen_ad0df153d5e2e4bd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_rng_destroy@
foreign import ccall safe "hs_bindgen_f75c9c39f601ea5e" hs_bindgen_f75c9c39f601ea5e ::
     Botan_rng_t
  -> IO FC.CInt

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_rng_destroy = hs_bindgen_f75c9c39f601ea5e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_init@
foreign import ccall safe "hs_bindgen_93de43a1c6ab0c97" hs_bindgen_93de43a1c6ab0c97 ::
     Ptr.Ptr Botan_hash_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:371:28@

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
botan_hash_init = hs_bindgen_93de43a1c6ab0c97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_copy_state@
foreign import ccall safe "hs_bindgen_3791fb0938919c6b" hs_bindgen_3791fb0938919c6b ::
     Ptr.Ptr Botan_hash_t
  -> Botan_hash_t
  -> IO FC.CInt

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:379:28@

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
botan_hash_copy_state = hs_bindgen_3791fb0938919c6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_output_length@
foreign import ccall safe "hs_bindgen_6eb84af648541c11" hs_bindgen_6eb84af648541c11 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:387:28@

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
  hs_bindgen_6eb84af648541c11

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_block_size@
foreign import ccall safe "hs_bindgen_73e8e2391a6d26b9" hs_bindgen_73e8e2391a6d26b9 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:395:28@

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
botan_hash_block_size = hs_bindgen_73e8e2391a6d26b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_update@
foreign import ccall safe "hs_bindgen_0ca883c709bb05ef" hs_bindgen_0ca883c709bb05ef ::
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

__defined at:__ @botan\/ffi.h:404:28@

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
botan_hash_update = hs_bindgen_0ca883c709bb05ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_final@
foreign import ccall safe "hs_bindgen_b52d9c20efa37433" hs_bindgen_b52d9c20efa37433 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:414:28@

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
botan_hash_final = hs_bindgen_b52d9c20efa37433

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_clear@
foreign import ccall safe "hs_bindgen_93719018410b8f3f" hs_bindgen_93719018410b8f3f ::
     Botan_hash_t
  -> IO FC.CInt

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:422:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_clear = hs_bindgen_93719018410b8f3f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_destroy@
foreign import ccall safe "hs_bindgen_516fcba29fbfc44a" hs_bindgen_516fcba29fbfc44a ::
     Botan_hash_t
  -> IO FC.CInt

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:429:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_destroy = hs_bindgen_516fcba29fbfc44a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hash_name@
foreign import ccall safe "hs_bindgen_ca163f366502aa21" hs_bindgen_ca163f366502aa21 ::
     Botan_hash_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:437:28@

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
botan_hash_name = hs_bindgen_ca163f366502aa21

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_init@
foreign import ccall safe "hs_bindgen_24307acd64d3446b" hs_bindgen_24307acd64d3446b ::
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

__defined at:__ @botan\/ffi.h:452:28@

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
botan_mac_init = hs_bindgen_24307acd64d3446b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_output_length@
foreign import ccall safe "hs_bindgen_679c7f0b6dbf742a" hs_bindgen_679c7f0b6dbf742a ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:460:28@

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
botan_mac_output_length = hs_bindgen_679c7f0b6dbf742a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_set_key@
foreign import ccall safe "hs_bindgen_13b225099e3960c0" hs_bindgen_13b225099e3960c0 ::
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

__defined at:__ @botan\/ffi.h:469:28@

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
botan_mac_set_key = hs_bindgen_13b225099e3960c0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_set_nonce@
foreign import ccall safe "hs_bindgen_ac089397a129e60d" hs_bindgen_ac089397a129e60d ::
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

__defined at:__ @botan\/ffi.h:478:28@

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
botan_mac_set_nonce = hs_bindgen_ac089397a129e60d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_update@
foreign import ccall safe "hs_bindgen_9e8914aa6b74bce7" hs_bindgen_9e8914aa6b74bce7 ::
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

__defined at:__ @botan\/ffi.h:487:28@

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
botan_mac_update = hs_bindgen_9e8914aa6b74bce7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_final@
foreign import ccall safe "hs_bindgen_92760ba3226cb1ba" hs_bindgen_92760ba3226cb1ba ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:497:28@

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
botan_mac_final = hs_bindgen_92760ba3226cb1ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_clear@
foreign import ccall safe "hs_bindgen_352bfa8396cca551" hs_bindgen_352bfa8396cca551 ::
     Botan_mac_t
  -> IO FC.CInt

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:505:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_clear = hs_bindgen_352bfa8396cca551

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_name@
foreign import ccall safe "hs_bindgen_fc5dcbaba281eaf7" hs_bindgen_fc5dcbaba281eaf7 ::
     Botan_mac_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:513:28@

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
botan_mac_name = hs_bindgen_fc5dcbaba281eaf7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_get_keyspec@
foreign import ccall safe "hs_bindgen_a98771984d0f15b0" hs_bindgen_a98771984d0f15b0 ::
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

__defined at:__ @botan\/ffi.h:523:5@

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
botan_mac_get_keyspec = hs_bindgen_a98771984d0f15b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mac_destroy@
foreign import ccall safe "hs_bindgen_e24481d35f3f4671" hs_bindgen_e24481d35f3f4671 ::
     Botan_mac_t
  -> IO FC.CInt

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:533:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_destroy = hs_bindgen_e24481d35f3f4671

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_init@
foreign import ccall safe "hs_bindgen_5064f5676a419eba" hs_bindgen_5064f5676a419eba ::
     Ptr.Ptr Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:547:28@

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
botan_cipher_init = hs_bindgen_5064f5676a419eba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_name@
foreign import ccall safe "hs_bindgen_4f4f83ba62b2a31f" hs_bindgen_4f4f83ba62b2a31f ::
     Botan_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:552:28@

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
botan_cipher_name = hs_bindgen_4f4f83ba62b2a31f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_output_length@
foreign import ccall safe "hs_bindgen_3dfb1600eace4882" hs_bindgen_3dfb1600eace4882 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:557:28@

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
  hs_bindgen_3dfb1600eace4882

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_valid_nonce_length@
foreign import ccall safe "hs_bindgen_23f13ecd7b18b69d" hs_bindgen_23f13ecd7b18b69d ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:562:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_valid_nonce_length =
  hs_bindgen_23f13ecd7b18b69d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_get_tag_length@
foreign import ccall safe "hs_bindgen_b04bbc90f03dd0b8" hs_bindgen_b04bbc90f03dd0b8 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:567:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tag_size@
  -> IO FC.CInt
botan_cipher_get_tag_length =
  hs_bindgen_b04bbc90f03dd0b8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_is_authenticated@
foreign import ccall safe "hs_bindgen_7f46dec010479045" hs_bindgen_7f46dec010479045 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_is_authenticated =
  hs_bindgen_7f46dec010479045

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_requires_entire_message@
foreign import ccall safe "hs_bindgen_b403c4d5bfd48db0" hs_bindgen_b403c4d5bfd48db0 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:579:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_requires_entire_message =
  hs_bindgen_b403c4d5bfd48db0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_get_default_nonce_length@
foreign import ccall safe "hs_bindgen_ecada04e1d438219" hs_bindgen_ecada04e1d438219 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_get_default_nonce_length =
  hs_bindgen_ecada04e1d438219

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_get_update_granularity@
foreign import ccall safe "hs_bindgen_4c4b45764656bbc7" hs_bindgen_4c4b45764656bbc7 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:590:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_update_granularity =
  hs_bindgen_4c4b45764656bbc7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_get_ideal_update_granularity@
foreign import ccall safe "hs_bindgen_9a5d1f3a7edde1a1" hs_bindgen_9a5d1f3a7edde1a1 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_ideal_update_granularity =
  hs_bindgen_9a5d1f3a7edde1a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_query_keylen@
foreign import ccall safe "hs_bindgen_7d3dad4419d6f77c" hs_bindgen_7d3dad4419d6f77c ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:602:5@

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
  hs_bindgen_7d3dad4419d6f77c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_bffc78a2fc1e96fc" hs_bindgen_bffc78a2fc1e96fc ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:608:5@

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
  hs_bindgen_bffc78a2fc1e96fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_set_key@
foreign import ccall safe "hs_bindgen_406edea4dbc4b750" hs_bindgen_406edea4dbc4b750 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:613:28@

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
botan_cipher_set_key = hs_bindgen_406edea4dbc4b750

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_reset@
foreign import ccall safe "hs_bindgen_0c584fab46717a15" hs_bindgen_0c584fab46717a15 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:623:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_reset = hs_bindgen_0c584fab46717a15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_set_associated_data@
foreign import ccall safe "hs_bindgen_68fd675131b2bc93" hs_bindgen_68fd675131b2bc93 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:628:28@

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
  hs_bindgen_68fd675131b2bc93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_start@
foreign import ccall safe "hs_bindgen_ffbd36663a8ffa45" hs_bindgen_ffbd36663a8ffa45 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:633:28@

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
botan_cipher_start = hs_bindgen_ffbd36663a8ffa45

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_update@
foreign import ccall safe "hs_bindgen_2f8c0536d9faa91d" hs_bindgen_2f8c0536d9faa91d ::
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
  hs_bindgen_2f8c0536d9faa91d

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
                                                                  hs_bindgen_2f8c0536d9faa91d x0 x1 x2 x3 x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_clear@
foreign import ccall safe "hs_bindgen_e2e2937b8fe48faa" hs_bindgen_e2e2937b8fe48faa ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:672:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear ::
     Botan_cipher_t
     -- ^ __C declaration:__ @hash@
  -> IO FC.CInt
botan_cipher_clear = hs_bindgen_e2e2937b8fe48faa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_cipher_destroy@
foreign import ccall safe "hs_bindgen_1dfdafbe4d520fe2" hs_bindgen_1dfdafbe4d520fe2 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:678:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_destroy = hs_bindgen_1dfdafbe4d520fe2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pbkdf@
foreign import ccall safe "hs_bindgen_a708f6f7297be50a" hs_bindgen_a708f6f7297be50a ::
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
botan_pbkdf_wrapper = hs_bindgen_a708f6f7297be50a

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:697:5@

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
                                                                hs_bindgen_a708f6f7297be50a x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x5 x6)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pbkdf_timed@
foreign import ccall safe "hs_bindgen_b3b51aba57a3839c" hs_bindgen_b3b51aba57a3839c ::
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
  hs_bindgen_b3b51aba57a3839c

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
                                                                  hs_bindgen_b3b51aba57a3839c x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pwdhash@
foreign import ccall safe "hs_bindgen_5aeaf435d0bd9e94" hs_bindgen_5aeaf435d0bd9e94 ::
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
botan_pwdhash_wrapper = hs_bindgen_5aeaf435d0bd9e94

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:754:28@

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
                                                                      hs_bindgen_5aeaf435d0bd9e94 x0 x1 x2 x3 x4 x5 x6 x7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x9)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pwdhash_timed@
foreign import ccall safe "hs_bindgen_3f9b011800789b7c" hs_bindgen_3f9b011800789b7c ::
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
  hs_bindgen_3f9b011800789b7c

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:781:28@

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
                                                                        hs_bindgen_3f9b011800789b7c x0 x1 x2 x3 x4 x5 x6 x7 x8 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x10)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_scrypt@
foreign import ccall safe "hs_bindgen_bc79024f641314f5" hs_bindgen_bc79024f641314f5 ::
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
botan_scrypt_wrapper = hs_bindgen_bc79024f641314f5

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:800:5@

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
                                                                  hs_bindgen_bc79024f641314f5 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_kdf@
foreign import ccall safe "hs_bindgen_867091f04fc386bf" hs_bindgen_867091f04fc386bf ::
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
botan_kdf_wrapper = hs_bindgen_867091f04fc386bf

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
                                                                                                                                                                    hs_bindgen_867091f04fc386bf x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x6 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x8)))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_init@
foreign import ccall safe "hs_bindgen_71339c5aa87a5d4e" hs_bindgen_71339c5aa87a5d4e ::
     Ptr.Ptr Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:841:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init ::
     Ptr.Ptr Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_name@
  -> IO FC.CInt
botan_block_cipher_init = hs_bindgen_71339c5aa87a5d4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_destroy@
foreign import ccall safe "hs_bindgen_f234adace30ff902" hs_bindgen_f234adace30ff902 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:847:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_destroy =
  hs_bindgen_f234adace30ff902

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_clear@
foreign import ccall safe "hs_bindgen_7bb6951de4aecd77" hs_bindgen_7bb6951de4aecd77 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:853:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_clear =
  hs_bindgen_7bb6951de4aecd77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_set_key@
foreign import ccall safe "hs_bindgen_a637468afc8a4d3e" hs_bindgen_a637468afc8a4d3e ::
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
  hs_bindgen_a637468afc8a4d3e

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:858:28@

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
                                                        hs_bindgen_a637468afc8a4d3e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_block_size@
foreign import ccall safe "hs_bindgen_d2f2ccd2162dbf77" hs_bindgen_d2f2ccd2162dbf77 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_block_size =
  hs_bindgen_d2f2ccd2162dbf77

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_encrypt_blocks@
foreign import ccall safe "hs_bindgen_cd99b949219b7c7e" hs_bindgen_cd99b949219b7c7e ::
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
  hs_bindgen_cd99b949219b7c7e

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:870:5@

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
                                                          hs_bindgen_cd99b949219b7c7e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_decrypt_blocks@
foreign import ccall safe "hs_bindgen_4aa275e94dee9828" hs_bindgen_4aa275e94dee9828 ::
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
  hs_bindgen_4aa275e94dee9828

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:876:5@

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
                                                          hs_bindgen_4aa275e94dee9828 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_name@
foreign import ccall safe "hs_bindgen_fb93c7d82a4e3189" hs_bindgen_fb93c7d82a4e3189 ::
     Botan_block_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:884:28@

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
botan_block_cipher_name = hs_bindgen_fb93c7d82a4e3189

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_block_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_8bb1e040485c6686" hs_bindgen_8bb1e040485c6686 ::
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

__defined at:__ @botan\/ffi.h:894:5@

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
  hs_bindgen_8bb1e040485c6686

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_init@
foreign import ccall safe "hs_bindgen_52ea4ad98a2d0511" hs_bindgen_52ea4ad98a2d0511 ::
     Ptr.Ptr Botan_mp_t
  -> IO FC.CInt

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:907:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_init = hs_bindgen_52ea4ad98a2d0511

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_destroy@
foreign import ccall safe "hs_bindgen_4978c8b3230af493" hs_bindgen_4978c8b3230af493 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:913:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_destroy = hs_bindgen_4978c8b3230af493

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_to_hex@
foreign import ccall safe "hs_bindgen_46e7e69ae84ac341" hs_bindgen_46e7e69ae84ac341 ::
     Botan_mp_t
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:918:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> IO FC.CInt
botan_mp_to_hex = hs_bindgen_46e7e69ae84ac341

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_to_str@
foreign import ccall safe "hs_bindgen_fc9770a2da8b8891" hs_bindgen_fc9770a2da8b8891 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:923:28@

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
botan_mp_to_str = hs_bindgen_fc9770a2da8b8891

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_clear@
foreign import ccall safe "hs_bindgen_5325875fe06d382a" hs_bindgen_5325875fe06d382a ::
     Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:928:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_clear = hs_bindgen_5325875fe06d382a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_set_from_int@
foreign import ccall safe "hs_bindgen_f246daf29a5fdb3c" hs_bindgen_f246daf29a5fdb3c ::
     Botan_mp_t
  -> FC.CInt
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:933:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> FC.CInt
     -- ^ __C declaration:__ @initial_value@
  -> IO FC.CInt
botan_mp_set_from_int = hs_bindgen_f246daf29a5fdb3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_set_from_mp@
foreign import ccall safe "hs_bindgen_3e7afec7de088135" hs_bindgen_3e7afec7de088135 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:938:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> Botan_mp_t
     -- ^ __C declaration:__ @source@
  -> IO FC.CInt
botan_mp_set_from_mp = hs_bindgen_3e7afec7de088135

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_set_from_str@
foreign import ccall safe "hs_bindgen_aef939b280d37fca" hs_bindgen_aef939b280d37fca ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:943:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @str@
  -> IO FC.CInt
botan_mp_set_from_str = hs_bindgen_aef939b280d37fca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_set_from_radix_str@
foreign import ccall safe "hs_bindgen_78c449caa3d9ff6e" hs_bindgen_78c449caa3d9ff6e ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:949:28@

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
  hs_bindgen_78c449caa3d9ff6e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_num_bits@
foreign import ccall safe "hs_bindgen_acc983e4d4cec91b" hs_bindgen_acc983e4d4cec91b ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:954:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bits@
  -> IO FC.CInt
botan_mp_num_bits = hs_bindgen_acc983e4d4cec91b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_num_bytes@
foreign import ccall safe "hs_bindgen_8697eb4c524ef942" hs_bindgen_8697eb4c524ef942 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:959:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_mp_num_bytes = hs_bindgen_8697eb4c524ef942

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_to_bin@
foreign import ccall safe "hs_bindgen_128cbb6e9a9149b3" hs_bindgen_128cbb6e9a9149b3 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:964:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> IO FC.CInt
botan_mp_to_bin = hs_bindgen_128cbb6e9a9149b3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_from_bin@
foreign import ccall safe "hs_bindgen_1ddad785f889dc71" hs_bindgen_1ddad785f889dc71 ::
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
  hs_bindgen_1ddad785f889dc71

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:969:28@

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
                                                        hs_bindgen_1ddad785f889dc71 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_to_uint32@
foreign import ccall safe "hs_bindgen_efd476c5e178fc88" hs_bindgen_efd476c5e178fc88 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:974:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @val@
  -> IO FC.CInt
botan_mp_to_uint32 = hs_bindgen_efd476c5e178fc88

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_positive@
foreign import ccall safe "hs_bindgen_127cb48a4a36344e" hs_bindgen_127cb48a4a36344e ::
     Botan_mp_t
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:981:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_positive = hs_bindgen_127cb48a4a36344e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_negative@
foreign import ccall safe "hs_bindgen_7df74a7659868470" hs_bindgen_7df74a7659868470 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:986:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_negative = hs_bindgen_7df74a7659868470

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_flip_sign@
foreign import ccall safe "hs_bindgen_b6d0dee6188cd754" hs_bindgen_b6d0dee6188cd754 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:988:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_flip_sign = hs_bindgen_b6d0dee6188cd754

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_zero@
foreign import ccall safe "hs_bindgen_b53ba4ca6f90de17" hs_bindgen_b53ba4ca6f90de17 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:990:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_zero = hs_bindgen_b53ba4ca6f90de17

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_odd@
foreign import ccall safe "hs_bindgen_d2cf7ccd51008bc5" hs_bindgen_d2cf7ccd51008bc5 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:992:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_odd = hs_bindgen_d2cf7ccd51008bc5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_even@
foreign import ccall safe "hs_bindgen_70aa96add00fd34c" hs_bindgen_70aa96add00fd34c ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:993:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_even = hs_bindgen_70aa96add00fd34c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_add_u32@
foreign import ccall safe "hs_bindgen_5e8e300b3f717a75" hs_bindgen_5e8e300b3f717a75 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:995:28@

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
botan_mp_add_u32 = hs_bindgen_5e8e300b3f717a75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_sub_u32@
foreign import ccall safe "hs_bindgen_4b0908d0ab78abe7" hs_bindgen_4b0908d0ab78abe7 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:996:28@

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
botan_mp_sub_u32 = hs_bindgen_4b0908d0ab78abe7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_add@
foreign import ccall safe "hs_bindgen_436cfdfab5889533" hs_bindgen_436cfdfab5889533 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:998:28@

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
botan_mp_add = hs_bindgen_436cfdfab5889533

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_sub@
foreign import ccall safe "hs_bindgen_cc6f0ddc9782d2b6" hs_bindgen_cc6f0ddc9782d2b6 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:999:28@

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
botan_mp_sub = hs_bindgen_cc6f0ddc9782d2b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_mul@
foreign import ccall safe "hs_bindgen_bf73ed1dfc858aa3" hs_bindgen_bf73ed1dfc858aa3 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1000:28@

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
botan_mp_mul = hs_bindgen_bf73ed1dfc858aa3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_div@
foreign import ccall safe "hs_bindgen_505b00ce38f67127" hs_bindgen_505b00ce38f67127 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1003:5@

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
botan_mp_div = hs_bindgen_505b00ce38f67127

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_mod_mul@
foreign import ccall safe "hs_bindgen_f67def42cd3b2258" hs_bindgen_f67def42cd3b2258 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1006:5@

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
botan_mp_mod_mul = hs_bindgen_f67def42cd3b2258

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_equal@
foreign import ccall safe "hs_bindgen_962a07229229f55b" hs_bindgen_962a07229229f55b ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1013:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_equal = hs_bindgen_962a07229229f55b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_cmp@
foreign import ccall safe "hs_bindgen_0d0377e9cbdf9a1d" hs_bindgen_0d0377e9cbdf9a1d ::
     Ptr.Ptr FC.CInt
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1020:28@

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
botan_mp_cmp = hs_bindgen_0d0377e9cbdf9a1d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_swap@
foreign import ccall safe "hs_bindgen_7484c6c88e4ff914" hs_bindgen_7484c6c88e4ff914 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1025:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_swap = hs_bindgen_7484c6c88e4ff914

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_powmod@
foreign import ccall safe "hs_bindgen_71d9cd5cb05e8015" hs_bindgen_71d9cd5cb05e8015 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1029:5@

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
botan_mp_powmod = hs_bindgen_71d9cd5cb05e8015

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_lshift@
foreign import ccall safe "hs_bindgen_229eac08648092d4" hs_bindgen_229eac08648092d4 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1031:28@

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
botan_mp_lshift = hs_bindgen_229eac08648092d4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_rshift@
foreign import ccall safe "hs_bindgen_b44da70630bfe290" hs_bindgen_b44da70630bfe290 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1032:28@

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
botan_mp_rshift = hs_bindgen_b44da70630bfe290

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_mod_inverse@
foreign import ccall safe "hs_bindgen_3dcd3e23ffee87d0" hs_bindgen_3dcd3e23ffee87d0 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1034:28@

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
botan_mp_mod_inverse = hs_bindgen_3dcd3e23ffee87d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_rand_bits@
foreign import ccall safe "hs_bindgen_e3b038e3b8cc4177" hs_bindgen_e3b038e3b8cc4177 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1036:28@

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
botan_mp_rand_bits = hs_bindgen_e3b038e3b8cc4177

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_rand_range@
foreign import ccall safe "hs_bindgen_e880dbf219104647" hs_bindgen_e880dbf219104647 ::
     Botan_mp_t
  -> Botan_rng_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1039:5@

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
botan_mp_rand_range = hs_bindgen_e880dbf219104647

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_gcd@
foreign import ccall safe "hs_bindgen_9e666acc6f97b403" hs_bindgen_9e666acc6f97b403 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1041:28@

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
botan_mp_gcd = hs_bindgen_9e666acc6f97b403

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_is_prime@
foreign import ccall safe "hs_bindgen_2e431d780a058197" hs_bindgen_2e431d780a058197 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1048:28@

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
botan_mp_is_prime = hs_bindgen_2e431d780a058197

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_get_bit@
foreign import ccall safe "hs_bindgen_5a4ddae9cb792e36" hs_bindgen_5a4ddae9cb792e36 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1055:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_get_bit = hs_bindgen_5a4ddae9cb792e36

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_set_bit@
foreign import ccall safe "hs_bindgen_238b1787b0df861c" hs_bindgen_238b1787b0df861c ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1060:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_set_bit = hs_bindgen_238b1787b0df861c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mp_clear_bit@
foreign import ccall safe "hs_bindgen_43a32fcd856acf63" hs_bindgen_43a32fcd856acf63 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1065:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_clear_bit = hs_bindgen_43a32fcd856acf63

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_bcrypt_generate@
foreign import ccall safe "hs_bindgen_3c87ff49982c7833" hs_bindgen_3c87ff49982c7833 ::
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

__defined at:__ @botan\/ffi.h:1083:5@

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
botan_bcrypt_generate = hs_bindgen_3c87ff49982c7833

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_bcrypt_is_valid@
foreign import ccall safe "hs_bindgen_1911ce4a0ae0333c" hs_bindgen_1911ce4a0ae0333c ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1094:28@

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
botan_bcrypt_is_valid = hs_bindgen_1911ce4a0ae0333c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create@
foreign import ccall safe "hs_bindgen_05e4ff7cb37ef711" hs_bindgen_05e4ff7cb37ef711 ::
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

__defined at:__ @botan\/ffi.h:1110:5@

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
botan_privkey_create = hs_bindgen_05e4ff7cb37ef711

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_check_key@
foreign import ccall safe "hs_bindgen_1a12769bda651111" hs_bindgen_1a12769bda651111 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1114:28@

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
botan_privkey_check_key = hs_bindgen_1a12769bda651111

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_rsa@
foreign import ccall safe "hs_bindgen_b7b454ee45776c6e" hs_bindgen_b7b454ee45776c6e ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1117:28@

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
  hs_bindgen_b7b454ee45776c6e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_ecdsa@
foreign import ccall safe "hs_bindgen_f802fa3f4cb76172" hs_bindgen_f802fa3f4cb76172 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1119:28@

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
  hs_bindgen_f802fa3f4cb76172

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_ecdh@
foreign import ccall safe "hs_bindgen_157e0c2d35dc1657" hs_bindgen_157e0c2d35dc1657 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1121:28@

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
  hs_bindgen_157e0c2d35dc1657

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_mceliece@
foreign import ccall safe "hs_bindgen_5726791b3ccff053" hs_bindgen_5726791b3ccff053 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1123:28@

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
  hs_bindgen_5726791b3ccff053

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_dh@
foreign import ccall safe "hs_bindgen_1304c3e62c4975f8" hs_bindgen_1304c3e62c4975f8 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1125:28@

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
botan_privkey_create_dh = hs_bindgen_1304c3e62c4975f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_dsa@
foreign import ccall safe "hs_bindgen_5ce40f5406f3fa7c" hs_bindgen_5ce40f5406f3fa7c ::
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

__defined at:__ @botan\/ffi.h:1145:28@

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
  hs_bindgen_5ce40f5406f3fa7c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_create_elgamal@
foreign import ccall safe "hs_bindgen_582709725a1a03ed" hs_bindgen_582709725a1a03ed ::
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

__defined at:__ @botan\/ffi.h:1167:5@

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
  hs_bindgen_582709725a1a03ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load@
foreign import ccall safe "hs_bindgen_e1fda4044fe3f335" hs_bindgen_e1fda4044fe3f335 ::
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
  hs_bindgen_e1fda4044fe3f335

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1175:5@

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
                                                            hs_bindgen_e1fda4044fe3f335 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_destroy@
foreign import ccall safe "hs_bindgen_120ad4f4a9ce20af" hs_bindgen_120ad4f4a9ce20af ::
     Botan_privkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1180:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_destroy = hs_bindgen_120ad4f4a9ce20af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_export@
foreign import ccall safe "hs_bindgen_acc81ab4a5a7c752" hs_bindgen_acc81ab4a5a7c752 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1193:28@

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
botan_privkey_export = hs_bindgen_acc81ab4a5a7c752

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_der@
foreign import ccall safe "hs_bindgen_eef7a431285ee9e3" hs_bindgen_eef7a431285ee9e3 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1198:28@

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
botan_privkey_view_der = hs_bindgen_eef7a431285ee9e3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_pem@
foreign import ccall safe "hs_bindgen_24d36e3df0cd59b5" hs_bindgen_24d36e3df0cd59b5 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1203:28@

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
botan_privkey_view_pem = hs_bindgen_24d36e3df0cd59b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_raw@
foreign import ccall safe "hs_bindgen_63b1269d7cd1f2e7" hs_bindgen_63b1269d7cd1f2e7 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1208:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_view_raw ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_privkey_view_raw = hs_bindgen_63b1269d7cd1f2e7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_algo_name@
foreign import ccall safe "hs_bindgen_74d455e5a34c3aef" hs_bindgen_74d455e5a34c3aef ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1210:28@

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
botan_privkey_algo_name = hs_bindgen_74d455e5a34c3aef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_export_encrypted@
foreign import ccall safe "hs_bindgen_91ff0feacfe9a6bc" hs_bindgen_91ff0feacfe9a6bc ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1217:5@

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
  hs_bindgen_91ff0feacfe9a6bc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall safe "hs_bindgen_0d7d269bc906837c" hs_bindgen_0d7d269bc906837c ::
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

    __defined at:__ @botan\/ffi.h:1232:5@

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
  hs_bindgen_0d7d269bc906837c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall safe "hs_bindgen_a7c4313988200503" hs_bindgen_a7c4313988200503 ::
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

__defined at:__ @botan\/ffi.h:1247:5@

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
  hs_bindgen_a7c4313988200503

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_encrypted_der@
foreign import ccall safe "hs_bindgen_3184fae2b4d0f1de" hs_bindgen_3184fae2b4d0f1de ::
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

__defined at:__ @botan\/ffi.h:1264:5@

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
  hs_bindgen_3184fae2b4d0f1de

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_encrypted_der_timed@
foreign import ccall safe "hs_bindgen_b8d8f351e840b322" hs_bindgen_b8d8f351e840b322 ::
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

__defined at:__ @botan\/ffi.h:1279:5@

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
  hs_bindgen_b8d8f351e840b322

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_encrypted_pem@
foreign import ccall safe "hs_bindgen_a3b7ba1743b44726" hs_bindgen_a3b7ba1743b44726 ::
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

__defined at:__ @botan\/ffi.h:1295:5@

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
  hs_bindgen_a3b7ba1743b44726

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_encrypted_pem_timed@
foreign import ccall safe "hs_bindgen_53b02f43cf0a9356" hs_bindgen_53b02f43cf0a9356 ::
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

__defined at:__ @botan\/ffi.h:1310:5@

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
  hs_bindgen_53b02f43cf0a9356

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load@
foreign import ccall safe "hs_bindgen_97c76291a8c3f958" hs_bindgen_97c76291a8c3f958 ::
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
  hs_bindgen_97c76291a8c3f958

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1321:28@

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
                                                        hs_bindgen_97c76291a8c3f958 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_export_pubkey@
foreign import ccall safe "hs_bindgen_b15af75dbba51762" hs_bindgen_b15af75dbba51762 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1323:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @out@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @in'@
  -> IO FC.CInt
botan_privkey_export_pubkey =
  hs_bindgen_b15af75dbba51762

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_export@
foreign import ccall safe "hs_bindgen_b596781abbf92f4d" hs_bindgen_b596781abbf92f4d ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1325:28@

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
botan_pubkey_export = hs_bindgen_b596781abbf92f4d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_view_der@
foreign import ccall safe "hs_bindgen_69b50e7504d6ff7b" hs_bindgen_69b50e7504d6ff7b ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1330:28@

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
botan_pubkey_view_der = hs_bindgen_69b50e7504d6ff7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_view_pem@
foreign import ccall safe "hs_bindgen_4c0fe976249cb502" hs_bindgen_4c0fe976249cb502 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1335:28@

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
botan_pubkey_view_pem = hs_bindgen_4c0fe976249cb502

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_view_raw@
foreign import ccall safe "hs_bindgen_7613484e2191f873" hs_bindgen_7613484e2191f873 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1340:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_view_raw ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_pubkey_view_raw = hs_bindgen_7613484e2191f873

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_algo_name@
foreign import ccall safe "hs_bindgen_a70e3a884b05512e" hs_bindgen_a70e3a884b05512e ::
     Botan_pubkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1342:28@

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
botan_pubkey_algo_name = hs_bindgen_a70e3a884b05512e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_check_key@
foreign import ccall safe "hs_bindgen_9dbdaa663f4a7152" hs_bindgen_9dbdaa663f4a7152 ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1347:28@

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
botan_pubkey_check_key = hs_bindgen_9dbdaa663f4a7152

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_estimated_strength@
foreign import ccall safe "hs_bindgen_c5a3d71ca9959fc0" hs_bindgen_c5a3d71ca9959fc0 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1349:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @estimate@
  -> IO FC.CInt
botan_pubkey_estimated_strength =
  hs_bindgen_c5a3d71ca9959fc0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_fingerprint@
foreign import ccall safe "hs_bindgen_3a3b46466ce64c90" hs_bindgen_3a3b46466ce64c90 ::
     Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1352:5@

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
  hs_bindgen_3a3b46466ce64c90

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_destroy@
foreign import ccall safe "hs_bindgen_c993f9b56f311218" hs_bindgen_c993f9b56f311218 ::
     Botan_pubkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1357:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_destroy = hs_bindgen_c993f9b56f311218

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_get_field@
foreign import ccall safe "hs_bindgen_43c62db1fb5cd541" hs_bindgen_43c62db1fb5cd541 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1362:28@

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
botan_pubkey_get_field = hs_bindgen_43c62db1fb5cd541

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_get_field@
foreign import ccall safe "hs_bindgen_c0a7a601a21ddf43" hs_bindgen_c0a7a601a21ddf43 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1364:28@

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
botan_privkey_get_field = hs_bindgen_c0a7a601a21ddf43

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_rsa@
foreign import ccall safe "hs_bindgen_2502c587f69b367e" hs_bindgen_2502c587f69b367e ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1369:28@

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
botan_privkey_load_rsa = hs_bindgen_2502c587f69b367e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_rsa_pkcs1@
foreign import ccall safe "hs_bindgen_b8b8a83e886a430c" hs_bindgen_b8b8a83e886a430c ::
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
  hs_bindgen_b8b8a83e886a430c

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1371:28@

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
                                                        hs_bindgen_b8b8a83e886a430c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_p@
foreign import ccall safe "hs_bindgen_a7c79e05b5c6365f" hs_bindgen_a7c79e05b5c6365f ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1374:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_p = hs_bindgen_a7c79e05b5c6365f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_q@
foreign import ccall safe "hs_bindgen_18533fec4804c312" hs_bindgen_18533fec4804c312 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1376:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_q = hs_bindgen_18533fec4804c312

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_d@
foreign import ccall safe "hs_bindgen_0d6dd28fb3701bb9" hs_bindgen_0d6dd28fb3701bb9 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1378:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_d = hs_bindgen_0d6dd28fb3701bb9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_39b32d8af2824263" hs_bindgen_39b32d8af2824263 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1380:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_n = hs_bindgen_39b32d8af2824263

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_bc0d4e3eba606852" hs_bindgen_bc0d4e3eba606852 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1382:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_e = hs_bindgen_bc0d4e3eba606852

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_rsa_get_privkey@
foreign import ccall safe "hs_bindgen_9c6d2149ddf2d7be" hs_bindgen_9c6d2149ddf2d7be ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1385:5@

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
  hs_bindgen_9c6d2149ddf2d7be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_rsa@
foreign import ccall safe "hs_bindgen_acff19655764679d" hs_bindgen_acff19655764679d ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1387:28@

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
botan_pubkey_load_rsa = hs_bindgen_acff19655764679d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_7a86e175eccc717d" hs_bindgen_7a86e175eccc717d ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1390:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_e = hs_bindgen_7a86e175eccc717d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_5824f75536f131e2" hs_bindgen_5824f75536f131e2 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1392:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_n = hs_bindgen_5824f75536f131e2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_dsa@
foreign import ccall safe "hs_bindgen_cd8dc8a8740913c3" hs_bindgen_cd8dc8a8740913c3 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1398:5@

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
botan_privkey_load_dsa = hs_bindgen_cd8dc8a8740913c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_dsa@
foreign import ccall safe "hs_bindgen_960ec17caa30b035" hs_bindgen_960ec17caa30b035 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1401:5@

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
botan_pubkey_load_dsa = hs_bindgen_960ec17caa30b035

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_dsa_get_x@
foreign import ccall safe "hs_bindgen_22e373995f3d06fa" hs_bindgen_22e373995f3d06fa ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1404:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_dsa_get_x = hs_bindgen_22e373995f3d06fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_dsa_get_p@
foreign import ccall safe "hs_bindgen_c222e3654f1fdbce" hs_bindgen_c222e3654f1fdbce ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1407:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_p = hs_bindgen_c222e3654f1fdbce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_dsa_get_q@
foreign import ccall safe "hs_bindgen_aa1f747ff634d145" hs_bindgen_aa1f747ff634d145 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1409:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_q = hs_bindgen_aa1f747ff634d145

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_dsa_get_g@
foreign import ccall safe "hs_bindgen_271c2bdcdc75096d" hs_bindgen_271c2bdcdc75096d ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1411:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_g = hs_bindgen_271c2bdcdc75096d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_dsa_get_y@
foreign import ccall safe "hs_bindgen_3bc6d34d0e35b2ac" hs_bindgen_3bc6d34d0e35b2ac ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1413:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y ::
     Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_y = hs_bindgen_3bc6d34d0e35b2ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_dh@
foreign import ccall safe "hs_bindgen_04ca32c5ac0e99ca" hs_bindgen_04ca32c5ac0e99ca ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1428:28@

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
botan_privkey_load_dh = hs_bindgen_04ca32c5ac0e99ca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_dh@
foreign import ccall safe "hs_bindgen_715a1082886a655f" hs_bindgen_715a1082886a655f ::
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

__defined at:__ @botan\/ffi.h:1442:28@

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
botan_pubkey_load_dh = hs_bindgen_715a1082886a655f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_elgamal@
foreign import ccall safe "hs_bindgen_4a9a5a3e67847a41" hs_bindgen_4a9a5a3e67847a41 ::
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

__defined at:__ @botan\/ffi.h:1460:28@

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
  hs_bindgen_4a9a5a3e67847a41

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_elgamal@
foreign import ccall safe "hs_bindgen_7be12027735d3937" hs_bindgen_7be12027735d3937 ::
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

__defined at:__ @botan\/ffi.h:1475:28@

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
  hs_bindgen_7be12027735d3937

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ed25519@
foreign import ccall safe "hs_bindgen_2e1ad84df60a1bc7" hs_bindgen_2e1ad84df60a1bc7 ::
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
  hs_bindgen_2e1ad84df60a1bc7

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1481:28@

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
                                                    hs_bindgen_2e1ad84df60a1bc7 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ed25519@
foreign import ccall safe "hs_bindgen_a3953a03da13150f" hs_bindgen_a3953a03da13150f ::
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
  hs_bindgen_a3953a03da13150f

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1483:28@

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
                                                    hs_bindgen_a3953a03da13150f x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_ed25519_get_privkey@
foreign import ccall safe "hs_bindgen_40a4a99fb4e5ec98" hs_bindgen_40a4a99fb4e5ec98 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1485:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed25519_get_privkey =
  hs_bindgen_40a4a99fb4e5ec98

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_ed25519_get_pubkey@
foreign import ccall safe "hs_bindgen_0610e73b57a4fbb8" hs_bindgen_0610e73b57a4fbb8 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1487:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed25519_get_pubkey =
  hs_bindgen_0610e73b57a4fbb8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ed448@
foreign import ccall safe "hs_bindgen_e88331d24c7f895b" hs_bindgen_e88331d24c7f895b ::
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
  hs_bindgen_e88331d24c7f895b

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1493:28@

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
                                                    hs_bindgen_e88331d24c7f895b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ed448@
foreign import ccall safe "hs_bindgen_9509ac77acab5896" hs_bindgen_9509ac77acab5896 ::
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
  hs_bindgen_9509ac77acab5896

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1495:28@

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
                                                    hs_bindgen_9509ac77acab5896 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_ed448_get_privkey@
foreign import ccall safe "hs_bindgen_e82a3425090f0049" hs_bindgen_e82a3425090f0049 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1497:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed448_get_privkey =
  hs_bindgen_e82a3425090f0049

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_ed448_get_pubkey@
foreign import ccall safe "hs_bindgen_f6cf403c05296d2a" hs_bindgen_f6cf403c05296d2a ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1499:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed448_get_pubkey =
  hs_bindgen_f6cf403c05296d2a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_x25519@
foreign import ccall safe "hs_bindgen_d26e158bdf3f34c2" hs_bindgen_d26e158bdf3f34c2 ::
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
  hs_bindgen_d26e158bdf3f34c2

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1505:28@

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
                                                    hs_bindgen_d26e158bdf3f34c2 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_x25519@
foreign import ccall safe "hs_bindgen_df5a6c873efff083" hs_bindgen_df5a6c873efff083 ::
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
  hs_bindgen_df5a6c873efff083

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1507:28@

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
                                                    hs_bindgen_df5a6c873efff083 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_x25519_get_privkey@
foreign import ccall safe "hs_bindgen_52c594fc036aa32e" hs_bindgen_52c594fc036aa32e ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1509:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x25519_get_privkey =
  hs_bindgen_52c594fc036aa32e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_x25519_get_pubkey@
foreign import ccall safe "hs_bindgen_e16cb303dad8df87" hs_bindgen_e16cb303dad8df87 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1511:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x25519_get_pubkey =
  hs_bindgen_e16cb303dad8df87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_x448@
foreign import ccall safe "hs_bindgen_6241595faeaf2747" hs_bindgen_6241595faeaf2747 ::
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
  hs_bindgen_6241595faeaf2747

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1517:28@

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
                                                    hs_bindgen_6241595faeaf2747 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_x448@
foreign import ccall safe "hs_bindgen_954b3de30fd49a22" hs_bindgen_954b3de30fd49a22 ::
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
  hs_bindgen_954b3de30fd49a22

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1519:28@

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
                                                    hs_bindgen_954b3de30fd49a22 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_x448_get_privkey@
foreign import ccall safe "hs_bindgen_05ff989aaa69070b" hs_bindgen_05ff989aaa69070b ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1521:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x448_get_privkey =
  hs_bindgen_05ff989aaa69070b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_x448_get_pubkey@
foreign import ccall safe "hs_bindgen_f21e5fcc0128f5cf" hs_bindgen_f21e5fcc0128f5cf ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1523:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x448_get_pubkey =
  hs_bindgen_f21e5fcc0128f5cf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ml_dsa@
foreign import ccall safe "hs_bindgen_be0a67aaa5c39f34" hs_bindgen_be0a67aaa5c39f34 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_ml_dsa'
-}
botan_privkey_load_ml_dsa_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mldsa_mode@
  -> IO FC.CInt
botan_privkey_load_ml_dsa_wrapper =
  hs_bindgen_be0a67aaa5c39f34

{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1530:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_dsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mldsa_mode@
  -> IO FC.CInt
botan_privkey_load_ml_dsa =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_be0a67aaa5c39f34 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ml_dsa@
foreign import ccall safe "hs_bindgen_41daf14a14399aa9" hs_bindgen_41daf14a14399aa9 ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_ml_dsa'
-}
botan_pubkey_load_ml_dsa_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mldsa_mode@
  -> IO FC.CInt
botan_pubkey_load_ml_dsa_wrapper =
  hs_bindgen_41daf14a14399aa9

{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1533:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_dsa ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mldsa_mode@
  -> IO FC.CInt
botan_pubkey_load_ml_dsa =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_41daf14a14399aa9 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_kyber@
foreign import ccall safe "hs_bindgen_de517ae985e79f4a" hs_bindgen_de517ae985e79f4a ::
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
  hs_bindgen_de517ae985e79f4a

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1539:28@

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
                                                        hs_bindgen_de517ae985e79f4a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_kyber@
foreign import ccall safe "hs_bindgen_c1ba2709640de18b" hs_bindgen_c1ba2709640de18b ::
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
  hs_bindgen_c1ba2709640de18b

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1541:28@

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
                                                        hs_bindgen_c1ba2709640de18b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_view_kyber_raw_key@
foreign import ccall safe "hs_bindgen_76299c15f0811aee" hs_bindgen_76299c15f0811aee ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1545:5@

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
  hs_bindgen_76299c15f0811aee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_view_kyber_raw_key@
foreign import ccall safe "hs_bindgen_7df57e88232fb967" hs_bindgen_7df57e88232fb967 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1549:5@

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
  hs_bindgen_7df57e88232fb967

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_frodokem@
foreign import ccall safe "hs_bindgen_e80222938455d70c" hs_bindgen_e80222938455d70c ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_frodokem'
-}
botan_privkey_load_frodokem_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @frodo_mode@
  -> IO FC.CInt
botan_privkey_load_frodokem_wrapper =
  hs_bindgen_e80222938455d70c

{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1556:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_frodokem ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @frodo_mode@
  -> IO FC.CInt
botan_privkey_load_frodokem =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_e80222938455d70c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_frodokem@
foreign import ccall safe "hs_bindgen_1ae1b3542987cf7c" hs_bindgen_1ae1b3542987cf7c ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_frodokem'
-}
botan_pubkey_load_frodokem_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @frodo_mode@
  -> IO FC.CInt
botan_pubkey_load_frodokem_wrapper =
  hs_bindgen_1ae1b3542987cf7c

{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1559:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_frodokem ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @frodo_mode@
  -> IO FC.CInt
botan_pubkey_load_frodokem =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_1ae1b3542987cf7c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_classic_mceliece@
foreign import ccall safe "hs_bindgen_ceabbcaef3741865" hs_bindgen_ceabbcaef3741865 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_classic_mceliece'
-}
botan_privkey_load_classic_mceliece_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cmce_mode@
  -> IO FC.CInt
botan_privkey_load_classic_mceliece_wrapper =
  hs_bindgen_ceabbcaef3741865

{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1566:5@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_classic_mceliece ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cmce_mode@
  -> IO FC.CInt
botan_privkey_load_classic_mceliece =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_ceabbcaef3741865 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_classic_mceliece@
foreign import ccall safe "hs_bindgen_5fa0aed4ec0ca89e" hs_bindgen_5fa0aed4ec0ca89e ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_classic_mceliece'
-}
botan_pubkey_load_classic_mceliece_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cmce_mode@
  -> IO FC.CInt
botan_pubkey_load_classic_mceliece_wrapper =
  hs_bindgen_5fa0aed4ec0ca89e

{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1572:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_classic_mceliece ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cmce_mode@
  -> IO FC.CInt
botan_pubkey_load_classic_mceliece =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_5fa0aed4ec0ca89e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ml_kem@
foreign import ccall safe "hs_bindgen_49be646141df308d" hs_bindgen_49be646141df308d ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_ml_kem'
-}
botan_privkey_load_ml_kem_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mlkem_mode@
  -> IO FC.CInt
botan_privkey_load_ml_kem_wrapper =
  hs_bindgen_49be646141df308d

{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1582:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ml_kem ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mlkem_mode@
  -> IO FC.CInt
botan_privkey_load_ml_kem =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_49be646141df308d x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ml_kem@
foreign import ccall safe "hs_bindgen_6a9c17edf429aa9c" hs_bindgen_6a9c17edf429aa9c ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_ml_kem'
-}
botan_pubkey_load_ml_kem_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mlkem_mode@
  -> IO FC.CInt
botan_pubkey_load_ml_kem_wrapper =
  hs_bindgen_6a9c17edf429aa9c

{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1585:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ml_kem ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @mlkem_mode@
  -> IO FC.CInt
botan_pubkey_load_ml_kem =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_6a9c17edf429aa9c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_slh_dsa@
foreign import ccall safe "hs_bindgen_6a0d9b5774878918" hs_bindgen_6a0d9b5774878918 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_slh_dsa'
-}
botan_privkey_load_slh_dsa_wrapper ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @slhdsa_mode@
  -> IO FC.CInt
botan_privkey_load_slh_dsa_wrapper =
  hs_bindgen_6a0d9b5774878918

{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1592:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_slh_dsa ::
     Ptr.Ptr Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @privkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @slhdsa_mode@
  -> IO FC.CInt
botan_privkey_load_slh_dsa =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_6a0d9b5774878918 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_slh_dsa@
foreign import ccall safe "hs_bindgen_41898dcba3e5f08f" hs_bindgen_41898dcba3e5f08f ::
     Ptr.Ptr Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load_slh_dsa'
-}
botan_pubkey_load_slh_dsa_wrapper ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @slhdsa_mode@
  -> IO FC.CInt
botan_pubkey_load_slh_dsa_wrapper =
  hs_bindgen_41898dcba3e5f08f

{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1595:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_slh_dsa ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @key_len@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @slhdsa_mode@
  -> IO FC.CInt
botan_pubkey_load_slh_dsa =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          hs_bindgen_41898dcba3e5f08f x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall safe "hs_bindgen_89b501c6b9560adc" hs_bindgen_89b501c6b9560adc ::
     Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1601:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_ecc_key_used_explicit_encoding =
  hs_bindgen_89b501c6b9560adc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_7b23769bd0ce3449" hs_bindgen_7b23769bd0ce3449 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1604:5@

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
  hs_bindgen_7b23769bd0ce3449

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_1d3a09b173133f38" hs_bindgen_1d3a09b173133f38 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1607:5@

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
botan_pubkey_load_ecdsa = hs_bindgen_1d3a09b173133f38

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_ecdh@
foreign import ccall safe "hs_bindgen_4638fc0df850754b" hs_bindgen_4638fc0df850754b ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1610:5@

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
botan_pubkey_load_ecdh = hs_bindgen_4638fc0df850754b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_ecdh@
foreign import ccall safe "hs_bindgen_4eb8dd823dbbbed8" hs_bindgen_4eb8dd823dbbbed8 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1613:5@

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
botan_privkey_load_ecdh = hs_bindgen_4eb8dd823dbbbed8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_sm2@
foreign import ccall safe "hs_bindgen_abe6f2dcdf5478f4" hs_bindgen_abe6f2dcdf5478f4 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1616:5@

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
botan_pubkey_load_sm2 = hs_bindgen_abe6f2dcdf5478f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_sm2@
foreign import ccall safe "hs_bindgen_1b46ffce5be18919" hs_bindgen_1b46ffce5be18919 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1619:5@

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
botan_privkey_load_sm2 = hs_bindgen_1b46ffce5be18919

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_fefca68e25907f6b" hs_bindgen_fefca68e25907f6b ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1623:5@

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
  hs_bindgen_fefca68e25907f6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_privkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_a2a8826650758587" hs_bindgen_a2a8826650758587 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1627:5@

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
  hs_bindgen_a2a8826650758587

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_sm2_compute_za@
foreign import ccall safe "hs_bindgen_10e491167b643cf2" hs_bindgen_10e491167b643cf2 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1630:5@

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
  hs_bindgen_10e491167b643cf2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pubkey_view_ec_public_point@
foreign import ccall safe "hs_bindgen_746960d0b7167e09" hs_bindgen_746960d0b7167e09 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1637:5@

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
  hs_bindgen_746960d0b7167e09

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_encrypt_create@
foreign import ccall safe "hs_bindgen_aefc1a9d25e74dae" hs_bindgen_aefc1a9d25e74dae ::
     Ptr.Ptr Botan_pk_op_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1645:5@

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
  hs_bindgen_aefc1a9d25e74dae

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_encrypt_destroy@
foreign import ccall safe "hs_bindgen_f8830c59bd10b720" hs_bindgen_f8830c59bd10b720 ::
     Botan_pk_op_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1650:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_encrypt_destroy =
  hs_bindgen_f8830c59bd10b720

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_encrypt_output_length@
foreign import ccall safe "hs_bindgen_e2a6a362b36f4297" hs_bindgen_e2a6a362b36f4297 ::
     Botan_pk_op_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1653:5@

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
  hs_bindgen_e2a6a362b36f4297

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_encrypt@
foreign import ccall safe "hs_bindgen_dfe8c45b1638f15e" hs_bindgen_dfe8c45b1638f15e ::
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
  hs_bindgen_dfe8c45b1638f15e

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1656:5@

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
                                                              hs_bindgen_dfe8c45b1638f15e x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_decrypt_create@
foreign import ccall safe "hs_bindgen_b5901523abf595e2" hs_bindgen_b5901523abf595e2 ::
     Ptr.Ptr Botan_pk_op_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1669:5@

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
  hs_bindgen_b5901523abf595e2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_decrypt_destroy@
foreign import ccall safe "hs_bindgen_c1790928dde3508e" hs_bindgen_c1790928dde3508e ::
     Botan_pk_op_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1674:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_decrypt_destroy =
  hs_bindgen_c1790928dde3508e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_decrypt_output_length@
foreign import ccall safe "hs_bindgen_b75c82aa932d6bcb" hs_bindgen_b75c82aa932d6bcb ::
     Botan_pk_op_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1677:5@

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
  hs_bindgen_b75c82aa932d6bcb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_decrypt@
foreign import ccall safe "hs_bindgen_65209b08ef582bd5" hs_bindgen_65209b08ef582bd5 ::
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
  hs_bindgen_65209b08ef582bd5

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1680:5@

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
                                                            hs_bindgen_65209b08ef582bd5 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_sign_create@
foreign import ccall safe "hs_bindgen_59ec7cd231e372f0" hs_bindgen_59ec7cd231e372f0 ::
     Ptr.Ptr Botan_pk_op_sign_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1692:5@

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
botan_pk_op_sign_create = hs_bindgen_59ec7cd231e372f0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_sign_destroy@
foreign import ccall safe "hs_bindgen_1c1ffb5d29d8407c" hs_bindgen_1c1ffb5d29d8407c ::
     Botan_pk_op_sign_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1697:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_sign_destroy =
  hs_bindgen_1c1ffb5d29d8407c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_sign_output_length@
foreign import ccall safe "hs_bindgen_4b9f89bd4e5f6d0f" hs_bindgen_4b9f89bd4e5f6d0f ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1699:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @olen@
  -> IO FC.CInt
botan_pk_op_sign_output_length =
  hs_bindgen_4b9f89bd4e5f6d0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_sign_update@
foreign import ccall safe "hs_bindgen_36c8396febe8e0b1" hs_bindgen_36c8396febe8e0b1 ::
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
  hs_bindgen_36c8396febe8e0b1

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1701:28@

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
                                                        hs_bindgen_36c8396febe8e0b1 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_sign_finish@
foreign import ccall safe "hs_bindgen_c822081dfe5108e6" hs_bindgen_c822081dfe5108e6 ::
     Botan_pk_op_sign_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1704:5@

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
botan_pk_op_sign_finish = hs_bindgen_c822081dfe5108e6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_verify_create@
foreign import ccall safe "hs_bindgen_cc5c78a984c87577" hs_bindgen_cc5c78a984c87577 ::
     Ptr.Ptr Botan_pk_op_verify_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1712:5@

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
  hs_bindgen_cc5c78a984c87577

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_verify_destroy@
foreign import ccall safe "hs_bindgen_066f5134cd6e784c" hs_bindgen_066f5134cd6e784c ::
     Botan_pk_op_verify_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1720:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_verify_destroy =
  hs_bindgen_066f5134cd6e784c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_verify_update@
foreign import ccall safe "hs_bindgen_9f02a7efc8c2b452" hs_bindgen_9f02a7efc8c2b452 ::
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
  hs_bindgen_9f02a7efc8c2b452

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1722:28@

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
                                                        hs_bindgen_9f02a7efc8c2b452 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_verify_finish@
foreign import ccall safe "hs_bindgen_37313ed491ad48b7" hs_bindgen_37313ed491ad48b7 ::
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
  hs_bindgen_37313ed491ad48b7

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1723:28@

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
                                                        hs_bindgen_37313ed491ad48b7 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement_create@
foreign import ccall safe "hs_bindgen_3f1462c7834dd24b" hs_bindgen_3f1462c7834dd24b ::
     Ptr.Ptr Botan_pk_op_ka_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1731:5@

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
  hs_bindgen_3f1462c7834dd24b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement_destroy@
foreign import ccall safe "hs_bindgen_378f9e0d6566446f" hs_bindgen_378f9e0d6566446f ::
     Botan_pk_op_ka_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1736:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_key_agreement_destroy =
  hs_bindgen_378f9e0d6566446f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement_export_public@
foreign import ccall safe "hs_bindgen_c677022d47794202" hs_bindgen_c677022d47794202 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1738:28@

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
  hs_bindgen_c677022d47794202

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement_view_public@
foreign import ccall safe "hs_bindgen_cb21a0bc08a35551" hs_bindgen_cb21a0bc08a35551 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1741:5@

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
  hs_bindgen_cb21a0bc08a35551

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement_size@
foreign import ccall safe "hs_bindgen_0016e6718939fe32" hs_bindgen_0016e6718939fe32 ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1743:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_size =
  hs_bindgen_0016e6718939fe32

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_key_agreement@
foreign import ccall safe "hs_bindgen_239149a6321979d6" hs_bindgen_239149a6321979d6 ::
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
  hs_bindgen_239149a6321979d6

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1746:5@

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
                                                                                                                hs_bindgen_239149a6321979d6 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x6))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_encrypt_create@
foreign import ccall safe "hs_bindgen_3b7a0c2318b5dcc9" hs_bindgen_3b7a0c2318b5dcc9 ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1760:5@

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
  hs_bindgen_3b7a0c2318b5dcc9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_encrypt_destroy@
foreign import ccall safe "hs_bindgen_b5f30fa9d0c81258" hs_bindgen_b5f30fa9d0c81258 ::
     Botan_pk_op_kem_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1765:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_destroy =
  hs_bindgen_b5f30fa9d0c81258

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_88bb7f9b89dc8dbf" hs_bindgen_88bb7f9b89dc8dbf ::
     Botan_pk_op_kem_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1768:5@

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
  hs_bindgen_88bb7f9b89dc8dbf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall safe "hs_bindgen_e9cfef35b898e488" hs_bindgen_e9cfef35b898e488 ::
     Botan_pk_op_kem_encrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1773:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_encapsulated_key_length@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_encapsulated_key_length =
  hs_bindgen_e9cfef35b898e488

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall safe "hs_bindgen_eeb169b0ad6577c1" hs_bindgen_eeb169b0ad6577c1 ::
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
  hs_bindgen_eeb169b0ad6577c1

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1777:5@

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
                                                                    hs_bindgen_eeb169b0ad6577c1 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 x4 x5 x6 x7 x8)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_decrypt_create@
foreign import ccall safe "hs_bindgen_6386fbd52b82238b" hs_bindgen_6386fbd52b82238b ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1790:5@

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
  hs_bindgen_6386fbd52b82238b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_decrypt_destroy@
foreign import ccall safe "hs_bindgen_3213e0dcfa712957" hs_bindgen_3213e0dcfa712957 ::
     Botan_pk_op_kem_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1795:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_destroy =
  hs_bindgen_3213e0dcfa712957

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_b85e90d4e38402b8" hs_bindgen_b85e90d4e38402b8 ::
     Botan_pk_op_kem_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1798:5@

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
  hs_bindgen_b85e90d4e38402b8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall safe "hs_bindgen_9158b16316e3a137" hs_bindgen_9158b16316e3a137 ::
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
  hs_bindgen_9158b16316e3a137

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1803:5@

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
                                                                                                                  hs_bindgen_9158b16316e3a137 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_pkcs_hash_id@
foreign import ccall safe "hs_bindgen_e201df538704330c" hs_bindgen_e201df538704330c ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1816:28@

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
botan_pkcs_hash_id = hs_bindgen_e201df538704330c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mceies_encrypt@
foreign import ccall safe "hs_bindgen_dfde98fe30efc91d" hs_bindgen_dfde98fe30efc91d ::
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
  hs_bindgen_dfde98fe30efc91d

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1823:5@

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
                                                                                                                    hs_bindgen_dfde98fe30efc91d x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x6 x7 x8))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_mceies_decrypt@
foreign import ccall safe "hs_bindgen_d30db332b7b027c3" hs_bindgen_d30db332b7b027c3 ::
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
  hs_bindgen_d30db332b7b027c3

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1838:5@

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
                                                                                                                  hs_bindgen_d30db332b7b027c3 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_load@
foreign import ccall safe "hs_bindgen_c66bd73714eff0d2" hs_bindgen_c66bd73714eff0d2 ::
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
  hs_bindgen_c66bd73714eff0d2

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1853:28@

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
                                                        hs_bindgen_c66bd73714eff0d2 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_load_file@
foreign import ccall safe "hs_bindgen_7f10de876cd36002" hs_bindgen_7f10de876cd36002 ::
     Ptr.Ptr Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1854:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO FC.CInt
botan_x509_cert_load_file =
  hs_bindgen_7f10de876cd36002

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_destroy@
foreign import ccall safe "hs_bindgen_34ae07a4a65ee491" hs_bindgen_34ae07a4a65ee491 ::
     Botan_x509_cert_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1859:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_destroy = hs_bindgen_34ae07a4a65ee491

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_dup@
foreign import ccall safe "hs_bindgen_2a21a5ae3046cff2" hs_bindgen_2a21a5ae3046cff2 ::
     Ptr.Ptr Botan_x509_cert_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1861:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @new_cert@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_dup = hs_bindgen_2a21a5ae3046cff2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_time_starts@
foreign import ccall safe "hs_bindgen_06b10c0969a70977" hs_bindgen_06b10c0969a70977 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1864:28@

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
  hs_bindgen_06b10c0969a70977

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_time_expires@
foreign import ccall safe "hs_bindgen_3df326aa1a3c72f8" hs_bindgen_3df326aa1a3c72f8 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1865:28@

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
  hs_bindgen_3df326aa1a3c72f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_not_before@
foreign import ccall safe "hs_bindgen_53ba660069021029" hs_bindgen_53ba660069021029 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1867:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_before =
  hs_bindgen_53ba660069021029

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_not_after@
foreign import ccall safe "hs_bindgen_ad8520567b92a7d2" hs_bindgen_ad8520567b92a7d2 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1868:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_after =
  hs_bindgen_ad8520567b92a7d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_fingerprint@
foreign import ccall safe "hs_bindgen_dccdbf143fa1dbaa" hs_bindgen_dccdbf143fa1dbaa ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1871:5@

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
  hs_bindgen_dccdbf143fa1dbaa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_serial_number@
foreign import ccall safe "hs_bindgen_f7dae0d7cf2d0601" hs_bindgen_f7dae0d7cf2d0601 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1873:28@

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
  hs_bindgen_f7dae0d7cf2d0601

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_authority_key_id@
foreign import ccall safe "hs_bindgen_6f2e32ec83453aed" hs_bindgen_6f2e32ec83453aed ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1874:28@

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
  hs_bindgen_6f2e32ec83453aed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_subject_key_id@
foreign import ccall safe "hs_bindgen_2ba7c12ab997c4b0" hs_bindgen_2ba7c12ab997c4b0 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1875:28@

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
  hs_bindgen_2ba7c12ab997c4b0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_public_key_bits@
foreign import ccall safe "hs_bindgen_9becd69ff5eb4051" hs_bindgen_9becd69ff5eb4051 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1877:28@

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
  hs_bindgen_9becd69ff5eb4051

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_view_public_key_bits@
foreign import ccall safe "hs_bindgen_70e56191902735a7" hs_bindgen_70e56191902735a7 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1880:5@

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
  hs_bindgen_70e56191902735a7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_public_key@
foreign import ccall safe "hs_bindgen_27a346cfa1d5ae44" hs_bindgen_27a346cfa1d5ae44 ::
     Botan_x509_cert_t
  -> Ptr.Ptr Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1882:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_x509_cert_get_public_key =
  hs_bindgen_27a346cfa1d5ae44

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_issuer_dn@
foreign import ccall safe "hs_bindgen_730d8552002452ce" hs_bindgen_730d8552002452ce ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1885:5@

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
  hs_bindgen_730d8552002452ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_get_subject_dn@
foreign import ccall safe "hs_bindgen_f6fd58852aa7bd9b" hs_bindgen_f6fd58852aa7bd9b ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1889:5@

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
  hs_bindgen_f6fd58852aa7bd9b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_to_string@
foreign import ccall safe "hs_bindgen_dfb2112cbcf0b30e" hs_bindgen_dfb2112cbcf0b30e ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1892:28@

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
  hs_bindgen_dfb2112cbcf0b30e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_view_as_string@
foreign import ccall safe "hs_bindgen_5053dabfef914569" hs_bindgen_5053dabfef914569 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1895:5@

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
  hs_bindgen_5053dabfef914569

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_allowed_usage@
foreign import ccall safe "hs_bindgen_bd0b5779d90661f9" hs_bindgen_bd0b5779d90661f9 ::
     Botan_x509_cert_t
  -> FC.CUInt
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1911:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> FC.CUInt
     -- ^ __C declaration:__ @key_usage@
  -> IO FC.CInt
botan_x509_cert_allowed_usage =
  hs_bindgen_bd0b5779d90661f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_hostname_match@
foreign import ccall safe "hs_bindgen_a3f3145a3be8148f" hs_bindgen_a3f3145a3be8148f ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1917:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> IO FC.CInt
botan_x509_cert_hostname_match =
  hs_bindgen_a3f3145a3be8148f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_verify@
foreign import ccall safe "hs_bindgen_29f7f1a0c169bc39" hs_bindgen_29f7f1a0c169bc39 ::
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

__defined at:__ @botan\/ffi.h:1928:5@

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
botan_x509_cert_verify = hs_bindgen_29f7f1a0c169bc39

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_validation_status@
foreign import ccall safe "hs_bindgen_c3f1f3f66a792867" hs_bindgen_c3f1f3f66a792867 ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1943:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status ::
     FC.CInt
     -- ^ __C declaration:__ @code@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_x509_cert_validation_status =
  hs_bindgen_c3f1f3f66a792867

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_crl_load_file@
foreign import ccall safe "hs_bindgen_d69b2b54ed9758f8" hs_bindgen_d69b2b54ed9758f8 ::
     Ptr.Ptr Botan_x509_crl_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1951:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @crl_path@
  -> IO FC.CInt
botan_x509_crl_load_file =
  hs_bindgen_d69b2b54ed9758f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_crl_load@
foreign import ccall safe "hs_bindgen_13eee8095dd47f69" hs_bindgen_13eee8095dd47f69 ::
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
  hs_bindgen_13eee8095dd47f69

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1953:5@

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
                                                        hs_bindgen_13eee8095dd47f69 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_crl_destroy@
foreign import ccall safe "hs_bindgen_71be83428b9a6327" hs_bindgen_71be83428b9a6327 ::
     Botan_x509_crl_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1955:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> IO FC.CInt
botan_x509_crl_destroy = hs_bindgen_71be83428b9a6327

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_is_revoked@
foreign import ccall safe "hs_bindgen_14daac74ee1c93f9" hs_bindgen_14daac74ee1c93f9 ::
     Botan_x509_crl_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1961:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_is_revoked = hs_bindgen_14daac74ee1c93f9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_x509_cert_verify_with_crl@
foreign import ccall safe "hs_bindgen_22e5b976e96c65fe" hs_bindgen_22e5b976e96c65fe ::
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

__defined at:__ @botan\/ffi.h:1968:5@

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
  hs_bindgen_22e5b976e96c65fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_key_wrap3394@
foreign import ccall safe "hs_bindgen_cd29900f6acb87e7" hs_bindgen_cd29900f6acb87e7 ::
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
  hs_bindgen_cd29900f6acb87e7

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1986:5@

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
                                                                                                              hs_bindgen_cd29900f6acb87e7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_key_unwrap3394@
foreign import ccall safe "hs_bindgen_4d63ce9c2aa16a44" hs_bindgen_4d63ce9c2aa16a44 ::
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
  hs_bindgen_4d63ce9c2aa16a44

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1995:5@

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
                                                                                                              hs_bindgen_4d63ce9c2aa16a44 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_nist_kw_enc@
foreign import ccall safe "hs_bindgen_d41b492d61778b02" hs_bindgen_d41b492d61778b02 ::
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
  hs_bindgen_d41b492d61778b02

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2003:5@

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
                                                                                                                  hs_bindgen_d41b492d61778b02 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_nist_kw_dec@
foreign import ccall safe "hs_bindgen_2bfd3a7a2a628c27" hs_bindgen_2bfd3a7a2a628c27 ::
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
  hs_bindgen_2bfd3a7a2a628c27

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2013:5@

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
                                                                                                                  hs_bindgen_2bfd3a7a2a628c27 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hotp_init@
foreign import ccall safe "hs_bindgen_a8d5f50bea0e2bef" hs_bindgen_a8d5f50bea0e2bef ::
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
botan_hotp_init_wrapper = hs_bindgen_a8d5f50bea0e2bef

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2032:5@

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
                                                            hs_bindgen_a8d5f50bea0e2bef x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hotp_destroy@
foreign import ccall safe "hs_bindgen_1530b54d786bd7a1" hs_bindgen_1530b54d786bd7a1 ::
     Botan_hotp_t
  -> IO FC.CInt

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2039:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> IO FC.CInt
botan_hotp_destroy = hs_bindgen_1530b54d786bd7a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hotp_generate@
foreign import ccall safe "hs_bindgen_8c20c7006688d728" hs_bindgen_8c20c7006688d728 ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2045:5@

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
botan_hotp_generate = hs_bindgen_8c20c7006688d728

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_hotp_check@
foreign import ccall safe "hs_bindgen_ddadabab65e3c15d" hs_bindgen_ddadabab65e3c15d ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2051:5@

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
botan_hotp_check = hs_bindgen_ddadabab65e3c15d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_totp_init@
foreign import ccall safe "hs_bindgen_bab3e54532e280a7" hs_bindgen_bab3e54532e280a7 ::
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
botan_totp_init_wrapper = hs_bindgen_bab3e54532e280a7

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2064:5@

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
                                                              hs_bindgen_bab3e54532e280a7 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x2 x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_totp_destroy@
foreign import ccall safe "hs_bindgen_46438df5047d44e9" hs_bindgen_46438df5047d44e9 ::
     Botan_totp_t
  -> IO FC.CInt

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2072:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy ::
     Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> IO FC.CInt
botan_totp_destroy = hs_bindgen_46438df5047d44e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_totp_generate@
foreign import ccall safe "hs_bindgen_c229226e5488f531" hs_bindgen_c229226e5488f531 ::
     Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2081:5@

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
botan_totp_generate = hs_bindgen_c229226e5488f531

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_totp_check@
foreign import ccall safe "hs_bindgen_c53a7fd940d12bc7" hs_bindgen_c53a7fd940d12bc7 ::
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

__defined at:__ @botan\/ffi.h:2092:5@

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
botan_totp_check = hs_bindgen_c53a7fd940d12bc7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_fpe_fe1_init@
foreign import ccall safe "hs_bindgen_dacb7ac25dfa1d75" hs_bindgen_dacb7ac25dfa1d75 ::
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
  hs_bindgen_dacb7ac25dfa1d75

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2103:5@

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
                                                              hs_bindgen_dacb7ac25dfa1d75 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_fpe_destroy@
foreign import ccall safe "hs_bindgen_1cad263553f64693" hs_bindgen_1cad263553f64693 ::
     Botan_fpe_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2110:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> IO FC.CInt
botan_fpe_destroy = hs_bindgen_1cad263553f64693

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_fpe_encrypt@
foreign import ccall safe "hs_bindgen_4cdb84555b162b51" hs_bindgen_4cdb84555b162b51 ::
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
  hs_bindgen_4cdb84555b162b51

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2113:5@

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
                                                          hs_bindgen_4cdb84555b162b51 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_fpe_decrypt@
foreign import ccall safe "hs_bindgen_ee838ef77828700b" hs_bindgen_ee838ef77828700b ::
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
  hs_bindgen_ee838ef77828700b

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2116:5@

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
                                                          hs_bindgen_ee838ef77828700b x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_server_session_init@
foreign import ccall safe "hs_bindgen_78b4182a955515a1" hs_bindgen_78b4182a955515a1 ::
     Ptr.Ptr Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2128:5@

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
  hs_bindgen_78b4182a955515a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_server_session_destroy@
foreign import ccall safe "hs_bindgen_a4abadc2b5bd031c" hs_bindgen_a4abadc2b5bd031c ::
     Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2136:5@

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
  hs_bindgen_a4abadc2b5bd031c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_server_session_step1@
foreign import ccall safe "hs_bindgen_ba2e2c596c637428" hs_bindgen_ba2e2c596c637428 ::
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
  hs_bindgen_ba2e2c596c637428

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
                                                                  hs_bindgen_ba2e2c596c637428 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x2 x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_server_session_step2@
foreign import ccall safe "hs_bindgen_207dfe085fc5046b" hs_bindgen_207dfe085fc5046b ::
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
  hs_bindgen_207dfe085fc5046b

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
                                                            hs_bindgen_207dfe085fc5046b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_generate_verifier@
foreign import ccall safe "hs_bindgen_ca00bd988228c8d6" hs_bindgen_ca00bd988228c8d6 ::
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
  hs_bindgen_ca00bd988228c8d6

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
                                                                  hs_bindgen_ca00bd988228c8d6 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_client_agree@
foreign import ccall safe "hs_bindgen_7da0996954571a0e" hs_bindgen_7da0996954571a0e ::
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
  hs_bindgen_7da0996954571a0e

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
                                                                                                                            hs_bindgen_7da0996954571a0e x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr14) x5 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr13) x7 x8 x9 x10 x11 x12))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_srp6_group_size@
foreign import ccall safe "hs_bindgen_bd8762dfea407ba0" hs_bindgen_bd8762dfea407ba0 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2231:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @group_id@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @group_p_bytes@
  -> IO FC.CInt
botan_srp6_group_size = hs_bindgen_bd8762dfea407ba0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_zfec_encode@
foreign import ccall safe "hs_bindgen_89a11713e7afd3ea" hs_bindgen_89a11713e7afd3ea ::
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

__defined at:__ @botan\/ffi.h:2252:5@

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
botan_zfec_encode = hs_bindgen_89a11713e7afd3ea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_zfec_decode@
foreign import ccall safe "hs_bindgen_a1ab8c9c16f93d7d" hs_bindgen_a1ab8c9c16f93d7d ::
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

__defined at:__ @botan\/ffi.h:2273:5@

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
botan_zfec_decode = hs_bindgen_a1ab8c9c16f93d7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_supports_crypto_backend@
foreign import ccall safe "hs_bindgen_d50adc72008051cc" hs_bindgen_d50adc72008051cc ::
     IO FC.CInt

{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2298:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend :: IO FC.CInt
botan_tpm2_supports_crypto_backend =
  hs_bindgen_d50adc72008051cc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_ctx_init@
foreign import ccall safe "hs_bindgen_847b9c03146f5a46" hs_bindgen_847b9c03146f5a46 ::
     Ptr.Ptr Botan_tpm2_ctx_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2306:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init ::
     Ptr.Ptr Botan_tpm2_ctx_t
     {- ^

        [__@ctx_out@ /(input)/__]: output TPM2 context

     __C declaration:__ @ctx_out@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

     __C declaration:__ @tcti_nameconf@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_init = hs_bindgen_847b9c03146f5a46

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_ctx_init_ex@
foreign import ccall safe "hs_bindgen_35c003860f1c4e94" hs_bindgen_35c003860f1c4e94 ::
     Ptr.Ptr Botan_tpm2_ctx_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

  [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init_ex@

__defined at:__ @botan\/ffi.h:2316:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_init_ex ::
     Ptr.Ptr Botan_tpm2_ctx_t
     {- ^

        [__@ctx_out@ /(input)/__]: output TPM2 context

     __C declaration:__ @ctx_out@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@tcti_name@ /(input)/__]: TCTI name (may be nullptr)

     __C declaration:__ @tcti_name@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@tcti_conf@ /(input)/__]: TCTI config (may be nullptr)

     __C declaration:__ @tcti_conf@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_init_ex = hs_bindgen_35c003860f1c4e94

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_ctx_from_esys@
foreign import ccall safe "hs_bindgen_cd05478e530d06be" hs_bindgen_cd05478e530d06be ::
     Ptr.Ptr Botan_tpm2_ctx_t
  -> Ptr.Ptr ESYS_CONTEXT
  -> IO FC.CInt

{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2327:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_from_esys ::
     Ptr.Ptr Botan_tpm2_ctx_t
     {- ^

        [__@ctx_out@ /(input)/__]: output TPM2 context

     __C declaration:__ @ctx_out@
     -}
  -> Ptr.Ptr ESYS_CONTEXT
     {- ^

        [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

     __C declaration:__ @esys_ctx@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_from_esys =
  hs_bindgen_cd05478e530d06be

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_ctx_enable_crypto_backend@
foreign import ccall safe "hs_bindgen_0ef0684fa58b3178" hs_bindgen_0ef0684fa58b3178 ::
     Botan_tpm2_ctx_t
  -> Botan_rng_t
  -> IO FC.CInt

{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2339:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_enable_crypto_backend ::
     Botan_tpm2_ctx_t
     {- ^

        [__@ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @ctx@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_enable_crypto_backend =
  hs_bindgen_0ef0684fa58b3178

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_ctx_destroy@
foreign import ccall safe "hs_bindgen_e2d4548f2845fc57" hs_bindgen_e2d4548f2845fc57 ::
     Botan_tpm2_ctx_t
  -> IO FC.CInt

{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2346:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy ::
     Botan_tpm2_ctx_t
     {- ^

        [__@ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @ctx@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_destroy = hs_bindgen_e2d4548f2845fc57

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_enable_crypto_backend@
foreign import ccall safe "hs_bindgen_127d8ed3a00f5684" hs_bindgen_127d8ed3a00f5684 ::
     Ptr.Ptr Botan_tpm2_crypto_backend_state_t
  -> Ptr.Ptr ESYS_CONTEXT
  -> Botan_rng_t
  -> IO FC.CInt

{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2360:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_enable_crypto_backend ::
     Ptr.Ptr Botan_tpm2_crypto_backend_state_t
     {- ^

        [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

     __C declaration:__ @cbs_out@
     -}
  -> Ptr.Ptr ESYS_CONTEXT
     {- ^

        [__@esys_ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @esys_ctx@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_tpm2_enable_crypto_backend =
  hs_bindgen_127d8ed3a00f5684

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_crypto_backend_state_destroy@
foreign import ccall safe "hs_bindgen_a05488a377bf13db" hs_bindgen_a05488a377bf13db ::
     Botan_tpm2_crypto_backend_state_t
  -> IO FC.CInt

{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2372:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_crypto_backend_state_destroy ::
     Botan_tpm2_crypto_backend_state_t
     {- ^

        [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

     __C declaration:__ @cbs@
     -}
  -> IO FC.CInt
botan_tpm2_crypto_backend_state_destroy =
  hs_bindgen_a05488a377bf13db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_rng_init@
foreign import ccall safe "hs_bindgen_0e0ab053c3eaca6a" hs_bindgen_0e0ab053c3eaca6a ::
     Ptr.Ptr Botan_rng_t
  -> Botan_tpm2_ctx_t
  -> Botan_tpm2_session_t
  -> Botan_tpm2_session_t
  -> Botan_tpm2_session_t
  -> IO FC.CInt

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
botan_tpm2_rng_init ::
     Ptr.Ptr Botan_rng_t
     {- ^

        [__@rng_out@ /(input)/__]: rng object to create

     __C declaration:__ @rng_out@
     -}
  -> Botan_tpm2_ctx_t
     {- ^

        [__@ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @ctx@
     -}
  -> Botan_tpm2_session_t
     {- ^

        [__@s1@ /(input)/__]: the first session to use (optional, may be nullptr)

     __C declaration:__ @s1@
     -}
  -> Botan_tpm2_session_t
     {- ^

        [__@s2@ /(input)/__]: the second session to use (optional, may be nullptr)

     __C declaration:__ @s2@
     -}
  -> Botan_tpm2_session_t
     {- ^

        [__@s3@ /(input)/__]: the third session to use (optional, may be nullptr)

     __C declaration:__ @s3@
     -}
  -> IO FC.CInt
botan_tpm2_rng_init = hs_bindgen_0e0ab053c3eaca6a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_unauthenticated_session_init@
foreign import ccall safe "hs_bindgen_e33086f3a97e498c" hs_bindgen_e33086f3a97e498c ::
     Ptr.Ptr Botan_tpm2_session_t
  -> Botan_tpm2_ctx_t
  -> IO FC.CInt

{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2395:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_unauthenticated_session_init ::
     Ptr.Ptr Botan_tpm2_session_t
     {- ^

        [__@session_out@ /(input)/__]: the session object to create

     __C declaration:__ @session_out@
     -}
  -> Botan_tpm2_ctx_t
     {- ^

        [__@ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @ctx@
     -}
  -> IO FC.CInt
botan_tpm2_unauthenticated_session_init =
  hs_bindgen_e33086f3a97e498c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_7_0_Safe_botan_tpm2_session_destroy@
foreign import ccall safe "hs_bindgen_1b8a882c5c83464f" hs_bindgen_1b8a882c5c83464f ::
     Botan_tpm2_session_t
  -> IO FC.CInt

{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2402:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_session_destroy ::
     Botan_tpm2_session_t
     {- ^

        [__@session@ /(input)/__]: the session object to destroy

     __C declaration:__ @session@
     -}
  -> IO FC.CInt
botan_tpm2_session_destroy =
  hs_bindgen_1b8a882c5c83464f
