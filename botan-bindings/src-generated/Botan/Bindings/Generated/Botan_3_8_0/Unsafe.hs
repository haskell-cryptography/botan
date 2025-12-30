{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_8_0.Unsafe where

import           Botan.Bindings.Generated.Botan_3_8_0
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
  , "char const *hs_bindgen_2bc452774083249e ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_0e637be71f1b4111 (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_743359e347b5efff (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_960f70b1397491fe ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_0cba498b288ca600 (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_57a52260eb910e53 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_3358665ae56b8d43 (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_29e2e5a59529dad6 (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_e102bc46fe29bd6c (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_983dc0dcb713f85c ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cfc517b7ef9d31b6 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a52d4552b0b34095 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c3540eef8c1fe045 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_74f83d883ba1794a ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_196806b5fa220356 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f047dd5fd415cfb0 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1ab681f4740dc6ec ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e2adf6dbc00fcfb ("
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
  , "signed int hs_bindgen_6073f4f9d17dafdc ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2168facd4330923d ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_98301f9a446623d5 ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e9fb6a2dfc48fc0b ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_272f6a01510bbcb7 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2762c372f965496e ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_6e10cf2c68c08ae5 ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_60c8ff46d965e796 ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ff7ef297a896024f ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_09a9b96c09642283 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bc057cbcd0d6f4ac ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_022a2b7f8acbe3fa ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_61f8677072ad94fc ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_e3a5a50441398ce3 ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2dd4fa51626f63ef ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_671498e6d9417292 ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5054a61a232291a8 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ec1ec72565811f12 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_63f587d1d76b3f0f ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_598d2d80ca34a720 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3ee21e6d49a5bea0 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_64e884268f72f961 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_efee1b6cd8b5ce80 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5b74689c019d08b6 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_61c8dcbccc5694f6 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_9816cd336a3c6da8 ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_df1976dab158824a ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3789d1702d88038a ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_57d63a4d06fb1128 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1a38e5eb08ed1335 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d4494f6232871a6b ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_is_authenticated(arg1);"
  , "}"
  , "signed int hs_bindgen_3a78cb7a2abcd8b4 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_requires_entire_message(arg1);"
  , "}"
  , "signed int hs_bindgen_74dec949422623f1 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3bc7fd900444c5bf ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_40594978444acf32 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_082e4a41fd34de58 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9ef22e3ad5475a8d ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c9a2acec05ca55ff ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ee47cd3078aac062 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_c279780c6fe69cbb ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a9ce096b9481a04c ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d2a21969e3248a89 ("
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
  , "signed int hs_bindgen_67861d3252a6353b ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_ee636f61c637ddeb ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_1dd7862941573628 ("
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
  , "signed int hs_bindgen_051486d977e65f89 ("
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
  , "signed int hs_bindgen_783b6a39cbf6a033 ("
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
  , "signed int hs_bindgen_89692983c2efabee ("
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
  , "signed int hs_bindgen_6a2d4bd083a96c4a ("
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
  , "signed int hs_bindgen_4ebf5819dce0e94d ("
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
  , "signed int hs_bindgen_43c35abb50c68b81 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_41c8c9195808f6c7 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_bc7a5d4346f1024d ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_0effe626c156f2d4 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_84f3ca329bf48458 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_7a268aac1d392431 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3d6fefc7c1259ef0 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b20cd08fc27010c3 ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5571ccb77fa6c84c ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7554ef3df84d1c3a ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_d6ec162fc26eb3ec ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_6dcbddedbc8e9453 ("
  , "  botan_mp_t arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4ab532d4648b18f6 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_415cd7a1ac43794d ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_e9acd1e36d3da83e ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_36ab76a64f5a2ebb ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cecc94af86e6bd7b ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_eb06ab63d2b8608d ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_51df8b389b5ec7c5 ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_55cd78cb6a31b04b ("
  , "  botan_mp_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_25816a865ebebfe0 ("
  , "  botan_mp_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d64b7724d8161baa ("
  , "  botan_mp_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d0483c30fd6c4c18 ("
  , "  botan_mp_t arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_09adce5d43621c26 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_92cb6c150e11586b ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_169e614b11358b06 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_6a96afbe93767259 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_467a36372cd272ea ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_ac74fa1843a14c52 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_814201a96cf691ad ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bb5cccda94898053 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5de072ea6d5ef9a6 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cc13b5b7b69fd642 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_084b95c581272fc8 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_114712ea961f5703 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6b4c008d2d9ea2df ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_31f2e28be36113ee ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_60914b2777a37aee ("
  , "  signed int *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8633197b15043a32 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9888251c8b412b17 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d25cf49865cd7704 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_442e6d7b550a789d ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a564a65fb1769d14 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a6cf58bf8bb1530d ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e318865f1ec027c9 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_cca50ef109737d7f ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ccd9d8dd50197038 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4b4b9c131df1446d ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4f8cc0b184a4c6fb ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_250fb265f2ed794e ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_324cffda71a1255c ("
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
  , "signed int hs_bindgen_30432ad610acab12 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3f8d7e680f0dbf5c ("
  , "  botan_asn1_oid_t arg1"
  , ")"
  , "{"
  , "  return botan_oid_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e3c7a3b714b28c13 ("
  , "  botan_asn1_oid_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_oid_from_string(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e4bcacb5b8550344 ("
  , "  botan_asn1_oid_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_oid_register(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_25669dc1a69163e9 ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_oid_view_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_634083b7e5fc82f4 ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_oid_view_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_304e841fbbaa1204 ("
  , "  botan_asn1_oid_t arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return botan_oid_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_789dc9afb7028c50 ("
  , "  signed int *arg1,"
  , "  botan_asn1_oid_t arg2,"
  , "  botan_asn1_oid_t arg3"
  , ")"
  , "{"
  , "  return botan_oid_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4f7d881b9d80304a ("
  , "  botan_ec_group_t arg1"
  , ")"
  , "{"
  , "  return botan_ec_group_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_1797f1b1136296c1 ("
  , "  signed int *arg1"
  , ")"
  , "{"
  , "  return botan_ec_group_supports_application_specific_group(arg1);"
  , "}"
  , "signed int hs_bindgen_abe6df94c5afe7ea ("
  , "  char const *arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_supports_named_group(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bab9b6ea680a204b ("
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
  , "  return botan_ec_group_from_params(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);"
  , "}"
  , "signed int hs_bindgen_5213b6acf50dab24 ("
  , "  botan_ec_group_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_ec_group_from_ber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_63969a845ff6a62a ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_from_pem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8756686ef6a8c90e ("
  , "  botan_ec_group_t *arg1,"
  , "  botan_asn1_oid_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_from_oid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1679e6ff65043358 ("
  , "  botan_ec_group_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_from_name(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1c1cd4e9f022f4c1 ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_ec_group_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5ba5a4609c194724 ("
  , "  botan_ec_group_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_ec_group_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_aa8280581455970c ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_curve_oid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_947fbc7ffd7fa77b ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_43b419e431479e40 ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_a(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e8ef15df6f33339f ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_b(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c1f5a1e7c2e1bb0c ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_g_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_77d9c1dd72b43ac5 ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_g_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a52dd7d7a0842f0f ("
  , "  botan_mp_t *arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_get_order(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_57efd416db1c6ab5 ("
  , "  botan_ec_group_t arg1,"
  , "  botan_ec_group_t arg2"
  , ")"
  , "{"
  , "  return botan_ec_group_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1f7d3ba62496de5c ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b447641d41bdfde2 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  botan_ec_group_t arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_ec_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b15baf01e3e1d967 ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_54ba3ab12a74db33 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a7813fab639c8b41 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dbf26034007b93fe ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7ca502063f115b03 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6cb8e08ab957b8a4 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3e4e0a07c3ed9ca4 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f9eb174a4597ee05 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e350320488e10db1 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_fe63a0f7e63bd3fa ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_b4956805fa52d61a ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a4d40ef752b6742e ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b18e1cd50cbea16d ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_53695e0c047ae644 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_raw(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e792c09bbe5cefb7 ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_11e6a276149c07cd ("
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
  , "signed int hs_bindgen_a1d0b42cd2866182 ("
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
  , "signed int hs_bindgen_3b24ec2a8c143903 ("
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
  , "signed int hs_bindgen_cd788f5b91927dde ("
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
  , "signed int hs_bindgen_f9c21edeec5cf22a ("
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
  , "signed int hs_bindgen_49f853d1ee5944d6 ("
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
  , "signed int hs_bindgen_7fb8172d8753e12e ("
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
  , "signed int hs_bindgen_b168853615c3f9ba ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3af8bc7a27de7709 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_22e339fbb78ca4fa ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_fbfea88dd69f52a3 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_26144a06bef35180 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4ef0235698b750a9 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_raw(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_13de96509b4b414d ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_609de378608453e4 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_210f9e5a2a12b6a0 ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f653c4c7b217f9c5 ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_624fcff6acd247dd ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_5672847d78310fef ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b071ffd53511ba6b ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_03e892db79997729 ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_oid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c11e14f8d6add764 ("
  , "  botan_asn1_oid_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_oid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1177dbe7595386b6 ("
  , "  botan_privkey_t arg1,"
  , "  signed int *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_stateful_operation(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_898f64982bb7c846 ("
  , "  botan_privkey_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_remaining_operations(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f786b49bca53f48e ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6c6d3139d39f8d0c ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2d611b9635a90b92 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_49b055da02cee7e5 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6ae8449e63a8aaeb ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f4318c987d3b2dc5 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_537f189157f9eda9 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6b19bd9a56228bdb ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b4925eed36e07404 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bd8f446c833d6205 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2906dd10c68051ac ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e3b2c4b05de33695 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e6675289232fdd75 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_36aceb7f6566ff2e ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3538b05e4c2bcebf ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_692ef7150c9a174d ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c97ddb226d23ca49 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ae675e2bf53934d7 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_165a7641b488b0ed ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c8b6e86a65f25066 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_89e1b1eb6befae08 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d933948410af3ccc ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_28a94f4fbe04a11a ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e6d170bc232cabf1 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3813de62b987ab73 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_60b3299ea3ea841c ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_049d554c12ae082d ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_39ad028a49be1707 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_87210c7585e41423 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6e52fac2d9228a18 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_56fea074e5643760 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ed76a60e8f743bad ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ceda76448580cb70 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c1b13bea1244aed8 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7e141736f41115a8 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4393f736498e65b1 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x448(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5908e3acce9209ff ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x448_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0ed744271b217827 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x448_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b137ef067a3bdc3b ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_ml_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_83c8b95d1c273fcd ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ml_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ca9a8e1e64c7be30 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e87293a333b79597 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1623c78e64450946 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0be540358643b870 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4c842c6885cf96d8 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_frodokem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_64a65397773f21e4 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_frodokem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_514d2a56a1006379 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_classic_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1d3c65dd47d1526e ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_classic_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0362eb4bb68ec3a3 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_ml_kem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_33b0e017dbdcd835 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ml_kem(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_bc3f7d6abdbdbb12 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_slh_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_899e82b6bb8ea17c ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_slh_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c36186a11cbdd5cc ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_ecc_key_used_explicit_encoding(arg1);"
  , "}"
  , "signed int hs_bindgen_7097b12c6344bf78 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_80adaffe2d6a5787 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7a58cd127a1b71e8 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_69d5f07ca78d1b73 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_08861c14f5cd3f8c ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_23f5c091befd272d ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_74c90b5226148668 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ce444b4b77cc7273 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ceba776a6a8afad6 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_59320618e720e302 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9a2fa76f8c60c723 ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_91987baf45875763 ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_230444438b6d6f12 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fc6bfb10a83e7262 ("
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
  , "signed int hs_bindgen_62ca366d8c8815dd ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f14fead0d8774385 ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_d487a7aabd6b8f83 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d3df3c25d12136db ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_801dc71c9af7cd7d ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_00261ab86c3d65d1 ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_802be489c5021e29 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bd2c889d9792009a ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bd47626e824ae949 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0d1f522ef6f8d99b ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d57d42f7a3587782 ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_bd0347394c73e973 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_198fe51b49137876 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_08ad2fd69de742a1 ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a3049a24ff3506bc ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_fde31d512533d6a7 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c014baa76ac8e4f8 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_59585443e5728dea ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e177cabfd07cc7cb ("
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
  , "signed int hs_bindgen_e43b9a882369dddb ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_12359682dda3bf73 ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_7ab81c614a893e42 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dc8336d22650a55a ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2a2829a7bcbaf9ed ("
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
  , "signed int hs_bindgen_81c10a2f0fd16bea ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_81e8f0aa1ccc5ce1 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2e1009a20f8e5bd1 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fec6cba0899460ff ("
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
  , "signed int hs_bindgen_0f0cfb04cc733536 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f2755abb679378be ("
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
  , "signed int hs_bindgen_f9305c3788843e07 ("
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
  , "signed int hs_bindgen_161b1294725df7e7 ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2c8270ef0f6ddc6f ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_40907aea12527b3c ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4516acc1d834ce45 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fbb5e0961f46ef85 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_07658392643c9a41 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_42965d2e309770e0 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_62987c11684c1e3c ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e1ff2630cff05b6f ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_246401748f2bec6f ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1a0877957ce85f18 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2f2b4fcd7e634392 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_51bc5cf3e76679d5 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_253cddac34fc77f0 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4f3b1be524aad8e7 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_269350807b3e986e ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_d137fd84e4b9ed86 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_057ed813fce3174c ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_86adef059549dab1 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f55257c0b056dfa5 ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_437a90c41ddd2478 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cc67c9d2e72476a6 ("
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
  , "char const *hs_bindgen_1ea00111564e6658 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_2f8273b59d554056 ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_805f9c17970e6d27 ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_148c98ad67124a65 ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_a3887678d0bd9985 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cb591e6747c173c8 ("
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
  , "signed int hs_bindgen_c8e4fa7b0e59ec9d ("
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
  , "signed int hs_bindgen_707f62977330528c ("
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
  , "signed int hs_bindgen_3f68cacce7db6ffe ("
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
  , "signed int hs_bindgen_9c90c919654696df ("
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
  , "signed int hs_bindgen_d76f000291322418 ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_7b2b5a587d844a61 ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_a31a8be8d9d37108 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d0ea7c7817f2e751 ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_9b0e5c89f7dcc953 ("
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
  , "signed int hs_bindgen_edf08028cbb9e25c ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4ea5e378d127d954 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4c76fbefc8e8d788 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_176c8a205c375e2a ("
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
  , "signed int hs_bindgen_fc70cd81f22f246a ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_7e5f83ae7a1754a3 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0757df6a0bdaede2 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_9042ee9fdd35067e ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_56515733b370e2c3 ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4656105750ff77dc ("
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
  , "signed int hs_bindgen_494b247f1686cbfb ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_52bf11069c393de6 ("
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
  , "signed int hs_bindgen_90f0e887c4a955de ("
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
  , "signed int hs_bindgen_5b1968529c542c38 ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2bdd689208b2a5a9 ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_aa8e974bb8615910 ("
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
  , "signed int hs_bindgen_bf1cefb478c2ae07 (void)"
  , "{"
  , "  return botan_tpm2_supports_crypto_backend();"
  , "}"
  , "signed int hs_bindgen_00c79932df67c930 ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d6f7374dedf9888d ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_init_ex(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c0a7991097d704f7 ("
  , "  botan_tpm2_ctx_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_from_esys(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_29c0a4c4af63eaeb ("
  , "  botan_tpm2_ctx_t arg1,"
  , "  botan_rng_t arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_enable_crypto_backend(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b4c9cdc8a77e1294 ("
  , "  botan_tpm2_ctx_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_ctx_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_6cf327e864012703 ("
  , "  botan_tpm2_crypto_backend_state_t *arg1,"
  , "  struct ESYS_CONTEXT *arg2,"
  , "  botan_rng_t arg3"
  , ")"
  , "{"
  , "  return botan_tpm2_enable_crypto_backend(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d6f38c4a7905cf83 ("
  , "  botan_tpm2_crypto_backend_state_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_crypto_backend_state_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_d06195dadfb08364 ("
  , "  botan_rng_t *arg1,"
  , "  botan_tpm2_ctx_t arg2,"
  , "  botan_tpm2_session_t arg3,"
  , "  botan_tpm2_session_t arg4,"
  , "  botan_tpm2_session_t arg5"
  , ")"
  , "{"
  , "  return botan_tpm2_rng_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_82c1f1783b84ed37 ("
  , "  botan_tpm2_session_t *arg1,"
  , "  botan_tpm2_ctx_t arg2"
  , ")"
  , "{"
  , "  return botan_tpm2_unauthenticated_session_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e384515070e4fe1b ("
  , "  botan_tpm2_session_t arg1"
  , ")"
  , "{"
  , "  return botan_tpm2_session_destroy(arg1);"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_error_description@
foreign import ccall unsafe "hs_bindgen_2bc452774083249e" hs_bindgen_2bc452774083249e ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:174:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description ::
     FC.CInt
     -- ^ __C declaration:__ @err@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_description = hs_bindgen_2bc452774083249e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_0e637be71f1b4111" hs_bindgen_0e637be71f1b4111 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:183:36@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_last_exception_message =
  hs_bindgen_0e637be71f1b4111

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_743359e347b5efff" hs_bindgen_743359e347b5efff ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:190:33@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: IO HsBindgen.Runtime.Prelude.Word32
botan_ffi_api_version = hs_bindgen_743359e347b5efff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_960f70b1397491fe" hs_bindgen_960f70b1397491fe ::
     HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:196:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @api_version@
  -> IO FC.CInt
botan_ffi_supports_api = hs_bindgen_960f70b1397491fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_version_string@
foreign import ccall unsafe "hs_bindgen_0cba498b288ca600" hs_bindgen_0cba498b288ca600 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:201:36@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_version_string = hs_bindgen_0cba498b288ca600

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_version_major@
foreign import ccall unsafe "hs_bindgen_57a52260eb910e53" hs_bindgen_57a52260eb910e53 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:206:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_major = hs_bindgen_57a52260eb910e53

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_3358665ae56b8d43" hs_bindgen_3358665ae56b8d43 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:211:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_minor = hs_bindgen_3358665ae56b8d43

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_29e2e5a59529dad6" hs_bindgen_29e2e5a59529dad6 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:216:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_patch = hs_bindgen_29e2e5a59529dad6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_e102bc46fe29bd6c" hs_bindgen_e102bc46fe29bd6c ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer.

  Returns 0 if the library was not built from an official release

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:223:33@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_datestamp = hs_bindgen_e102bc46fe29bd6c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_983dc0dcb713f85c" hs_bindgen_983dc0dcb713f85c ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:228:28@

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
  hs_bindgen_983dc0dcb713f85c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_cfc517b7ef9d31b6" hs_bindgen_cfc517b7ef9d31b6 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:234:28@

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
botan_same_mem = hs_bindgen_cfc517b7ef9d31b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_a52d4552b0b34095" hs_bindgen_a52d4552b0b34095 ::
     Ptr.Ptr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:240:28@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @mem@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_scrub_mem = hs_bindgen_a52d4552b0b34095

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_c3540eef8c1fe045" hs_bindgen_c3540eef8c1fe045 ::
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

__defined at:__ @botan\/ffi.h:255:28@

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
botan_hex_encode = hs_bindgen_c3540eef8c1fe045

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_74f83d883ba1794a" hs_bindgen_74f83d883ba1794a ::
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

__defined at:__ @botan\/ffi.h:265:28@

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
botan_hex_decode = hs_bindgen_74f83d883ba1794a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_196806b5fa220356" hs_bindgen_196806b5fa220356 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
botan_base64_encode ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@x@ /(input)/__]: the input data

     __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@len@ /(input)/__]: the length of x

     __C declaration:__ @len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@out@ /(input)/__]: the output buffer

     __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@out_len@ /(input)/__]: the size of the output buffer on input, set to the number of bytes written

     __C declaration:__ @out_len@
     -}
  -> IO FC.CInt
botan_base64_encode = hs_bindgen_196806b5fa220356

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_f047dd5fd415cfb0" hs_bindgen_f047dd5fd415cfb0 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:282:28@

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
botan_base64_decode = hs_bindgen_f047dd5fd415cfb0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_1ab681f4740dc6ec" hs_bindgen_1ab681f4740dc6ec ::
     Ptr.Ptr Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "esdm-full": ESDM RNG (fully seeded) "esdm-pr": ESDM RNG (w. prediction resistance) "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:301:28@

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
botan_rng_init = hs_bindgen_1ab681f4740dc6ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_2e2adf6dbc00fcfb" hs_bindgen_2e2adf6dbc00fcfb ::
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

__defined at:__ @botan\/ffi.h:313:5@

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
botan_rng_init_custom = hs_bindgen_2e2adf6dbc00fcfb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_6073f4f9d17dafdc" hs_bindgen_6073f4f9d17dafdc ::
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

__defined at:__ @botan\/ffi.h:328:28@

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
botan_rng_get = hs_bindgen_6073f4f9d17dafdc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_2168facd4330923d" hs_bindgen_2168facd4330923d ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:337:28@

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
botan_system_rng_get = hs_bindgen_2168facd4330923d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_98301f9a446623d5" hs_bindgen_98301f9a446623d5 ::
     Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:347:28@

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
botan_rng_reseed = hs_bindgen_98301f9a446623d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_e9fb6a2dfc48fc0b" hs_bindgen_e9fb6a2dfc48fc0b ::
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

__defined at:__ @botan\/ffi.h:357:28@

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
  hs_bindgen_e9fb6a2dfc48fc0b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_272f6a01510bbcb7" hs_bindgen_272f6a01510bbcb7 ::
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

__defined at:__ @botan\/ffi.h:367:28@

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
botan_rng_add_entropy = hs_bindgen_272f6a01510bbcb7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_2762c372f965496e" hs_bindgen_2762c372f965496e ::
     Botan_rng_t
  -> IO FC.CInt

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:374:28@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_rng_destroy = hs_bindgen_2762c372f965496e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_6e10cf2c68c08ae5" hs_bindgen_6e10cf2c68c08ae5 ::
     Ptr.Ptr Botan_hash_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:388:28@

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
botan_hash_init = hs_bindgen_6e10cf2c68c08ae5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_60c8ff46d965e796" hs_bindgen_60c8ff46d965e796 ::
     Ptr.Ptr Botan_hash_t
  -> Botan_hash_t
  -> IO FC.CInt

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:396:28@

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
botan_hash_copy_state = hs_bindgen_60c8ff46d965e796

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_ff7ef297a896024f" hs_bindgen_ff7ef297a896024f ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:404:28@

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
  hs_bindgen_ff7ef297a896024f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_09a9b96c09642283" hs_bindgen_09a9b96c09642283 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:412:28@

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
botan_hash_block_size = hs_bindgen_09a9b96c09642283

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_bc057cbcd0d6f4ac" hs_bindgen_bc057cbcd0d6f4ac ::
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

__defined at:__ @botan\/ffi.h:421:28@

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
botan_hash_update = hs_bindgen_bc057cbcd0d6f4ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_022a2b7f8acbe3fa" hs_bindgen_022a2b7f8acbe3fa ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:431:28@

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
botan_hash_final = hs_bindgen_022a2b7f8acbe3fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_61f8677072ad94fc" hs_bindgen_61f8677072ad94fc ::
     Botan_hash_t
  -> IO FC.CInt

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:439:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_clear = hs_bindgen_61f8677072ad94fc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_e3a5a50441398ce3" hs_bindgen_e3a5a50441398ce3 ::
     Botan_hash_t
  -> IO FC.CInt

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:446:28@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_destroy = hs_bindgen_e3a5a50441398ce3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_2dd4fa51626f63ef" hs_bindgen_2dd4fa51626f63ef ::
     Botan_hash_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:454:28@

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
botan_hash_name = hs_bindgen_2dd4fa51626f63ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_671498e6d9417292" hs_bindgen_671498e6d9417292 ::
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

__defined at:__ @botan\/ffi.h:469:28@

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
botan_mac_init = hs_bindgen_671498e6d9417292

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_5054a61a232291a8" hs_bindgen_5054a61a232291a8 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:477:28@

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
botan_mac_output_length = hs_bindgen_5054a61a232291a8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_ec1ec72565811f12" hs_bindgen_ec1ec72565811f12 ::
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

__defined at:__ @botan\/ffi.h:486:28@

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
botan_mac_set_key = hs_bindgen_ec1ec72565811f12

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_63f587d1d76b3f0f" hs_bindgen_63f587d1d76b3f0f ::
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

__defined at:__ @botan\/ffi.h:495:28@

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
botan_mac_set_nonce = hs_bindgen_63f587d1d76b3f0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_598d2d80ca34a720" hs_bindgen_598d2d80ca34a720 ::
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

__defined at:__ @botan\/ffi.h:504:28@

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
botan_mac_update = hs_bindgen_598d2d80ca34a720

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_3ee21e6d49a5bea0" hs_bindgen_3ee21e6d49a5bea0 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:514:28@

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
botan_mac_final = hs_bindgen_3ee21e6d49a5bea0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_64e884268f72f961" hs_bindgen_64e884268f72f961 ::
     Botan_mac_t
  -> IO FC.CInt

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:522:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_clear = hs_bindgen_64e884268f72f961

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_efee1b6cd8b5ce80" hs_bindgen_efee1b6cd8b5ce80 ::
     Botan_mac_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:530:28@

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
botan_mac_name = hs_bindgen_efee1b6cd8b5ce80

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_5b74689c019d08b6" hs_bindgen_5b74689c019d08b6 ::
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

__defined at:__ @botan\/ffi.h:540:5@

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
botan_mac_get_keyspec = hs_bindgen_5b74689c019d08b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_61c8dcbccc5694f6" hs_bindgen_61c8dcbccc5694f6 ::
     Botan_mac_t
  -> IO FC.CInt

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_destroy = hs_bindgen_61c8dcbccc5694f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_9816cd336a3c6da8" hs_bindgen_9816cd336a3c6da8 ::
     Ptr.Ptr Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:564:28@

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
botan_cipher_init = hs_bindgen_9816cd336a3c6da8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_df1976dab158824a" hs_bindgen_df1976dab158824a ::
     Botan_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:569:28@

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
botan_cipher_name = hs_bindgen_df1976dab158824a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_3789d1702d88038a" hs_bindgen_3789d1702d88038a ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:574:28@

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
  hs_bindgen_3789d1702d88038a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_57d63a4d06fb1128" hs_bindgen_57d63a4d06fb1128 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:579:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_valid_nonce_length =
  hs_bindgen_57d63a4d06fb1128

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_1a38e5eb08ed1335" hs_bindgen_1a38e5eb08ed1335 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:584:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tag_size@
  -> IO FC.CInt
botan_cipher_get_tag_length =
  hs_bindgen_1a38e5eb08ed1335

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_is_authenticated@
foreign import ccall unsafe "hs_bindgen_d4494f6232871a6b" hs_bindgen_d4494f6232871a6b ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher provides authentication as well as confidentiality.

__C declaration:__ @botan_cipher_is_authenticated@

__defined at:__ @botan\/ffi.h:589:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_is_authenticated ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_is_authenticated =
  hs_bindgen_d4494f6232871a6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_requires_entire_message@
foreign import ccall unsafe "hs_bindgen_3a78cb7a2abcd8b4" hs_bindgen_3a78cb7a2abcd8b4 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Returns 1 iff the cipher requires the entire message before any encryption or decryption can be performed. No output data will be produced in botan_cipher_update() until the final flag is set.

__C declaration:__ @botan_cipher_requires_entire_message@

__defined at:__ @botan\/ffi.h:596:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_requires_entire_message ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_requires_entire_message =
  hs_bindgen_3a78cb7a2abcd8b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_74dec949422623f1" hs_bindgen_74dec949422623f1 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:601:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_get_default_nonce_length =
  hs_bindgen_74dec949422623f1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_3bc7fd900444c5bf" hs_bindgen_3bc7fd900444c5bf ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:607:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_update_granularity =
  hs_bindgen_3bc7fd900444c5bf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_40594978444acf32" hs_bindgen_40594978444acf32 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_ideal_update_granularity =
  hs_bindgen_40594978444acf32

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_082e4a41fd34de58" hs_bindgen_082e4a41fd34de58 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:619:5@

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
  hs_bindgen_082e4a41fd34de58

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_9ef22e3ad5475a8d" hs_bindgen_9ef22e3ad5475a8d ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:625:5@

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
  hs_bindgen_9ef22e3ad5475a8d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_c9a2acec05ca55ff" hs_bindgen_c9a2acec05ca55ff ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:630:28@

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
botan_cipher_set_key = hs_bindgen_c9a2acec05ca55ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_ee47cd3078aac062" hs_bindgen_ee47cd3078aac062 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:640:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_reset = hs_bindgen_ee47cd3078aac062

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_c279780c6fe69cbb" hs_bindgen_c279780c6fe69cbb ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:645:28@

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
  hs_bindgen_c279780c6fe69cbb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_a9ce096b9481a04c" hs_bindgen_a9ce096b9481a04c ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:650:28@

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
botan_cipher_start = hs_bindgen_a9ce096b9481a04c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_d2a21969e3248a89" hs_bindgen_d2a21969e3248a89 ::
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
  hs_bindgen_d2a21969e3248a89

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
                                                                  hs_bindgen_d2a21969e3248a89 x0 x1 x2 x3 x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_67861d3252a6353b" hs_bindgen_67861d3252a6353b ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:689:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear ::
     Botan_cipher_t
     -- ^ __C declaration:__ @hash@
  -> IO FC.CInt
botan_cipher_clear = hs_bindgen_67861d3252a6353b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_ee636f61c637ddeb" hs_bindgen_ee636f61c637ddeb ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:695:28@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_destroy = hs_bindgen_ee636f61c637ddeb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_1dd7862941573628" hs_bindgen_1dd7862941573628 ::
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
botan_pbkdf_wrapper = hs_bindgen_1dd7862941573628

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:714:5@

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
                                                                hs_bindgen_1dd7862941573628 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x5 x6)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_051486d977e65f89" hs_bindgen_051486d977e65f89 ::
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
  hs_bindgen_051486d977e65f89

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
                                                                  hs_bindgen_051486d977e65f89 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_783b6a39cbf6a033" hs_bindgen_783b6a39cbf6a033 ::
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
botan_pwdhash_wrapper = hs_bindgen_783b6a39cbf6a033

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:771:28@

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
                                                                      hs_bindgen_783b6a39cbf6a033 x0 x1 x2 x3 x4 x5 x6 x7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x9)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_89692983c2efabee" hs_bindgen_89692983c2efabee ::
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
  hs_bindgen_89692983c2efabee

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:798:28@

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
                                                                        hs_bindgen_89692983c2efabee x0 x1 x2 x3 x4 x5 x6 x7 x8 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x10)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_6a2d4bd083a96c4a" hs_bindgen_6a2d4bd083a96c4a ::
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
botan_scrypt_wrapper = hs_bindgen_6a2d4bd083a96c4a

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:817:5@

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
                                                                  hs_bindgen_6a2d4bd083a96c4a x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_kdf@
foreign import ccall unsafe "hs_bindgen_4ebf5819dce0e94d" hs_bindgen_4ebf5819dce0e94d ::
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
botan_kdf_wrapper = hs_bindgen_4ebf5819dce0e94d

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
                                                                                                                                                                    hs_bindgen_4ebf5819dce0e94d x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x6 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x8)))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_43c35abb50c68b81" hs_bindgen_43c35abb50c68b81 ::
     Ptr.Ptr Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:858:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init ::
     Ptr.Ptr Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_name@
  -> IO FC.CInt
botan_block_cipher_init = hs_bindgen_43c35abb50c68b81

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_41c8c9195808f6c7" hs_bindgen_41c8c9195808f6c7 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_destroy =
  hs_bindgen_41c8c9195808f6c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_bc7a5d4346f1024d" hs_bindgen_bc7a5d4346f1024d ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:870:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_clear =
  hs_bindgen_bc7a5d4346f1024d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_0effe626c156f2d4" hs_bindgen_0effe626c156f2d4 ::
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
  hs_bindgen_0effe626c156f2d4

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:875:28@

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
                                                        hs_bindgen_0effe626c156f2d4 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_84f3ca329bf48458" hs_bindgen_84f3ca329bf48458 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:881:28@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_block_size =
  hs_bindgen_84f3ca329bf48458

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_7a268aac1d392431" hs_bindgen_7a268aac1d392431 ::
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
  hs_bindgen_7a268aac1d392431

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:887:5@

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
                                                          hs_bindgen_7a268aac1d392431 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_3d6fefc7c1259ef0" hs_bindgen_3d6fefc7c1259ef0 ::
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
  hs_bindgen_3d6fefc7c1259ef0

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:893:5@

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
                                                          hs_bindgen_3d6fefc7c1259ef0 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_b20cd08fc27010c3" hs_bindgen_b20cd08fc27010c3 ::
     Botan_block_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:901:28@

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
botan_block_cipher_name = hs_bindgen_b20cd08fc27010c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_5571ccb77fa6c84c" hs_bindgen_5571ccb77fa6c84c ::
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

__defined at:__ @botan\/ffi.h:911:5@

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
  hs_bindgen_5571ccb77fa6c84c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_7554ef3df84d1c3a" hs_bindgen_7554ef3df84d1c3a ::
     Ptr.Ptr Botan_mp_t
  -> IO FC.CInt

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:924:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_init = hs_bindgen_7554ef3df84d1c3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_d6ec162fc26eb3ec" hs_bindgen_d6ec162fc26eb3ec ::
     Botan_mp_t
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:930:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_destroy = hs_bindgen_d6ec162fc26eb3ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_6dcbddedbc8e9453" hs_bindgen_6dcbddedbc8e9453 ::
     Botan_mp_t
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:935:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> IO FC.CInt
botan_mp_to_hex = hs_bindgen_6dcbddedbc8e9453

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_4ab532d4648b18f6" hs_bindgen_4ab532d4648b18f6 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:940:28@

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
botan_mp_to_str = hs_bindgen_4ab532d4648b18f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_415cd7a1ac43794d" hs_bindgen_415cd7a1ac43794d ::
     Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:945:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_clear = hs_bindgen_415cd7a1ac43794d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_e9acd1e36d3da83e" hs_bindgen_e9acd1e36d3da83e ::
     Botan_mp_t
  -> FC.CInt
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:950:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> FC.CInt
     -- ^ __C declaration:__ @initial_value@
  -> IO FC.CInt
botan_mp_set_from_int = hs_bindgen_e9acd1e36d3da83e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_36ab76a64f5a2ebb" hs_bindgen_36ab76a64f5a2ebb ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:955:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> Botan_mp_t
     -- ^ __C declaration:__ @source@
  -> IO FC.CInt
botan_mp_set_from_mp = hs_bindgen_36ab76a64f5a2ebb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_cecc94af86e6bd7b" hs_bindgen_cecc94af86e6bd7b ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:960:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @str@
  -> IO FC.CInt
botan_mp_set_from_str = hs_bindgen_cecc94af86e6bd7b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_eb06ab63d2b8608d" hs_bindgen_eb06ab63d2b8608d ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:966:28@

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
  hs_bindgen_eb06ab63d2b8608d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_51df8b389b5ec7c5" hs_bindgen_51df8b389b5ec7c5 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:971:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bits@
  -> IO FC.CInt
botan_mp_num_bits = hs_bindgen_51df8b389b5ec7c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_55cd78cb6a31b04b" hs_bindgen_55cd78cb6a31b04b ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:976:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_mp_num_bytes = hs_bindgen_55cd78cb6a31b04b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_25816a865ebebfe0" hs_bindgen_25816a865ebebfe0 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:981:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> IO FC.CInt
botan_mp_to_bin = hs_bindgen_25816a865ebebfe0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_d64b7724d8161baa" hs_bindgen_d64b7724d8161baa ::
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
  hs_bindgen_d64b7724d8161baa

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:986:28@

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
                                                        hs_bindgen_d64b7724d8161baa x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_d0483c30fd6c4c18" hs_bindgen_d0483c30fd6c4c18 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:991:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @val@
  -> IO FC.CInt
botan_mp_to_uint32 = hs_bindgen_d0483c30fd6c4c18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_09adce5d43621c26" hs_bindgen_09adce5d43621c26 ::
     Botan_mp_t
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:998:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_positive = hs_bindgen_09adce5d43621c26

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_92cb6c150e11586b" hs_bindgen_92cb6c150e11586b ::
     Botan_mp_t
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:1003:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_negative = hs_bindgen_92cb6c150e11586b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_169e614b11358b06" hs_bindgen_169e614b11358b06 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:1005:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_flip_sign = hs_bindgen_169e614b11358b06

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_6a96afbe93767259" hs_bindgen_6a96afbe93767259 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:1007:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_zero = hs_bindgen_6a96afbe93767259

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_467a36372cd272ea" hs_bindgen_467a36372cd272ea ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:1009:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_odd = hs_bindgen_467a36372cd272ea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_ac74fa1843a14c52" hs_bindgen_ac74fa1843a14c52 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:1010:76@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_even = hs_bindgen_ac74fa1843a14c52

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_814201a96cf691ad" hs_bindgen_814201a96cf691ad ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:1012:28@

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
botan_mp_add_u32 = hs_bindgen_814201a96cf691ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_bb5cccda94898053" hs_bindgen_bb5cccda94898053 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:1013:28@

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
botan_mp_sub_u32 = hs_bindgen_bb5cccda94898053

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_5de072ea6d5ef9a6" hs_bindgen_5de072ea6d5ef9a6 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:1015:28@

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
botan_mp_add = hs_bindgen_5de072ea6d5ef9a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_cc13b5b7b69fd642" hs_bindgen_cc13b5b7b69fd642 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:1016:28@

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
botan_mp_sub = hs_bindgen_cc13b5b7b69fd642

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_084b95c581272fc8" hs_bindgen_084b95c581272fc8 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:1017:28@

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
botan_mp_mul = hs_bindgen_084b95c581272fc8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_114712ea961f5703" hs_bindgen_114712ea961f5703 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:1020:5@

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
botan_mp_div = hs_bindgen_114712ea961f5703

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_6b4c008d2d9ea2df" hs_bindgen_6b4c008d2d9ea2df ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:1023:5@

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
botan_mp_mod_mul = hs_bindgen_6b4c008d2d9ea2df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_31f2e28be36113ee" hs_bindgen_31f2e28be36113ee ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:1030:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_equal = hs_bindgen_31f2e28be36113ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_60914b2777a37aee" hs_bindgen_60914b2777a37aee ::
     Ptr.Ptr FC.CInt
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:1037:28@

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
botan_mp_cmp = hs_bindgen_60914b2777a37aee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_8633197b15043a32" hs_bindgen_8633197b15043a32 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:1042:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_swap = hs_bindgen_8633197b15043a32

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_9888251c8b412b17" hs_bindgen_9888251c8b412b17 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:1046:5@

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
botan_mp_powmod = hs_bindgen_9888251c8b412b17

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_d25cf49865cd7704" hs_bindgen_d25cf49865cd7704 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:1048:28@

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
botan_mp_lshift = hs_bindgen_d25cf49865cd7704

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_442e6d7b550a789d" hs_bindgen_442e6d7b550a789d ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:1049:28@

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
botan_mp_rshift = hs_bindgen_442e6d7b550a789d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_a564a65fb1769d14" hs_bindgen_a564a65fb1769d14 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:1051:28@

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
botan_mp_mod_inverse = hs_bindgen_a564a65fb1769d14

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_a6cf58bf8bb1530d" hs_bindgen_a6cf58bf8bb1530d ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:1053:28@

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
botan_mp_rand_bits = hs_bindgen_a6cf58bf8bb1530d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_e318865f1ec027c9" hs_bindgen_e318865f1ec027c9 ::
     Botan_mp_t
  -> Botan_rng_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:1056:5@

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
botan_mp_rand_range = hs_bindgen_e318865f1ec027c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_cca50ef109737d7f" hs_bindgen_cca50ef109737d7f ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:1058:28@

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
botan_mp_gcd = hs_bindgen_cca50ef109737d7f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_ccd9d8dd50197038" hs_bindgen_ccd9d8dd50197038 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:1065:28@

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
botan_mp_is_prime = hs_bindgen_ccd9d8dd50197038

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_4b4b9c131df1446d" hs_bindgen_4b4b9c131df1446d ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:1072:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_get_bit = hs_bindgen_4b4b9c131df1446d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_4f8cc0b184a4c6fb" hs_bindgen_4f8cc0b184a4c6fb ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1077:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_set_bit = hs_bindgen_4f8cc0b184a4c6fb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_250fb265f2ed794e" hs_bindgen_250fb265f2ed794e ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1082:28@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_clear_bit = hs_bindgen_250fb265f2ed794e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_324cffda71a1255c" hs_bindgen_324cffda71a1255c ::
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

__defined at:__ @botan\/ffi.h:1100:5@

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
botan_bcrypt_generate = hs_bindgen_324cffda71a1255c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_30432ad610acab12" hs_bindgen_30432ad610acab12 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1111:28@

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
botan_bcrypt_is_valid = hs_bindgen_30432ad610acab12

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_destroy@
foreign import ccall unsafe "hs_bindgen_3f8d7e680f0dbf5c" hs_bindgen_3f8d7e680f0dbf5c ::
     Botan_asn1_oid_t
  -> IO FC.CInt

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_destroy@

__defined at:__ @botan\/ffi.h:1122:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_destroy ::
     Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> IO FC.CInt
botan_oid_destroy = hs_bindgen_3f8d7e680f0dbf5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_from_string@
foreign import ccall unsafe "hs_bindgen_e3c7a3b714b28c13" hs_bindgen_e3c7a3b714b28c13 ::
     Ptr.Ptr Botan_asn1_oid_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Create an OID from a string, either dot notation (e.g. '1.2.3.4') or a registered name (e.g. 'RSA')

  [__@oid@ /(input)/__]: hanlder to the resulting OID

  [__@oid_str@ /(input)/__]: the name of the OID to create

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_from_string@

__defined at:__ @botan\/ffi.h:1130:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_from_string ::
     Ptr.Ptr Botan_asn1_oid_t
     {- ^

        [__@oid@ /(input)/__]: hanlder to the resulting OID

     __C declaration:__ @oid@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@oid_str@ /(input)/__]: the name of the OID to create

     __C declaration:__ @oid_str@
     -}
  -> IO FC.CInt
botan_oid_from_string = hs_bindgen_e3c7a3b714b28c13

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_register@
foreign import ccall unsafe "hs_bindgen_e4bcacb5b8550344" hs_bindgen_e4bcacb5b8550344 ::
     Botan_asn1_oid_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Registers an OID so that it may later be retrieved by name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_oid_register@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_register ::
     Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> IO FC.CInt
botan_oid_register = hs_bindgen_e4bcacb5b8550344

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_view_string@
foreign import ccall unsafe "hs_bindgen_25669dc1a69163e9" hs_bindgen_25669dc1a69163e9 ::
     Botan_asn1_oid_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View an OID in dot notation

__C declaration:__ @botan_oid_view_string@

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_string ::
     Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_oid_view_string = hs_bindgen_25669dc1a69163e9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_view_name@
foreign import ccall unsafe "hs_bindgen_634083b7e5fc82f4" hs_bindgen_634083b7e5fc82f4 ::
     Botan_asn1_oid_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View an OIDs registered name if it exists, else its dot notation

__C declaration:__ @botan_oid_view_name@

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_view_name ::
     Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_oid_view_name = hs_bindgen_634083b7e5fc82f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_equal@
foreign import ccall unsafe "hs_bindgen_304e841fbbaa1204" hs_bindgen_304e841fbbaa1204 ::
     Botan_asn1_oid_t
  -> Botan_asn1_oid_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if a != b

  __returns:__ 1 if a == b

  __returns:__ negative number on error

__C declaration:__ @botan_oid_equal@

__defined at:__ @botan\/ffi.h:1153:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_equal ::
     Botan_asn1_oid_t
     -- ^ __C declaration:__ @a@
  -> Botan_asn1_oid_t
     -- ^ __C declaration:__ @b@
  -> IO FC.CInt
botan_oid_equal = hs_bindgen_304e841fbbaa1204

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_oid_cmp@
foreign import ccall unsafe "hs_bindgen_789dc9afb7028c50" hs_bindgen_789dc9afb7028c50 ::
     Ptr.Ptr FC.CInt
  -> Botan_asn1_oid_t
  -> Botan_asn1_oid_t
  -> IO FC.CInt

{-| Sets

  [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

  __returns:__ negative number on error or zero on success

__C declaration:__ @botan_oid_cmp@

__defined at:__ @botan\/ffi.h:1160:28@

__exported by:__ @botan\/ffi.h@
-}
botan_oid_cmp ::
     Ptr.Ptr FC.CInt
     {- ^

        [__@result@ /(input)/__]: to comparison result: -1 if a < b, 0 if a == b, 1 if a > b

     __C declaration:__ @result@
     -}
  -> Botan_asn1_oid_t
     -- ^ __C declaration:__ @a@
  -> Botan_asn1_oid_t
     -- ^ __C declaration:__ @b@
  -> IO FC.CInt
botan_oid_cmp = hs_bindgen_789dc9afb7028c50

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_destroy@
foreign import ccall unsafe "hs_bindgen_4f7d881b9d80304a" hs_bindgen_4f7d881b9d80304a ::
     Botan_ec_group_t
  -> IO FC.CInt

{-|

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_destroy@

__defined at:__ @botan\/ffi.h:1171:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_destroy ::
     Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_destroy = hs_bindgen_4f7d881b9d80304a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_supports_application_specific_group@
foreign import ccall unsafe "hs_bindgen_1797f1b1136296c1" hs_bindgen_1797f1b1136296c1 ::
     Ptr.Ptr FC.CInt
  -> IO FC.CInt

{-| Checks if in this build configuration it is possible to register an application specific elliptic curve and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_ec_group_supports_application_specific_group@

__defined at:__ @botan\/ffi.h:1178:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_application_specific_group ::
     Ptr.Ptr FC.CInt
     {- ^

        [__@out@ /(input)/__]: to 1 if so, 0 otherwise

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_ec_group_supports_application_specific_group =
  hs_bindgen_1797f1b1136296c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_supports_named_group@
foreign import ccall unsafe "hs_bindgen_abe6df94c5afe7ea" hs_bindgen_abe6df94c5afe7ea ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr FC.CInt
  -> IO FC.CInt

{-| Checks if in this build configuration botan_ec_group_from_name(group_ptr, name) will succeed and sets

  [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_supports_named_group@

__defined at:__ @botan\/ffi.h:1185:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_supports_named_group ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @name@
  -> Ptr.Ptr FC.CInt
     {- ^

        [__@out@ /(input)/__]: to 1 if so, 0 otherwise.

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_ec_group_supports_named_group =
  hs_bindgen_abe6df94c5afe7ea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_from_params@
foreign import ccall unsafe "hs_bindgen_bab9b6ea680a204b" hs_bindgen_bab9b6ea680a204b ::
     Ptr.Ptr Botan_ec_group_t
  -> Botan_asn1_oid_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

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
botan_ec_group_from_params ::
     Ptr.Ptr Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: the new object will be placed here

     __C declaration:__ @ec_group@
     -}
  -> Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_mp_t
     {- ^

        [__@p@ /(input)/__]: the elliptic curve prime (at most 521 bits)

     __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^

        [__@a@ /(input)/__]: the elliptic curve a param

     __C declaration:__ @a@
     -}
  -> Botan_mp_t
     {- ^

        [__@b@ /(input)/__]: the elliptic curve b param

     __C declaration:__ @b@
     -}
  -> Botan_mp_t
     {- ^

        [__@base_x@ /(input)/__]: the x coordinate of the group generator

     __C declaration:__ @base_x@
     -}
  -> Botan_mp_t
     {- ^

        [__@base_y@ /(input)/__]: the y coordinate of the group generator

     __C declaration:__ @base_y@
     -}
  -> Botan_mp_t
     {- ^

        [__@order@ /(input)/__]: the order of the group

     __C declaration:__ @order@
     -}
  -> IO FC.CInt
botan_ec_group_from_params =
  hs_bindgen_bab9b6ea680a204b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_from_ber@
foreign import ccall unsafe "hs_bindgen_5213b6acf50dab24" hs_bindgen_5213b6acf50dab24 ::
     Ptr.Ptr Botan_ec_group_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Decode a BER encoded ECC domain parameter set

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@ber@ /(input)/__]: encoding

  [__@ber_len@ /(input)/__]: size of the encoding in bytes

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_ber@

__defined at:__ @botan\/ffi.h:1217:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_ber ::
     Ptr.Ptr Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: the new object will be placed here

     __C declaration:__ @ec_group@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
     {- ^

        [__@ber@ /(input)/__]: encoding

     __C declaration:__ @ber@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@ber_len@ /(input)/__]: size of the encoding in bytes

     __C declaration:__ @ber_len@
     -}
  -> IO FC.CInt
botan_ec_group_from_ber = hs_bindgen_5213b6acf50dab24

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_from_pem@
foreign import ccall unsafe "hs_bindgen_63969a845ff6a62a" hs_bindgen_63969a845ff6a62a ::
     Ptr.Ptr Botan_ec_group_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize an EC Group from the PEM/ASN.1 encoding

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@pem@ /(input)/__]: encoding

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_pem@

__defined at:__ @botan\/ffi.h:1225:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_pem ::
     Ptr.Ptr Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: the new object will be placed here

     __C declaration:__ @ec_group@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@pem@ /(input)/__]: encoding

     __C declaration:__ @pem@
     -}
  -> IO FC.CInt
botan_ec_group_from_pem = hs_bindgen_63969a845ff6a62a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_from_oid@
foreign import ccall unsafe "hs_bindgen_8756686ef6a8c90e" hs_bindgen_8756686ef6a8c90e ::
     Ptr.Ptr Botan_ec_group_t
  -> Botan_asn1_oid_t
  -> IO FC.CInt

{-| Initialize an EC Group from a group named by an object identifier

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@oid@ /(input)/__]: a known OID

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_oid@

__defined at:__ @botan\/ffi.h:1233:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_oid ::
     Ptr.Ptr Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: the new object will be placed here

     __C declaration:__ @ec_group@
     -}
  -> Botan_asn1_oid_t
     {- ^

        [__@oid@ /(input)/__]: a known OID

     __C declaration:__ @oid@
     -}
  -> IO FC.CInt
botan_ec_group_from_oid = hs_bindgen_8756686ef6a8c90e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_from_name@
foreign import ccall unsafe "hs_bindgen_1679e6ff65043358" hs_bindgen_1679e6ff65043358 ::
     Ptr.Ptr Botan_ec_group_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize an EC Group from a common group name (eg "secp256r1")

  [__@ec_group@ /(input)/__]: the new object will be placed here

  [__@name@ /(input)/__]: a known group name

  __returns:__ negative number on error, or zero on success

__C declaration:__ @botan_ec_group_from_name@

__defined at:__ @botan\/ffi.h:1241:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_from_name ::
     Ptr.Ptr Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: the new object will be placed here

     __C declaration:__ @ec_group@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@name@ /(input)/__]: a known group name

     __C declaration:__ @name@
     -}
  -> IO FC.CInt
botan_ec_group_from_name =
  hs_bindgen_1679e6ff65043358

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_view_der@
foreign import ccall unsafe "hs_bindgen_1c1cd4e9f022f4c1" hs_bindgen_1c1cd4e9f022f4c1 ::
     Botan_ec_group_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View an EC Group in DER encoding

__C declaration:__ @botan_ec_group_view_der@

__defined at:__ @botan\/ffi.h:1247:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_der ::
     Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_bin_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_ec_group_view_der = hs_bindgen_1c1cd4e9f022f4c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_view_pem@
foreign import ccall unsafe "hs_bindgen_5ba5a4609c194724" hs_bindgen_5ba5a4609c194724 ::
     Botan_ec_group_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View an EC Group in PEM encoding

__C declaration:__ @botan_ec_group_view_pem@

__defined at:__ @botan\/ffi.h:1253:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_view_pem ::
     Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> Botan_view_ctx
     -- ^ __C declaration:__ @ctx@
  -> Botan_view_str_fn
     -- ^ __C declaration:__ @view@
  -> IO FC.CInt
botan_ec_group_view_pem = hs_bindgen_5ba5a4609c194724

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_curve_oid@
foreign import ccall unsafe "hs_bindgen_aa8280581455970c" hs_bindgen_aa8280581455970c ::
     Ptr.Ptr Botan_asn1_oid_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the curve OID of an EC Group

__C declaration:__ @botan_ec_group_get_curve_oid@

__defined at:__ @botan\/ffi.h:1258:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_curve_oid ::
     Ptr.Ptr Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_curve_oid =
  hs_bindgen_aa8280581455970c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_p@
foreign import ccall unsafe "hs_bindgen_947fbc7ffd7fa77b" hs_bindgen_947fbc7ffd7fa77b ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the prime modulus of the field

__C declaration:__ @botan_ec_group_get_p@

__defined at:__ @botan\/ffi.h:1263:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_p ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_p = hs_bindgen_947fbc7ffd7fa77b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_a@
foreign import ccall unsafe "hs_bindgen_43b419e431479e40" hs_bindgen_43b419e431479e40 ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the a parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_a@

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_a ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @a@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_a = hs_bindgen_43b419e431479e40

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_b@
foreign import ccall unsafe "hs_bindgen_e8ef15df6f33339f" hs_bindgen_e8ef15df6f33339f ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the b parameter of the elliptic curve equation

__C declaration:__ @botan_ec_group_get_b@

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_b ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @b@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_b = hs_bindgen_e8ef15df6f33339f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_g_x@
foreign import ccall unsafe "hs_bindgen_c1f5a1e7c2e1bb0c" hs_bindgen_c1f5a1e7c2e1bb0c ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the x coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_x@

__defined at:__ @botan\/ffi.h:1278:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_x ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @g_x@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_g_x = hs_bindgen_c1f5a1e7c2e1bb0c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_g_y@
foreign import ccall unsafe "hs_bindgen_77d9c1dd72b43ac5" hs_bindgen_77d9c1dd72b43ac5 ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the y coordinate of the base point

__C declaration:__ @botan_ec_group_get_g_y@

__defined at:__ @botan\/ffi.h:1283:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_g_y ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @g_y@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_g_y = hs_bindgen_77d9c1dd72b43ac5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_get_order@
foreign import ccall unsafe "hs_bindgen_a52dd7d7a0842f0f" hs_bindgen_a52dd7d7a0842f0f ::
     Ptr.Ptr Botan_mp_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-| Get the order of the base point

__C declaration:__ @botan_ec_group_get_order@

__defined at:__ @botan\/ffi.h:1288:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_get_order ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @order@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @ec_group@
  -> IO FC.CInt
botan_ec_group_get_order =
  hs_bindgen_a52dd7d7a0842f0f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_group_equal@
foreign import ccall unsafe "hs_bindgen_57efd416db1c6ab5" hs_bindgen_57efd416db1c6ab5 ::
     Botan_ec_group_t
  -> Botan_ec_group_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if curve1 != curve2

  __returns:__ 1 if curve1 == curve2

  __returns:__ negative number on error

__C declaration:__ @botan_ec_group_equal@

__defined at:__ @botan\/ffi.h:1295:28@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_group_equal ::
     Botan_ec_group_t
     -- ^ __C declaration:__ @curve1@
  -> Botan_ec_group_t
     -- ^ __C declaration:__ @curve2@
  -> IO FC.CInt
botan_ec_group_equal = hs_bindgen_57efd416db1c6ab5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_1f7d3ba62496de5c" hs_bindgen_1f7d3ba62496de5c ::
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

__defined at:__ @botan\/ffi.h:1311:5@

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
botan_privkey_create = hs_bindgen_1f7d3ba62496de5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_ec_privkey_create@
foreign import ccall unsafe "hs_bindgen_b447641d41bdfde2" hs_bindgen_b447641d41bdfde2 ::
     Ptr.Ptr Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_ec_group_t
  -> Botan_rng_t
  -> IO FC.CInt

{-| Create a new ec private key

  [__@key@ /(input)/__]: the new object will be placed here

  [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

  [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

  [__@rng@ /(input)/__]: a random number generator

__C declaration:__ @botan_ec_privkey_create@

__defined at:__ @botan\/ffi.h:1321:5@

__exported by:__ @botan\/ffi.h@
-}
botan_ec_privkey_create ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: the new object will be placed here

     __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     {- ^

        [__@algo_name@ /(input)/__]: something like "ECDSA" or "ECDH"

     __C declaration:__ @algo_name@
     -}
  -> Botan_ec_group_t
     {- ^

        [__@ec_group@ /(input)/__]: a (possibly application specific) elliptic curve

     __C declaration:__ @ec_group@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: a random number generator

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_ec_privkey_create = hs_bindgen_b447641d41bdfde2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_b15baf01e3e1d967" hs_bindgen_b15baf01e3e1d967 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1325:28@

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
botan_privkey_check_key = hs_bindgen_b15baf01e3e1d967

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_54ba3ab12a74db33" hs_bindgen_54ba3ab12a74db33 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1328:28@

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
  hs_bindgen_54ba3ab12a74db33

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_a7813fab639c8b41" hs_bindgen_a7813fab639c8b41 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1330:28@

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
  hs_bindgen_a7813fab639c8b41

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_dbf26034007b93fe" hs_bindgen_dbf26034007b93fe ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1332:28@

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
  hs_bindgen_dbf26034007b93fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_7ca502063f115b03" hs_bindgen_7ca502063f115b03 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1334:28@

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
  hs_bindgen_7ca502063f115b03

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_6cb8e08ab957b8a4" hs_bindgen_6cb8e08ab957b8a4 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1336:28@

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
botan_privkey_create_dh = hs_bindgen_6cb8e08ab957b8a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_3e4e0a07c3ed9ca4" hs_bindgen_3e4e0a07c3ed9ca4 ::
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

__defined at:__ @botan\/ffi.h:1356:28@

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
  hs_bindgen_3e4e0a07c3ed9ca4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_f9eb174a4597ee05" hs_bindgen_f9eb174a4597ee05 ::
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

__defined at:__ @botan\/ffi.h:1378:5@

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
  hs_bindgen_f9eb174a4597ee05

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_e350320488e10db1" hs_bindgen_e350320488e10db1 ::
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
  hs_bindgen_e350320488e10db1

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1386:5@

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
                                                            hs_bindgen_e350320488e10db1 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_fe63a0f7e63bd3fa" hs_bindgen_fe63a0f7e63bd3fa ::
     Botan_privkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1391:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_destroy = hs_bindgen_fe63a0f7e63bd3fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_b4956805fa52d61a" hs_bindgen_b4956805fa52d61a ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export@

    __defined at:__ @botan\/ffi.h:1405:28@

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
botan_privkey_export = hs_bindgen_b4956805fa52d61a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_a4d40ef752b6742e" hs_bindgen_a4d40ef752b6742e ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1410:28@

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
botan_privkey_view_der = hs_bindgen_a4d40ef752b6742e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_b18e1cd50cbea16d" hs_bindgen_b18e1cd50cbea16d ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1415:28@

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
botan_privkey_view_pem = hs_bindgen_b18e1cd50cbea16d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_raw@
foreign import ccall unsafe "hs_bindgen_53695e0c047ae644" hs_bindgen_53695e0c047ae644 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's raw encoding

__C declaration:__ @botan_privkey_view_raw@

__defined at:__ @botan\/ffi.h:1420:28@

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
botan_privkey_view_raw = hs_bindgen_53695e0c047ae644

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_e792c09bbe5cefb7" hs_bindgen_e792c09bbe5cefb7 ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1422:28@

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
botan_privkey_algo_name = hs_bindgen_e792c09bbe5cefb7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_11e6a276149c07cd" hs_bindgen_11e6a276149c07cd ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1429:5@

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
  hs_bindgen_11e6a276149c07cd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_a1d0b42cd2866182" hs_bindgen_a1d0b42cd2866182 ::
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

    __defined at:__ @botan\/ffi.h:1445:5@

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
  hs_bindgen_a1d0b42cd2866182

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_3b24ec2a8c143903" hs_bindgen_3b24ec2a8c143903 ::
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

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

    __defined at:__ @botan\/ffi.h:1461:5@

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
  hs_bindgen_3b24ec2a8c143903

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_cd788f5b91927dde" hs_bindgen_cd788f5b91927dde ::
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

__defined at:__ @botan\/ffi.h:1478:5@

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
  hs_bindgen_cd788f5b91927dde

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_f9c21edeec5cf22a" hs_bindgen_f9c21edeec5cf22a ::
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

__defined at:__ @botan\/ffi.h:1493:5@

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
  hs_bindgen_f9c21edeec5cf22a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_49f853d1ee5944d6" hs_bindgen_49f853d1ee5944d6 ::
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

__defined at:__ @botan\/ffi.h:1509:5@

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
  hs_bindgen_49f853d1ee5944d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_7fb8172d8753e12e" hs_bindgen_7fb8172d8753e12e ::
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

__defined at:__ @botan\/ffi.h:1524:5@

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
  hs_bindgen_7fb8172d8753e12e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_b168853615c3f9ba" hs_bindgen_b168853615c3f9ba ::
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
  hs_bindgen_b168853615c3f9ba

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1535:28@

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
                                                        hs_bindgen_b168853615c3f9ba x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_3af8bc7a27de7709" hs_bindgen_3af8bc7a27de7709 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1537:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @out@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @in'@
  -> IO FC.CInt
botan_privkey_export_pubkey =
  hs_bindgen_3af8bc7a27de7709

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_22e339fbb78ca4fa" hs_bindgen_22e339fbb78ca4fa ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1540:28@

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
botan_pubkey_export = hs_bindgen_22e339fbb78ca4fa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_fbfea88dd69f52a3" hs_bindgen_fbfea88dd69f52a3 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1545:28@

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
botan_pubkey_view_der = hs_bindgen_fbfea88dd69f52a3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_26144a06bef35180" hs_bindgen_26144a06bef35180 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1550:28@

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
botan_pubkey_view_pem = hs_bindgen_26144a06bef35180

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_view_raw@
foreign import ccall unsafe "hs_bindgen_4ef0235698b750a9" hs_bindgen_4ef0235698b750a9 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's raw encoding

__C declaration:__ @botan_pubkey_view_raw@

__defined at:__ @botan\/ffi.h:1555:28@

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
botan_pubkey_view_raw = hs_bindgen_4ef0235698b750a9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_13de96509b4b414d" hs_bindgen_13de96509b4b414d ::
     Botan_pubkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1557:28@

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
botan_pubkey_algo_name = hs_bindgen_13de96509b4b414d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_609de378608453e4" hs_bindgen_609de378608453e4 ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1562:28@

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
botan_pubkey_check_key = hs_bindgen_609de378608453e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_210f9e5a2a12b6a0" hs_bindgen_210f9e5a2a12b6a0 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1564:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @estimate@
  -> IO FC.CInt
botan_pubkey_estimated_strength =
  hs_bindgen_210f9e5a2a12b6a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_f653c4c7b217f9c5" hs_bindgen_f653c4c7b217f9c5 ::
     Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1567:5@

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
  hs_bindgen_f653c4c7b217f9c5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_624fcff6acd247dd" hs_bindgen_624fcff6acd247dd ::
     Botan_pubkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1572:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_destroy = hs_bindgen_624fcff6acd247dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_5672847d78310fef" hs_bindgen_5672847d78310fef ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1577:28@

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
botan_pubkey_get_field = hs_bindgen_5672847d78310fef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_b071ffd53511ba6b" hs_bindgen_b071ffd53511ba6b ::
     Botan_mp_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1579:28@

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
botan_privkey_get_field = hs_bindgen_b071ffd53511ba6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_oid@
foreign import ccall unsafe "hs_bindgen_03e892db79997729" hs_bindgen_03e892db79997729 ::
     Ptr.Ptr Botan_asn1_oid_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_oid@

    __defined at:__ @botan\/ffi.h:1585:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_oid ::
     Ptr.Ptr Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_oid = hs_bindgen_03e892db79997729

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_oid@
foreign import ccall unsafe "hs_bindgen_c11e14f8d6add764" hs_bindgen_c11e14f8d6add764 ::
     Ptr.Ptr Botan_asn1_oid_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_oid@

    __defined at:__ @botan\/ffi.h:1588:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_oid ::
     Ptr.Ptr Botan_asn1_oid_t
     -- ^ __C declaration:__ @oid@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_oid = hs_bindgen_c11e14f8d6add764

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_stateful_operation@
foreign import ccall unsafe "hs_bindgen_1177dbe7595386b6" hs_bindgen_1177dbe7595386b6 ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CInt
  -> IO FC.CInt

{-| Checks whether a key is stateful and sets

  [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_privkey_stateful_operation@

__defined at:__ @botan\/ffi.h:1595:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_stateful_operation ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr FC.CInt
     {- ^

        [__@out@ /(input)/__]: to 1 if it is, or 0 if the key is not stateful

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_privkey_stateful_operation =
  hs_bindgen_1177dbe7595386b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_remaining_operations@
foreign import ccall unsafe "hs_bindgen_898f64982bb7c846" hs_bindgen_898f64982bb7c846 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Gets information on many operations a (stateful) key has remaining and sets

  [__@out@ /(input)/__]: to that value

  __returns:__ 0 on success, a negative value on failure or if the key is not stateful

__C declaration:__ @botan_privkey_remaining_operations@

__defined at:__ @botan\/ffi.h:1602:28@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_remaining_operations ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^

        [__@out@ /(input)/__]: to that value

     __C declaration:__ @out@
     -}
  -> IO FC.CInt
botan_privkey_remaining_operations =
  hs_bindgen_898f64982bb7c846

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_f786b49bca53f48e" hs_bindgen_f786b49bca53f48e ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1607:28@

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
botan_privkey_load_rsa = hs_bindgen_f786b49bca53f48e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_6c6d3139d39f8d0c" hs_bindgen_6c6d3139d39f8d0c ::
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
  hs_bindgen_6c6d3139d39f8d0c

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1609:28@

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
                                                        hs_bindgen_6c6d3139d39f8d0c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_2d611b9635a90b92" hs_bindgen_2d611b9635a90b92 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1612:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_p = hs_bindgen_2d611b9635a90b92

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_49b055da02cee7e5" hs_bindgen_49b055da02cee7e5 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1614:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_q = hs_bindgen_49b055da02cee7e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_6ae8449e63a8aaeb" hs_bindgen_6ae8449e63a8aaeb ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1616:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_d = hs_bindgen_6ae8449e63a8aaeb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_f4318c987d3b2dc5" hs_bindgen_f4318c987d3b2dc5 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1618:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_n = hs_bindgen_f4318c987d3b2dc5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_537f189157f9eda9" hs_bindgen_537f189157f9eda9 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1620:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_e = hs_bindgen_537f189157f9eda9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_6b19bd9a56228bdb" hs_bindgen_6b19bd9a56228bdb ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1623:5@

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
  hs_bindgen_6b19bd9a56228bdb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_b4925eed36e07404" hs_bindgen_b4925eed36e07404 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1625:28@

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
botan_pubkey_load_rsa = hs_bindgen_b4925eed36e07404

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_bd8f446c833d6205" hs_bindgen_bd8f446c833d6205 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1628:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_e = hs_bindgen_bd8f446c833d6205

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_2906dd10c68051ac" hs_bindgen_2906dd10c68051ac ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1630:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_n = hs_bindgen_2906dd10c68051ac

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_e3b2c4b05de33695" hs_bindgen_e3b2c4b05de33695 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1636:5@

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
botan_privkey_load_dsa = hs_bindgen_e3b2c4b05de33695

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_e6675289232fdd75" hs_bindgen_e6675289232fdd75 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1639:5@

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
botan_pubkey_load_dsa = hs_bindgen_e6675289232fdd75

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_36aceb7f6566ff2e" hs_bindgen_36aceb7f6566ff2e ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1642:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_dsa_get_x = hs_bindgen_36aceb7f6566ff2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_3538b05e4c2bcebf" hs_bindgen_3538b05e4c2bcebf ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1645:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_p = hs_bindgen_3538b05e4c2bcebf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_692ef7150c9a174d" hs_bindgen_692ef7150c9a174d ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1647:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_q = hs_bindgen_692ef7150c9a174d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_c97ddb226d23ca49" hs_bindgen_c97ddb226d23ca49 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1649:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_g = hs_bindgen_c97ddb226d23ca49

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_ae675e2bf53934d7" hs_bindgen_ae675e2bf53934d7 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1651:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y ::
     Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_y = hs_bindgen_ae675e2bf53934d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_165a7641b488b0ed" hs_bindgen_165a7641b488b0ed ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1666:28@

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
botan_privkey_load_dh = hs_bindgen_165a7641b488b0ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_c8b6e86a65f25066" hs_bindgen_c8b6e86a65f25066 ::
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

__defined at:__ @botan\/ffi.h:1680:28@

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
botan_pubkey_load_dh = hs_bindgen_c8b6e86a65f25066

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_89e1b1eb6befae08" hs_bindgen_89e1b1eb6befae08 ::
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

__defined at:__ @botan\/ffi.h:1698:28@

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
  hs_bindgen_89e1b1eb6befae08

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_d933948410af3ccc" hs_bindgen_d933948410af3ccc ::
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

__defined at:__ @botan\/ffi.h:1713:28@

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
  hs_bindgen_d933948410af3ccc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_28a94f4fbe04a11a" hs_bindgen_28a94f4fbe04a11a ::
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
  hs_bindgen_28a94f4fbe04a11a

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1719:28@

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
                                                    hs_bindgen_28a94f4fbe04a11a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_e6d170bc232cabf1" hs_bindgen_e6d170bc232cabf1 ::
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
  hs_bindgen_e6d170bc232cabf1

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1721:28@

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
                                                    hs_bindgen_e6d170bc232cabf1 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_3813de62b987ab73" hs_bindgen_3813de62b987ab73 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed25519_get_privkey =
  hs_bindgen_3813de62b987ab73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_60b3299ea3ea841c" hs_bindgen_60b3299ea3ea841c ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed25519_get_pubkey =
  hs_bindgen_60b3299ea3ea841c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_049d554c12ae082d" hs_bindgen_049d554c12ae082d ::
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
  hs_bindgen_049d554c12ae082d

{-| __C declaration:__ @botan_privkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1733:28@

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
                                                    hs_bindgen_049d554c12ae082d x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ed448@
foreign import ccall unsafe "hs_bindgen_39ad028a49be1707" hs_bindgen_39ad028a49be1707 ::
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
  hs_bindgen_39ad028a49be1707

{-| __C declaration:__ @botan_pubkey_load_ed448@

    __defined at:__ @botan\/ffi.h:1735:28@

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
                                                    hs_bindgen_39ad028a49be1707 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_ed448_get_privkey@
foreign import ccall unsafe "hs_bindgen_87210c7585e41423" hs_bindgen_87210c7585e41423 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed448_get_privkey@

    __defined at:__ @botan\/ffi.h:1738:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed448_get_privkey =
  hs_bindgen_87210c7585e41423

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_ed448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_6e52fac2d9228a18" hs_bindgen_6e52fac2d9228a18 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1741:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed448_get_pubkey =
  hs_bindgen_6e52fac2d9228a18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_56fea074e5643760" hs_bindgen_56fea074e5643760 ::
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
  hs_bindgen_56fea074e5643760

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1747:28@

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
                                                    hs_bindgen_56fea074e5643760 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_ed76a60e8f743bad" hs_bindgen_ed76a60e8f743bad ::
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
  hs_bindgen_ed76a60e8f743bad

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1749:28@

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
                                                    hs_bindgen_ed76a60e8f743bad x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_ceda76448580cb70" hs_bindgen_ceda76448580cb70 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x25519_get_privkey =
  hs_bindgen_ceda76448580cb70

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_c1b13bea1244aed8" hs_bindgen_c1b13bea1244aed8 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1755:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x25519_get_pubkey =
  hs_bindgen_c1b13bea1244aed8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_x448@
foreign import ccall unsafe "hs_bindgen_7e141736f41115a8" hs_bindgen_7e141736f41115a8 ::
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
  hs_bindgen_7e141736f41115a8

{-| __C declaration:__ @botan_privkey_load_x448@

    __defined at:__ @botan\/ffi.h:1761:28@

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
                                                    hs_bindgen_7e141736f41115a8 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_x448@
foreign import ccall unsafe "hs_bindgen_4393f736498e65b1" hs_bindgen_4393f736498e65b1 ::
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
  hs_bindgen_4393f736498e65b1

{-| __C declaration:__ @botan_pubkey_load_x448@

    __defined at:__ @botan\/ffi.h:1763:28@

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
                                                    hs_bindgen_4393f736498e65b1 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_x448_get_privkey@
foreign import ccall unsafe "hs_bindgen_5908e3acce9209ff" hs_bindgen_5908e3acce9209ff ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x448_get_privkey@

    __defined at:__ @botan\/ffi.h:1766:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x448_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x448_get_privkey =
  hs_bindgen_5908e3acce9209ff

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_x448_get_pubkey@
foreign import ccall unsafe "hs_bindgen_0ed744271b217827" hs_bindgen_0ed744271b217827 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x448_get_pubkey@

    __defined at:__ @botan\/ffi.h:1769:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x448_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x448_get_pubkey =
  hs_bindgen_0ed744271b217827

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_b137ef067a3bdc3b" hs_bindgen_b137ef067a3bdc3b ::
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
  hs_bindgen_b137ef067a3bdc3b

{-| __C declaration:__ @botan_privkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1776:5@

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
                                                          hs_bindgen_b137ef067a3bdc3b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ml_dsa@
foreign import ccall unsafe "hs_bindgen_83c8b95d1c273fcd" hs_bindgen_83c8b95d1c273fcd ::
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
  hs_bindgen_83c8b95d1c273fcd

{-| __C declaration:__ @botan_pubkey_load_ml_dsa@

    __defined at:__ @botan\/ffi.h:1779:5@

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
                                                          hs_bindgen_83c8b95d1c273fcd x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_ca9a8e1e64c7be30" hs_bindgen_ca9a8e1e64c7be30 ::
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
  hs_bindgen_ca9a8e1e64c7be30

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1790:28@

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
                                                        hs_bindgen_ca9a8e1e64c7be30 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_kyber@
foreign import ccall unsafe "hs_bindgen_e87293a333b79597" hs_bindgen_e87293a333b79597 ::
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
  hs_bindgen_e87293a333b79597

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1793:28@

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
                                                        hs_bindgen_e87293a333b79597 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_1623c78e64450946" hs_bindgen_1623c78e64450946 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1797:5@

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
  hs_bindgen_1623c78e64450946

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_view_kyber_raw_key@
foreign import ccall unsafe "hs_bindgen_0be540358643b870" hs_bindgen_0be540358643b870 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1801:5@

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
  hs_bindgen_0be540358643b870

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_4c842c6885cf96d8" hs_bindgen_4c842c6885cf96d8 ::
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
  hs_bindgen_4c842c6885cf96d8

{-| Algorithm specific key operation: FrodoKEM

__C declaration:__ @botan_privkey_load_frodokem@

__defined at:__ @botan\/ffi.h:1808:5@

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
                                                          hs_bindgen_4c842c6885cf96d8 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_frodokem@
foreign import ccall unsafe "hs_bindgen_64a65397773f21e4" hs_bindgen_64a65397773f21e4 ::
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
  hs_bindgen_64a65397773f21e4

{-| __C declaration:__ @botan_pubkey_load_frodokem@

    __defined at:__ @botan\/ffi.h:1811:5@

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
                                                          hs_bindgen_64a65397773f21e4 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_514d2a56a1006379" hs_bindgen_514d2a56a1006379 ::
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
  hs_bindgen_514d2a56a1006379

{-| Algorithm specific key operation: Classic McEliece

__C declaration:__ @botan_privkey_load_classic_mceliece@

__defined at:__ @botan\/ffi.h:1818:5@

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
                                                          hs_bindgen_514d2a56a1006379 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_classic_mceliece@
foreign import ccall unsafe "hs_bindgen_1d3c65dd47d1526e" hs_bindgen_1d3c65dd47d1526e ::
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
  hs_bindgen_1d3c65dd47d1526e

{-| __C declaration:__ @botan_pubkey_load_classic_mceliece@

    __defined at:__ @botan\/ffi.h:1824:5@

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
                                                          hs_bindgen_1d3c65dd47d1526e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_0362eb4bb68ec3a3" hs_bindgen_0362eb4bb68ec3a3 ::
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
  hs_bindgen_0362eb4bb68ec3a3

{-| __C declaration:__ @botan_privkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1834:5@

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
                                                          hs_bindgen_0362eb4bb68ec3a3 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ml_kem@
foreign import ccall unsafe "hs_bindgen_33b0e017dbdcd835" hs_bindgen_33b0e017dbdcd835 ::
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
  hs_bindgen_33b0e017dbdcd835

{-| __C declaration:__ @botan_pubkey_load_ml_kem@

    __defined at:__ @botan\/ffi.h:1837:5@

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
                                                          hs_bindgen_33b0e017dbdcd835 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_bc3f7d6abdbdbb12" hs_bindgen_bc3f7d6abdbdbb12 ::
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
  hs_bindgen_bc3f7d6abdbdbb12

{-| __C declaration:__ @botan_privkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1844:5@

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
                                                          hs_bindgen_bc3f7d6abdbdbb12 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_slh_dsa@
foreign import ccall unsafe "hs_bindgen_899e82b6bb8ea17c" hs_bindgen_899e82b6bb8ea17c ::
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
  hs_bindgen_899e82b6bb8ea17c

{-| __C declaration:__ @botan_pubkey_load_slh_dsa@

    __defined at:__ @botan\/ffi.h:1847:5@

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
                                                          hs_bindgen_899e82b6bb8ea17c x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_ecc_key_used_explicit_encoding@
foreign import ccall unsafe "hs_bindgen_c36186a11cbdd5cc" hs_bindgen_c36186a11cbdd5cc ::
     Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ecc_key_used_explicit_encoding@

    __defined at:__ @botan\/ffi.h:1853:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ecc_key_used_explicit_encoding ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_ecc_key_used_explicit_encoding =
  hs_bindgen_c36186a11cbdd5cc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_7097b12c6344bf78" hs_bindgen_7097b12c6344bf78 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1856:5@

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
  hs_bindgen_7097b12c6344bf78

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_80adaffe2d6a5787" hs_bindgen_80adaffe2d6a5787 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1859:5@

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
botan_pubkey_load_ecdsa = hs_bindgen_80adaffe2d6a5787

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_7a58cd127a1b71e8" hs_bindgen_7a58cd127a1b71e8 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1862:5@

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
botan_pubkey_load_ecdh = hs_bindgen_7a58cd127a1b71e8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_69d5f07ca78d1b73" hs_bindgen_69d5f07ca78d1b73 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1865:5@

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
botan_privkey_load_ecdh = hs_bindgen_69d5f07ca78d1b73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_08861c14f5cd3f8c" hs_bindgen_08861c14f5cd3f8c ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1868:5@

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
botan_pubkey_load_sm2 = hs_bindgen_08861c14f5cd3f8c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_23f5c091befd272d" hs_bindgen_23f5c091befd272d ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1871:5@

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
botan_privkey_load_sm2 = hs_bindgen_23f5c091befd272d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_74c90b5226148668" hs_bindgen_74c90b5226148668 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1875:5@

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
  hs_bindgen_74c90b5226148668

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_ce444b4b77cc7273" hs_bindgen_ce444b4b77cc7273 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1879:5@

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
  hs_bindgen_ce444b4b77cc7273

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_ceba776a6a8afad6" hs_bindgen_ceba776a6a8afad6 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1882:5@

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
  hs_bindgen_ceba776a6a8afad6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_59320618e720e302" hs_bindgen_59320618e720e302 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1889:5@

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
  hs_bindgen_59320618e720e302

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_9a2fa76f8c60c723" hs_bindgen_9a2fa76f8c60c723 ::
     Ptr.Ptr Botan_pk_op_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1897:5@

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
  hs_bindgen_9a2fa76f8c60c723

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_91987baf45875763" hs_bindgen_91987baf45875763 ::
     Botan_pk_op_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1902:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_encrypt_destroy =
  hs_bindgen_91987baf45875763

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_230444438b6d6f12" hs_bindgen_230444438b6d6f12 ::
     Botan_pk_op_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1905:5@

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
  hs_bindgen_230444438b6d6f12

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_fc6bfb10a83e7262" hs_bindgen_fc6bfb10a83e7262 ::
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
  hs_bindgen_fc6bfb10a83e7262

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1908:5@

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
                                                              hs_bindgen_fc6bfb10a83e7262 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_62ca366d8c8815dd" hs_bindgen_62ca366d8c8815dd ::
     Ptr.Ptr Botan_pk_op_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1921:5@

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
  hs_bindgen_62ca366d8c8815dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_f14fead0d8774385" hs_bindgen_f14fead0d8774385 ::
     Botan_pk_op_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1926:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_decrypt_destroy =
  hs_bindgen_f14fead0d8774385

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_d487a7aabd6b8f83" hs_bindgen_d487a7aabd6b8f83 ::
     Botan_pk_op_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1929:5@

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
  hs_bindgen_d487a7aabd6b8f83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_d3df3c25d12136db" hs_bindgen_d3df3c25d12136db ::
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
  hs_bindgen_d3df3c25d12136db

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1932:5@

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
                                                            hs_bindgen_d3df3c25d12136db x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_801dc71c9af7cd7d" hs_bindgen_801dc71c9af7cd7d ::
     Ptr.Ptr Botan_pk_op_sign_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1944:5@

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
botan_pk_op_sign_create = hs_bindgen_801dc71c9af7cd7d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_00261ab86c3d65d1" hs_bindgen_00261ab86c3d65d1 ::
     Botan_pk_op_sign_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1949:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_sign_destroy =
  hs_bindgen_00261ab86c3d65d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_802be489c5021e29" hs_bindgen_802be489c5021e29 ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1951:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @olen@
  -> IO FC.CInt
botan_pk_op_sign_output_length =
  hs_bindgen_802be489c5021e29

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_bd2c889d9792009a" hs_bindgen_bd2c889d9792009a ::
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
  hs_bindgen_bd2c889d9792009a

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1953:28@

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
                                                        hs_bindgen_bd2c889d9792009a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_bd47626e824ae949" hs_bindgen_bd47626e824ae949 ::
     Botan_pk_op_sign_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1956:5@

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
botan_pk_op_sign_finish = hs_bindgen_bd47626e824ae949

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_0d1f522ef6f8d99b" hs_bindgen_0d1f522ef6f8d99b ::
     Ptr.Ptr Botan_pk_op_verify_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1964:5@

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
  hs_bindgen_0d1f522ef6f8d99b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_d57d42f7a3587782" hs_bindgen_d57d42f7a3587782 ::
     Botan_pk_op_verify_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1972:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_verify_destroy =
  hs_bindgen_d57d42f7a3587782

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_bd0347394c73e973" hs_bindgen_bd0347394c73e973 ::
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
  hs_bindgen_bd0347394c73e973

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1974:28@

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
                                                        hs_bindgen_bd0347394c73e973 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_198fe51b49137876" hs_bindgen_198fe51b49137876 ::
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
  hs_bindgen_198fe51b49137876

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1975:28@

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
                                                        hs_bindgen_198fe51b49137876 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_08ad2fd69de742a1" hs_bindgen_08ad2fd69de742a1 ::
     Ptr.Ptr Botan_pk_op_ka_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1983:5@

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
  hs_bindgen_08ad2fd69de742a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_a3049a24ff3506bc" hs_bindgen_a3049a24ff3506bc ::
     Botan_pk_op_ka_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1988:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_key_agreement_destroy =
  hs_bindgen_a3049a24ff3506bc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_fde31d512533d6a7" hs_bindgen_fde31d512533d6a7 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1990:28@

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
  hs_bindgen_fde31d512533d6a7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_c014baa76ac8e4f8" hs_bindgen_c014baa76ac8e4f8 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1993:5@

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
  hs_bindgen_c014baa76ac8e4f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_59585443e5728dea" hs_bindgen_59585443e5728dea ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1995:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_size =
  hs_bindgen_59585443e5728dea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_e177cabfd07cc7cb" hs_bindgen_e177cabfd07cc7cb ::
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
  hs_bindgen_e177cabfd07cc7cb

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1998:5@

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
                                                                                                                hs_bindgen_e177cabfd07cc7cb x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x6))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_e43b9a882369dddb" hs_bindgen_e43b9a882369dddb ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:2012:5@

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
  hs_bindgen_e43b9a882369dddb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_12359682dda3bf73" hs_bindgen_12359682dda3bf73 ::
     Botan_pk_op_kem_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:2017:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_destroy =
  hs_bindgen_12359682dda3bf73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_7ab81c614a893e42" hs_bindgen_7ab81c614a893e42 ::
     Botan_pk_op_kem_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2020:5@

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
  hs_bindgen_7ab81c614a893e42

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_dc8336d22650a55a" hs_bindgen_dc8336d22650a55a ::
     Botan_pk_op_kem_encrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:2025:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_encapsulated_key_length@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_encapsulated_key_length =
  hs_bindgen_dc8336d22650a55a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_2a2829a7bcbaf9ed" hs_bindgen_2a2829a7bcbaf9ed ::
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
  hs_bindgen_2a2829a7bcbaf9ed

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:2029:5@

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
                                                                    hs_bindgen_2a2829a7bcbaf9ed x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 x4 x5 x6 x7 x8)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_81c10a2f0fd16bea" hs_bindgen_81c10a2f0fd16bea ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:2042:5@

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
  hs_bindgen_81c10a2f0fd16bea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_81e8f0aa1ccc5ce1" hs_bindgen_81e8f0aa1ccc5ce1 ::
     Botan_pk_op_kem_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:2047:28@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_destroy =
  hs_bindgen_81e8f0aa1ccc5ce1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_2e1009a20f8e5bd1" hs_bindgen_2e1009a20f8e5bd1 ::
     Botan_pk_op_kem_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:2050:5@

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
  hs_bindgen_2e1009a20f8e5bd1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_fec6cba0899460ff" hs_bindgen_fec6cba0899460ff ::
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
  hs_bindgen_fec6cba0899460ff

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:2055:5@

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
                                                                                                                  hs_bindgen_fec6cba0899460ff x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_0f0cfb04cc733536" hs_bindgen_0f0cfb04cc733536 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:2068:28@

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
botan_pkcs_hash_id = hs_bindgen_0f0cfb04cc733536

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_f2755abb679378be" hs_bindgen_f2755abb679378be ::
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
  hs_bindgen_f2755abb679378be

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:2075:5@

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
                                                                                                                    hs_bindgen_f2755abb679378be x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x6 x7 x8))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_f9305c3788843e07" hs_bindgen_f9305c3788843e07 ::
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
  hs_bindgen_f9305c3788843e07

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:2090:5@

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
                                                                                                                  hs_bindgen_f9305c3788843e07 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_161b1294725df7e7" hs_bindgen_161b1294725df7e7 ::
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
  hs_bindgen_161b1294725df7e7

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:2105:28@

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
                                                        hs_bindgen_161b1294725df7e7 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_2c8270ef0f6ddc6f" hs_bindgen_2c8270ef0f6ddc6f ::
     Ptr.Ptr Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:2106:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO FC.CInt
botan_x509_cert_load_file =
  hs_bindgen_2c8270ef0f6ddc6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_40907aea12527b3c" hs_bindgen_40907aea12527b3c ::
     Botan_x509_cert_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:2111:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_destroy = hs_bindgen_40907aea12527b3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_4516acc1d834ce45" hs_bindgen_4516acc1d834ce45 ::
     Ptr.Ptr Botan_x509_cert_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:2113:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @new_cert@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_dup = hs_bindgen_4516acc1d834ce45

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_fbb5e0961f46ef85" hs_bindgen_fbb5e0961f46ef85 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:2116:28@

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
  hs_bindgen_fbb5e0961f46ef85

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_07658392643c9a41" hs_bindgen_07658392643c9a41 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:2117:28@

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
  hs_bindgen_07658392643c9a41

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_42965d2e309770e0" hs_bindgen_42965d2e309770e0 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:2119:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_before =
  hs_bindgen_42965d2e309770e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_62987c11684c1e3c" hs_bindgen_62987c11684c1e3c ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:2120:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_after =
  hs_bindgen_62987c11684c1e3c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_e1ff2630cff05b6f" hs_bindgen_e1ff2630cff05b6f ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:2123:5@

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
  hs_bindgen_e1ff2630cff05b6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_246401748f2bec6f" hs_bindgen_246401748f2bec6f ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:2125:28@

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
  hs_bindgen_246401748f2bec6f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_1a0877957ce85f18" hs_bindgen_1a0877957ce85f18 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:2126:28@

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
  hs_bindgen_1a0877957ce85f18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_2f2b4fcd7e634392" hs_bindgen_2f2b4fcd7e634392 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:2127:28@

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
  hs_bindgen_2f2b4fcd7e634392

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_51bc5cf3e76679d5" hs_bindgen_51bc5cf3e76679d5 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:2129:28@

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
  hs_bindgen_51bc5cf3e76679d5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_253cddac34fc77f0" hs_bindgen_253cddac34fc77f0 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:2132:5@

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
  hs_bindgen_253cddac34fc77f0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_4f3b1be524aad8e7" hs_bindgen_4f3b1be524aad8e7 ::
     Botan_x509_cert_t
  -> Ptr.Ptr Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:2134:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_x509_cert_get_public_key =
  hs_bindgen_4f3b1be524aad8e7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_269350807b3e986e" hs_bindgen_269350807b3e986e ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:2137:5@

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
  hs_bindgen_269350807b3e986e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_d137fd84e4b9ed86" hs_bindgen_d137fd84e4b9ed86 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:2141:5@

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
  hs_bindgen_d137fd84e4b9ed86

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_057ed813fce3174c" hs_bindgen_057ed813fce3174c ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:2144:28@

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
  hs_bindgen_057ed813fce3174c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_86adef059549dab1" hs_bindgen_86adef059549dab1 ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:2147:5@

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
  hs_bindgen_86adef059549dab1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_f55257c0b056dfa5" hs_bindgen_f55257c0b056dfa5 ::
     Botan_x509_cert_t
  -> FC.CUInt
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:2163:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> FC.CUInt
     -- ^ __C declaration:__ @key_usage@
  -> IO FC.CInt
botan_x509_cert_allowed_usage =
  hs_bindgen_f55257c0b056dfa5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_437a90c41ddd2478" hs_bindgen_437a90c41ddd2478 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:2169:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> IO FC.CInt
botan_x509_cert_hostname_match =
  hs_bindgen_437a90c41ddd2478

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_cc67c9d2e72476a6" hs_bindgen_cc67c9d2e72476a6 ::
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

__defined at:__ @botan\/ffi.h:2180:5@

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
botan_x509_cert_verify = hs_bindgen_cc67c9d2e72476a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_1ea00111564e6658" hs_bindgen_1ea00111564e6658 ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:2195:36@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status ::
     FC.CInt
     -- ^ __C declaration:__ @code@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_x509_cert_validation_status =
  hs_bindgen_1ea00111564e6658

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_2f8273b59d554056" hs_bindgen_2f8273b59d554056 ::
     Ptr.Ptr Botan_x509_crl_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:2203:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @crl_path@
  -> IO FC.CInt
botan_x509_crl_load_file =
  hs_bindgen_2f8273b59d554056

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_805f9c17970e6d27" hs_bindgen_805f9c17970e6d27 ::
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
  hs_bindgen_805f9c17970e6d27

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:2205:5@

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
                                                        hs_bindgen_805f9c17970e6d27 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_148c98ad67124a65" hs_bindgen_148c98ad67124a65 ::
     Botan_x509_crl_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:2207:29@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> IO FC.CInt
botan_x509_crl_destroy = hs_bindgen_148c98ad67124a65

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_a3887678d0bd9985" hs_bindgen_a3887678d0bd9985 ::
     Botan_x509_crl_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:2213:29@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_is_revoked = hs_bindgen_a3887678d0bd9985

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_cb591e6747c173c8" hs_bindgen_cb591e6747c173c8 ::
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

__defined at:__ @botan\/ffi.h:2220:5@

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
  hs_bindgen_cb591e6747c173c8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_c8e4fa7b0e59ec9d" hs_bindgen_c8e4fa7b0e59ec9d ::
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
  hs_bindgen_c8e4fa7b0e59ec9d

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:2238:5@

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
                                                                                                              hs_bindgen_c8e4fa7b0e59ec9d (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_707f62977330528c" hs_bindgen_707f62977330528c ::
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
  hs_bindgen_707f62977330528c

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:2247:5@

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
                                                                                                              hs_bindgen_707f62977330528c (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_3f68cacce7db6ffe" hs_bindgen_3f68cacce7db6ffe ::
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
  hs_bindgen_3f68cacce7db6ffe

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:2255:5@

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
                                                                                                                  hs_bindgen_3f68cacce7db6ffe x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_9c90c919654696df" hs_bindgen_9c90c919654696df ::
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
  hs_bindgen_9c90c919654696df

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:2265:5@

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
                                                                                                                  hs_bindgen_9c90c919654696df x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_d76f000291322418" hs_bindgen_d76f000291322418 ::
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
botan_hotp_init_wrapper = hs_bindgen_d76f000291322418

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:2284:5@

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
                                                            hs_bindgen_d76f000291322418 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_7b2b5a587d844a61" hs_bindgen_7b2b5a587d844a61 ::
     Botan_hotp_t
  -> IO FC.CInt

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:2291:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> IO FC.CInt
botan_hotp_destroy = hs_bindgen_7b2b5a587d844a61

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_a31a8be8d9d37108" hs_bindgen_a31a8be8d9d37108 ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:2297:5@

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
botan_hotp_generate = hs_bindgen_a31a8be8d9d37108

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_d0ea7c7817f2e751" hs_bindgen_d0ea7c7817f2e751 ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:2303:5@

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
botan_hotp_check = hs_bindgen_d0ea7c7817f2e751

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_9b0e5c89f7dcc953" hs_bindgen_9b0e5c89f7dcc953 ::
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
botan_totp_init_wrapper = hs_bindgen_9b0e5c89f7dcc953

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:2316:5@

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
                                                              hs_bindgen_9b0e5c89f7dcc953 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x2 x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_edf08028cbb9e25c" hs_bindgen_edf08028cbb9e25c ::
     Botan_totp_t
  -> IO FC.CInt

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:2324:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy ::
     Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> IO FC.CInt
botan_totp_destroy = hs_bindgen_edf08028cbb9e25c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_4ea5e378d127d954" hs_bindgen_4ea5e378d127d954 ::
     Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:2333:5@

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
botan_totp_generate = hs_bindgen_4ea5e378d127d954

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_4c76fbefc8e8d788" hs_bindgen_4c76fbefc8e8d788 ::
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

__defined at:__ @botan\/ffi.h:2344:5@

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
botan_totp_check = hs_bindgen_4c76fbefc8e8d788

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_176c8a205c375e2a" hs_bindgen_176c8a205c375e2a ::
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
  hs_bindgen_176c8a205c375e2a

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2355:5@

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
                                                              hs_bindgen_176c8a205c375e2a x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_fc70cd81f22f246a" hs_bindgen_fc70cd81f22f246a ::
     Botan_fpe_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2362:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> IO FC.CInt
botan_fpe_destroy = hs_bindgen_fc70cd81f22f246a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_7e5f83ae7a1754a3" hs_bindgen_7e5f83ae7a1754a3 ::
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
  hs_bindgen_7e5f83ae7a1754a3

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2365:5@

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
                                                          hs_bindgen_7e5f83ae7a1754a3 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_0757df6a0bdaede2" hs_bindgen_0757df6a0bdaede2 ::
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
  hs_bindgen_0757df6a0bdaede2

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2368:5@

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
                                                          hs_bindgen_0757df6a0bdaede2 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_9042ee9fdd35067e" hs_bindgen_9042ee9fdd35067e ::
     Ptr.Ptr Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2380:5@

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
  hs_bindgen_9042ee9fdd35067e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_56515733b370e2c3" hs_bindgen_56515733b370e2c3 ::
     Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2388:5@

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
  hs_bindgen_56515733b370e2c3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_4656105750ff77dc" hs_bindgen_4656105750ff77dc ::
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
  hs_bindgen_4656105750ff77dc

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
                                                                  hs_bindgen_4656105750ff77dc x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x2 x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_494b247f1686cbfb" hs_bindgen_494b247f1686cbfb ::
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
  hs_bindgen_494b247f1686cbfb

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
                                                            hs_bindgen_494b247f1686cbfb x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_52bf11069c393de6" hs_bindgen_52bf11069c393de6 ::
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
  hs_bindgen_52bf11069c393de6

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
                                                                  hs_bindgen_52bf11069c393de6 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_90f0e887c4a955de" hs_bindgen_90f0e887c4a955de ::
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
  hs_bindgen_90f0e887c4a955de

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
                                                                                                                            hs_bindgen_90f0e887c4a955de x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr14) x5 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr13) x7 x8 x9 x10 x11 x12))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_5b1968529c542c38" hs_bindgen_5b1968529c542c38 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2483:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @group_id@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @group_p_bytes@
  -> IO FC.CInt
botan_srp6_group_size = hs_bindgen_5b1968529c542c38

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_2bdd689208b2a5a9" hs_bindgen_2bdd689208b2a5a9 ::
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

__defined at:__ @botan\/ffi.h:2504:5@

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
botan_zfec_encode = hs_bindgen_2bdd689208b2a5a9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_aa8e974bb8615910" hs_bindgen_aa8e974bb8615910 ::
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

__defined at:__ @botan\/ffi.h:2525:5@

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
botan_zfec_decode = hs_bindgen_aa8e974bb8615910

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_supports_crypto_backend@
foreign import ccall unsafe "hs_bindgen_bf1cefb478c2ae07" hs_bindgen_bf1cefb478c2ae07 ::
     IO FC.CInt

{-| Checks if Botan's TSS2 crypto backend can be used in this build

  __returns:__ 1 if the crypto backend can be enabled

__C declaration:__ @botan_tpm2_supports_crypto_backend@

__defined at:__ @botan\/ffi.h:2550:5@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_supports_crypto_backend :: IO FC.CInt
botan_tpm2_supports_crypto_backend =
  hs_bindgen_bf1cefb478c2ae07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_ctx_init@
foreign import ccall unsafe "hs_bindgen_00c79932df67c930" hs_bindgen_00c79932df67c930 ::
     Ptr.Ptr Botan_tpm2_ctx_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a TPM2 context

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@tcti_nameconf@ /(input)/__]: TCTI config (may be nullptr)

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_init@

__defined at:__ @botan\/ffi.h:2558:28@

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
botan_tpm2_ctx_init = hs_bindgen_00c79932df67c930

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_ctx_init_ex@
foreign import ccall unsafe "hs_bindgen_d6f7374dedf9888d" hs_bindgen_d6f7374dedf9888d ::
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

__defined at:__ @botan\/ffi.h:2568:5@

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
botan_tpm2_ctx_init_ex = hs_bindgen_d6f7374dedf9888d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_ctx_from_esys@
foreign import ccall unsafe "hs_bindgen_c0a7991097d704f7" hs_bindgen_c0a7991097d704f7 ::
     Ptr.Ptr Botan_tpm2_ctx_t
  -> Ptr.Ptr ESYS_CONTEXT
  -> IO FC.CInt

{-| Wrap an existing ESYS_CONTEXT for use in Botan. Note that destroying the created botan_tpm2_ctx_t won't finalize @esys_ctx@

  [__@ctx_out@ /(input)/__]: output TPM2 context

  [__@esys_ctx@ /(input)/__]: ESYS_CONTEXT to wrap

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_from_esys@

__defined at:__ @botan\/ffi.h:2579:5@

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
  hs_bindgen_c0a7991097d704f7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_ctx_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_29c0a4c4af63eaeb" hs_bindgen_29c0a4c4af63eaeb ::
     Botan_tpm2_ctx_t
  -> Botan_rng_t
  -> IO FC.CInt

{-| Enable Botan's TSS2 crypto backend that replaces the cryptographic functions required for the communication with the TPM with implementations provided by Botan instead of using TSS' defaults OpenSSL or mbedTLS. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @ctx.@

  [__@ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_ctx_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2591:5@

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
  hs_bindgen_29c0a4c4af63eaeb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_ctx_destroy@
foreign import ccall unsafe "hs_bindgen_b4c9cdc8a77e1294" hs_bindgen_b4c9cdc8a77e1294 ::
     Botan_tpm2_ctx_t
  -> IO FC.CInt

{-| Frees all resouces of a TPM2 context

  [__@ctx@ /(input)/__]: TPM2 context

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_ctx_destroy@

__defined at:__ @botan\/ffi.h:2598:28@

__exported by:__ @botan\/ffi.h@
-}
botan_tpm2_ctx_destroy ::
     Botan_tpm2_ctx_t
     {- ^

        [__@ctx@ /(input)/__]: TPM2 context

     __C declaration:__ @ctx@
     -}
  -> IO FC.CInt
botan_tpm2_ctx_destroy = hs_bindgen_b4c9cdc8a77e1294

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_enable_crypto_backend@
foreign import ccall unsafe "hs_bindgen_6cf327e864012703" hs_bindgen_6cf327e864012703 ::
     Ptr.Ptr Botan_tpm2_crypto_backend_state_t
  -> Ptr.Ptr ESYS_CONTEXT
  -> Botan_rng_t
  -> IO FC.CInt

{-| Use this if you just need Botan's crypto backend but do not want to wrap any other ESYS functionality using Botan's TPM2 wrapper. A Crypto Backend State is created that the user needs to keep alive for as long as the crypto backend is used and needs to be destroyed after. Note that the provided @rng@ should not be dependent on the TPM and the caller must ensure that it remains usable for the lifetime of the @esys_ctx.@

  [__@cbs_out@ /(input)/__]: To be created Crypto Backend State

  [__@esys_ctx@ /(input)/__]: TPM2 context

  [__@rng@ /(input)/__]: random number generator to be used by the crypto backend

__C declaration:__ @botan_tpm2_enable_crypto_backend@

__defined at:__ @botan\/ffi.h:2612:5@

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
  hs_bindgen_6cf327e864012703

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_crypto_backend_state_destroy@
foreign import ccall unsafe "hs_bindgen_d6f38c4a7905cf83" hs_bindgen_d6f38c4a7905cf83 ::
     Botan_tpm2_crypto_backend_state_t
  -> IO FC.CInt

{-| Frees all resouces of a TPM2 Crypto Callback State Note that this does not attempt to de-register the crypto backend, it just frees the resource pointed to by @cbs.@ Use the ESAPI function ``Esys_SetCryptoCallbacks(ctx, nullptr)`` to deregister manually.

  [__@cbs@ /(input)/__]: TPM2 Crypto Callback State

  __returns:__ 0 on success

__C declaration:__ @botan_tpm2_crypto_backend_state_destroy@

__defined at:__ @botan\/ffi.h:2624:28@

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
  hs_bindgen_d6f38c4a7905cf83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_rng_init@
foreign import ccall unsafe "hs_bindgen_d06195dadfb08364" hs_bindgen_d06195dadfb08364 ::
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

__defined at:__ @botan\/ffi.h:2635:5@

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
botan_tpm2_rng_init = hs_bindgen_d06195dadfb08364

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_unauthenticated_session_init@
foreign import ccall unsafe "hs_bindgen_82c1f1783b84ed37" hs_bindgen_82c1f1783b84ed37 ::
     Ptr.Ptr Botan_tpm2_session_t
  -> Botan_tpm2_ctx_t
  -> IO FC.CInt

{-| Create an unauthenticated session for use with TPM2

  [__@session_out@ /(input)/__]: the session object to create

  [__@ctx@ /(input)/__]: TPM2 context

__C declaration:__ @botan_tpm2_unauthenticated_session_init@

__defined at:__ @botan\/ffi.h:2647:5@

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
  hs_bindgen_82c1f1783b84ed37

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_8_0_Unsafe_botan_tpm2_session_destroy@
foreign import ccall unsafe "hs_bindgen_e384515070e4fe1b" hs_bindgen_e384515070e4fe1b ::
     Botan_tpm2_session_t
  -> IO FC.CInt

{-| Create an unauthenticated session for use with TPM2

  [__@session@ /(input)/__]: the session object to destroy

__C declaration:__ @botan_tpm2_session_destroy@

__defined at:__ @botan\/ffi.h:2654:5@

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
  hs_bindgen_e384515070e4fe1b
