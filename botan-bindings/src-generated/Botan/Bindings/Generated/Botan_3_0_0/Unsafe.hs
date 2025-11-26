{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_0_0.Unsafe where

import           Botan.Bindings.Generated.Botan_3_0_0
import           Data.Void (Void)
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "char const *hs_bindgen_botanbindings_b6adba73aad0fe74 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_botanbindings_d19c7b2f7e8a648c (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_a4df46f1f9ceb814 (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_botanbindings_204b6501d8b1f272 ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_botanbindings_4bbf1946cd0ab6d6 (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_edf47876a00ed51a (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_d43d058137668ca9 (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_7e3703bef069eea6 (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_7bae5be70f732ea5 (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_botanbindings_ee92879b0975fafb ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_27fd05dead6ea45f ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_435cbf3b5ddc3655 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_834757707fba5ecc ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7f87e8e3f25cbfd5 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_36fc3335042bb905 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4babf6109e5edc22 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b98aaa1b4b3ab868 ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7a91fca68df05c2b ("
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
  , "signed int hs_bindgen_botanbindings_74c12241174ca716 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4695347c3af64cf6 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_694302498576716f ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_282b0dc9e4200f65 ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9372a8b9e5f01486 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b63d61e3f798e3b3 ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d86a9cf609b43ede ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6eaad7fa147f2ddc ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_43793b077e5a37b4 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_400510125a347101 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fcdc7454429f6129 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_da70f25a5b2dbdc3 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ed2fe364f28141ca ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_46b2420eb0a9cf07 ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7c6b1f0582bb2262 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a9b8f91fa502bfdc ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7efed33057582857 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_df6f767306565d59 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_896bbda52671e522 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6fc70f5bbecea796 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_08358c3cc43ac634 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5a44052864e7d909 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c33419edc04d9b4a ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e65bab675662ff8a ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_20d72f049f235550 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8a7254d35d13f318 ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3255b72eb9df103a ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_319bf51117befb60 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a092dbd9581beedc ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4835e70b79110e1f ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f03c7a1f880795b0 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b7336f3006a5cd73 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_78a7902ff5051b06 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_04dfa837c2cc97ef ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e439a021091cbda2 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ae246334c11b9c16 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_de4541c0fe9116e6 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_126ced724d90d3cc ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9073b94f5963819a ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6b36d5b2f5bfc87e ("
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
  , "signed int hs_bindgen_botanbindings_8c922a0dab20d5fe ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_10f2bbee40f1b29d ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_400d29e2fa4a8bf3 ("
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
  , "signed int hs_bindgen_botanbindings_0491b8a5b185e9a0 ("
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
  , "signed int hs_bindgen_botanbindings_2f65452d0d3f849c ("
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
  , "signed int hs_bindgen_botanbindings_8ba3c50582049ecf ("
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
  , "signed int hs_bindgen_botanbindings_9c9c9168f6188631 ("
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
  , "signed int hs_bindgen_botanbindings_4ee99707893e90db ("
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
  , "signed int hs_bindgen_botanbindings_0ac50831906cf1a2 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1705553343cf734e ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5d5f5ad845d9c73e ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ac858a8fb2c74be3 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_65ae919dbace7d79 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_607f17fc01f8df7d ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_02c60df59a244f3f ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c1bea236db9086ea ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_305ca1fd4c05cf52 ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_42acd0427913e49d ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d13d913bf1d202ae ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c86c273a7fdfc87c ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_acc0be77b87c7af1 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a96c2e9a5c7c526b ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f66c93c5d078e0c3 ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4eeb6cab0030f93b ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9ddc25afef93bee6 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bd0d532a2bc23d1a ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ee3eeac4800795ee ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8a4bbf7ae172860a ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ad3c4476ab474ace ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_41889d1d6f6d21ef ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ffbcc862206c06af ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_297b28be83bee97f ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_48f7bc832a9c77b5 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5f50880236d336c4 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c72476224f1fd05b ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_408396f783343631 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5e70b3bb471547a3 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a1b0a8db0994f1a5 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b6816ab2fdfabc4b ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7a40a25f84dc75c3 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7356434159f1bb16 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_defba2f611eda801 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6b6ea8cc648fd00e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7b47d3e23cadd13e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5e58652b75540b3b ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0c340dc814ba32c3 ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fd94c3d6f356870f ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b59bc7ddeed600cf ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ad665ced0c1f4969 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5eaf99f6477535b5 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6191c316188d087b ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_087da3428adb96a5 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9766d2c5d06a68ec ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_574ab6acad254ed2 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fa064c6135b0e875 ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c9f1e84032b789b3 ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2d86a5e4adbaec73 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1fc2a2c1dce22313 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ae3d7d7b3dc6656f ("
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
  , "signed int hs_bindgen_botanbindings_02c89ed7498dbc78 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_00b2a377c7c24dcc ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f2176d5335ce6733 ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4c599cdf9a2df8fa ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d6ce15e26c709cb8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_789d374c1d0f8ce3 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1eb8da6eb07d7b5a ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f8d895b18c5ed740 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_15775c434000f118 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b25bd110e05841ba ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6cd1a3a156b2fba8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7c28c89e644b7048 ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_97a22d1226faf061 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bf1c61a2040ee934 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cfe41e7345cc3f7e ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2ccb6317c75df85f ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c8b807a26ca37fcf ("
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
  , "signed int hs_bindgen_botanbindings_27ca36d8244093f2 ("
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
  , "signed int hs_bindgen_botanbindings_cefa323b8ed49533 ("
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
  , "signed int hs_bindgen_botanbindings_b8d44d7d05434bff ("
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
  , "signed int hs_bindgen_botanbindings_3be8041ffa25d85e ("
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
  , "signed int hs_bindgen_botanbindings_8db3c292c16eaca1 ("
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
  , "signed int hs_bindgen_botanbindings_2fa791c8b39fd349 ("
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
  , "signed int hs_bindgen_botanbindings_2c0d707e7d6896a2 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_728e30bee5eb9464 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d36f376c81a2fbb8 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_92630599fcd76c66 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_75b0cdc4acababec ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_af6ce614b7746a6c ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4d23c68319b79a41 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_07cabcc1b2195959 ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5a6c692fcbe3886b ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f8ae4285c9485466 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ea02fae394aee5f4 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e50c8b9999d9be30 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5f4ca71aeb844e8c ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_732fb66e9096a91e ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b3beba937c5e3c7d ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4adc89df2dc556a0 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3a8207a91543cedc ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9a26deea7e903bd4 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_be69fca9c8cabb64 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7ff593bb53d9d671 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5e2600fbbee0f8eb ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fcb2475d83c898f1 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_781e993d0928787d ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_525ae050645210a4 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_79d532b6c10490e0 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_405bb7c31d1c54b6 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3b33cd4aa972c588 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6beed2f00efc145f ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a3da701c70cd18a2 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_394641ec47f682ae ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1768d8fb6f6a488b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_da716fb02f4cd538 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_87698657a32f2cc8 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7b671fc34fbde6f8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_54c6ee143f6da9bc ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bb72bbf63fa938d0 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f92fd340f0d7d9ca ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_67f7f20c00843385 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d0fc44a7776011b3 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_032aeb4fd6379212 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2acfba422d717c49 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2eddbc4dc3760b41 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_53cfee3e2f3f599a ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6a8d45d1bd80a52a ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_006c7d5651204502 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_71b322a34cf93015 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2eca55aeddcc7f8d ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5b361f3ca766a92d ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ad17cfb0455e35a5 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_96eadbf5a6fc3810 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_32a9b4e23d4e16b0 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_030e9bc2a65bd774 ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_85e0d9e5db7c954f ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dabe97e06df47384 ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5fb2e45c33e1ba39 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4862eab3adefe19f ("
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
  , "signed int hs_bindgen_botanbindings_e2e625bbdf729505 ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_88c094336f029b9d ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d03e8e8a0559f19e ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_13ee8c8acf52b136 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_94949245b9e2fa2b ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b863f31c35e9de1f ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f5c0da4bdeb4b024 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f2673339cc42338b ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fe6a6f51c83c9d8e ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_aec263720b7f1596 ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2be8739e282674b4 ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_72cd74e4091730fd ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7ac3006508d615c6 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_40dc9e3c2519c64b ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_773f6a50353fb100 ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4d2e56e79140e4c0 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4381be53e380ed86 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1529d7f87a73db50 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d281f0f57bf59071 ("
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
  , "signed int hs_bindgen_botanbindings_6c8df9f6cfff440b ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b0365237cc03c7ba ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0eb50b007318fe72 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6556228195cdac9a ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9e75ffd27b97b004 ("
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
  , "signed int hs_bindgen_botanbindings_536f4f6ec65ecb75 ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f5daa2423c5c3ced ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_67458143776fe9db ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9e8448a070386054 ("
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
  , "signed int hs_bindgen_botanbindings_689f01e78c68cb5b ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5a75d8fb0ee07b12 ("
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
  , "signed int hs_bindgen_botanbindings_d52648f02201c09e ("
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
  , "signed int hs_bindgen_botanbindings_bc1233a50f79a120 ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_15f010cbd674e9a2 ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_46eb7c77ade1421a ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9ab6e388123aebf6 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_30ff06a37f24634f ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4a2e4ab3af688cd5 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7d98eb48bff22716 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_30934ffa889e348d ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_34afcf459b7226b6 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_03ef8efa0b119414 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_368d86eb8dd8a4ec ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_06dbba3dfe414143 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bef546861ec94a40 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_870e54d8d984620a ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4a751a830dcceae6 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2a41d7cc1f05f876 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2184bf5ae4d6af34 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_336dc13cda8b7dc4 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5e711a7a695eaac3 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d8a80179d3b0910a ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_76b8f508ae1fbe88 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_36a58cb020134324 ("
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
  , "char const *hs_bindgen_botanbindings_68ff6b6ae573f7fa ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c4b1352711204975 ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1b2bdf3f7bff644b ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8b0391c4a9f03e42 ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_619bbb99aa8b80b0 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_81d36abeffc0624b ("
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
  , "signed int hs_bindgen_botanbindings_d317dcde0c42524e ("
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
  , "signed int hs_bindgen_botanbindings_3545b981415385f1 ("
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
  , "signed int hs_bindgen_botanbindings_a9b5a4c1200fe46e ("
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
  , "signed int hs_bindgen_botanbindings_982308fc61de3bc1 ("
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
  , "signed int hs_bindgen_botanbindings_454bca4545e6137e ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6d59c2abf2f27fab ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d6fb6ce5ba526247 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_904064908f416552 ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c4132bbbc887bcb8 ("
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
  , "signed int hs_bindgen_botanbindings_1e16e42724cbdd0a ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9f045caf4edb9685 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_39651cacbc5bde73 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_23f438a54d54089d ("
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
  , "signed int hs_bindgen_botanbindings_b4e95a0b20dcd556 ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_22ad71844aadcf00 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_efae0991c2d19f85 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_442c1d9992ae0774 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_50d0352a94ec5a49 ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dc55431666d44cf1 ("
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
  , "signed int hs_bindgen_botanbindings_f33a94effc25bcc8 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1b81c712766e8fe1 ("
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
  , "signed int hs_bindgen_botanbindings_ee1f38e1d0a7ce1d ("
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
  , "signed int hs_bindgen_botanbindings_5987a6bc4a18582d ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1eefe7384c1bb407 ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b3b15c863614d299 ("
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

{-| Convert an error code into a string. Returns "Unknown error" if the error code is not a known one.

__C declaration:__ @botan_error_description@

__defined at:__ @botan\/ffi.h:125:35@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b6adba73aad0fe74" botan_error_description ::
     FC.CInt
     {- ^ __C declaration:__ @err@
     -}
  -> IO (Ptr.Ptr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:134:35@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d19c7b2f7e8a648c" botan_error_last_exception_message ::
     IO (Ptr.Ptr FC.CChar)

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:141:32@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a4df46f1f9ceb814" botan_ffi_api_version ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:147:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_204b6501d8b1f272" botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @api_version@
     -}
  -> IO FC.CInt

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:152:35@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4bbf1946cd0ab6d6" botan_version_string ::
     IO (Ptr.Ptr FC.CChar)

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:157:32@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_edf47876a00ed51a" botan_version_major ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:162:32@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d43d058137668ca9" botan_version_minor ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:167:32@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7e3703bef069eea6" botan_version_patch ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:173:32@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7bae5be70f732ea5" botan_version_datestamp ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:178:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ee92879b0975fafb" botan_constant_time_compare ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @x@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @y@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> IO FC.CInt

{-| Deprecated equivalent to botan_constant_time_compare

__C declaration:__ @botan_same_mem@

__defined at:__ @botan\/ffi.h:184:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_27fd05dead6ea45f" botan_same_mem ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @x@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @y@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> IO FC.CInt

{-| Clear out memory using a system specific approach to bypass elision by the compiler (currently using RtlSecureZeroMemory or tricks with volatile pointers).

__C declaration:__ @botan_scrub_mem@

__defined at:__ @botan\/ffi.h:190:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_435cbf3b5ddc3655" botan_scrub_mem ::
     Ptr.Ptr Void
     {- ^ __C declaration:__ @mem@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bytes@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_834757707fba5ecc" botan_hex_encode ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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
foreign import ccall unsafe "hs_bindgen_botanbindings_7f87e8e3f25cbfd5" botan_hex_decode ::
     Ptr.Ptr FC.CChar
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

{-| Perform base64 encoding

__C declaration:__ @botan_base64_encode@

__defined at:__ @botan\/ffi.h:217:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_36fc3335042bb905" botan_base64_encode ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Perform base64 decoding

__C declaration:__ @botan_base64_decode@

__defined at:__ @botan\/ffi.h:223:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4babf6109e5edc22" botan_base64_decode ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @base64_str@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @in_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Initialize a random number generator object

  [__@rng@ /(input)/__]: rng object

  [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

__C declaration:__ @botan_rng_init@

__defined at:__ @botan\/ffi.h:241:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b98aaa1b4b3ab868" botan_rng_init ::
     Ptr.Ptr Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@rng_type@ /(input)/__]: type of the rng, possible values: "system": system RNG "user": userspace RNG "user-threadsafe": userspace RNG, with internal locking "rdrand": directly read RDRAND Set rng_type to null to let the library choose some default.

     __C declaration:__ @rng_type@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_7a91fca68df05c2b" botan_rng_init_custom ::
     Ptr.Ptr Botan_rng_t
     {- ^

        [__@rng_out@ /(input)/__]: rng object to create

     __C declaration:__ @rng_out@
     -}
  -> Ptr.Ptr FC.CChar
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

{-| Get random bytes from a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_rng_get@

__defined at:__ @botan\/ffi.h:264:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_74c12241174ca716" botan_rng_get ::
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

{-| Get random bytes from system random number generator

  [__@out@ /(input)/__]: output buffer of size out_len

  [__@out_len@ /(input)/__]: number of requested bytes

  __returns:__ 0 on success, negative on failure

__C declaration:__ @botan_system_rng_get@

__defined at:__ @botan\/ffi.h:272:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4695347c3af64cf6" botan_system_rng_get ::
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

{-| Reseed a random number generator Uses the System_RNG as a seed generator.

  [__@rng@ /(input)/__]: rng object

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed@

__defined at:__ @botan\/ffi.h:282:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_694302498576716f" botan_rng_reseed ::
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

{-| Reseed a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@source_rng@ /(input)/__]: the rng that will be read from

  [__@bits@ /(input)/__]: number of bits to reseed with

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_reseed_from_rng@

__defined at:__ @botan\/ffi.h:292:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_282b0dc9e4200f65" botan_rng_reseed_from_rng ::
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

{-| Add some seed material to a random number generator

  [__@rng@ /(input)/__]: rng object

  [__@entropy@ /(input)/__]: the data to add

  [__@entropy_len@ /(input)/__]: length of entropy buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_rng_add_entropy@

__defined at:__ @botan\/ffi.h:304:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9372a8b9e5f01486" botan_rng_add_entropy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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

{-| Frees all resources of the random number generator object

  [__@rng@ /(input)/__]: rng object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_rng_destroy@

__defined at:__ @botan\/ffi.h:313:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b63d61e3f798e3b3" botan_rng_destroy ::
     Botan_rng_t
     {- ^

        [__@rng@ /(input)/__]: rng object

     __C declaration:__ @rng@
     -}
  -> IO FC.CInt

{-| Initialize a hash function object

  [__@hash@ /(input)/__]: hash object

  [__@hash_name@ /(input)/__]: name of the hash function, e.g., "SHA-384"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return BOTAN_FFI_ERROR_BAD_FLAG

__C declaration:__ @botan_hash_init@

__defined at:__ @botan\/ffi.h:327:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d86a9cf609b43ede" botan_hash_init ::
     Ptr.Ptr Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr FC.CChar
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

{-| Copy the state of a hash function object

  [__@dest@ /(input)/__]: destination hash object

  [__@source@ /(input)/__]: source hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_copy_state@

__defined at:__ @botan\/ffi.h:335:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6eaad7fa147f2ddc" botan_hash_copy_state ::
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

{-| Writes the output length of the hash function to *output_length

  [__@hash@ /(input)/__]: hash object

  [__@output_length@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_output_length@

__defined at:__ @botan\/ffi.h:343:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_43793b077e5a37b4" botan_hash_output_length ::
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

{-| Writes the block size of the hash function to *block_size

  [__@hash@ /(input)/__]: hash object

  [__@block_size@ /(input)/__]: output buffer to hold the hash function output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_block_size@

__defined at:__ @botan\/ffi.h:351:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_400510125a347101" botan_hash_block_size ::
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

{-| Send more input to the hash function

  [__@hash@ /(input)/__]: hash object

  [__@in@ /(input)/__]: input buffer

  [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_update@

__defined at:__ @botan\/ffi.h:360:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fcdc7454429f6129" botan_hash_update ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @in'@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@in_len@ /(input)/__]: number of bytes to read from the input buffer

     __C declaration:__ @in_len@
     -}
  -> IO FC.CInt

{-| Finalizes the hash computation and writes the output to out[0:botan_hash_output_length()] then reinitializes for computing another digest as if botan_hash_clear had been called.

  [__@hash@ /(input)/__]: hash object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_final@

__defined at:__ @botan\/ffi.h:370:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_da70f25a5b2dbdc3" botan_hash_final ::
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

{-| Reinitializes the state of the hash computation. A hash can be computed (with update/final) immediately.

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_hash_clear@

__defined at:__ @botan\/ffi.h:378:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ed2fe364f28141ca" botan_hash_clear ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt

{-| Frees all resources of the hash object

  [__@hash@ /(input)/__]: hash object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hash_destroy@

__defined at:__ @botan\/ffi.h:385:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_46b2420eb0a9cf07" botan_hash_destroy ::
     Botan_hash_t
     {- ^

        [__@hash@ /(input)/__]: hash object

     __C declaration:__ @hash@
     -}
  -> IO FC.CInt

{-| Get the name of this hash function

  [__@hash@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_hash_name@

__defined at:__ @botan\/ffi.h:393:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7c6b1f0582bb2262" botan_hash_name ::
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

{-| Initialize a message authentication code object

  [__@mac@ /(input)/__]: mac object

  [__@mac_name@ /(input)/__]: name of the hash function, e.g., "HMAC(SHA-384)"

  [__@flags@ /(input)/__]: should be 0 in current API revision, all other uses are reserved and return a negative value (error code)

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_init@

__defined at:__ @botan\/ffi.h:408:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a9b8f91fa502bfdc" botan_mac_init ::
     Ptr.Ptr Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr FC.CChar
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

{-| Writes the output length of the message authentication code to *output_length

  [__@mac@ /(input)/__]: mac object

  [__@output_length@ /(input)/__]: output buffer to hold the MAC output length

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_output_length@

__defined at:__ @botan\/ffi.h:416:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7efed33057582857" botan_mac_output_length ::
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

{-| Sets the key on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@key@ /(input)/__]: buffer holding the key

  [__@key_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_key@

__defined at:__ @botan\/ffi.h:425:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_df6f767306565d59" botan_mac_set_key ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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

{-| Sets the nonce on the MAC

  [__@mac@ /(input)/__]: mac object

  [__@nonce@ /(input)/__]: buffer holding the key

  [__@nonce_len@ /(input)/__]: size of the key buffer in bytes

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_set_nonce@

__defined at:__ @botan\/ffi.h:434:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_896bbda52671e522" botan_mac_set_nonce ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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

{-| Send more input to the message authentication code

  [__@mac@ /(input)/__]: mac object

  [__@buf@ /(input)/__]: input buffer

  [__@len@ /(input)/__]: number of bytes to read from the input buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_update@

__defined at:__ @botan\/ffi.h:443:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6fc70f5bbecea796" botan_mac_update ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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

{-| Finalizes the MAC computation and writes the output to out[0:botan_mac_output_length()] then reinitializes for computing another MAC as if botan_mac_clear had been called.

  [__@mac@ /(input)/__]: mac object

  [__@out@ /(input)/__]: output buffer

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_final@

__defined at:__ @botan\/ffi.h:453:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_08358c3cc43ac634" botan_mac_final ::
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

{-| Reinitializes the state of the MAC computation. A MAC can be computed (with update/final) immediately.

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_mac_clear@

__defined at:__ @botan\/ffi.h:461:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5a44052864e7d909" botan_mac_clear ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt

{-| Get the name of this MAC

  [__@mac@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_mac_name@

__defined at:__ @botan\/ffi.h:469:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c33419edc04d9b4a" botan_mac_name ::
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

{-| Get the key length limits of this auth code

  [__@mac@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of MAC

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of MAC

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_mac_get_keyspec@

__defined at:__ @botan\/ffi.h:478:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e65bab675662ff8a" botan_mac_get_keyspec ::
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

{-| Frees all resources of the MAC object

  [__@mac@ /(input)/__]: mac object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mac_destroy@

__defined at:__ @botan\/ffi.h:488:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_20d72f049f235550" botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:502:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8a7254d35d13f318" botan_cipher_init ::
     Ptr.Ptr Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @name@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| Return the name of the cipher object

__C declaration:__ @botan_cipher_name@

__defined at:__ @botan\/ffi.h:507:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3255b72eb9df103a" botan_cipher_name ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @name@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @name_len@
     -}
  -> IO FC.CInt

{-| Return the output length of this cipher, for a particular input length.

__C declaration:__ @botan_cipher_output_length@

__defined at:__ @botan\/ffi.h:512:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_319bf51117befb60" botan_cipher_output_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @in_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Return if the specified nonce length is valid for this cipher

__C declaration:__ @botan_cipher_valid_nonce_length@

__defined at:__ @botan\/ffi.h:517:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a092dbd9581beedc" botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @nl@
     -}
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:522:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4835e70b79110e1f" botan_cipher_get_tag_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @tag_size@
     -}
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:527:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f03c7a1f880795b0" botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @nl@
     -}
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:533:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b7336f3006a5cd73" botan_cipher_get_update_granularity ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ug@
     -}
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:539:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_78a7902ff5051b06" botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ug@
     -}
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:544:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_04dfa837c2cc97ef" botan_cipher_query_keylen ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_minimum_keylength@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_maximum_keylength@
     -}
  -> IO FC.CInt

{-| Get information about the supported key lengths.

__C declaration:__ @botan_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:551:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e439a021091cbda2" botan_cipher_get_keyspec ::
     Botan_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @min_keylen@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @max_keylen@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @mod_keylen@
     -}
  -> IO FC.CInt

{-| Set the key for this cipher object

__C declaration:__ @botan_cipher_set_key@

__defined at:__ @botan\/ffi.h:559:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ae246334c11b9c16" botan_cipher_set_key ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> IO FC.CInt

{-| Reset the message specific state for this cipher. Without resetting the keys, this resets the nonce, and any state associated with any message bits that have been processed so far.

  It is conceptually equivalent to calling botan_cipher_clear followed by botan_cipher_set_key with the original key.

__C declaration:__ @botan_cipher_reset@

__defined at:__ @botan\/ffi.h:570:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_de4541c0fe9116e6" botan_cipher_reset ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:575:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_126ced724d90d3cc" botan_cipher_set_associated_data ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ad@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ad_len@
     -}
  -> IO FC.CInt

{-| Begin processing a new message using the provided nonce

__C declaration:__ @botan_cipher_start@

__defined at:__ @botan\/ffi.h:581:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9073b94f5963819a" botan_cipher_start ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @nonce@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @nonce_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_cipher_update'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6b36d5b2f5bfc87e" botan_cipher_update_wrapper ::
     Botan_cipher_t
  -> HsBindgen.Runtime.Prelude.Word32
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Encrypt some data

__C declaration:__ @botan_cipher_update@

__defined at:__ @botan\/ffi.h:589:27@

__exported by:__ @botan\/ffi.h@
-}
botan_cipher_update ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @output@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_size@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_written@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @input_bytes@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @input_size@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @input_consumed@
     -}
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
                                                                  botan_cipher_update_wrapper x0 x1 x2 x3 x4 ptr8 x6 x7)

{-| Reset the key, nonce, AD and all other state on this cipher object

__C declaration:__ @botan_cipher_clear@

__defined at:__ @botan\/ffi.h:601:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8c922a0dab20d5fe" botan_cipher_clear ::
     Botan_cipher_t
     {- ^ __C declaration:__ @hash@
     -}
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:607:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_10f2bbee40f1b29d" botan_cipher_destroy ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pbkdf'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_400d29e2fa4a8bf3" botan_pbkdf_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:626:1@

    __exported by:__ @botan\/ffi.h@
-}
botan_pbkdf ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @iterations@
     -}
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
                                                                botan_pbkdf_wrapper x0 x1 x2 x3 ptr7 x5 x6)

{-| Pointer-based API for 'botan_pbkdf_timed'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0491b8a5b185e9a0" botan_pbkdf_timed_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
     Ptr.Ptr FC.CChar
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
  -> Ptr.Ptr FC.CChar
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
                                                                  botan_pbkdf_timed_wrapper x0 x1 x2 x3 ptr8 x5 x6 x7)

{-| Pointer-based API for 'botan_pwdhash'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2f65452d0d3f849c" botan_pwdhash_wrapper ::
     Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pwdhash@

    __defined at:__ @botan\/ffi.h:679:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param1@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param2@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param3@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @passphrase_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
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
                                                                      botan_pwdhash_wrapper x0 x1 x2 x3 x4 x5 x6 x7 ptr10 x9)

{-| Pointer-based API for 'botan_pwdhash_timed'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8ba3c50582049ecf" botan_pwdhash_timed_wrapper ::
     Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.Word32
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pwdhash_timed@

    __defined at:__ @botan\/ffi.h:707:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pwdhash_timed ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @algo@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @msec@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param1@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param2@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @param3@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @passphrase_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
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
                                                                        botan_pwdhash_timed_wrapper x0 x1 x2 x3 x4 x5 x6 x7 x8 ptr11 x10)

{-| Pointer-based API for 'botan_scrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9c9c9168f6188631" botan_scrypt_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Derive a key using scrypt Deprecated; use botan_pwdhash("Scrypt", N, r, p, out, out_len, password, 0, salt, salt_len);

__C declaration:__ @botan_scrypt@

__defined at:__ @botan\/ffi.h:727:1@

__exported by:__ @botan\/ffi.h@
-}
botan_scrypt ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @r@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @p@
     -}
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
                                                                  botan_scrypt_wrapper x0 x1 x2 ptr8 x4 x5 x6 x7)

{-| Pointer-based API for 'botan_kdf'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4ee99707893e90db" botan_kdf_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
     Ptr.Ptr FC.CChar
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
                                                                                                                                                                    botan_kdf_wrapper x0 x1 x2 ptr11 x4 ptr10 x6 ptr9 x8)))

{-| Initialize a block cipher object

__C declaration:__ @botan_block_cipher_init@

__defined at:__ @botan\/ffi.h:759:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0ac50831906cf1a2" botan_block_cipher_init ::
     Ptr.Ptr Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_name@
     -}
  -> IO FC.CInt

{-| Destroy a block cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_block_cipher_destroy@

__defined at:__ @botan\/ffi.h:766:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1705553343cf734e" botan_block_cipher_destroy ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:772:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5d5f5ad845d9c73e" botan_block_cipher_clear ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_set_key'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ac858a8fb2c74be3" botan_block_cipher_set_key_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:777:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_set_key ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> IO FC.CInt
botan_block_cipher_set_key =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_block_cipher_set_key_wrapper x0 ptr3 x2)

{-| Return the positive block size of this block cipher, or negative to indicate an error

__C declaration:__ @botan_block_cipher_block_size@

__defined at:__ @botan\/ffi.h:784:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_65ae919dbace7d79" botan_block_cipher_block_size ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_encrypt_blocks'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_607f17fc01f8df7d" botan_block_cipher_encrypt_blocks_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:789:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_encrypt_blocks ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @in'@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @blocks@
     -}
  -> IO FC.CInt
botan_block_cipher_encrypt_blocks =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          botan_block_cipher_encrypt_blocks_wrapper x0 ptr4 x2 x3)

{-| Pointer-based API for 'botan_block_cipher_decrypt_blocks'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_02c60df59a244f3f" botan_block_cipher_decrypt_blocks_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:797:27@

__exported by:__ @botan\/ffi.h@
-}
botan_block_cipher_decrypt_blocks ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @in'@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @blocks@
     -}
  -> IO FC.CInt
botan_block_cipher_decrypt_blocks =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr4 ->
                                                          botan_block_cipher_decrypt_blocks_wrapper x0 ptr4 x2 x3)

{-| Get the name of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@name@ /(input)/__]: output buffer

  [__@name_len@ /(input)/__]: on input, the length of buffer, on success the number of bytes written

__C declaration:__ @botan_block_cipher_name@

__defined at:__ @botan\/ffi.h:808:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c1bea236db9086ea" botan_block_cipher_name ::
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

{-| Get the key length limits of this block cipher

  [__@cipher@ /(input)/__]: the object to read

  [__@out_minimum_keylength@ /(input)/__]: if non-NULL, will be set to minimum keylength of cipher

  [__@out_maximum_keylength@ /(input)/__]: if non-NULL, will be set to maximum keylength of cipher

  [__@out_keylength_modulo@ /(input)/__]: if non-NULL will be set to byte multiple of valid keys

__C declaration:__ @botan_block_cipher_get_keyspec@

__defined at:__ @botan\/ffi.h:819:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_305ca1fd4c05cf52" botan_block_cipher_get_keyspec ::
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

{-| Initialize an MPI

__C declaration:__ @botan_mp_init@

__defined at:__ @botan\/ffi.h:832:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_42acd0427913e49d" botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:838:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d13d913bf1d202ae" botan_mp_destroy ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:843:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c86c273a7fdfc87c" botan_mp_to_hex ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:848:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_acc0be77b87c7af1" botan_mp_to_str ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @base@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Set the MPI to zero

__C declaration:__ @botan_mp_clear@

__defined at:__ @botan\/ffi.h:853:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a96c2e9a5c7c526b" botan_mp_clear ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:858:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f66c93c5d078e0c3" botan_mp_set_from_int ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> FC.CInt
     {- ^ __C declaration:__ @initial_value@
     -}
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:863:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4eeb6cab0030f93b" botan_mp_set_from_mp ::
     Botan_mp_t
     {- ^ __C declaration:__ @dest@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @source@
     -}
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:868:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9ddc25afef93bee6" botan_mp_set_from_str ::
     Botan_mp_t
     {- ^ __C declaration:__ @dest@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @str@
     -}
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:874:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bd0d532a2bc23d1a" botan_mp_set_from_radix_str ::
     Botan_mp_t
     {- ^ __C declaration:__ @dest@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @str@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @radix@
     -}
  -> IO FC.CInt

{-| Return the number of significant bits in the MPI

__C declaration:__ @botan_mp_num_bits@

__defined at:__ @botan\/ffi.h:879:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ee3eeac4800795ee" botan_mp_num_bits ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bits@
     -}
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:884:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8a4bbf7ae172860a" botan_mp_num_bytes ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bytes@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:889:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ad3c4476ab474ace" botan_mp_to_bin ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @vec@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mp_from_bin'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_41889d1d6f6d21ef" botan_mp_from_bin_wrapper ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:894:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_mp_from_bin ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @vec@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @vec_len@
     -}
  -> IO FC.CInt
botan_mp_from_bin =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_mp_from_bin_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_mp_to_uint32@

    __defined at:__ @botan\/ffi.h:899:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ffbcc862206c06af" botan_mp_to_uint32 ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @val@
     -}
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:906:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_297b28be83bee97f" botan_mp_is_positive ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:911:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_48f7bc832a9c77b5" botan_mp_is_negative ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:913:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5f50880236d336c4" botan_mp_flip_sign ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:915:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c72476224f1fd05b" botan_mp_is_zero ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:918:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_408396f783343631" botan_mp_is_odd ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:920:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5e70b3bb471547a3" botan_mp_is_even ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:922:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a1b0a8db0994f1a5" botan_mp_add_u32 ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub_u32@

    __defined at:__ @botan\/ffi.h:923:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b6816ab2fdfabc4b" botan_mp_sub_u32 ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add@

    __defined at:__ @botan\/ffi.h:925:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7a40a25f84dc75c3" botan_mp_add ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_sub@

    __defined at:__ @botan\/ffi.h:926:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7356434159f1bb16" botan_mp_sub ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mul@

    __defined at:__ @botan\/ffi.h:927:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_defba2f611eda801" botan_mp_mul ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_div@

    __defined at:__ @botan\/ffi.h:929:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6b6ea8cc648fd00e" botan_mp_div ::
     Botan_mp_t
     {- ^ __C declaration:__ @quotient@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @remainder@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_mul@

    __defined at:__ @botan\/ffi.h:933:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7b47d3e23cadd13e" botan_mp_mod_mul ::
     Botan_mp_t
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @mod@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_equal@

    __defined at:__ @botan\/ffi.h:941:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5e58652b75540b3b" botan_mp_equal ::
     Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:948:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0c340dc814ba32c3" botan_mp_cmp ::
     Ptr.Ptr FC.CInt
     {- ^ __C declaration:__ @result@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_swap@

    __defined at:__ @botan\/ffi.h:953:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fd94c3d6f356870f" botan_mp_swap ::
     Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:956:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b59bc7ddeed600cf" botan_mp_powmod ::
     Botan_mp_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @base@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @exponent@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @modulus@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_lshift@

    __defined at:__ @botan\/ffi.h:958:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ad665ced0c1f4969" botan_mp_lshift ::
     Botan_mp_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @in'@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @shift@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rshift@

    __defined at:__ @botan\/ffi.h:959:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5eaf99f6477535b5" botan_mp_rshift ::
     Botan_mp_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @in'@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @shift@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_mod_inverse@

    __defined at:__ @botan\/ffi.h:961:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6191c316188d087b" botan_mp_mod_inverse ::
     Botan_mp_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @in'@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @modulus@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_bits@

    __defined at:__ @botan\/ffi.h:963:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_087da3428adb96a5" botan_mp_rand_bits ::
     Botan_mp_t
     {- ^ __C declaration:__ @rand_out@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bits@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_rand_range@

    __defined at:__ @botan\/ffi.h:965:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9766d2c5d06a68ec" botan_mp_rand_range ::
     Botan_mp_t
     {- ^ __C declaration:__ @rand_out@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @lower_bound@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @upper_bound@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_gcd@

    __defined at:__ @botan\/ffi.h:968:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_574ab6acad254ed2" botan_mp_gcd ::
     Botan_mp_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| Returns 0 if n is not prime Returns 1 if n is prime Returns negative number on error

__C declaration:__ @botan_mp_is_prime@

__defined at:__ @botan\/ffi.h:975:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fa064c6135b0e875" botan_mp_is_prime ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @test_prob@
     -}
  -> IO FC.CInt

{-| Returns 0 if specified bit of n is not set Returns 1 if specified bit of n is set Returns negative number on error

__C declaration:__ @botan_mp_get_bit@

__defined at:__ @botan\/ffi.h:982:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c9f1e84032b789b3" botan_mp_get_bit ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bit@
     -}
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:987:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2d86a5e4adbaec73" botan_mp_set_bit ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bit@
     -}
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:992:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1fc2a2c1dce22313" botan_mp_clear_bit ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bit@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_ae3d7d7b3dc6656f" botan_bcrypt_generate ::
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
  -> Ptr.Ptr FC.CChar
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

{-| Check a previously created password hash

  [__@pass@ /(input)/__]: the password to check against

  [__@hash@ /(input)/__]: the stored hash to check against

  __returns:__ 0 if if this password/hash combination is valid, 1 if the combination is not valid (but otherwise well formed), negative on error

__C declaration:__ @botan_bcrypt_is_valid@

__defined at:__ @botan\/ffi.h:1023:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_02c89ed7498dbc78" botan_bcrypt_is_valid ::
     Ptr.Ptr FC.CChar
     {- ^

        [__@pass@ /(input)/__]: the password to check against

     __C declaration:__ @pass@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@hash@ /(input)/__]: the stored hash to check against

     __C declaration:__ @hash@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_00b2a377c7c24dcc" botan_privkey_create ::
     Ptr.Ptr Botan_privkey_t
     {- ^

        [__@key@ /(input)/__]: the new object will be placed here

     __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@algo_name@ /(input)/__]: something like "RSA" or "ECDSA"

     __C declaration:__ @algo_name@
     -}
  -> Ptr.Ptr FC.CChar
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

{-| __C declaration:__ @botan_privkey_check_key@

    __defined at:__ @botan\/ffi.h:1045:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f2176d5335ce6733" botan_privkey_check_key ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_rsa@

    __defined at:__ @botan\/ffi.h:1048:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4c599cdf9a2df8fa" botan_privkey_create_rsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @n_bits@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdsa@

    __defined at:__ @botan\/ffi.h:1050:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d6ce15e26c709cb8" botan_privkey_create_ecdsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @params@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_ecdh@

    __defined at:__ @botan\/ffi.h:1052:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_789d374c1d0f8ce3" botan_privkey_create_ecdh ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @params@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_mceliece@

    __defined at:__ @botan\/ffi.h:1054:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1eb8da6eb07d7b5a" botan_privkey_create_mceliece ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @t@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_create_dh@

    __defined at:__ @botan\/ffi.h:1056:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f8d895b18c5ed740" botan_privkey_create_dh ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @param@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_15775c434000f118" botan_privkey_create_dsa ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_b25bd110e05841ba" botan_privkey_create_elgamal ::
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

{-| Pointer-based API for 'botan_privkey_load'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6cd1a3a156b2fba8" botan_privkey_load_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1112:27@

__exported by:__ @botan\/ffi.h@
-}
botan_privkey_load ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @bits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @password@
     -}
  -> IO FC.CInt
botan_privkey_load =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr5 ->
                                                            botan_privkey_load_wrapper x0 x1 ptr5 x3 x4)

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_privkey_destroy@

__defined at:__ @botan\/ffi.h:1120:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7c28c89e644b7048" botan_privkey_destroy ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1132:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_97a22d1226faf061" botan_privkey_export ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| View the private key's DER encoding

__C declaration:__ @botan_privkey_view_der@

__defined at:__ @botan\/ffi.h:1139:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bf1c61a2040ee934" botan_privkey_view_der ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| View the private key's PEM encoding

__C declaration:__ @botan_privkey_view_pem@

__defined at:__ @botan\/ffi.h:1147:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cfe41e7345cc3f7e" botan_privkey_view_pem ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_str_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_algo_name@

    __defined at:__ @botan\/ffi.h:1152:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2ccb6317c75df85f" botan_privkey_algo_name ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted@

    __defined at:__ @botan\/ffi.h:1158:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c8b807a26ca37fcf" botan_privkey_export_encrypted ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @encryption_algo@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_export_encrypted_pbkdf_msec@

    __defined at:__ @botan\/ffi.h:1171:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_27ca36d8244093f2" botan_privkey_export_encrypted_pbkdf_msec ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @pbkdf_msec_runtime@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_iterations_out@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| Export a private key using the specified number of iterations.

__C declaration:__ @botan_privkey_export_encrypted_pbkdf_iter@

__defined at:__ @botan\/ffi.h:1184:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cefa323b8ed49533" botan_privkey_export_encrypted_pbkdf_iter ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_iterations@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der@

__defined at:__ @botan\/ffi.h:1199:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b8d44d7d05434bff" botan_privkey_view_encrypted_der ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_iterations@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| View the encryption of a private key (binary DER encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_der_timed@

__defined at:__ @botan\/ffi.h:1214:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3be8041ffa25d85e" botan_privkey_view_encrypted_der_timed ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_runtime_msec@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults Set pbkdf_iterations to 0 to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem@

__defined at:__ @botan\/ffi.h:1230:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8db3c292c16eaca1" botan_privkey_view_encrypted_pem ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_iterations@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_str_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| View the encryption of a private key (PEM encoding)

  Set cipher_algo, pbkdf_algo to NULL to use defaults

__C declaration:__ @botan_privkey_view_encrypted_pem_timed@

__defined at:__ @botan\/ffi.h:1245:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2fa791c8b39fd349" botan_privkey_view_encrypted_pem_timed ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @passphrase@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @pbkdf_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pbkdf_runtime_msec@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_str_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pubkey_load'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2c0d707e7d6896a2" botan_pubkey_load_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1257:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @bits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> IO FC.CInt
botan_pubkey_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_pubkey_load_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_privkey_export_pubkey@

    __defined at:__ @botan\/ffi.h:1259:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_728e30bee5eb9464" botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @in'@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1261:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d36f376c81a2fbb8" botan_pubkey_export ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| View the public key's DER encoding

__C declaration:__ @botan_pubkey_view_der@

__defined at:__ @botan\/ffi.h:1266:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_92630599fcd76c66" botan_pubkey_view_der ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| View the public key's PEM encoding

__C declaration:__ @botan_pubkey_view_pem@

__defined at:__ @botan\/ffi.h:1274:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_75b0cdc4acababec" botan_pubkey_view_pem ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_str_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_algo_name@

    __defined at:__ @botan\/ffi.h:1279:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_af6ce614b7746a6c" botan_pubkey_algo_name ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Returns 0 if key is valid, negative if invalid key or some other error

__C declaration:__ @botan_pubkey_check_key@

__defined at:__ @botan\/ffi.h:1284:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4d23c68319b79a41" botan_pubkey_check_key ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_estimated_strength@

    __defined at:__ @botan\/ffi.h:1286:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_07cabcc1b2195959" botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @estimate@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1288:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5a6c692fcbe3886b" botan_pubkey_fingerprint ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pubkey_destroy@

__defined at:__ @botan\/ffi.h:1294:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f8ae4285c9485466" botan_pubkey_destroy ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1299:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ea02fae394aee5f4" botan_pubkey_get_field ::
     Botan_mp_t
     {- ^ __C declaration:__ @output@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @field_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_get_field@

    __defined at:__ @botan\/ffi.h:1303:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e50c8b9999d9be30" botan_privkey_get_field ::
     Botan_mp_t
     {- ^ __C declaration:__ @output@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @field_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1310:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5f4ca71aeb844e8c" botan_privkey_load_rsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_rsa_pkcs1'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_732fb66e9096a91e" botan_privkey_load_rsa_pkcs1_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1315:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_rsa_pkcs1 ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @bits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @len@
     -}
  -> IO FC.CInt
botan_privkey_load_rsa_pkcs1 =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_privkey_load_rsa_pkcs1_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_privkey_rsa_get_p@

    __defined at:__ @botan\/ffi.h:1320:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b3beba937c5e3c7d" botan_privkey_rsa_get_p ::
     Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1322:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4adc89df2dc556a0" botan_privkey_rsa_get_q ::
     Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1324:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3a8207a91543cedc" botan_privkey_rsa_get_d ::
     Botan_mp_t
     {- ^ __C declaration:__ @d@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1326:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9a26deea7e903bd4" botan_privkey_rsa_get_n ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1328:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_be69fca9c8cabb64" botan_privkey_rsa_get_e ::
     Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1330:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7ff593bb53d9d671" botan_privkey_rsa_get_privkey ::
     Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_rsa@

    __defined at:__ @botan\/ffi.h:1334:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5e2600fbbee0f8eb" botan_pubkey_load_rsa ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1339:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fcb2475d83c898f1" botan_pubkey_rsa_get_e ::
     Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1341:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_781e993d0928787d" botan_pubkey_rsa_get_n ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1346:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_525ae050645210a4" botan_privkey_load_dsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1352:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_79d532b6c10490e0" botan_pubkey_load_dsa ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_dsa_get_x@

    __defined at:__ @botan\/ffi.h:1359:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_405bb7c31d1c54b6" botan_privkey_dsa_get_x ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1362:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3b33cd4aa972c588" botan_pubkey_dsa_get_p ::
     Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1364:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6beed2f00efc145f" botan_pubkey_dsa_get_q ::
     Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1366:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a3da701c70cd18a2" botan_pubkey_dsa_get_g ::
     Botan_mp_t
     {- ^ __C declaration:__ @d@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1368:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_394641ec47f682ae" botan_pubkey_dsa_get_y ::
     Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1383:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1768d8fb6f6a488b" botan_privkey_load_dh ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @g@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_da716fb02f4cd538" botan_pubkey_load_dh ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_87698657a32f2cc8" botan_pubkey_load_elgamal ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_7b671fc34fbde6f8" botan_privkey_load_elgamal ::
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

{-| Pointer-based API for 'botan_privkey_load_ed25519'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_54c6ee143f6da9bc" botan_privkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1448:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_ed25519 ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @privkey@
     -}
  -> IO FC.CInt
botan_privkey_load_ed25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    botan_privkey_load_ed25519_wrapper x0 ptr2)

{-| Pointer-based API for 'botan_pubkey_load_ed25519'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bb72bbf63fa938d0" botan_pubkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1451:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_ed25519 ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt
botan_pubkey_load_ed25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    botan_pubkey_load_ed25519_wrapper x0 ptr2)

{-| __C declaration:__ @botan_privkey_ed25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1454:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f92fd340f0d7d9ca" botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @output@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1457:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_67f7f20c00843385" botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_x25519'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d0fc44a7776011b3" botan_privkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1464:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_x25519 ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @privkey@
     -}
  -> IO FC.CInt
botan_privkey_load_x25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    botan_privkey_load_x25519_wrapper x0 ptr2)

{-| Pointer-based API for 'botan_pubkey_load_x25519'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_032aeb4fd6379212" botan_pubkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1467:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_x25519 ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> (HsBindgen.Runtime.ConstantArray.ConstantArray 32) HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt
botan_pubkey_load_x25519 =
  \x0 ->
    \x1 ->
      HsBindgen.Runtime.ConstantArray.withPtr x1 (\ptr2 ->
                                                    botan_pubkey_load_x25519_wrapper x0 ptr2)

{-| __C declaration:__ @botan_privkey_x25519_get_privkey@

    __defined at:__ @botan\/ffi.h:1470:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2acfba422d717c49" botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @output@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1473:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2eddbc4dc3760b41" botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1480:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_53cfee3e2f3f599a" botan_privkey_load_ecdsa ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @scalar@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1485:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6a8d45d1bd80a52a" botan_pubkey_load_ecdsa ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_y@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1491:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_006c7d5651204502" botan_pubkey_load_ecdh ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_y@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ecdh@

    __defined at:__ @botan\/ffi.h:1497:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_71b322a34cf93015" botan_privkey_load_ecdh ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @scalar@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1502:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2eca55aeddcc7f8d" botan_pubkey_load_sm2 ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_y@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2@

    __defined at:__ @botan\/ffi.h:1508:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5b361f3ca766a92d" botan_privkey_load_sm2 ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @scalar@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1513:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ad17cfb0455e35a5" botan_pubkey_load_sm2_enc ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @public_y@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_sm2_enc@

    __defined at:__ @botan\/ffi.h:1519:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_96eadbf5a6fc3810" botan_privkey_load_sm2_enc ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @scalar@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @curve_name@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_sm2_compute_za@

    __defined at:__ @botan\/ffi.h:1524:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_32a9b4e23d4e16b0" botan_pubkey_sm2_compute_za ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @ident@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_algo@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| View the uncompressed public point associated with the key

__C declaration:__ @botan_pubkey_view_ec_public_point@

__defined at:__ @botan\/ffi.h:1534:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_030e9bc2a65bd774" botan_pubkey_view_ec_public_point ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_create@

    __defined at:__ @botan\/ffi.h:1544:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_85e0d9e5db7c954f" botan_pk_op_encrypt_create ::
     Ptr.Ptr Botan_pk_op_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @padding@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1552:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dabe97e06df47384" botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1554:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5fb2e45c33e1ba39" botan_pk_op_encrypt_output_length ::
     Botan_pk_op_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ptext_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ctext_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_encrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4862eab3adefe19f" botan_pk_op_encrypt_wrapper ::
     Botan_pk_op_encrypt_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1558:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_encrypt ::
     Botan_pk_op_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @plaintext@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @plaintext_len@
     -}
  -> IO FC.CInt
botan_pk_op_encrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x4 (\ptr6 ->
                                                              botan_pk_op_encrypt_wrapper x0 x1 x2 x3 ptr6 x5)

{-| __C declaration:__ @botan_pk_op_decrypt_create@

    __defined at:__ @botan\/ffi.h:1570:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e2e625bbdf729505" botan_pk_op_decrypt_create ::
     Ptr.Ptr Botan_pk_op_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @padding@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1578:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_88c094336f029b9d" botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1580:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d03e8e8a0559f19e" botan_pk_op_decrypt_output_length ::
     Botan_pk_op_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ctext_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ptext_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_decrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_13ee8c8acf52b136" botan_pk_op_decrypt_wrapper ::
     Botan_pk_op_decrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1584:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_decrypt ::
     Botan_pk_op_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ciphertext@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ciphertext_len@
     -}
  -> IO FC.CInt
botan_pk_op_decrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x3 (\ptr5 ->
                                                            botan_pk_op_decrypt_wrapper x0 x1 x2 ptr5 x4)

{-| __C declaration:__ @botan_pk_op_sign_create@

    __defined at:__ @botan\/ffi.h:1597:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_94949245b9e2fa2b" botan_pk_op_sign_create ::
     Ptr.Ptr Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_and_padding@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_sign_destroy@

__defined at:__ @botan\/ffi.h:1605:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b863f31c35e9de1f" botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1607:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f5c0da4bdeb4b024" botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @olen@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_sign_update'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f2673339cc42338b" botan_pk_op_sign_update_wrapper ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1609:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_sign_update ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @in'@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @in_len@
     -}
  -> IO FC.CInt
botan_pk_op_sign_update =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_pk_op_sign_update_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_pk_op_sign_finish@

    __defined at:__ @botan\/ffi.h:1612:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fe6a6f51c83c9d8e" botan_pk_op_sign_finish ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @sig@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @sig_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_create@

    __defined at:__ @botan\/ffi.h:1621:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_aec263720b7f1596" botan_pk_op_verify_create ::
     Ptr.Ptr Botan_pk_op_verify_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_and_padding@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_verify_destroy@

__defined at:__ @botan\/ffi.h:1629:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2be8739e282674b4" botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_verify_update'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_72cd74e4091730fd" botan_pk_op_verify_update_wrapper ::
     Botan_pk_op_verify_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1631:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_update ::
     Botan_pk_op_verify_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @in'@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @in_len@
     -}
  -> IO FC.CInt
botan_pk_op_verify_update =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_pk_op_verify_update_wrapper x0 ptr3 x2)

{-| Pointer-based API for 'botan_pk_op_verify_finish'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7ac3006508d615c6" botan_pk_op_verify_finish_wrapper ::
     Botan_pk_op_verify_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1632:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_verify_finish ::
     Botan_pk_op_verify_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @sig@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @sig_len@
     -}
  -> IO FC.CInt
botan_pk_op_verify_finish =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_pk_op_verify_finish_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_pk_op_key_agreement_create@

    __defined at:__ @botan\/ffi.h:1640:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_40dc9e3c2519c64b" botan_pk_op_key_agreement_create ::
     Ptr.Ptr Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @kdf@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_key_agreement_destroy@

__defined at:__ @botan\/ffi.h:1648:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_773f6a50353fb100" botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1650:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4d2e56e79140e4c0" botan_pk_op_key_agreement_export_public ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_view_public@

    __defined at:__ @botan\/ffi.h:1653:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4381be53e380ed86" botan_pk_op_key_agreement_view_public ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_size@

    __defined at:__ @botan\/ffi.h:1658:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1529d7f87a73db50" botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_key_agreement'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d281f0f57bf59071" botan_pk_op_key_agreement_wrapper ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1661:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_key_agreement ::
     Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @other_key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @other_key_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
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
                                                                                                                botan_pk_op_key_agreement_wrapper x0 x1 x2 ptr8 x4 ptr7 x6))

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create@

    __defined at:__ @botan\/ffi.h:1671:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6c8df9f6cfff440b" botan_pk_op_kem_encrypt_create ::
     Ptr.Ptr Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @kdf@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_encrypt_destroy@

__defined at:__ @botan\/ffi.h:1679:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b0365237cc03c7ba" botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1682:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0eb50b007318fe72" botan_pk_op_kem_encrypt_shared_key_length ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @desired_shared_key_length@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_shared_key_length@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_encapsulated_key_length@

    __defined at:__ @botan\/ffi.h:1688:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6556228195cdac9a" botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_encapsulated_key_length@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_kem_encrypt_create_shared_key'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9e75ffd27b97b004" botan_pk_op_kem_encrypt_create_shared_key_wrapper ::
     Botan_pk_op_kem_encrypt_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_create_shared_key@

    __defined at:__ @botan\/ffi.h:1692:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_encrypt_create_shared_key ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @desired_shared_key_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @shared_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @shared_key_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @encapsulated_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @encapsulated_key_len@
     -}
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
                                                                    botan_pk_op_kem_encrypt_create_shared_key_wrapper x0 x1 ptr9 x3 x4 x5 x6 x7 x8)

{-| __C declaration:__ @botan_pk_op_kem_decrypt_create@

    __defined at:__ @botan\/ffi.h:1705:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_536f4f6ec65ecb75" botan_pk_op_kem_decrypt_create ::
     Ptr.Ptr Botan_pk_op_kem_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @kdf@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_pk_op_kem_decrypt_destroy@

__defined at:__ @botan\/ffi.h:1713:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f5daa2423c5c3ced" botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1716:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_67458143776fe9db" botan_pk_op_kem_decrypt_shared_key_length ::
     Botan_pk_op_kem_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @desired_shared_key_length@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_shared_key_length@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_kem_decrypt_shared_key'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9e8448a070386054" botan_pk_op_kem_decrypt_shared_key_wrapper ::
     Botan_pk_op_kem_decrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key@

    __defined at:__ @botan\/ffi.h:1721:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_pk_op_kem_decrypt_shared_key ::
     Botan_pk_op_kem_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @salt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @salt_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @encapsulated_key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @encapsulated_key_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @desired_shared_key_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @shared_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @shared_key_len@
     -}
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
                                                                                                                  botan_pk_op_kem_decrypt_shared_key_wrapper x0 ptr9 x2 ptr8 x4 x5 x6 x7))

{-| Signature Scheme Utility Functions

__C declaration:__ @botan_pkcs_hash_id@

__defined at:__ @botan\/ffi.h:1735:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_689f01e78c68cb5b" botan_pkcs_hash_id ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_name@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pkcs_id@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pkcs_id_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mceies_encrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5a75d8fb0ee07b12" botan_mceies_encrypt_wrapper ::
     Botan_pubkey_t
  -> Botan_rng_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mceies_encrypt@

    __defined at:__ @botan\/ffi.h:1742:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_encrypt ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @mce_key@
     -}
  -> Botan_rng_t
     {- ^ __C declaration:__ @rng@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @aead@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pt@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pt_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ad@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ad_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ct@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ct_len@
     -}
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
                                                                                                                    botan_mceies_encrypt_wrapper x0 x1 x2 ptr10 x4 ptr9 x6 x7 x8))

{-| Pointer-based API for 'botan_mceies_decrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d52648f02201c09e" botan_mceies_decrypt_wrapper ::
     Botan_privkey_t
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mceies_decrypt@

    __defined at:__ @botan\/ffi.h:1753:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_mceies_decrypt ::
     Botan_privkey_t
     {- ^ __C declaration:__ @mce_key@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @aead@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ct@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ct_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @ad@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ad_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pt@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @pt_len@
     -}
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
                                                                                                                  botan_mceies_decrypt_wrapper x0 x1 ptr9 x3 ptr8 x5 x6 x7))

{-| Pointer-based API for 'botan_x509_cert_load'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bc1233a50f79a120" botan_x509_cert_load_wrapper ::
     Ptr.Ptr Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1765:27@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_cert_load ::
     Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @cert_obj@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @cert@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @cert_len@
     -}
  -> IO FC.CInt
botan_x509_cert_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_x509_cert_load_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_x509_cert_load_file@

    __defined at:__ @botan\/ffi.h:1766:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_15f010cbd674e9a2" botan_x509_cert_load_file ::
     Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @cert_obj@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @filename@
     -}
  -> IO FC.CInt

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_x509_cert_destroy@

__defined at:__ @botan\/ffi.h:1771:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_46eb7c77ade1421a" botan_x509_cert_destroy ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1773:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9ab6e388123aebf6" botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @new_cert@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1776:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_30ff06a37f24634f" botan_x509_cert_get_time_starts ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_expires@

    __defined at:__ @botan\/ffi.h:1777:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4a2e4ab3af688cd5" botan_x509_cert_get_time_expires ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_before@

    __defined at:__ @botan\/ffi.h:1779:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7d98eb48bff22716" botan_x509_cert_not_before ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @time_since_epoch@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1780:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_30934ffa889e348d" botan_x509_cert_not_after ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @time_since_epoch@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1782:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_34afcf459b7226b6" botan_x509_cert_get_fingerprint ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_serial_number@

    __defined at:__ @botan\/ffi.h:1784:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_03ef8efa0b119414" botan_x509_cert_get_serial_number ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_authority_key_id@

    __defined at:__ @botan\/ffi.h:1785:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_368d86eb8dd8a4ec" botan_x509_cert_get_authority_key_id ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_key_id@

    __defined at:__ @botan\/ffi.h:1786:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_06dbba3dfe414143" botan_x509_cert_get_subject_key_id ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key_bits@

    __defined at:__ @botan\/ffi.h:1788:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bef546861ec94a40" botan_x509_cert_get_public_key_bits ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_public_key_bits@

    __defined at:__ @botan\/ffi.h:1791:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_870e54d8d984620a" botan_x509_cert_view_public_key_bits ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_bin_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_public_key@

    __defined at:__ @botan\/ffi.h:1796:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4a751a830dcceae6" botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1799:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2a41d7cc1f05f876" botan_x509_cert_get_issuer_dn ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @index@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_subject_dn@

    __defined at:__ @botan\/ffi.h:1804:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2184bf5ae4d6af34" botan_x509_cert_get_subject_dn ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @index@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_to_string@

    __defined at:__ @botan\/ffi.h:1808:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_336dc13cda8b7dc4" botan_x509_cert_to_string ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_view_as_string@

    __defined at:__ @botan\/ffi.h:1810:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5e711a7a695eaac3" botan_x509_cert_view_as_string ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Botan_view_ctx
     {- ^ __C declaration:__ @ctx@
     -}
  -> Botan_view_str_fn
     {- ^ __C declaration:__ @view@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_allowed_usage@

    __defined at:__ @botan\/ffi.h:1829:27@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d8a80179d3b0910a" botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> FC.CUInt
     {- ^ __C declaration:__ @key_usage@
     -}
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1835:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_76b8f508ae1fbe88" botan_x509_cert_hostname_match ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hostname@
     -}
  -> IO FC.CInt

{-| Returns 0 if the validation was successful, 1 if validation failed, and negative on error. A status code with details is written to *validation_result

  Intermediates or trusted lists can be null Trusted path can be null

__C declaration:__ @botan_x509_cert_verify@

__defined at:__ @botan\/ffi.h:1845:27@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_36a58cb020134324" botan_x509_cert_verify ::
     Ptr.Ptr FC.CInt
     {- ^ __C declaration:__ @validation_result@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @intermediates@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @intermediates_len@
     -}
  -> Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @trusted@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @trusted_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @trusted_path@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @required_strength@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hostname@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @reference_time@
     -}
  -> IO FC.CInt

{-| Returns a pointer to a static character string explaining the status code, or else NULL if unknown.

__C declaration:__ @botan_x509_cert_validation_status@

__defined at:__ @botan\/ffi.h:1861:35@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_68ff6b6ae573f7fa" botan_x509_cert_validation_status ::
     FC.CInt
     {- ^ __C declaration:__ @code@
     -}
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1869:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c4b1352711204975" botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     {- ^ __C declaration:__ @crl_obj@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @crl_path@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_x509_crl_load'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1b2bdf3f7bff644b" botan_x509_crl_load_wrapper ::
     Ptr.Ptr Botan_x509_crl_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1870:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_x509_crl_load ::
     Ptr.Ptr Botan_x509_crl_t
     {- ^ __C declaration:__ @crl_obj@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @crl_bits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @crl_bits_len@
     -}
  -> IO FC.CInt
botan_x509_crl_load =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_x509_crl_load_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_x509_crl_destroy@

    __defined at:__ @botan\/ffi.h:1872:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8b0391c4a9f03e42" botan_x509_crl_destroy ::
     Botan_x509_crl_t
     {- ^ __C declaration:__ @crl@
     -}
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1878:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_619bbb99aa8b80b0" botan_x509_is_revoked ::
     Botan_x509_crl_t
     {- ^ __C declaration:__ @crl@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1884:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_81d36abeffc0624b" botan_x509_cert_verify_with_crl ::
     Ptr.Ptr FC.CInt
     {- ^ __C declaration:__ @validation_result@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @intermediates@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @intermediates_len@
     -}
  -> Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @trusted@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @trusted_len@
     -}
  -> Ptr.Ptr Botan_x509_crl_t
     {- ^ __C declaration:__ @crls@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @crls_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @trusted_path@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @required_strength@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hostname@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @reference_time@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_key_wrap3394'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d317dcde0c42524e" botan_key_wrap3394_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1903:5@

__exported by:__ @botan\/ffi.h@
-}
botan_key_wrap3394 ::
     HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @kek@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @kek_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @wrapped_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @wrapped_key_len@
     -}
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
                                                                                                              botan_key_wrap3394_wrapper ptr7 x1 ptr6 x3 x4 x5))

{-| Pointer-based API for 'botan_key_unwrap3394'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3545b981415385f1" botan_key_unwrap3394_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1909:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_key_unwrap3394 ::
     HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @wrapped_key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @wrapped_key_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @kek@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @kek_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
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
                                                                                                              botan_key_unwrap3394_wrapper ptr7 x1 ptr6 x3 x4 x5))

{-| Pointer-based API for 'botan_nist_kw_enc'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a9b5a4c1200fe46e" botan_nist_kw_enc_wrapper ::
     Ptr.Ptr FC.CChar
  -> FC.CInt
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_nist_kw_enc@

    __defined at:__ @botan\/ffi.h:1914:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_enc ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> FC.CInt
     {- ^ __C declaration:__ @padded@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @kek@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @kek_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @wrapped_key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @wrapped_key_len@
     -}
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
                                                                                                                  botan_nist_kw_enc_wrapper x0 x1 ptr9 x3 ptr8 x5 x6 x7))

{-| Pointer-based API for 'botan_nist_kw_dec'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_982308fc61de3bc1" botan_nist_kw_dec_wrapper ::
     Ptr.Ptr FC.CChar
  -> FC.CInt
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_nist_kw_dec@

    __defined at:__ @botan\/ffi.h:1920:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_nist_kw_dec ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @cipher_algo@
     -}
  -> FC.CInt
     {- ^ __C declaration:__ @padded@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @wrapped_key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @wrapped_key_len@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @kek@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @kek_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
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
                                                                                                                  botan_nist_kw_dec_wrapper x0 x1 ptr9 x3 ptr8 x5 x6 x7))

{-| Pointer-based API for 'botan_hotp_init'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_454bca4545e6137e" botan_hotp_init_wrapper ::
     Ptr.Ptr Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1935:5@

__exported by:__ @botan\/ffi.h@
-}
botan_hotp_init ::
     Ptr.Ptr Botan_hotp_t
     {- ^ __C declaration:__ @hotp@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @digits@
     -}
  -> IO FC.CInt
botan_hotp_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr5 ->
                                                            botan_hotp_init_wrapper x0 ptr5 x2 x3 x4)

{-| Destroy a HOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_hotp_destroy@

__defined at:__ @botan\/ffi.h:1945:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6d59c2abf2f27fab" botan_hotp_destroy ::
     Botan_hotp_t
     {- ^ __C declaration:__ @hotp@
     -}
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1951:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d6fb6ce5ba526247" botan_hotp_generate ::
     Botan_hotp_t
     {- ^ __C declaration:__ @hotp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @hotp_code@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @hotp_counter@
     -}
  -> IO FC.CInt

{-| Verify a HOTP code

__C declaration:__ @botan_hotp_check@

__defined at:__ @botan\/ffi.h:1959:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_904064908f416552" botan_hotp_check ::
     Botan_hotp_t
     {- ^ __C declaration:__ @hotp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @next_hotp_counter@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @hotp_code@
     -}
  -> HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @hotp_counter@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @resync_range@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_totp_init'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c4132bbbc887bcb8" botan_totp_init_wrapper ::
     Ptr.Ptr Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1976:5@

__exported by:__ @botan\/ffi.h@
-}
botan_totp_init ::
     Ptr.Ptr Botan_totp_t
     {- ^ __C declaration:__ @totp@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @hash_algo@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @digits@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @time_step@
     -}
  -> IO FC.CInt
botan_totp_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr6 ->
                                                              botan_totp_init_wrapper x0 ptr6 x2 x3 x4 x5)

{-| Destroy a TOTP instance

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_totp_destroy@

__defined at:__ @botan\/ffi.h:1987:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1e16e42724cbdd0a" botan_totp_destroy ::
     Botan_totp_t
     {- ^ __C declaration:__ @totp@
     -}
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1996:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9f045caf4edb9685" botan_totp_generate ::
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

{-| Verify a TOTP code

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the presented OTP

  [__@timestamp@ /(input)/__]: the current local timestamp

  [__@acceptable_clock_drift@ /(input)/__]: specifies the acceptable amount of clock drift (in terms of time steps) between the two hosts.

__C declaration:__ @botan_totp_check@

__defined at:__ @botan\/ffi.h:2009:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_39651cacbc5bde73" botan_totp_check ::
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

{-| Pointer-based API for 'botan_fpe_fe1_init'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_23f438a54d54089d" botan_fpe_fe1_init_wrapper ::
     Ptr.Ptr Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:2024:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_fe1_init ::
     Ptr.Ptr Botan_fpe_t
     {- ^ __C declaration:__ @fpe@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @rounds@
     -}
  -> HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @flags@
     -}
  -> IO FC.CInt
botan_fpe_fe1_init =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          \x4 ->
            \x5 ->
              HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr6 ->
                                                              botan_fpe_fe1_init_wrapper x0 x1 ptr6 x3 x4 x5)

{-|

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_fpe_destroy@

__defined at:__ @botan\/ffi.h:2032:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b4e95a0b20dcd556" botan_fpe_destroy ::
     Botan_fpe_t
     {- ^ __C declaration:__ @fpe@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_fpe_encrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_22ad71844aadcf00" botan_fpe_encrypt_wrapper ::
     Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:2035:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_encrypt ::
     Botan_fpe_t
     {- ^ __C declaration:__ @fpe@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @tweak@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @tweak_len@
     -}
  -> IO FC.CInt
botan_fpe_encrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr4 ->
                                                          botan_fpe_encrypt_wrapper x0 x1 ptr4 x3)

{-| Pointer-based API for 'botan_fpe_decrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_efae0991c2d19f85" botan_fpe_decrypt_wrapper ::
     Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:2038:5@

    __exported by:__ @botan\/ffi.h@
-}
botan_fpe_decrypt ::
     Botan_fpe_t
     {- ^ __C declaration:__ @fpe@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @tweak@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @tweak_len@
     -}
  -> IO FC.CInt
botan_fpe_decrypt =
  \x0 ->
    \x1 ->
      \x2 ->
        \x3 ->
          HsBindgen.Runtime.IncompleteArray.withPtr x2 (\ptr4 ->
                                                          botan_fpe_decrypt_wrapper x0 x1 ptr4 x3)

{-| Initialize an SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

__C declaration:__ @botan_srp6_server_session_init@

__defined at:__ @botan\/ffi.h:2050:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_442c1d9992ae0774" botan_srp6_server_session_init ::
     Ptr.Ptr Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> IO FC.CInt

{-| Frees all resources of the SRP-6 server session object

  [__@srp6@ /(input)/__]: SRP-6 server session object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_srp6_server_session_destroy@

__defined at:__ @botan\/ffi.h:2058:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_50d0352a94ec5a49" botan_srp6_server_session_destroy ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_server_session_step1'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dc55431666d44cf1" botan_srp6_server_session_step1_wrapper ::
     Botan_srp6_server_session_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: the SRP group id

     __C declaration:__ @group_id@
     -}
  -> Ptr.Ptr FC.CChar
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
     {- ^ __C declaration:__ @b_pub@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @b_pub_len@
     -}
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
                                                                  botan_srp6_server_session_step1_wrapper x0 ptr8 x2 x3 x4 x5 x6 x7)

{-| Pointer-based API for 'botan_srp6_server_session_step2'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f33a94effc25bcc8" botan_srp6_server_session_step2_wrapper ::
     Botan_srp6_server_session_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
     {- ^ __C declaration:__ @a@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @a_len@
     -}
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
                                                            botan_srp6_server_session_step2_wrapper x0 ptr5 x2 x3 x4)

{-| Pointer-based API for 'botan_srp6_generate_verifier'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1b81c712766e8fe1" botan_srp6_generate_verifier_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
     Ptr.Ptr FC.CChar
     {- ^

        [__@identifier@ /(input)/__]: a username or other client identifier

     __C declaration:__ @identifier@
     -}
  -> Ptr.Ptr FC.CChar
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
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> Ptr.Ptr FC.CChar
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
                                                                  botan_srp6_generate_verifier_wrapper x0 x1 ptr8 x3 x4 x5 x6 x7)

{-| Pointer-based API for 'botan_srp6_client_agree'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ee1f38e1d0a7ce1d" botan_srp6_client_agree_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

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
     Ptr.Ptr FC.CChar
     {- ^

        [__@username@ /(input)/__]: the username we are attempting login for

     __C declaration:__ @username@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@password@ /(input)/__]: the password we are attempting to use

     __C declaration:__ @password@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^

        [__@group_id@ /(input)/__]: specifies the shared SRP group

     __C declaration:__ @group_id@
     -}
  -> Ptr.Ptr FC.CChar
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
     {- ^ __C declaration:__ @b@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @b_len@
     -}
  -> Botan_rng_t
     {- ^

        [__@rng_obj@ /(input)/__]: is a random number generator object

     __C declaration:__ @rng_obj@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @a@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @a_len@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @k@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @k_len@
     -}
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
                                                                                                                            botan_srp6_client_agree_wrapper x0 x1 x2 x3 ptr14 x5 ptr13 x7 x8 x9 x10 x11 x12))

{-| Return the size, in bytes, of the prime associated with group_id

__C declaration:__ @botan_srp6_group_size@

__defined at:__ @botan\/ffi.h:2140:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5987a6bc4a18582d" botan_srp6_group_size ::
     Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @group_id@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @group_p_bytes@
     -}
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
foreign import ccall unsafe "hs_bindgen_botanbindings_1eefe7384c1bb407" botan_zfec_encode ::
     HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @k@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
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
foreign import ccall unsafe "hs_bindgen_botanbindings_b3b15c863614d299" botan_zfec_decode ::
     HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @k@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^

        [__@indexes@ /(input)/__]: The index into the encoder's outputs for the corresponding element of the inputs array. Must be of length K.

     __C declaration:__ @indexes@
     -}
  -> Ptr.Ptr (Ptr.Ptr HsBindgen.Runtime.Prelude.Word8)
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
