{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_0_0.Safe where

import           Botan.Bindings.Generated.Botan_3_0_0
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
  , "char const *hs_bindgen_596a6b339ed5f51c ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_5f42434cab82db31 (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_170dad4385e40e5a (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_07bbbf259613a7dc ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_10da9b1dd35c0807 (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_cb7ee6245a0cd6b4 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_86a6e74892580de2 (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_72b525231efbab6c (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_9580d224c2c8ad37 (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_330aaca4963d5ac2 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_42b30b1a3c9e497b ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a3a8bc6ed3858273 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c442648c9d83cbdc ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_be7b347ca2eb5556 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d41b505645be7a99 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3e4d351a1382eb9e ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_909775f0ca837495 ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_67981c827252903f ("
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
  , "signed int hs_bindgen_053431bb48e8d6d2 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7928d87012ce5480 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fc31392c38032c64 ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4793433e4aa91883 ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c49f81adc8578abc ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_036165e2d3a07ec2 ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ff6bc9d12513d64c ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_941c1e4ff8d661c7 ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f1aaed8ec79cc4c4 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a9fd13e4951b4a08 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e93e4f32f0c63e62 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4e0ce560d34027ab ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f53ef3e3dfe732cf ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_ec9e77a1fe77bdec ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_d1a9317dea1ca056 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_02c9f48f9d61b07d ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6cd93e19f94321e4 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b4509340adc7661a ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1be33f404a9cd654 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_254e12bb3b6641c9 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_96c87de4c17bfa3d ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c71dbd81cf133e9d ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_b446b3832df58772 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_da08a9e26b959b99 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_17fb2bd36458b7cd ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_b94fa71ea29b6074 ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_86cf6647ad774185 ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6c41cc24ad9cb49f ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_559c0a3583be5269 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ff336150659632a3 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4710c462ae31371d ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5d8016303f1b4180 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_79b0139d6f1eca6d ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_05e27a343f523da3 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5ffeb09a78fdacfd ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1e222b754990c5a0 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0f8089a35975c233 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_c4083ce08ac3225f ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d5cadb35fe58e484 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_80e699fe3e54e571 ("
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
  , "signed int hs_bindgen_01676cf4507c73d2 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_282bfe5e68084474 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_d053ea7569b9e715 ("
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
  , "signed int hs_bindgen_2b85c54ddb8bbd10 ("
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
  , "signed int hs_bindgen_a7b5d2e50d0ca71b ("
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
  , "signed int hs_bindgen_3cfa05e4c6151fa0 ("
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
  , "signed int hs_bindgen_0f0aec9e017d37a2 ("
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
  , "signed int hs_bindgen_feb8d9539a40495d ("
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
  , "signed int hs_bindgen_ae9b385452abcd31 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c2f35e0b47ffbd9c ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ecf871214f977200 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_d7e0b74e7bb4fd0f ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b9be48f598a3be33 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_be126fde12579275 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6cb68231a3025630 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1cf3557182eea51b ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c136b8399f077589 ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6efe95e83f740e4f ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_0127b609c9c1cbcd ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_123e0a2761d8400f ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d1a74858ac4d995f ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5755e038138cd939 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_316631d7caf42981 ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7708c83ae53b689d ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ebd93ace17d55c73 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e336d62d74a98dd0 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f532de35da4cc3ee ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_03636a27e4aa0ef5 ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2120c85857deee14 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1acee650c935dc16 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5b8ce8404277dc2e ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e7df718ac8c314db ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_3e7dd83d562bbe60 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_a40daee6a3436fca ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_f05544901f190d34 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_c89e120398d6044b ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_4fd201b557d479db ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_6557bbd224364e45 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b23f697e69e7c0b5 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_723e23708f77a0e1 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_b5647131e2659949 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_59d8bdd94521f9c8 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_323d3b2194fa7bee ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b047d7ba896c943e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f2c55377d952bed9 ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4e0a5997c516bd02 ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_faa173f856495959 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_be5bf641273a7d12 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f824d35bb488aa71 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0e15e04c1f8504b6 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cfcfc82b90c3c587 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_576f8a7c96e7dde4 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_734cf6b5ebf95c5f ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_8df4e15bb647127c ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7e538fdc9db19055 ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_50f84b61d3dcdc4b ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6f2b18e39a239269 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a44011c971475d6b ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1bba7b8e02356cad ("
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
  , "signed int hs_bindgen_7453d293bb5fa084 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c0c388ef637d0679 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c15e1425a27e92d2 ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6f2ea6a8c42473f2 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_269dc3eb784b9541 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_94dad37d46102184 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fffa42f69f7579aa ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c8e22307a271077b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5f8b788111afb362 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_061dda54a3d6748d ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ef6a3d56cb87aa2b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_2a011cfdbafecaec ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_7d792b190f6fa2a9 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_89455525865f83d7 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bee8bdf66240cb8a ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d44ea084315394c6 ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fe79ddee26cc3fef ("
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
  , "signed int hs_bindgen_193fe389e87fa445 ("
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
  , "signed int hs_bindgen_1738672dfa2fb4ed ("
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
  , "signed int hs_bindgen_f76db0ebd521e034 ("
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
  , "signed int hs_bindgen_98db44edf2cbcaa1 ("
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
  , "signed int hs_bindgen_882d7449b1f3ecb8 ("
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
  , "signed int hs_bindgen_f2523a17e9e5f288 ("
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
  , "signed int hs_bindgen_c069779455d9967a ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_683fbbe7f6b28e26 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9bfadb431b8f1006 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7225d7bdb07881c9 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_42c8f9cddaebf6ce ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7223ca56d4a79949 ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_eab8b9d9b19ee637 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_45270549acfc9725 ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b52550e76e8a8f11 ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_574e8d52747d7053 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_80b7f331f421ea0c ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d933938dc565fa5d ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e6f757e880c8f1c7 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5f6282fdf2d3d6fe ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_06791d01c452f06a ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b671cfc6386beb9e ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2f3af3c6b0c2c0e2 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_79bd80d54f610d98 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_fa8b785baf0a8c2b ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_37e0187548bc87d8 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b05b1593c52bb651 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7b616346201103b4 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_07142108998ad4f6 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_694c3e747dd726f4 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_195970d94b987541 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_862bd3e138bbe74a ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9b0ab9cd3fbd9035 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e9e5bb0296391834 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7bbbddb00064ab93 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_12738e141a05a20b ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c24d5b5efe6b09ec ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_fde310e32c0fa198 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_9e1a8d3b44b912aa ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3ba6cea50af55aee ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_bb0df7a9afac3a8a ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_70d204939200707b ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_688e100cb2d247d9 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e2ffdbc2dc627d95 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_bb1fcb9416133c5b ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_40a75bd7f7e15152 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1a5d454e615ccef3 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5fd717350529d3b1 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_989883b061b3a3eb ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_922401273c624b5a ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_bb47a2f6a41c4f03 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c24740920ef299d6 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_20d6e857fd1afd00 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0c0278b215a5a943 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_084c3247da47b79b ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ca157d050b5829e0 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_dbb4320e2ae8455b ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_812387d7bc8299df ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4e4dc8b8a09ad4ad ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1726fe09f7857d92 ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_83ddf86cf7647e2e ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fad471132293642a ("
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
  , "signed int hs_bindgen_cc0274c8e8845a16 ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1de958bfa72e3c97 ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_b3f515e95de17195 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_37a41d251aa140a0 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e702d6b32b4c5e4d ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b2a8b9c62f6ec697 ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_c4e5229dd70842c2 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_17d01bb61890d2e7 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_514e881cdd281f68 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_2b513128ec6831a8 ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d22d427c67362256 ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ed10c3c07a259217 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_c551ee95e966107d ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_38eae892ae3a0d5c ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a3a5e9d8a8623615 ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_a6e802a718976f66 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5d18ef95e49fe41b ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_35d5f46dbaa171e1 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_7f8dcc24297a9b18 ("
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
  , "signed int hs_bindgen_54ba4b01fa6dd811 ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_481c7ebe4670323a ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_1d0e3a0f6697925d ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4133b673d82ae380 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e3542444b22a3c7e ("
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
  , "signed int hs_bindgen_530943de1c943683 ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0f51711cb9895c85 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_de8a00f5bb2f4316 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_aeed291522f49286 ("
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
  , "signed int hs_bindgen_f67c40f86a7234c7 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_186c2cecc517c333 ("
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
  , "signed int hs_bindgen_03e75310e36bb2f0 ("
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
  , "signed int hs_bindgen_4986b485d9902959 ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8467d08ea11d2add ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9badee90a48043a7 ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_1bd8e0027302e2d6 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c6ac03597e6ccf51 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a20053710db534b7 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6366b5fd9db342d2 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5b0c3777e85fe7af ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ece3a0dd18d1ab10 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b4c92b110a490330 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_07757401581a4d69 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4d80bc8df6a9adcd ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a3c54e76356ebe7e ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7df7e952b5e2e7ef ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_41f4b707a1e290d2 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5dd3c16ca98467ce ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_ac9f6fba96565b35 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_eeea8f953b9e7ac3 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8040877213664f5a ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6398629a0cb69dc8 ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6f67007c7bfcf586 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4b0a8ad1a770e044 ("
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
  , "char const *hs_bindgen_e73f0a5e20541b48 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_e62ed3f6a970dbe9 ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5b86eb8c65a38a21 ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ff6579b4f28d6ff6 ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_27d7cdbd090a4578 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_348db2408ee7dbbb ("
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
  , "signed int hs_bindgen_4b5a7a61314aff0a ("
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
  , "signed int hs_bindgen_f7ea1291ddceb60c ("
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
  , "signed int hs_bindgen_2f2fc3344aa6deb7 ("
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
  , "signed int hs_bindgen_7568303b7f7f274a ("
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
  , "signed int hs_bindgen_2e976ba196051b1d ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_deb8b0ce66185c11 ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_56be02786eae2eb6 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8a289fd4d98dbdbe ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_9737f2d9690025ef ("
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
  , "signed int hs_bindgen_4e4a43059f0ed259 ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_3efbcbac9fa85052 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ad0aa2ce620fbb15 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7ce55945192576f1 ("
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
  , "signed int hs_bindgen_3203fd241a880758 ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_2bde5a2597219f11 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_2208701a33226747 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_a82ce61ed5a2b021 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_f093eecb19f6f1dd ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_480522cca5289634 ("
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
  , "signed int hs_bindgen_bfb61084eb26c979 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_bb59be19f1727b3d ("
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
  , "signed int hs_bindgen_94d61a874d7e2184 ("
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
  , "signed int hs_bindgen_459d7c978909b55a ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4bee8014eeaeae3a ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_7d691553504533b9 ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  size_t const *arg3,"
  , "  uint8_t *const *const arg4,"
  , "  size_t arg5,"
  , "  uint8_t **arg6"
  , ")"
  , "{"
  , "  return botan_zfec_decode(arg1, arg2, arg3, arg4, arg5, arg6);"
  , "}"
  ]))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_error_description@
foreign import ccall safe "hs_bindgen_596a6b339ed5f51c" hs_bindgen_596a6b339ed5f51c ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:125:35@

__exported by:__ @botan\/ffi.h@
-}
botan_error_description ::
     FC.CInt
     -- ^ __C declaration:__ @err@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_description = hs_bindgen_596a6b339ed5f51c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_error_last_exception_message@
foreign import ccall safe "hs_bindgen_5f42434cab82db31" hs_bindgen_5f42434cab82db31 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:134:35@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_last_exception_message =
  hs_bindgen_5f42434cab82db31

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_ffi_api_version@
foreign import ccall safe "hs_bindgen_170dad4385e40e5a" hs_bindgen_170dad4385e40e5a ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:141:32@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: IO HsBindgen.Runtime.Prelude.Word32
botan_ffi_api_version = hs_bindgen_170dad4385e40e5a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_ffi_supports_api@
foreign import ccall safe "hs_bindgen_07bbbf259613a7dc" hs_bindgen_07bbbf259613a7dc ::
     HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:147:27@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @api_version@
  -> IO FC.CInt
botan_ffi_supports_api = hs_bindgen_07bbbf259613a7dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_version_string@
foreign import ccall safe "hs_bindgen_10da9b1dd35c0807" hs_bindgen_10da9b1dd35c0807 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:152:35@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_version_string = hs_bindgen_10da9b1dd35c0807

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_version_major@
foreign import ccall safe "hs_bindgen_cb7ee6245a0cd6b4" hs_bindgen_cb7ee6245a0cd6b4 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:157:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_major = hs_bindgen_cb7ee6245a0cd6b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_version_minor@
foreign import ccall safe "hs_bindgen_86a6e74892580de2" hs_bindgen_86a6e74892580de2 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:162:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_minor = hs_bindgen_86a6e74892580de2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_version_patch@
foreign import ccall safe "hs_bindgen_72b525231efbab6c" hs_bindgen_72b525231efbab6c ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:167:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_patch = hs_bindgen_72b525231efbab6c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_version_datestamp@
foreign import ccall safe "hs_bindgen_9580d224c2c8ad37" hs_bindgen_9580d224c2c8ad37 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:173:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_datestamp = hs_bindgen_9580d224c2c8ad37

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_constant_time_compare@
foreign import ccall safe "hs_bindgen_330aaca4963d5ac2" hs_bindgen_330aaca4963d5ac2 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:178:27@

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
  hs_bindgen_330aaca4963d5ac2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_same_mem@
foreign import ccall safe "hs_bindgen_42b30b1a3c9e497b" hs_bindgen_42b30b1a3c9e497b ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:184:27@

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
botan_same_mem = hs_bindgen_42b30b1a3c9e497b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_scrub_mem@
foreign import ccall safe "hs_bindgen_a3a8bc6ed3858273" hs_bindgen_a3a8bc6ed3858273 ::
     Ptr.Ptr Void
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:190:27@

__exported by:__ @botan\/ffi.h@
-}
botan_scrub_mem ::
     Ptr.Ptr Void
     -- ^ __C declaration:__ @mem@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_scrub_mem = hs_bindgen_a3a8bc6ed3858273

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hex_encode@
foreign import ccall safe "hs_bindgen_c442648c9d83cbdc" hs_bindgen_c442648c9d83cbdc ::
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

__defined at:__ @botan\/ffi.h:202:27@

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
botan_hex_encode = hs_bindgen_c442648c9d83cbdc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hex_decode@
foreign import ccall safe "hs_bindgen_be7b347ca2eb5556" hs_bindgen_be7b347ca2eb5556 ::
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

__defined at:__ @botan\/ffi.h:212:27@

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
botan_hex_decode = hs_bindgen_be7b347ca2eb5556

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_base64_encode@
foreign import ccall safe "hs_bindgen_d41b505645be7a99" hs_bindgen_d41b505645be7a99 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:217:27@

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
botan_base64_encode = hs_bindgen_d41b505645be7a99

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_base64_decode@
foreign import ccall safe "hs_bindgen_3e4d351a1382eb9e" hs_bindgen_3e4d351a1382eb9e ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:223:27@

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
botan_base64_decode = hs_bindgen_3e4d351a1382eb9e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_init@
foreign import ccall safe "hs_bindgen_909775f0ca837495" hs_bindgen_909775f0ca837495 ::
     Ptr.Ptr Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:241:27@

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
botan_rng_init = hs_bindgen_909775f0ca837495

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_init_custom@
foreign import ccall safe "hs_bindgen_67981c827252903f" hs_bindgen_67981c827252903f ::
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

__defined at:__ @botan\/ffi.h:252:27@

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
botan_rng_init_custom = hs_bindgen_67981c827252903f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_get@
foreign import ccall safe "hs_bindgen_053431bb48e8d6d2" hs_bindgen_053431bb48e8d6d2 ::
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

__defined at:__ @botan\/ffi.h:264:27@

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
botan_rng_get = hs_bindgen_053431bb48e8d6d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_system_rng_get@
foreign import ccall safe "hs_bindgen_7928d87012ce5480" hs_bindgen_7928d87012ce5480 ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:272:27@

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
botan_system_rng_get = hs_bindgen_7928d87012ce5480

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_reseed@
foreign import ccall safe "hs_bindgen_fc31392c38032c64" hs_bindgen_fc31392c38032c64 ::
     Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:282:27@

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
botan_rng_reseed = hs_bindgen_fc31392c38032c64

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_reseed_from_rng@
foreign import ccall safe "hs_bindgen_4793433e4aa91883" hs_bindgen_4793433e4aa91883 ::
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

__defined at:__ @botan\/ffi.h:292:27@

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
  hs_bindgen_4793433e4aa91883

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_add_entropy@
foreign import ccall safe "hs_bindgen_c49f81adc8578abc" hs_bindgen_c49f81adc8578abc ::
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

__defined at:__ @botan\/ffi.h:304:27@

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
botan_rng_add_entropy = hs_bindgen_c49f81adc8578abc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_rng_destroy@
foreign import ccall safe "hs_bindgen_036165e2d3a07ec2" hs_bindgen_036165e2d3a07ec2 ::
     Botan_rng_t
  -> IO FC.CInt

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:313:27@

__exported by:__ @botan\/ffi.h@
-}
botan_rng_destroy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt
botan_rng_destroy = hs_bindgen_036165e2d3a07ec2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_init@
foreign import ccall safe "hs_bindgen_ff6bc9d12513d64c" hs_bindgen_ff6bc9d12513d64c ::
     Ptr.Ptr Botan_hash_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:327:27@

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
botan_hash_init = hs_bindgen_ff6bc9d12513d64c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_copy_state@
foreign import ccall safe "hs_bindgen_941c1e4ff8d661c7" hs_bindgen_941c1e4ff8d661c7 ::
     Ptr.Ptr Botan_hash_t
  -> Botan_hash_t
  -> IO FC.CInt

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:335:27@

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
botan_hash_copy_state = hs_bindgen_941c1e4ff8d661c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_output_length@
foreign import ccall safe "hs_bindgen_f1aaed8ec79cc4c4" hs_bindgen_f1aaed8ec79cc4c4 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:343:27@

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
  hs_bindgen_f1aaed8ec79cc4c4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_block_size@
foreign import ccall safe "hs_bindgen_a9fd13e4951b4a08" hs_bindgen_a9fd13e4951b4a08 ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:351:27@

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
botan_hash_block_size = hs_bindgen_a9fd13e4951b4a08

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_update@
foreign import ccall safe "hs_bindgen_e93e4f32f0c63e62" hs_bindgen_e93e4f32f0c63e62 ::
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

__defined at:__ @botan\/ffi.h:360:27@

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
botan_hash_update = hs_bindgen_e93e4f32f0c63e62

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_final@
foreign import ccall safe "hs_bindgen_4e0ce560d34027ab" hs_bindgen_4e0ce560d34027ab ::
     Botan_hash_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:370:27@

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
botan_hash_final = hs_bindgen_4e0ce560d34027ab

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_clear@
foreign import ccall safe "hs_bindgen_f53ef3e3dfe732cf" hs_bindgen_f53ef3e3dfe732cf ::
     Botan_hash_t
  -> IO FC.CInt

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:378:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_clear ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_clear = hs_bindgen_f53ef3e3dfe732cf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_destroy@
foreign import ccall safe "hs_bindgen_ec9e77a1fe77bdec" hs_bindgen_ec9e77a1fe77bdec ::
     Botan_hash_t
  -> IO FC.CInt

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:385:27@

__exported by:__ @botan\/ffi.h@
-}
botan_hash_destroy ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt
botan_hash_destroy = hs_bindgen_ec9e77a1fe77bdec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hash_name@
foreign import ccall safe "hs_bindgen_d1a9317dea1ca056" hs_bindgen_d1a9317dea1ca056 ::
     Botan_hash_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:393:27@

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
botan_hash_name = hs_bindgen_d1a9317dea1ca056

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_init@
foreign import ccall safe "hs_bindgen_02c9f48f9d61b07d" hs_bindgen_02c9f48f9d61b07d ::
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

__defined at:__ @botan\/ffi.h:408:27@

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
botan_mac_init = hs_bindgen_02c9f48f9d61b07d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_output_length@
foreign import ccall safe "hs_bindgen_6cd93e19f94321e4" hs_bindgen_6cd93e19f94321e4 ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:416:27@

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
botan_mac_output_length = hs_bindgen_6cd93e19f94321e4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_set_key@
foreign import ccall safe "hs_bindgen_b4509340adc7661a" hs_bindgen_b4509340adc7661a ::
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

__defined at:__ @botan\/ffi.h:425:27@

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
botan_mac_set_key = hs_bindgen_b4509340adc7661a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_set_nonce@
foreign import ccall safe "hs_bindgen_1be33f404a9cd654" hs_bindgen_1be33f404a9cd654 ::
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

__defined at:__ @botan\/ffi.h:434:27@

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
botan_mac_set_nonce = hs_bindgen_1be33f404a9cd654

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_update@
foreign import ccall safe "hs_bindgen_254e12bb3b6641c9" hs_bindgen_254e12bb3b6641c9 ::
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

__defined at:__ @botan\/ffi.h:443:27@

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
botan_mac_update = hs_bindgen_254e12bb3b6641c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_final@
foreign import ccall safe "hs_bindgen_96c87de4c17bfa3d" hs_bindgen_96c87de4c17bfa3d ::
     Botan_mac_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:453:27@

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
botan_mac_final = hs_bindgen_96c87de4c17bfa3d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_clear@
foreign import ccall safe "hs_bindgen_c71dbd81cf133e9d" hs_bindgen_c71dbd81cf133e9d ::
     Botan_mac_t
  -> IO FC.CInt

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:461:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_clear ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_clear = hs_bindgen_c71dbd81cf133e9d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_name@
foreign import ccall safe "hs_bindgen_b446b3832df58772" hs_bindgen_b446b3832df58772 ::
     Botan_mac_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:469:27@

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
botan_mac_name = hs_bindgen_b446b3832df58772

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_get_keyspec@
foreign import ccall safe "hs_bindgen_da08a9e26b959b99" hs_bindgen_da08a9e26b959b99 ::
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

__defined at:__ @botan\/ffi.h:478:27@

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
botan_mac_get_keyspec = hs_bindgen_da08a9e26b959b99

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mac_destroy@
foreign import ccall safe "hs_bindgen_17fb2bd36458b7cd" hs_bindgen_17fb2bd36458b7cd ::
     Botan_mac_t
  -> IO FC.CInt

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:488:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt
botan_mac_destroy = hs_bindgen_17fb2bd36458b7cd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_init@
foreign import ccall safe "hs_bindgen_b94fa71ea29b6074" hs_bindgen_b94fa71ea29b6074 ::
     Ptr.Ptr Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:502:27@

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
botan_cipher_init = hs_bindgen_b94fa71ea29b6074

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_name@
foreign import ccall safe "hs_bindgen_86cf6647ad774185" hs_bindgen_86cf6647ad774185 ::
     Botan_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:507:27@

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
botan_cipher_name = hs_bindgen_86cf6647ad774185

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_output_length@
foreign import ccall safe "hs_bindgen_6c41cc24ad9cb49f" hs_bindgen_6c41cc24ad9cb49f ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:512:27@

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
  hs_bindgen_6c41cc24ad9cb49f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_valid_nonce_length@
foreign import ccall safe "hs_bindgen_559c0a3583be5269" hs_bindgen_559c0a3583be5269 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:517:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_valid_nonce_length =
  hs_bindgen_559c0a3583be5269

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_get_tag_length@
foreign import ccall safe "hs_bindgen_ff336150659632a3" hs_bindgen_ff336150659632a3 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:522:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_tag_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @tag_size@
  -> IO FC.CInt
botan_cipher_get_tag_length =
  hs_bindgen_ff336150659632a3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_get_default_nonce_length@
foreign import ccall safe "hs_bindgen_4710c462ae31371d" hs_bindgen_4710c462ae31371d ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:527:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @nl@
  -> IO FC.CInt
botan_cipher_get_default_nonce_length =
  hs_bindgen_4710c462ae31371d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_get_update_granularity@
foreign import ccall safe "hs_bindgen_5d8016303f1b4180" hs_bindgen_5d8016303f1b4180 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:533:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_update_granularity =
  hs_bindgen_5d8016303f1b4180

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_get_ideal_update_granularity@
foreign import ccall safe "hs_bindgen_79b0139d6f1eca6d" hs_bindgen_79b0139d6f1eca6d ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:539:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @ug@
  -> IO FC.CInt
botan_cipher_get_ideal_update_granularity =
  hs_bindgen_79b0139d6f1eca6d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_query_keylen@
foreign import ccall safe "hs_bindgen_05e27a343f523da3" hs_bindgen_05e27a343f523da3 ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:544:27@

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
  hs_bindgen_05e27a343f523da3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_5ffeb09a78fdacfd" hs_bindgen_5ffeb09a78fdacfd ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:551:27@

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
  hs_bindgen_5ffeb09a78fdacfd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_set_key@
foreign import ccall safe "hs_bindgen_1e222b754990c5a0" hs_bindgen_1e222b754990c5a0 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:559:27@

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
botan_cipher_set_key = hs_bindgen_1e222b754990c5a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_reset@
foreign import ccall safe "hs_bindgen_0f8089a35975c233" hs_bindgen_0f8089a35975c233 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:570:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_reset ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_reset = hs_bindgen_0f8089a35975c233

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_set_associated_data@
foreign import ccall safe "hs_bindgen_c4083ce08ac3225f" hs_bindgen_c4083ce08ac3225f ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:575:27@

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
  hs_bindgen_c4083ce08ac3225f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_start@
foreign import ccall safe "hs_bindgen_d5cadb35fe58e484" hs_bindgen_d5cadb35fe58e484 ::
     Botan_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:581:27@

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
botan_cipher_start = hs_bindgen_d5cadb35fe58e484

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_update@
foreign import ccall safe "hs_bindgen_80e699fe3e54e571" hs_bindgen_80e699fe3e54e571 ::
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
  hs_bindgen_80e699fe3e54e571

{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:589:27@

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
                                                                  hs_bindgen_80e699fe3e54e571 x0 x1 x2 x3 x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_clear@
foreign import ccall safe "hs_bindgen_01676cf4507c73d2" hs_bindgen_01676cf4507c73d2 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:601:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_clear ::
     Botan_cipher_t
     -- ^ __C declaration:__ @hash@
  -> IO FC.CInt
botan_cipher_clear = hs_bindgen_01676cf4507c73d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_cipher_destroy@
foreign import ccall safe "hs_bindgen_282bfe5e68084474" hs_bindgen_282bfe5e68084474 ::
     Botan_cipher_t
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:607:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_destroy ::
     Botan_cipher_t
     -- ^ __C declaration:__ @cipher@
  -> IO FC.CInt
botan_cipher_destroy = hs_bindgen_282bfe5e68084474

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pbkdf@
foreign import ccall safe "hs_bindgen_d053ea7569b9e715" hs_bindgen_d053ea7569b9e715 ::
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
botan_pbkdf_wrapper = hs_bindgen_d053ea7569b9e715

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:626:1@

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
                                                                hs_bindgen_d053ea7569b9e715 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x5 x6)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pbkdf_timed@
foreign import ccall safe "hs_bindgen_2b85c54ddb8bbd10" hs_bindgen_2b85c54ddb8bbd10 ::
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
  hs_bindgen_2b85c54ddb8bbd10

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
                                                                  hs_bindgen_2b85c54ddb8bbd10 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pwdhash@
foreign import ccall safe "hs_bindgen_a7b5d2e50d0ca71b" hs_bindgen_a7b5d2e50d0ca71b ::
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
botan_pwdhash_wrapper = hs_bindgen_a7b5d2e50d0ca71b

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:679:27@

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
                                                                      hs_bindgen_a7b5d2e50d0ca71b x0 x1 x2 x3 x4 x5 x6 x7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x9)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pwdhash_timed@
foreign import ccall safe "hs_bindgen_3cfa05e4c6151fa0" hs_bindgen_3cfa05e4c6151fa0 ::
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
  hs_bindgen_3cfa05e4c6151fa0

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:707:27@

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
                                                                        hs_bindgen_3cfa05e4c6151fa0 x0 x1 x2 x3 x4 x5 x6 x7 x8 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x10)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_scrypt@
foreign import ccall safe "hs_bindgen_0f0aec9e017d37a2" hs_bindgen_0f0aec9e017d37a2 ::
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
botan_scrypt_wrapper = hs_bindgen_0f0aec9e017d37a2

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:727:1@

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
                                                                  hs_bindgen_0f0aec9e017d37a2 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_kdf@
foreign import ccall safe "hs_bindgen_feb8d9539a40495d" hs_bindgen_feb8d9539a40495d ::
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
botan_kdf_wrapper = hs_bindgen_feb8d9539a40495d

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
                                                                                                                                                                    hs_bindgen_feb8d9539a40495d x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x6 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x8)))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_init@
foreign import ccall safe "hs_bindgen_ae9b385452abcd31" hs_bindgen_ae9b385452abcd31 ::
     Ptr.Ptr Botan_block_cipher_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:759:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_init ::
     Ptr.Ptr Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @cipher_name@
  -> IO FC.CInt
botan_block_cipher_init = hs_bindgen_ae9b385452abcd31

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_destroy@
foreign import ccall safe "hs_bindgen_c2f35e0b47ffbd9c" hs_bindgen_c2f35e0b47ffbd9c ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:766:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_destroy ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_destroy =
  hs_bindgen_c2f35e0b47ffbd9c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_clear@
foreign import ccall safe "hs_bindgen_ecf871214f977200" hs_bindgen_ecf871214f977200 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:772:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_clear ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_clear =
  hs_bindgen_ecf871214f977200

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_set_key@
foreign import ccall safe "hs_bindgen_d7e0b74e7bb4fd0f" hs_bindgen_d7e0b74e7bb4fd0f ::
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
  hs_bindgen_d7e0b74e7bb4fd0f

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:777:27@

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
                                                        hs_bindgen_d7e0b74e7bb4fd0f x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_block_size@
foreign import ccall safe "hs_bindgen_b9be48f598a3be33" hs_bindgen_b9be48f598a3be33 ::
     Botan_block_cipher_t
  -> IO FC.CInt

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:784:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_block_size ::
     Botan_block_cipher_t
     -- ^ __C declaration:__ @bc@
  -> IO FC.CInt
botan_block_cipher_block_size =
  hs_bindgen_b9be48f598a3be33

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_encrypt_blocks@
foreign import ccall safe "hs_bindgen_be126fde12579275" hs_bindgen_be126fde12579275 ::
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
  hs_bindgen_be126fde12579275

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:789:27@

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
                                                          hs_bindgen_be126fde12579275 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_decrypt_blocks@
foreign import ccall safe "hs_bindgen_6cb68231a3025630" hs_bindgen_6cb68231a3025630 ::
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
  hs_bindgen_6cb68231a3025630

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:797:27@

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
                                                          hs_bindgen_6cb68231a3025630 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_name@
foreign import ccall safe "hs_bindgen_1cf3557182eea51b" hs_bindgen_1cf3557182eea51b ::
     Botan_block_cipher_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:808:27@

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
botan_block_cipher_name = hs_bindgen_1cf3557182eea51b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_block_cipher_get_keyspec@
foreign import ccall safe "hs_bindgen_c136b8399f077589" hs_bindgen_c136b8399f077589 ::
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

__defined at:__ @botan\/ffi.h:819:27@

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
  hs_bindgen_c136b8399f077589

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_init@
foreign import ccall safe "hs_bindgen_6efe95e83f740e4f" hs_bindgen_6efe95e83f740e4f ::
     Ptr.Ptr Botan_mp_t
  -> IO FC.CInt

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:832:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_init = hs_bindgen_6efe95e83f740e4f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_destroy@
foreign import ccall safe "hs_bindgen_0127b609c9c1cbcd" hs_bindgen_0127b609c9c1cbcd ::
     Botan_mp_t
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:838:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_destroy ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_destroy = hs_bindgen_0127b609c9c1cbcd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_to_hex@
foreign import ccall safe "hs_bindgen_123e0a2761d8400f" hs_bindgen_123e0a2761d8400f ::
     Botan_mp_t
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:843:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_to_hex ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr FC.CChar
     -- ^ __C declaration:__ @out@
  -> IO FC.CInt
botan_mp_to_hex = hs_bindgen_123e0a2761d8400f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_to_str@
foreign import ccall safe "hs_bindgen_d1a74858ac4d995f" hs_bindgen_d1a74858ac4d995f ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:848:27@

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
botan_mp_to_str = hs_bindgen_d1a74858ac4d995f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_clear@
foreign import ccall safe "hs_bindgen_5755e038138cd939" hs_bindgen_5755e038138cd939 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:853:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_clear = hs_bindgen_5755e038138cd939

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_set_from_int@
foreign import ccall safe "hs_bindgen_316631d7caf42981" hs_bindgen_316631d7caf42981 ::
     Botan_mp_t
  -> FC.CInt
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:858:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_int ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> FC.CInt
     -- ^ __C declaration:__ @initial_value@
  -> IO FC.CInt
botan_mp_set_from_int = hs_bindgen_316631d7caf42981

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_set_from_mp@
foreign import ccall safe "hs_bindgen_7708c83ae53b689d" hs_bindgen_7708c83ae53b689d ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:863:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_mp ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> Botan_mp_t
     -- ^ __C declaration:__ @source@
  -> IO FC.CInt
botan_mp_set_from_mp = hs_bindgen_7708c83ae53b689d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_set_from_str@
foreign import ccall safe "hs_bindgen_ebd93ace17d55c73" hs_bindgen_ebd93ace17d55c73 ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:868:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_from_str ::
     Botan_mp_t
     -- ^ __C declaration:__ @dest@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @str@
  -> IO FC.CInt
botan_mp_set_from_str = hs_bindgen_ebd93ace17d55c73

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_set_from_radix_str@
foreign import ccall safe "hs_bindgen_e336d62d74a98dd0" hs_bindgen_e336d62d74a98dd0 ::
     Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:874:27@

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
  hs_bindgen_e336d62d74a98dd0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_num_bits@
foreign import ccall safe "hs_bindgen_f532de35da4cc3ee" hs_bindgen_f532de35da4cc3ee ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:879:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bits ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bits@
  -> IO FC.CInt
botan_mp_num_bits = hs_bindgen_f532de35da4cc3ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_num_bytes@
foreign import ccall safe "hs_bindgen_03636a27e4aa0ef5" hs_bindgen_03636a27e4aa0ef5 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:884:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_num_bytes ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bytes@
  -> IO FC.CInt
botan_mp_num_bytes = hs_bindgen_03636a27e4aa0ef5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_to_bin@
foreign import ccall safe "hs_bindgen_2120c85857deee14" hs_bindgen_2120c85857deee14 ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:889:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_bin ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @vec@
  -> IO FC.CInt
botan_mp_to_bin = hs_bindgen_2120c85857deee14

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_from_bin@
foreign import ccall safe "hs_bindgen_1acee650c935dc16" hs_bindgen_1acee650c935dc16 ::
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
  hs_bindgen_1acee650c935dc16

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:894:27@

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
                                                        hs_bindgen_1acee650c935dc16 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_to_uint32@
foreign import ccall safe "hs_bindgen_5b8ce8404277dc2e" hs_bindgen_5b8ce8404277dc2e ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:899:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_to_uint32 ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     -- ^ __C declaration:__ @val@
  -> IO FC.CInt
botan_mp_to_uint32 = hs_bindgen_5b8ce8404277dc2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_positive@
foreign import ccall safe "hs_bindgen_e7df718ac8c314db" hs_bindgen_e7df718ac8c314db ::
     Botan_mp_t
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:906:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_positive ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_positive = hs_bindgen_e7df718ac8c314db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_negative@
foreign import ccall safe "hs_bindgen_3e7dd83d562bbe60" hs_bindgen_3e7dd83d562bbe60 ::
     Botan_mp_t
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:911:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_is_negative ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_negative = hs_bindgen_3e7dd83d562bbe60

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_flip_sign@
foreign import ccall safe "hs_bindgen_a40daee6a3436fca" hs_bindgen_a40daee6a3436fca ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:913:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_flip_sign ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_flip_sign = hs_bindgen_a40daee6a3436fca

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_zero@
foreign import ccall safe "hs_bindgen_f05544901f190d34" hs_bindgen_f05544901f190d34 ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:915:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_zero ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_zero = hs_bindgen_f05544901f190d34

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_odd@
foreign import ccall safe "hs_bindgen_c89e120398d6044b" hs_bindgen_c89e120398d6044b ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:918:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_odd ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_odd = hs_bindgen_c89e120398d6044b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_even@
foreign import ccall safe "hs_bindgen_4fd201b557d479db" hs_bindgen_4fd201b557d479db ::
     Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:920:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_is_even ::
     Botan_mp_t
     -- ^ __C declaration:__ @mp@
  -> IO FC.CInt
botan_mp_is_even = hs_bindgen_4fd201b557d479db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_add_u32@
foreign import ccall safe "hs_bindgen_6557bbd224364e45" hs_bindgen_6557bbd224364e45 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:922:27@

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
botan_mp_add_u32 = hs_bindgen_6557bbd224364e45

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_sub_u32@
foreign import ccall safe "hs_bindgen_b23f697e69e7c0b5" hs_bindgen_b23f697e69e7c0b5 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:923:27@

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
botan_mp_sub_u32 = hs_bindgen_b23f697e69e7c0b5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_add@
foreign import ccall safe "hs_bindgen_723e23708f77a0e1" hs_bindgen_723e23708f77a0e1 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:925:27@

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
botan_mp_add = hs_bindgen_723e23708f77a0e1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_sub@
foreign import ccall safe "hs_bindgen_b5647131e2659949" hs_bindgen_b5647131e2659949 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:926:27@

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
botan_mp_sub = hs_bindgen_b5647131e2659949

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_mul@
foreign import ccall safe "hs_bindgen_59d8bdd94521f9c8" hs_bindgen_59d8bdd94521f9c8 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:927:27@

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
botan_mp_mul = hs_bindgen_59d8bdd94521f9c8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_div@
foreign import ccall safe "hs_bindgen_323d3b2194fa7bee" hs_bindgen_323d3b2194fa7bee ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:929:27@

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
botan_mp_div = hs_bindgen_323d3b2194fa7bee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_mod_mul@
foreign import ccall safe "hs_bindgen_b047d7ba896c943e" hs_bindgen_b047d7ba896c943e ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:933:27@

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
botan_mp_mod_mul = hs_bindgen_b047d7ba896c943e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_equal@
foreign import ccall safe "hs_bindgen_f2c55377d952bed9" hs_bindgen_f2c55377d952bed9 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:941:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_equal ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_equal = hs_bindgen_f2c55377d952bed9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_cmp@
foreign import ccall safe "hs_bindgen_4e0a5997c516bd02" hs_bindgen_4e0a5997c516bd02 ::
     Ptr.Ptr FC.CInt
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:948:27@

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
botan_mp_cmp = hs_bindgen_4e0a5997c516bd02

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_swap@
foreign import ccall safe "hs_bindgen_faa173f856495959" hs_bindgen_faa173f856495959 ::
     Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:953:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_swap ::
     Botan_mp_t
     -- ^ __C declaration:__ @x@
  -> Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> IO FC.CInt
botan_mp_swap = hs_bindgen_faa173f856495959

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_powmod@
foreign import ccall safe "hs_bindgen_be5bf641273a7d12" hs_bindgen_be5bf641273a7d12 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:956:27@

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
botan_mp_powmod = hs_bindgen_be5bf641273a7d12

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_lshift@
foreign import ccall safe "hs_bindgen_f824d35bb488aa71" hs_bindgen_f824d35bb488aa71 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:958:27@

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
botan_mp_lshift = hs_bindgen_f824d35bb488aa71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_rshift@
foreign import ccall safe "hs_bindgen_0e15e04c1f8504b6" hs_bindgen_0e15e04c1f8504b6 ::
     Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:959:27@

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
botan_mp_rshift = hs_bindgen_0e15e04c1f8504b6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_mod_inverse@
foreign import ccall safe "hs_bindgen_cfcfc82b90c3c587" hs_bindgen_cfcfc82b90c3c587 ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:961:27@

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
botan_mp_mod_inverse = hs_bindgen_cfcfc82b90c3c587

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_rand_bits@
foreign import ccall safe "hs_bindgen_576f8a7c96e7dde4" hs_bindgen_576f8a7c96e7dde4 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:963:27@

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
botan_mp_rand_bits = hs_bindgen_576f8a7c96e7dde4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_rand_range@
foreign import ccall safe "hs_bindgen_734cf6b5ebf95c5f" hs_bindgen_734cf6b5ebf95c5f ::
     Botan_mp_t
  -> Botan_rng_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:965:27@

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
botan_mp_rand_range = hs_bindgen_734cf6b5ebf95c5f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_gcd@
foreign import ccall safe "hs_bindgen_8df4e15bb647127c" hs_bindgen_8df4e15bb647127c ::
     Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:968:27@

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
botan_mp_gcd = hs_bindgen_8df4e15bb647127c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_is_prime@
foreign import ccall safe "hs_bindgen_7e538fdc9db19055" hs_bindgen_7e538fdc9db19055 ::
     Botan_mp_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:975:27@

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
botan_mp_is_prime = hs_bindgen_7e538fdc9db19055

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_get_bit@
foreign import ccall safe "hs_bindgen_50f84b61d3dcdc4b" hs_bindgen_50f84b61d3dcdc4b ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:982:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_get_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_get_bit = hs_bindgen_50f84b61d3dcdc4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_set_bit@
foreign import ccall safe "hs_bindgen_6f2b18e39a239269" hs_bindgen_6f2b18e39a239269 ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:987:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_set_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_set_bit = hs_bindgen_6f2b18e39a239269

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mp_clear_bit@
foreign import ccall safe "hs_bindgen_a44011c971475d6b" hs_bindgen_a44011c971475d6b ::
     Botan_mp_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:992:27@

__exported by:__ @botan\/ffi.h@
-}
botan_mp_clear_bit ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @bit@
  -> IO FC.CInt
botan_mp_clear_bit = hs_bindgen_a44011c971475d6b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_bcrypt_generate@
foreign import ccall safe "hs_bindgen_1bba7b8e02356cad" hs_bindgen_1bba7b8e02356cad ::
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

__defined at:__ @botan\/ffi.h:1009:27@

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
botan_bcrypt_generate = hs_bindgen_1bba7b8e02356cad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_bcrypt_is_valid@
foreign import ccall safe "hs_bindgen_7453d293bb5fa084" hs_bindgen_7453d293bb5fa084 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1023:27@

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
botan_bcrypt_is_valid = hs_bindgen_7453d293bb5fa084

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create@
foreign import ccall safe "hs_bindgen_c0c388ef637d0679" hs_bindgen_c0c388ef637d0679 ::
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

__defined at:__ @botan\/ffi.h:1038:27@

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
botan_privkey_create = hs_bindgen_c0c388ef637d0679

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_check_key@
foreign import ccall safe "hs_bindgen_c15e1425a27e92d2" hs_bindgen_c15e1425a27e92d2 ::
     Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1045:27@

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
botan_privkey_check_key = hs_bindgen_c15e1425a27e92d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_rsa@
foreign import ccall safe "hs_bindgen_6f2ea6a8c42473f2" hs_bindgen_6f2ea6a8c42473f2 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1048:5@

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
  hs_bindgen_6f2ea6a8c42473f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_ecdsa@
foreign import ccall safe "hs_bindgen_269dc3eb784b9541" hs_bindgen_269dc3eb784b9541 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1050:5@

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
  hs_bindgen_269dc3eb784b9541

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_ecdh@
foreign import ccall safe "hs_bindgen_94dad37d46102184" hs_bindgen_94dad37d46102184 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1052:5@

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
  hs_bindgen_94dad37d46102184

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_mceliece@
foreign import ccall safe "hs_bindgen_fffa42f69f7579aa" hs_bindgen_fffa42f69f7579aa ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1054:5@

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
  hs_bindgen_fffa42f69f7579aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_dh@
foreign import ccall safe "hs_bindgen_c8e22307a271077b" hs_bindgen_c8e22307a271077b ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1056:5@

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
botan_privkey_create_dh = hs_bindgen_c8e22307a271077b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_dsa@
foreign import ccall safe "hs_bindgen_5f8b788111afb362" hs_bindgen_5f8b788111afb362 ::
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

__defined at:__ @botan\/ffi.h:1076:27@

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
  hs_bindgen_5f8b788111afb362

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_create_elgamal@
foreign import ccall safe "hs_bindgen_061dda54a3d6748d" hs_bindgen_061dda54a3d6748d ::
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

__defined at:__ @botan\/ffi.h:1101:27@

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
  hs_bindgen_061dda54a3d6748d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load@
foreign import ccall safe "hs_bindgen_ef6a3d56cb87aa2b" hs_bindgen_ef6a3d56cb87aa2b ::
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
  hs_bindgen_ef6a3d56cb87aa2b

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1112:27@

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
                                                            hs_bindgen_ef6a3d56cb87aa2b x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_destroy@
foreign import ccall safe "hs_bindgen_2a011cfdbafecaec" hs_bindgen_2a011cfdbafecaec ::
     Botan_privkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1120:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_destroy ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_destroy = hs_bindgen_2a011cfdbafecaec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_export@
foreign import ccall safe "hs_bindgen_7d792b190f6fa2a9" hs_bindgen_7d792b190f6fa2a9 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1132:27@

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
botan_privkey_export = hs_bindgen_7d792b190f6fa2a9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_der@
foreign import ccall safe "hs_bindgen_89455525865f83d7" hs_bindgen_89455525865f83d7 ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1139:27@

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
botan_privkey_view_der = hs_bindgen_89455525865f83d7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_pem@
foreign import ccall safe "hs_bindgen_bee8bdf66240cb8a" hs_bindgen_bee8bdf66240cb8a ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1147:27@

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
botan_privkey_view_pem = hs_bindgen_bee8bdf66240cb8a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_algo_name@
foreign import ccall safe "hs_bindgen_d44ea084315394c6" hs_bindgen_d44ea084315394c6 ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1152:27@

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
botan_privkey_algo_name = hs_bindgen_d44ea084315394c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_export_encrypted@
foreign import ccall safe "hs_bindgen_fe79ddee26cc3fef" hs_bindgen_fe79ddee26cc3fef ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1158:27@

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
  hs_bindgen_fe79ddee26cc3fef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall safe "hs_bindgen_193fe389e87fa445" hs_bindgen_193fe389e87fa445 ::
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

    __defined at:__ @botan\/ffi.h:1171:27@

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
  hs_bindgen_193fe389e87fa445

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall safe "hs_bindgen_1738672dfa2fb4ed" hs_bindgen_1738672dfa2fb4ed ::
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

__defined at:__ @botan\/ffi.h:1184:27@

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
  hs_bindgen_1738672dfa2fb4ed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_encrypted_der@
foreign import ccall safe "hs_bindgen_f76db0ebd521e034" hs_bindgen_f76db0ebd521e034 ::
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

__defined at:__ @botan\/ffi.h:1199:27@

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
  hs_bindgen_f76db0ebd521e034

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_encrypted_der_timed@
foreign import ccall safe "hs_bindgen_98db44edf2cbcaa1" hs_bindgen_98db44edf2cbcaa1 ::
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

__defined at:__ @botan\/ffi.h:1214:27@

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
  hs_bindgen_98db44edf2cbcaa1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_encrypted_pem@
foreign import ccall safe "hs_bindgen_882d7449b1f3ecb8" hs_bindgen_882d7449b1f3ecb8 ::
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

__defined at:__ @botan\/ffi.h:1230:27@

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
  hs_bindgen_882d7449b1f3ecb8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_view_encrypted_pem_timed@
foreign import ccall safe "hs_bindgen_f2523a17e9e5f288" hs_bindgen_f2523a17e9e5f288 ::
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

__defined at:__ @botan\/ffi.h:1245:27@

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
  hs_bindgen_f2523a17e9e5f288

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load@
foreign import ccall safe "hs_bindgen_c069779455d9967a" hs_bindgen_c069779455d9967a ::
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
  hs_bindgen_c069779455d9967a

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1257:27@

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
                                                        hs_bindgen_c069779455d9967a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_export_pubkey@
foreign import ccall safe "hs_bindgen_683fbbe7f6b28e26" hs_bindgen_683fbbe7f6b28e26 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1259:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @out@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @in'@
  -> IO FC.CInt
botan_privkey_export_pubkey =
  hs_bindgen_683fbbe7f6b28e26

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_export@
foreign import ccall safe "hs_bindgen_9bfadb431b8f1006" hs_bindgen_9bfadb431b8f1006 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1261:27@

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
botan_pubkey_export = hs_bindgen_9bfadb431b8f1006

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_view_der@
foreign import ccall safe "hs_bindgen_7225d7bdb07881c9" hs_bindgen_7225d7bdb07881c9 ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1266:27@

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
botan_pubkey_view_der = hs_bindgen_7225d7bdb07881c9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_view_pem@
foreign import ccall safe "hs_bindgen_42c8f9cddaebf6ce" hs_bindgen_42c8f9cddaebf6ce ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1274:27@

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
botan_pubkey_view_pem = hs_bindgen_42c8f9cddaebf6ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_algo_name@
foreign import ccall safe "hs_bindgen_7223ca56d4a79949" hs_bindgen_7223ca56d4a79949 ::
     Botan_pubkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1279:27@

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
botan_pubkey_algo_name = hs_bindgen_7223ca56d4a79949

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_check_key@
foreign import ccall safe "hs_bindgen_eab8b9d9b19ee637" hs_bindgen_eab8b9d9b19ee637 ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1284:27@

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
botan_pubkey_check_key = hs_bindgen_eab8b9d9b19ee637

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_estimated_strength@
foreign import ccall safe "hs_bindgen_45270549acfc9725" hs_bindgen_45270549acfc9725 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1286:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @estimate@
  -> IO FC.CInt
botan_pubkey_estimated_strength =
  hs_bindgen_45270549acfc9725

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_fingerprint@
foreign import ccall safe "hs_bindgen_b52550e76e8a8f11" hs_bindgen_b52550e76e8a8f11 ::
     Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1288:27@

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
  hs_bindgen_b52550e76e8a8f11

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_destroy@
foreign import ccall safe "hs_bindgen_574e8d52747d7053" hs_bindgen_574e8d52747d7053 ::
     Botan_pubkey_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1294:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pubkey_destroy ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_destroy = hs_bindgen_574e8d52747d7053

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_get_field@
foreign import ccall safe "hs_bindgen_80b7f331f421ea0c" hs_bindgen_80b7f331f421ea0c ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1299:27@

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
botan_pubkey_get_field = hs_bindgen_80b7f331f421ea0c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_get_field@
foreign import ccall safe "hs_bindgen_d933938dc565fa5d" hs_bindgen_d933938dc565fa5d ::
     Botan_mp_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1303:27@

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
botan_privkey_get_field = hs_bindgen_d933938dc565fa5d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_rsa@
foreign import ccall safe "hs_bindgen_e6f757e880c8f1c7" hs_bindgen_e6f757e880c8f1c7 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1310:27@

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
botan_privkey_load_rsa = hs_bindgen_e6f757e880c8f1c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_rsa_pkcs1@
foreign import ccall safe "hs_bindgen_5f6282fdf2d3d6fe" hs_bindgen_5f6282fdf2d3d6fe ::
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
  hs_bindgen_5f6282fdf2d3d6fe

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1315:27@

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
                                                        hs_bindgen_5f6282fdf2d3d6fe x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_p@
foreign import ccall safe "hs_bindgen_06791d01c452f06a" hs_bindgen_06791d01c452f06a ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1320:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_p = hs_bindgen_06791d01c452f06a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_q@
foreign import ccall safe "hs_bindgen_b671cfc6386beb9e" hs_bindgen_b671cfc6386beb9e ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1322:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_q = hs_bindgen_b671cfc6386beb9e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_d@
foreign import ccall safe "hs_bindgen_2f3af3c6b0c2c0e2" hs_bindgen_2f3af3c6b0c2c0e2 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1324:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_d ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_d = hs_bindgen_2f3af3c6b0c2c0e2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_79bd80d54f610d98" hs_bindgen_79bd80d54f610d98 ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1326:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_n = hs_bindgen_79bd80d54f610d98

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_fa8b785baf0a8c2b" hs_bindgen_fa8b785baf0a8c2b ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1328:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_privkey_rsa_get_e = hs_bindgen_fa8b785baf0a8c2b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_rsa_get_privkey@
foreign import ccall safe "hs_bindgen_37e0187548bc87d8" hs_bindgen_37e0187548bc87d8 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1330:27@

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
  hs_bindgen_37e0187548bc87d8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_rsa@
foreign import ccall safe "hs_bindgen_b05b1593c52bb651" hs_bindgen_b05b1593c52bb651 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1334:27@

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
botan_pubkey_load_rsa = hs_bindgen_b05b1593c52bb651

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_rsa_get_e@
foreign import ccall safe "hs_bindgen_7b616346201103b4" hs_bindgen_7b616346201103b4 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1339:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_e ::
     Botan_mp_t
     -- ^ __C declaration:__ @e@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_e = hs_bindgen_7b616346201103b4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_rsa_get_n@
foreign import ccall safe "hs_bindgen_07142108998ad4f6" hs_bindgen_07142108998ad4f6 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1341:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_rsa_get_n ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @rsa_key@
  -> IO FC.CInt
botan_pubkey_rsa_get_n = hs_bindgen_07142108998ad4f6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_dsa@
foreign import ccall safe "hs_bindgen_694c3e747dd726f4" hs_bindgen_694c3e747dd726f4 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1346:27@

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
botan_privkey_load_dsa = hs_bindgen_694c3e747dd726f4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_dsa@
foreign import ccall safe "hs_bindgen_195970d94b987541" hs_bindgen_195970d94b987541 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1352:27@

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
botan_pubkey_load_dsa = hs_bindgen_195970d94b987541

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_dsa_get_x@
foreign import ccall safe "hs_bindgen_862bd3e138bbe74a" hs_bindgen_862bd3e138bbe74a ::
     Botan_mp_t
  -> Botan_privkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1359:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_dsa_get_x ::
     Botan_mp_t
     -- ^ __C declaration:__ @n@
  -> Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_privkey_dsa_get_x = hs_bindgen_862bd3e138bbe74a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_dsa_get_p@
foreign import ccall safe "hs_bindgen_9b0ab9cd3fbd9035" hs_bindgen_9b0ab9cd3fbd9035 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1362:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_p ::
     Botan_mp_t
     -- ^ __C declaration:__ @p@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_p = hs_bindgen_9b0ab9cd3fbd9035

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_dsa_get_q@
foreign import ccall safe "hs_bindgen_e9e5bb0296391834" hs_bindgen_e9e5bb0296391834 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1364:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_q ::
     Botan_mp_t
     -- ^ __C declaration:__ @q@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_q = hs_bindgen_e9e5bb0296391834

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_dsa_get_g@
foreign import ccall safe "hs_bindgen_7bbbddb00064ab93" hs_bindgen_7bbbddb00064ab93 ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1366:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_g ::
     Botan_mp_t
     -- ^ __C declaration:__ @d@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_g = hs_bindgen_7bbbddb00064ab93

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_dsa_get_y@
foreign import ccall safe "hs_bindgen_12738e141a05a20b" hs_bindgen_12738e141a05a20b ::
     Botan_mp_t
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1368:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_dsa_get_y ::
     Botan_mp_t
     -- ^ __C declaration:__ @y@
  -> Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_pubkey_dsa_get_y = hs_bindgen_12738e141a05a20b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_dh@
foreign import ccall safe "hs_bindgen_c24d5b5efe6b09ec" hs_bindgen_c24d5b5efe6b09ec ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1383:27@

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
botan_privkey_load_dh = hs_bindgen_c24d5b5efe6b09ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_dh@
foreign import ccall safe "hs_bindgen_fde310e32c0fa198" hs_bindgen_fde310e32c0fa198 ::
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

__defined at:__ @botan\/ffi.h:1400:27@

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
botan_pubkey_load_dh = hs_bindgen_fde310e32c0fa198

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_elgamal@
foreign import ccall safe "hs_bindgen_9e1a8d3b44b912aa" hs_bindgen_9e1a8d3b44b912aa ::
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

__defined at:__ @botan\/ffi.h:1421:27@

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
  hs_bindgen_9e1a8d3b44b912aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_elgamal@
foreign import ccall safe "hs_bindgen_3ba6cea50af55aee" hs_bindgen_3ba6cea50af55aee ::
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

__defined at:__ @botan\/ffi.h:1439:27@

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
  hs_bindgen_3ba6cea50af55aee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_ed25519@
foreign import ccall safe "hs_bindgen_bb0df7a9afac3a8a" hs_bindgen_bb0df7a9afac3a8a ::
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
  hs_bindgen_bb0df7a9afac3a8a

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1448:27@

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
                                                    hs_bindgen_bb0df7a9afac3a8a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_ed25519@
foreign import ccall safe "hs_bindgen_70d204939200707b" hs_bindgen_70d204939200707b ::
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
  hs_bindgen_70d204939200707b

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1451:27@

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
                                                    hs_bindgen_70d204939200707b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_ed25519_get_privkey@
foreign import ccall safe "hs_bindgen_688e100cb2d247d9" hs_bindgen_688e100cb2d247d9 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1454:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_ed25519_get_privkey =
  hs_bindgen_688e100cb2d247d9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_ed25519_get_pubkey@
foreign import ccall safe "hs_bindgen_e2ffdbc2dc627d95" hs_bindgen_e2ffdbc2dc627d95 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1457:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_ed25519_get_pubkey =
  hs_bindgen_e2ffdbc2dc627d95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_x25519@
foreign import ccall safe "hs_bindgen_bb1fcb9416133c5b" hs_bindgen_bb1fcb9416133c5b ::
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
  hs_bindgen_bb1fcb9416133c5b

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1464:27@

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
                                                    hs_bindgen_bb1fcb9416133c5b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_x25519@
foreign import ccall safe "hs_bindgen_40a75bd7f7e15152" hs_bindgen_40a75bd7f7e15152 ::
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
  hs_bindgen_40a75bd7f7e15152

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1467:27@

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
                                                    hs_bindgen_40a75bd7f7e15152 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_x25519_get_privkey@
foreign import ccall safe "hs_bindgen_1a5d454e615ccef3" hs_bindgen_1a5d454e615ccef3 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1470:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @output@
  -> IO FC.CInt
botan_privkey_x25519_get_privkey =
  hs_bindgen_1a5d454e615ccef3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_x25519_get_pubkey@
foreign import ccall safe "hs_bindgen_5fd717350529d3b1" hs_bindgen_5fd717350529d3b1 ::
     Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1473:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     -- ^ __C declaration:__ @pubkey@
  -> IO FC.CInt
botan_pubkey_x25519_get_pubkey =
  hs_bindgen_5fd717350529d3b1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_989883b061b3a3eb" hs_bindgen_989883b061b3a3eb ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1480:5@

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
  hs_bindgen_989883b061b3a3eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_ecdsa@
foreign import ccall safe "hs_bindgen_922401273c624b5a" hs_bindgen_922401273c624b5a ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1485:5@

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
botan_pubkey_load_ecdsa = hs_bindgen_922401273c624b5a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_ecdh@
foreign import ccall safe "hs_bindgen_bb47a2f6a41c4f03" hs_bindgen_bb47a2f6a41c4f03 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1491:5@

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
botan_pubkey_load_ecdh = hs_bindgen_bb47a2f6a41c4f03

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_ecdh@
foreign import ccall safe "hs_bindgen_c24740920ef299d6" hs_bindgen_c24740920ef299d6 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1497:5@

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
botan_privkey_load_ecdh = hs_bindgen_c24740920ef299d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_sm2@
foreign import ccall safe "hs_bindgen_20d6e857fd1afd00" hs_bindgen_20d6e857fd1afd00 ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1502:5@

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
botan_pubkey_load_sm2 = hs_bindgen_20d6e857fd1afd00

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_sm2@
foreign import ccall safe "hs_bindgen_0c0278b215a5a943" hs_bindgen_0c0278b215a5a943 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1508:5@

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
botan_privkey_load_sm2 = hs_bindgen_0c0278b215a5a943

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_084c3247da47b79b" hs_bindgen_084c3247da47b79b ::
     Ptr.Ptr Botan_pubkey_t
  -> Botan_mp_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1513:5@

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
  hs_bindgen_084c3247da47b79b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_privkey_load_sm2_enc@
foreign import ccall safe "hs_bindgen_ca157d050b5829e0" hs_bindgen_ca157d050b5829e0 ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_mp_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1519:5@

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
  hs_bindgen_ca157d050b5829e0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_sm2_compute_za@
foreign import ccall safe "hs_bindgen_dbb4320e2ae8455b" hs_bindgen_dbb4320e2ae8455b ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1524:5@

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
  hs_bindgen_dbb4320e2ae8455b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pubkey_view_ec_public_point@
foreign import ccall safe "hs_bindgen_812387d7bc8299df" hs_bindgen_812387d7bc8299df ::
     Botan_pubkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1534:5@

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
  hs_bindgen_812387d7bc8299df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_encrypt_create@
foreign import ccall safe "hs_bindgen_4e4dc8b8a09ad4ad" hs_bindgen_4e4dc8b8a09ad4ad ::
     Ptr.Ptr Botan_pk_op_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1544:27@

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
  hs_bindgen_4e4dc8b8a09ad4ad

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_encrypt_destroy@
foreign import ccall safe "hs_bindgen_1726fe09f7857d92" hs_bindgen_1726fe09f7857d92 ::
     Botan_pk_op_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1552:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_encrypt_destroy =
  hs_bindgen_1726fe09f7857d92

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_encrypt_output_length@
foreign import ccall safe "hs_bindgen_83ddf86cf7647e2e" hs_bindgen_83ddf86cf7647e2e ::
     Botan_pk_op_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1554:27@

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
  hs_bindgen_83ddf86cf7647e2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_encrypt@
foreign import ccall safe "hs_bindgen_fad471132293642a" hs_bindgen_fad471132293642a ::
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
  hs_bindgen_fad471132293642a

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1558:27@

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
                                                              hs_bindgen_fad471132293642a x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_decrypt_create@
foreign import ccall safe "hs_bindgen_cc0274c8e8845a16" hs_bindgen_cc0274c8e8845a16 ::
     Ptr.Ptr Botan_pk_op_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1570:27@

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
  hs_bindgen_cc0274c8e8845a16

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_decrypt_destroy@
foreign import ccall safe "hs_bindgen_1de958bfa72e3c97" hs_bindgen_1de958bfa72e3c97 ::
     Botan_pk_op_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1578:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_decrypt_destroy =
  hs_bindgen_1de958bfa72e3c97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_decrypt_output_length@
foreign import ccall safe "hs_bindgen_b3f515e95de17195" hs_bindgen_b3f515e95de17195 ::
     Botan_pk_op_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1580:27@

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
  hs_bindgen_b3f515e95de17195

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_decrypt@
foreign import ccall safe "hs_bindgen_37a41d251aa140a0" hs_bindgen_37a41d251aa140a0 ::
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
  hs_bindgen_37a41d251aa140a0

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1584:27@

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
                                                            hs_bindgen_37a41d251aa140a0 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_sign_create@
foreign import ccall safe "hs_bindgen_e702d6b32b4c5e4d" hs_bindgen_e702d6b32b4c5e4d ::
     Ptr.Ptr Botan_pk_op_sign_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1597:5@

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
botan_pk_op_sign_create = hs_bindgen_e702d6b32b4c5e4d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_sign_destroy@
foreign import ccall safe "hs_bindgen_b2a8b9c62f6ec697" hs_bindgen_b2a8b9c62f6ec697 ::
     Botan_pk_op_sign_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1605:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_sign_destroy =
  hs_bindgen_b2a8b9c62f6ec697

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_sign_output_length@
foreign import ccall safe "hs_bindgen_c4e5229dd70842c2" hs_bindgen_c4e5229dd70842c2 ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1607:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @olen@
  -> IO FC.CInt
botan_pk_op_sign_output_length =
  hs_bindgen_c4e5229dd70842c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_sign_update@
foreign import ccall safe "hs_bindgen_17d01bb61890d2e7" hs_bindgen_17d01bb61890d2e7 ::
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
  hs_bindgen_17d01bb61890d2e7

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1609:27@

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
                                                        hs_bindgen_17d01bb61890d2e7 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_sign_finish@
foreign import ccall safe "hs_bindgen_514e881cdd281f68" hs_bindgen_514e881cdd281f68 ::
     Botan_pk_op_sign_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1612:5@

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
botan_pk_op_sign_finish = hs_bindgen_514e881cdd281f68

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_verify_create@
foreign import ccall safe "hs_bindgen_2b513128ec6831a8" hs_bindgen_2b513128ec6831a8 ::
     Ptr.Ptr Botan_pk_op_verify_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1621:5@

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
  hs_bindgen_2b513128ec6831a8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_verify_destroy@
foreign import ccall safe "hs_bindgen_d22d427c67362256" hs_bindgen_d22d427c67362256 ::
     Botan_pk_op_verify_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1629:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_verify_destroy =
  hs_bindgen_d22d427c67362256

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_verify_update@
foreign import ccall safe "hs_bindgen_ed10c3c07a259217" hs_bindgen_ed10c3c07a259217 ::
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
  hs_bindgen_ed10c3c07a259217

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1631:27@

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
                                                        hs_bindgen_ed10c3c07a259217 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_verify_finish@
foreign import ccall safe "hs_bindgen_c551ee95e966107d" hs_bindgen_c551ee95e966107d ::
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
  hs_bindgen_c551ee95e966107d

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1632:27@

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
                                                        hs_bindgen_c551ee95e966107d x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement_create@
foreign import ccall safe "hs_bindgen_38eae892ae3a0d5c" hs_bindgen_38eae892ae3a0d5c ::
     Ptr.Ptr Botan_pk_op_ka_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1640:5@

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
  hs_bindgen_38eae892ae3a0d5c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement_destroy@
foreign import ccall safe "hs_bindgen_a3a5e9d8a8623615" hs_bindgen_a3a5e9d8a8623615 ::
     Botan_pk_op_ka_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1648:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_key_agreement_destroy =
  hs_bindgen_a3a5e9d8a8623615

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement_export_public@
foreign import ccall safe "hs_bindgen_a6e802a718976f66" hs_bindgen_a6e802a718976f66 ::
     Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1650:27@

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
  hs_bindgen_a6e802a718976f66

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement_view_public@
foreign import ccall safe "hs_bindgen_5d18ef95e49fe41b" hs_bindgen_5d18ef95e49fe41b ::
     Botan_privkey_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1653:27@

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
  hs_bindgen_5d18ef95e49fe41b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement_size@
foreign import ccall safe "hs_bindgen_35d5f46dbaa171e1" hs_bindgen_35d5f46dbaa171e1 ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1658:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @out_len@
  -> IO FC.CInt
botan_pk_op_key_agreement_size =
  hs_bindgen_35d5f46dbaa171e1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_key_agreement@
foreign import ccall safe "hs_bindgen_7f8dcc24297a9b18" hs_bindgen_7f8dcc24297a9b18 ::
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
  hs_bindgen_7f8dcc24297a9b18

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1661:5@

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
                                                                                                                hs_bindgen_7f8dcc24297a9b18 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x6))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_encrypt_create@
foreign import ccall safe "hs_bindgen_54ba4b01fa6dd811" hs_bindgen_54ba4b01fa6dd811 ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
  -> Botan_pubkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1671:27@

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
  hs_bindgen_54ba4b01fa6dd811

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_encrypt_destroy@
foreign import ccall safe "hs_bindgen_481c7ebe4670323a" hs_bindgen_481c7ebe4670323a ::
     Botan_pk_op_kem_encrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1679:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_destroy =
  hs_bindgen_481c7ebe4670323a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_1d0e3a0f6697925d" hs_bindgen_1d0e3a0f6697925d ::
     Botan_pk_op_kem_encrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1682:5@

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
  hs_bindgen_1d0e3a0f6697925d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall safe "hs_bindgen_4133b673d82ae380" hs_bindgen_4133b673d82ae380 ::
     Botan_pk_op_kem_encrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1688:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     -- ^ __C declaration:__ @op@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @output_encapsulated_key_length@
  -> IO FC.CInt
botan_pk_op_kem_encrypt_encapsulated_key_length =
  hs_bindgen_4133b673d82ae380

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall safe "hs_bindgen_e3542444b22a3c7e" hs_bindgen_e3542444b22a3c7e ::
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
  hs_bindgen_e3542444b22a3c7e

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1692:27@

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
                                                                    hs_bindgen_e3542444b22a3c7e x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 x4 x5 x6 x7 x8)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_decrypt_create@
foreign import ccall safe "hs_bindgen_530943de1c943683" hs_bindgen_530943de1c943683 ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
  -> Botan_privkey_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1705:27@

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
  hs_bindgen_530943de1c943683

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_decrypt_destroy@
foreign import ccall safe "hs_bindgen_0f51711cb9895c85" hs_bindgen_0f51711cb9895c85 ::
     Botan_pk_op_kem_decrypt_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1713:27@

__exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     -- ^ __C declaration:__ @op@
  -> IO FC.CInt
botan_pk_op_kem_decrypt_destroy =
  hs_bindgen_0f51711cb9895c85

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall safe "hs_bindgen_de8a00f5bb2f4316" hs_bindgen_de8a00f5bb2f4316 ::
     Botan_pk_op_kem_decrypt_t
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1716:5@

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
  hs_bindgen_de8a00f5bb2f4316

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall safe "hs_bindgen_aeed291522f49286" hs_bindgen_aeed291522f49286 ::
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
  hs_bindgen_aeed291522f49286

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1721:27@

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
                                                                                                                  hs_bindgen_aeed291522f49286 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_pkcs_hash_id@
foreign import ccall safe "hs_bindgen_f67c40f86a7234c7" hs_bindgen_f67c40f86a7234c7 ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1735:27@

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
botan_pkcs_hash_id = hs_bindgen_f67c40f86a7234c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mceies_encrypt@
foreign import ccall safe "hs_bindgen_186c2cecc517c333" hs_bindgen_186c2cecc517c333 ::
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
  hs_bindgen_186c2cecc517c333

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1742:5@

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
                                                                                                                    hs_bindgen_186c2cecc517c333 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x6 x7 x8))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_mceies_decrypt@
foreign import ccall safe "hs_bindgen_03e75310e36bb2f0" hs_bindgen_03e75310e36bb2f0 ::
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
  hs_bindgen_03e75310e36bb2f0

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1753:5@

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
                                                                                                                  hs_bindgen_03e75310e36bb2f0 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_load@
foreign import ccall safe "hs_bindgen_4986b485d9902959" hs_bindgen_4986b485d9902959 ::
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
  hs_bindgen_4986b485d9902959

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1765:27@

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
                                                        hs_bindgen_4986b485d9902959 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_load_file@
foreign import ccall safe "hs_bindgen_8467d08ea11d2add" hs_bindgen_8467d08ea11d2add ::
     Ptr.Ptr Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1766:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load_file ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @cert_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @filename@
  -> IO FC.CInt
botan_x509_cert_load_file =
  hs_bindgen_8467d08ea11d2add

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_destroy@
foreign import ccall safe "hs_bindgen_9badee90a48043a7" hs_bindgen_9badee90a48043a7 ::
     Botan_x509_cert_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1771:27@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_destroy ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_destroy = hs_bindgen_9badee90a48043a7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_dup@
foreign import ccall safe "hs_bindgen_1bd8e0027302e2d6" hs_bindgen_1bd8e0027302e2d6 ::
     Ptr.Ptr Botan_x509_cert_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1773:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     -- ^ __C declaration:__ @new_cert@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_cert_dup = hs_bindgen_1bd8e0027302e2d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_time_starts@
foreign import ccall safe "hs_bindgen_c6ac03597e6ccf51" hs_bindgen_c6ac03597e6ccf51 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1776:27@

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
  hs_bindgen_c6ac03597e6ccf51

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_time_expires@
foreign import ccall safe "hs_bindgen_a20053710db534b7" hs_bindgen_a20053710db534b7 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1777:27@

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
  hs_bindgen_a20053710db534b7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_not_before@
foreign import ccall safe "hs_bindgen_6366b5fd9db342d2" hs_bindgen_6366b5fd9db342d2 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1779:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_before ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_before =
  hs_bindgen_6366b5fd9db342d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_not_after@
foreign import ccall safe "hs_bindgen_5b0c3777e85fe7af" hs_bindgen_5b0c3777e85fe7af ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1780:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_not_after ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     -- ^ __C declaration:__ @time_since_epoch@
  -> IO FC.CInt
botan_x509_cert_not_after =
  hs_bindgen_5b0c3777e85fe7af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_fingerprint@
foreign import ccall safe "hs_bindgen_ece3a0dd18d1ab10" hs_bindgen_ece3a0dd18d1ab10 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1782:27@

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
  hs_bindgen_ece3a0dd18d1ab10

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_serial_number@
foreign import ccall safe "hs_bindgen_b4c92b110a490330" hs_bindgen_b4c92b110a490330 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1784:27@

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
  hs_bindgen_b4c92b110a490330

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_authority_key_id@
foreign import ccall safe "hs_bindgen_07757401581a4d69" hs_bindgen_07757401581a4d69 ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1785:27@

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
  hs_bindgen_07757401581a4d69

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_subject_key_id@
foreign import ccall safe "hs_bindgen_4d80bc8df6a9adcd" hs_bindgen_4d80bc8df6a9adcd ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1786:27@

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
  hs_bindgen_4d80bc8df6a9adcd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_public_key_bits@
foreign import ccall safe "hs_bindgen_a3c54e76356ebe7e" hs_bindgen_a3c54e76356ebe7e ::
     Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1788:27@

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
  hs_bindgen_a3c54e76356ebe7e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_view_public_key_bits@
foreign import ccall safe "hs_bindgen_7df7e952b5e2e7ef" hs_bindgen_7df7e952b5e2e7ef ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_bin_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1791:27@

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
  hs_bindgen_7df7e952b5e2e7ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_public_key@
foreign import ccall safe "hs_bindgen_41f4b707a1e290d2" hs_bindgen_41f4b707a1e290d2 ::
     Botan_x509_cert_t
  -> Ptr.Ptr Botan_pubkey_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1796:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> Ptr.Ptr Botan_pubkey_t
     -- ^ __C declaration:__ @key@
  -> IO FC.CInt
botan_x509_cert_get_public_key =
  hs_bindgen_41f4b707a1e290d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_issuer_dn@
foreign import ccall safe "hs_bindgen_5dd3c16ca98467ce" hs_bindgen_5dd3c16ca98467ce ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1799:5@

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
  hs_bindgen_5dd3c16ca98467ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_get_subject_dn@
foreign import ccall safe "hs_bindgen_ac9f6fba96565b35" hs_bindgen_ac9f6fba96565b35 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1804:5@

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
  hs_bindgen_ac9f6fba96565b35

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_to_string@
foreign import ccall safe "hs_bindgen_eeea8f953b9e7ac3" hs_bindgen_eeea8f953b9e7ac3 ::
     Botan_x509_cert_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1808:27@

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
  hs_bindgen_eeea8f953b9e7ac3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_view_as_string@
foreign import ccall safe "hs_bindgen_8040877213664f5a" hs_bindgen_8040877213664f5a ::
     Botan_x509_cert_t
  -> Botan_view_ctx
  -> Botan_view_str_fn
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1810:27@

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
  hs_bindgen_8040877213664f5a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_allowed_usage@
foreign import ccall safe "hs_bindgen_6398629a0cb69dc8" hs_bindgen_6398629a0cb69dc8 ::
     Botan_x509_cert_t
  -> FC.CUInt
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1829:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> FC.CUInt
     -- ^ __C declaration:__ @key_usage@
  -> IO FC.CInt
botan_x509_cert_allowed_usage =
  hs_bindgen_6398629a0cb69dc8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_hostname_match@
foreign import ccall safe "hs_bindgen_6f67007c7bfcf586" hs_bindgen_6f67007c7bfcf586 ::
     Botan_x509_cert_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1835:27@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_hostname_match ::
     Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @hostname@
  -> IO FC.CInt
botan_x509_cert_hostname_match =
  hs_bindgen_6f67007c7bfcf586

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_verify@
foreign import ccall safe "hs_bindgen_4b0a8ad1a770e044" hs_bindgen_4b0a8ad1a770e044 ::
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

__defined at:__ @botan\/ffi.h:1845:27@

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
botan_x509_cert_verify = hs_bindgen_4b0a8ad1a770e044

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_validation_status@
foreign import ccall safe "hs_bindgen_e73f0a5e20541b48" hs_bindgen_e73f0a5e20541b48 ::
     FC.CInt
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1861:35@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_validation_status ::
     FC.CInt
     -- ^ __C declaration:__ @code@
  -> IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_x509_cert_validation_status =
  hs_bindgen_e73f0a5e20541b48

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_crl_load_file@
foreign import ccall safe "hs_bindgen_e62ed3f6a970dbe9" hs_bindgen_e62ed3f6a970dbe9 ::
     Ptr.Ptr Botan_x509_crl_t
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1869:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     -- ^ __C declaration:__ @crl_obj@
  -> HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @crl_path@
  -> IO FC.CInt
botan_x509_crl_load_file =
  hs_bindgen_e62ed3f6a970dbe9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_crl_load@
foreign import ccall safe "hs_bindgen_5b86eb8c65a38a21" hs_bindgen_5b86eb8c65a38a21 ::
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
  hs_bindgen_5b86eb8c65a38a21

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1870:28@

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
                                                        hs_bindgen_5b86eb8c65a38a21 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_crl_destroy@
foreign import ccall safe "hs_bindgen_ff6579b4f28d6ff6" hs_bindgen_ff6579b4f28d6ff6 ::
     Botan_x509_crl_t
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1872:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_destroy ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> IO FC.CInt
botan_x509_crl_destroy = hs_bindgen_ff6579b4f28d6ff6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_is_revoked@
foreign import ccall safe "hs_bindgen_27d7cdbd090a4578" hs_bindgen_27d7cdbd090a4578 ::
     Botan_x509_crl_t
  -> Botan_x509_cert_t
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1878:28@

__exported by:__ @botan\/ffi.h@
-}
botan_x509_is_revoked ::
     Botan_x509_crl_t
     -- ^ __C declaration:__ @crl@
  -> Botan_x509_cert_t
     -- ^ __C declaration:__ @cert@
  -> IO FC.CInt
botan_x509_is_revoked = hs_bindgen_27d7cdbd090a4578

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_x509_cert_verify_with_crl@
foreign import ccall safe "hs_bindgen_348db2408ee7dbbb" hs_bindgen_348db2408ee7dbbb ::
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

__defined at:__ @botan\/ffi.h:1884:28@

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
  hs_bindgen_348db2408ee7dbbb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_key_wrap3394@
foreign import ccall safe "hs_bindgen_4b5a7a61314aff0a" hs_bindgen_4b5a7a61314aff0a ::
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
  hs_bindgen_4b5a7a61314aff0a

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1903:5@

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
                                                                                                              hs_bindgen_4b5a7a61314aff0a (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_key_unwrap3394@
foreign import ccall safe "hs_bindgen_f7ea1291ddceb60c" hs_bindgen_f7ea1291ddceb60c ::
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
  hs_bindgen_f7ea1291ddceb60c

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1909:5@

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
                                                                                                              hs_bindgen_f7ea1291ddceb60c (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_nist_kw_enc@
foreign import ccall safe "hs_bindgen_2f2fc3344aa6deb7" hs_bindgen_2f2fc3344aa6deb7 ::
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
  hs_bindgen_2f2fc3344aa6deb7

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1914:5@

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
                                                                                                                  hs_bindgen_2f2fc3344aa6deb7 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_nist_kw_dec@
foreign import ccall safe "hs_bindgen_7568303b7f7f274a" hs_bindgen_7568303b7f7f274a ::
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
  hs_bindgen_7568303b7f7f274a

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1920:5@

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
                                                                                                                  hs_bindgen_7568303b7f7f274a x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hotp_init@
foreign import ccall safe "hs_bindgen_2e976ba196051b1d" hs_bindgen_2e976ba196051b1d ::
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
botan_hotp_init_wrapper = hs_bindgen_2e976ba196051b1d

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1935:5@

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
                                                            hs_bindgen_2e976ba196051b1d x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hotp_destroy@
foreign import ccall safe "hs_bindgen_deb8b0ce66185c11" hs_bindgen_deb8b0ce66185c11 ::
     Botan_hotp_t
  -> IO FC.CInt

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1945:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_destroy ::
     Botan_hotp_t
     -- ^ __C declaration:__ @hotp@
  -> IO FC.CInt
botan_hotp_destroy = hs_bindgen_deb8b0ce66185c11

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hotp_generate@
foreign import ccall safe "hs_bindgen_56be02786eae2eb6" hs_bindgen_56be02786eae2eb6 ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1951:5@

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
botan_hotp_generate = hs_bindgen_56be02786eae2eb6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_hotp_check@
foreign import ccall safe "hs_bindgen_8a289fd4d98dbdbe" hs_bindgen_8a289fd4d98dbdbe ::
     Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1959:5@

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
botan_hotp_check = hs_bindgen_8a289fd4d98dbdbe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_totp_init@
foreign import ccall safe "hs_bindgen_9737f2d9690025ef" hs_bindgen_9737f2d9690025ef ::
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
botan_totp_init_wrapper = hs_bindgen_9737f2d9690025ef

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1976:5@

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
                                                              hs_bindgen_9737f2d9690025ef x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x2 x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_totp_destroy@
foreign import ccall safe "hs_bindgen_4e4a43059f0ed259" hs_bindgen_4e4a43059f0ed259 ::
     Botan_totp_t
  -> IO FC.CInt

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1987:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_destroy ::
     Botan_totp_t
     -- ^ __C declaration:__ @totp@
  -> IO FC.CInt
botan_totp_destroy = hs_bindgen_4e4a43059f0ed259

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_totp_generate@
foreign import ccall safe "hs_bindgen_3efbcbac9fa85052" hs_bindgen_3efbcbac9fa85052 ::
     Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
  -> HsBindgen.Runtime.Prelude.Word64
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1996:5@

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
botan_totp_generate = hs_bindgen_3efbcbac9fa85052

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_totp_check@
foreign import ccall safe "hs_bindgen_ad0aa2ce620fbb15" hs_bindgen_ad0aa2ce620fbb15 ::
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

__defined at:__ @botan\/ffi.h:2009:5@

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
botan_totp_check = hs_bindgen_ad0aa2ce620fbb15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_fpe_fe1_init@
foreign import ccall safe "hs_bindgen_7ce55945192576f1" hs_bindgen_7ce55945192576f1 ::
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
  hs_bindgen_7ce55945192576f1

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2024:5@

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
                                                              hs_bindgen_7ce55945192576f1 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_fpe_destroy@
foreign import ccall safe "hs_bindgen_3203fd241a880758" hs_bindgen_3203fd241a880758 ::
     Botan_fpe_t
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2032:5@

__exported by:__ @botan\/ffi.h@
-}
botan_fpe_destroy ::
     Botan_fpe_t
     -- ^ __C declaration:__ @fpe@
  -> IO FC.CInt
botan_fpe_destroy = hs_bindgen_3203fd241a880758

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_fpe_encrypt@
foreign import ccall safe "hs_bindgen_2bde5a2597219f11" hs_bindgen_2bde5a2597219f11 ::
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
  hs_bindgen_2bde5a2597219f11

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2035:5@

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
                                                          hs_bindgen_2bde5a2597219f11 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_fpe_decrypt@
foreign import ccall safe "hs_bindgen_2208701a33226747" hs_bindgen_2208701a33226747 ::
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
  hs_bindgen_2208701a33226747

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2038:5@

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
                                                          hs_bindgen_2208701a33226747 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_server_session_init@
foreign import ccall safe "hs_bindgen_a82ce61ed5a2b021" hs_bindgen_a82ce61ed5a2b021 ::
     Ptr.Ptr Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2050:5@

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
  hs_bindgen_a82ce61ed5a2b021

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_server_session_destroy@
foreign import ccall safe "hs_bindgen_f093eecb19f6f1dd" hs_bindgen_f093eecb19f6f1dd ::
     Botan_srp6_server_session_t
  -> IO FC.CInt

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2058:5@

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
  hs_bindgen_f093eecb19f6f1dd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_server_session_step1@
foreign import ccall safe "hs_bindgen_480522cca5289634" hs_bindgen_480522cca5289634 ::
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
  hs_bindgen_480522cca5289634

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
                                                                  hs_bindgen_480522cca5289634 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x2 x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_server_session_step2@
foreign import ccall safe "hs_bindgen_bfb61084eb26c979" hs_bindgen_bfb61084eb26c979 ::
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
  hs_bindgen_bfb61084eb26c979

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
                                                            hs_bindgen_bfb61084eb26c979 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_generate_verifier@
foreign import ccall safe "hs_bindgen_bb59be19f1727b3d" hs_bindgen_bb59be19f1727b3d ::
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
  hs_bindgen_bb59be19f1727b3d

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
                                                                  hs_bindgen_bb59be19f1727b3d x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_client_agree@
foreign import ccall safe "hs_bindgen_94d61a874d7e2184" hs_bindgen_94d61a874d7e2184 ::
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
  hs_bindgen_94d61a874d7e2184

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
                                                                                                                            hs_bindgen_94d61a874d7e2184 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr14) x5 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr13) x7 x8 x9 x10 x11 x12))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_srp6_group_size@
foreign import ccall safe "hs_bindgen_459d7c978909b55a" hs_bindgen_459d7c978909b55a ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2140:5@

__exported by:__ @botan\/ffi.h@
-}
botan_srp6_group_size ::
     HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar
     -- ^ __C declaration:__ @group_id@
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     -- ^ __C declaration:__ @group_p_bytes@
  -> IO FC.CInt
botan_srp6_group_size = hs_bindgen_459d7c978909b55a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_zfec_encode@
foreign import ccall safe "hs_bindgen_4bee8014eeaeae3a" hs_bindgen_4bee8014eeaeae3a ::
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

__defined at:__ @botan\/ffi.h:2161:5@

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
botan_zfec_encode = hs_bindgen_4bee8014eeaeae3a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Safe_botan_zfec_decode@
foreign import ccall safe "hs_bindgen_7d691553504533b9" hs_bindgen_7d691553504533b9 ::
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

__defined at:__ @botan\/ffi.h:2185:5@

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
botan_zfec_decode = hs_bindgen_7d691553504533b9
