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
import qualified HsBindgen.Runtime.ConstPtr
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "char const *hs_bindgen_3732156e10bdc6a6 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_f3d419a4a54204a1 (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_e3ec5cd2231c290a (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_62826bdb5fa347aa ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_c4ebfd171c63d0db (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_7fee96b246bdcf95 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_3cbff12c43860403 (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_b31ad183e6065d56 (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_11bcca58ccd46876 (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_848446c0cae98030 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ae58fe4cbc9b91a0 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8939f0e2c3a6a559 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5ed11588435fbdaf ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e45df4e6cd2bcbb4 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6930dd4bdd9088ba ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ea639a49487317c8 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0eb46900b55a3426 ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4b0fe6431212c176 ("
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
  , "signed int hs_bindgen_82f81effe5a0b288 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fcecd3c5757b21f8 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c99b4229620b6f82 ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_38a76b0c647e3825 ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4a41c967edccce6e ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_73ce7792c7b202f5 ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e6b679dd912a3302 ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ebba0afdbc27619f ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8bf0468d0570b702 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9cd60293a57475ef ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5221ad3bbf0c534a ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4007282393489051 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c9bdb63165f720da ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_1ef43600968388bc ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_769c0524dec27ac2 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5bc8502553b6fb4b ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d7142cf56db204ee ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1d7b7d386ad679fe ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2dc9ceb26786a0eb ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9c18057d9fb4f83b ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_85d9f6b74d3fdbc9 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_99eb5bf3ef4ff0a0 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_b8d58e4de555e434 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2d980ac1daaddfdc ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_8e23860ae9ae7f95 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_cfa43e80a5470af3 ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bd4ace39130352a2 ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f78459ff64ae05a1 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8c370b726aacd945 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_16c12e8c5c61817d ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e71dc2d2ce4d35df ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_395261d6ee3f7315 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e17d786854e2a5cb ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e11ec2dd05e51c2 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_3f7719de201617e6 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_debe670a57be4c7e ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2f08644e5d1c3dea ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_f9baf71e8f239a21 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_56c5a180f9446bf7 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e063f4a55b473d86 ("
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
  , "signed int hs_bindgen_ecfeb7c6facd4776 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_12330e6f6d9d3d98 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4e22d71dd5b2927a ("
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
  , "signed int hs_bindgen_33c491736990a21a ("
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
  , "signed int hs_bindgen_73e9909b4443cb3f ("
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
  , "signed int hs_bindgen_bb3a36ce6dd3e7da ("
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
  , "signed int hs_bindgen_9742bccff511067a ("
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
  , "signed int hs_bindgen_13803a3b3ee5b33c ("
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
  , "signed int hs_bindgen_7950f660fb144b22 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1aa35f7148171776 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ed2214aef9511d95 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_b0b13aa76ce21482 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d3ffb134c92830a8 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_4400f08decebbb1e ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_13de4359f21082d4 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6dd913b1f3521a1d ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_630712a2515a74ec ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_970a21fa5d9e9825 ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_9d892389b4b9aea5 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_156f6fa1c0c4736f ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_679d59bd4fa438bb ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ec67b6e9e6ef62a2 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_c0b736764c3ff600 ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2ecbc410e924da8a ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9bb2531eaad57008 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_050631db9df13fa3 ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4c9e8b852ab9a45c ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a88934bf693b6213 ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e59fa720fcc53df4 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4be761ecc31af4ba ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ba389f1b156b3967 ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_d83cc37169200644 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_d10b2350a7f37e34 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_389e0a8429c92faa ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_82babc1e99d4d991 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_ec090b31aa2e4f22 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_d196ef539512654c ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_87a7b70ab0769fc4 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_937d5fc22c457044 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8320ca0834c3a456 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_04fabc2dd409fe15 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f2ec11843a7cbe03 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_728ddaa346730a0d ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_404a12eabb0cf3d1 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6c39e83b29e90fc8 ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6305754fde7cd020 ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_717a118082c09647 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6091c2ff1eccec4e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_1a828c21e2ac0ef8 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_409e775b6fe1caee ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_8499792d1ff389b7 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_675f85197d1b7a97 ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_74584b3fcf99aefb ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_054c3d2c2603032d ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a9590a48656257e5 ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_486e063e46b49de8 ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9d282dc855b85047 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0eb9b3dee3447747 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_824e25a74d21d3fe ("
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
  , "signed int hs_bindgen_68fc45ce2dc5f8f2 ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f29636716dabd219 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_6be6fe1b9f397ffc ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_06ccd3492d70ac7f ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_eb40e129dd40675d ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cf5692b6f6ba28c6 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_29eb57a39bf3d80e ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c76cee3dc4a08a30 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9285ff6388833e74 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d134bcc4fa5b8f26 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_145682c5ff1eac9b ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_0865d929151b4ac8 ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_3fc3eb237faa8ce6 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_f1ba2253ceb8ba0b ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_be97a5468efd5dc3 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1436d3016b3b6188 ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_1cace8491886db1f ("
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
  , "signed int hs_bindgen_12470c8c51653b15 ("
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
  , "signed int hs_bindgen_c8cfe0b7750d0c09 ("
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
  , "signed int hs_bindgen_adc35efc8160328b ("
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
  , "signed int hs_bindgen_65795285cd8f63ce ("
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
  , "signed int hs_bindgen_ca9073790f7adffe ("
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
  , "signed int hs_bindgen_b01041027d416aed ("
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
  , "signed int hs_bindgen_b38f292d770c3894 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_623dc9c4cccb6f4b ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_29a4ea8ac4d94014 ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e22fabf98b7cefdb ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_49ddc4f8ab98655b ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7d68e2ff618bdac6 ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_04690e40f7484569 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e074794c70b86dee ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_72a437385e94e038 ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_ec04026678587685 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_fb3e700c78ee9c13 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ae7013bb21d20e87 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a4370e7019ec5cec ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3feb361d05574e21 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9239ce6952072d19 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f6b9c2556a4a9856 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_60e41a938ecce9a0 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b0f13c772bfd45d2 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c238cee3b846cb87 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_60b1085b6e10a73b ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b543885c6c25f4b9 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e02eccf6f17c7fcf ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e94890f4ad2ac5d0 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_1e9cac36751bc8e8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_70c0b0eddfd0aac8 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_b92cf58086d52f41 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_198d1517dee7e7a4 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_55e6c39ea6d3fe05 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a361f3b9bdccf148 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c103df7a56e0049c ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_13a98a6c42087fa7 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_3a9727fb96babdd7 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_59ba2add33a8f02c ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_aab9500c8d559f72 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_da76c75d0e07c34a ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_156cac709e97cdd9 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_4644b88c0a4a71c7 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cb8ab939c7c29d1c ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_627daeac85418594 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_2e74e9ddb58f3ba3 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f76b440205cfabe7 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_942806143cfdf66c ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ece85749646e9689 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_fd42014cccac9915 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_386d8446a5bc8713 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_30ad05f74ca4cc83 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4219f03890a454e6 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_4eea3b9a7b62c986 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_56749a0c36eb5761 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e4f6ba3c4c2fdfd8 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f94bcaa769e0e2fe ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_0e235be46a7ff659 ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_84cce397dfc5f030 ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_bd67ffcf5d3bbdba ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_8cfcffd2b60f2798 ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5cb2b790f538a2be ("
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
  , "signed int hs_bindgen_b1b77b24043b39af ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_16e49f4a57ab6040 ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_529644687c0851d6 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_9ffb3d9eced9fe75 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_c7208d8b32e52edf ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_038c55b2eec6445b ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_3d469a3bfd0cd19a ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_3a6fe2e9cccdf76b ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bcc1e7289876da2f ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_7230c154b73ef167 ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_c1a8f1c707dd0fa5 ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_e5eaca407607a791 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_a951469f5a91eb53 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d3950a5488d5784e ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_5b97b3dfcdc2d911 ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_5ba58bca9b0e77dc ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6742a42deebea5a1 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_68797ed9db928901 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9a6a9c78b63eeb33 ("
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
  , "signed int hs_bindgen_8fd8540777c8ed6d ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_7716a4c0866ed246 ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_ad8d06ee062ce57a ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2e5412392b6ab8dc ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_520a10376b5cffd3 ("
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
  , "signed int hs_bindgen_97573923bee0c1a0 ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_acab7c3544794419 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_7696e69c6aa264c6 ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2e86a13586756950 ("
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
  , "signed int hs_bindgen_1e5950991ed3e1d9 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_e28214bae44c6251 ("
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
  , "signed int hs_bindgen_8338743b2b24e771 ("
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
  , "signed int hs_bindgen_f1deef85025eff3e ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_f4e0c10e0666f0c1 ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c5c4d21741875738 ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_68829da068a548f5 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_a09c8f71693f1880 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cc0e363581b558a7 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5cd5c3f02e0a58b1 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_e28cba74f627be2e ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_210d4af4ba377a43 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_db77422855b17046 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_bf070ce8be37002f ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_6cd3823019ba075b ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_4003d8ff0f330ada ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2ff2109e2a48ff96 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ee989703a0c67e27 ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_87ff05da0793a057 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_ea7d597594d96638 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_be6c6923475edd18 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_576deb4f28e1488f ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_0df94c47b0227d71 ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_396cd55f0d20550c ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_03285da4f53028bb ("
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
  , "char const *hs_bindgen_4325e4a23286212d ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_2f9681570f4a388d ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cfc1d4d70d3b7d2a ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_ee8644d99725f073 ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_8e8376aa6c2f3096 ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_9550d7d84bad350d ("
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
  , "signed int hs_bindgen_e5bc5fa706d03290 ("
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
  , "signed int hs_bindgen_5bf6a4aa2c12d606 ("
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
  , "signed int hs_bindgen_2691416a1849d8d6 ("
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
  , "signed int hs_bindgen_b94c87abddb1c3bd ("
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
  , "signed int hs_bindgen_b0869e7d1ed2c3ec ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_a4122819b6f615ee ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_8a970e1c8ceadae5 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_edfe9ab0e22d611b ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_498859899ae7f77f ("
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
  , "signed int hs_bindgen_72fe5154d6d956d1 ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_4bc7ba45ba382481 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_712de19f34689e07 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_34bd55593172bfef ("
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
  , "signed int hs_bindgen_04cc072a948c056d ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_497f2719046f9fcc ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_0b7b698271ad8e23 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_e90b4ac55f684b15 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_c5b86161d7103278 ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_eca3422d1b410999 ("
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
  , "signed int hs_bindgen_6d7c44e5669ac709 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_2925d593022349d9 ("
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
  , "signed int hs_bindgen_cc418ea8ca4aeee9 ("
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
  , "signed int hs_bindgen_d71edc913a88236e ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_5f04a99f419f18cd ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_01b90dd6ba07d1f7 ("
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

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_error_description@
foreign import ccall unsafe "hs_bindgen_3732156e10bdc6a6" hs_bindgen_3732156e10bdc6a6 ::
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
botan_error_description = hs_bindgen_3732156e10bdc6a6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_error_last_exception_message@
foreign import ccall unsafe "hs_bindgen_f3d419a4a54204a1" hs_bindgen_f3d419a4a54204a1 ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:134:35@

__exported by:__ @botan\/ffi.h@
-}
botan_error_last_exception_message :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_error_last_exception_message =
  hs_bindgen_f3d419a4a54204a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_ffi_api_version@
foreign import ccall unsafe "hs_bindgen_e3ec5cd2231c290a" hs_bindgen_e3ec5cd2231c290a ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:141:32@

__exported by:__ @botan\/ffi.h@
-}
botan_ffi_api_version :: IO HsBindgen.Runtime.Prelude.Word32
botan_ffi_api_version = hs_bindgen_e3ec5cd2231c290a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_ffi_supports_api@
foreign import ccall unsafe "hs_bindgen_62826bdb5fa347aa" hs_bindgen_62826bdb5fa347aa ::
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
botan_ffi_supports_api = hs_bindgen_62826bdb5fa347aa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_version_string@
foreign import ccall unsafe "hs_bindgen_c4ebfd171c63d0db" hs_bindgen_c4ebfd171c63d0db ::
     IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:152:35@

__exported by:__ @botan\/ffi.h@
-}
botan_version_string :: IO (HsBindgen.Runtime.ConstPtr.ConstPtr FC.CChar)
botan_version_string = hs_bindgen_c4ebfd171c63d0db

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_version_major@
foreign import ccall unsafe "hs_bindgen_7fee96b246bdcf95" hs_bindgen_7fee96b246bdcf95 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:157:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_major :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_major = hs_bindgen_7fee96b246bdcf95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_version_minor@
foreign import ccall unsafe "hs_bindgen_3cbff12c43860403" hs_bindgen_3cbff12c43860403 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:162:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_minor :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_minor = hs_bindgen_3cbff12c43860403

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_version_patch@
foreign import ccall unsafe "hs_bindgen_b31ad183e6065d56" hs_bindgen_b31ad183e6065d56 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:167:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_patch :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_patch = hs_bindgen_b31ad183e6065d56

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_version_datestamp@
foreign import ccall unsafe "hs_bindgen_11bcca58ccd46876" hs_bindgen_11bcca58ccd46876 ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:173:32@

__exported by:__ @botan\/ffi.h@
-}
botan_version_datestamp :: IO HsBindgen.Runtime.Prelude.Word32
botan_version_datestamp = hs_bindgen_11bcca58ccd46876

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_constant_time_compare@
foreign import ccall unsafe "hs_bindgen_848446c0cae98030" hs_bindgen_848446c0cae98030 ::
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
  hs_bindgen_848446c0cae98030

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_same_mem@
foreign import ccall unsafe "hs_bindgen_ae58fe4cbc9b91a0" hs_bindgen_ae58fe4cbc9b91a0 ::
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
botan_same_mem = hs_bindgen_ae58fe4cbc9b91a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_scrub_mem@
foreign import ccall unsafe "hs_bindgen_8939f0e2c3a6a559" hs_bindgen_8939f0e2c3a6a559 ::
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
botan_scrub_mem = hs_bindgen_8939f0e2c3a6a559

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hex_encode@
foreign import ccall unsafe "hs_bindgen_5ed11588435fbdaf" hs_bindgen_5ed11588435fbdaf ::
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
botan_hex_encode = hs_bindgen_5ed11588435fbdaf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hex_decode@
foreign import ccall unsafe "hs_bindgen_e45df4e6cd2bcbb4" hs_bindgen_e45df4e6cd2bcbb4 ::
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
botan_hex_decode = hs_bindgen_e45df4e6cd2bcbb4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_base64_encode@
foreign import ccall unsafe "hs_bindgen_6930dd4bdd9088ba" hs_bindgen_6930dd4bdd9088ba ::
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
botan_base64_encode = hs_bindgen_6930dd4bdd9088ba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_base64_decode@
foreign import ccall unsafe "hs_bindgen_ea639a49487317c8" hs_bindgen_ea639a49487317c8 ::
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
botan_base64_decode = hs_bindgen_ea639a49487317c8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_init@
foreign import ccall unsafe "hs_bindgen_0eb46900b55a3426" hs_bindgen_0eb46900b55a3426 ::
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
botan_rng_init = hs_bindgen_0eb46900b55a3426

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_init_custom@
foreign import ccall unsafe "hs_bindgen_4b0fe6431212c176" hs_bindgen_4b0fe6431212c176 ::
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
botan_rng_init_custom = hs_bindgen_4b0fe6431212c176

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_get@
foreign import ccall unsafe "hs_bindgen_82f81effe5a0b288" hs_bindgen_82f81effe5a0b288 ::
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
botan_rng_get = hs_bindgen_82f81effe5a0b288

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_system_rng_get@
foreign import ccall unsafe "hs_bindgen_fcecd3c5757b21f8" hs_bindgen_fcecd3c5757b21f8 ::
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
botan_system_rng_get = hs_bindgen_fcecd3c5757b21f8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_reseed@
foreign import ccall unsafe "hs_bindgen_c99b4229620b6f82" hs_bindgen_c99b4229620b6f82 ::
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
botan_rng_reseed = hs_bindgen_c99b4229620b6f82

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_reseed_from_rng@
foreign import ccall unsafe "hs_bindgen_38a76b0c647e3825" hs_bindgen_38a76b0c647e3825 ::
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
  hs_bindgen_38a76b0c647e3825

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_add_entropy@
foreign import ccall unsafe "hs_bindgen_4a41c967edccce6e" hs_bindgen_4a41c967edccce6e ::
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
botan_rng_add_entropy = hs_bindgen_4a41c967edccce6e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_rng_destroy@
foreign import ccall unsafe "hs_bindgen_73ce7792c7b202f5" hs_bindgen_73ce7792c7b202f5 ::
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
botan_rng_destroy = hs_bindgen_73ce7792c7b202f5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_init@
foreign import ccall unsafe "hs_bindgen_e6b679dd912a3302" hs_bindgen_e6b679dd912a3302 ::
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
botan_hash_init = hs_bindgen_e6b679dd912a3302

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_copy_state@
foreign import ccall unsafe "hs_bindgen_ebba0afdbc27619f" hs_bindgen_ebba0afdbc27619f ::
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
botan_hash_copy_state = hs_bindgen_ebba0afdbc27619f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_output_length@
foreign import ccall unsafe "hs_bindgen_8bf0468d0570b702" hs_bindgen_8bf0468d0570b702 ::
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
  hs_bindgen_8bf0468d0570b702

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_block_size@
foreign import ccall unsafe "hs_bindgen_9cd60293a57475ef" hs_bindgen_9cd60293a57475ef ::
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
botan_hash_block_size = hs_bindgen_9cd60293a57475ef

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_update@
foreign import ccall unsafe "hs_bindgen_5221ad3bbf0c534a" hs_bindgen_5221ad3bbf0c534a ::
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
botan_hash_update = hs_bindgen_5221ad3bbf0c534a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_final@
foreign import ccall unsafe "hs_bindgen_4007282393489051" hs_bindgen_4007282393489051 ::
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
botan_hash_final = hs_bindgen_4007282393489051

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_clear@
foreign import ccall unsafe "hs_bindgen_c9bdb63165f720da" hs_bindgen_c9bdb63165f720da ::
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
botan_hash_clear = hs_bindgen_c9bdb63165f720da

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_destroy@
foreign import ccall unsafe "hs_bindgen_1ef43600968388bc" hs_bindgen_1ef43600968388bc ::
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
botan_hash_destroy = hs_bindgen_1ef43600968388bc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hash_name@
foreign import ccall unsafe "hs_bindgen_769c0524dec27ac2" hs_bindgen_769c0524dec27ac2 ::
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
botan_hash_name = hs_bindgen_769c0524dec27ac2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_init@
foreign import ccall unsafe "hs_bindgen_5bc8502553b6fb4b" hs_bindgen_5bc8502553b6fb4b ::
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
botan_mac_init = hs_bindgen_5bc8502553b6fb4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_output_length@
foreign import ccall unsafe "hs_bindgen_d7142cf56db204ee" hs_bindgen_d7142cf56db204ee ::
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
botan_mac_output_length = hs_bindgen_d7142cf56db204ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_set_key@
foreign import ccall unsafe "hs_bindgen_1d7b7d386ad679fe" hs_bindgen_1d7b7d386ad679fe ::
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
botan_mac_set_key = hs_bindgen_1d7b7d386ad679fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_set_nonce@
foreign import ccall unsafe "hs_bindgen_2dc9ceb26786a0eb" hs_bindgen_2dc9ceb26786a0eb ::
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
botan_mac_set_nonce = hs_bindgen_2dc9ceb26786a0eb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_update@
foreign import ccall unsafe "hs_bindgen_9c18057d9fb4f83b" hs_bindgen_9c18057d9fb4f83b ::
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
botan_mac_update = hs_bindgen_9c18057d9fb4f83b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_final@
foreign import ccall unsafe "hs_bindgen_85d9f6b74d3fdbc9" hs_bindgen_85d9f6b74d3fdbc9 ::
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
botan_mac_final = hs_bindgen_85d9f6b74d3fdbc9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_clear@
foreign import ccall unsafe "hs_bindgen_99eb5bf3ef4ff0a0" hs_bindgen_99eb5bf3ef4ff0a0 ::
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
botan_mac_clear = hs_bindgen_99eb5bf3ef4ff0a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_name@
foreign import ccall unsafe "hs_bindgen_b8d58e4de555e434" hs_bindgen_b8d58e4de555e434 ::
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
botan_mac_name = hs_bindgen_b8d58e4de555e434

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_get_keyspec@
foreign import ccall unsafe "hs_bindgen_2d980ac1daaddfdc" hs_bindgen_2d980ac1daaddfdc ::
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
botan_mac_get_keyspec = hs_bindgen_2d980ac1daaddfdc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mac_destroy@
foreign import ccall unsafe "hs_bindgen_8e23860ae9ae7f95" hs_bindgen_8e23860ae9ae7f95 ::
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
botan_mac_destroy = hs_bindgen_8e23860ae9ae7f95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_init@
foreign import ccall unsafe "hs_bindgen_cfa43e80a5470af3" hs_bindgen_cfa43e80a5470af3 ::
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
botan_cipher_init = hs_bindgen_cfa43e80a5470af3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_name@
foreign import ccall unsafe "hs_bindgen_bd4ace39130352a2" hs_bindgen_bd4ace39130352a2 ::
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
botan_cipher_name = hs_bindgen_bd4ace39130352a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_output_length@
foreign import ccall unsafe "hs_bindgen_f78459ff64ae05a1" hs_bindgen_f78459ff64ae05a1 ::
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
  hs_bindgen_f78459ff64ae05a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_valid_nonce_length@
foreign import ccall unsafe "hs_bindgen_8c370b726aacd945" hs_bindgen_8c370b726aacd945 ::
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
  hs_bindgen_8c370b726aacd945

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_get_tag_length@
foreign import ccall unsafe "hs_bindgen_16c12e8c5c61817d" hs_bindgen_16c12e8c5c61817d ::
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
  hs_bindgen_16c12e8c5c61817d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_get_default_nonce_length@
foreign import ccall unsafe "hs_bindgen_e71dc2d2ce4d35df" hs_bindgen_e71dc2d2ce4d35df ::
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
  hs_bindgen_e71dc2d2ce4d35df

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_get_update_granularity@
foreign import ccall unsafe "hs_bindgen_395261d6ee3f7315" hs_bindgen_395261d6ee3f7315 ::
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
  hs_bindgen_395261d6ee3f7315

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_get_ideal_update_granularity@
foreign import ccall unsafe "hs_bindgen_e17d786854e2a5cb" hs_bindgen_e17d786854e2a5cb ::
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
  hs_bindgen_e17d786854e2a5cb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_query_keylen@
foreign import ccall unsafe "hs_bindgen_2e11ec2dd05e51c2" hs_bindgen_2e11ec2dd05e51c2 ::
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
  hs_bindgen_2e11ec2dd05e51c2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_3f7719de201617e6" hs_bindgen_3f7719de201617e6 ::
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
  hs_bindgen_3f7719de201617e6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_debe670a57be4c7e" hs_bindgen_debe670a57be4c7e ::
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
botan_cipher_set_key = hs_bindgen_debe670a57be4c7e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_reset@
foreign import ccall unsafe "hs_bindgen_2f08644e5d1c3dea" hs_bindgen_2f08644e5d1c3dea ::
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
botan_cipher_reset = hs_bindgen_2f08644e5d1c3dea

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_set_associated_data@
foreign import ccall unsafe "hs_bindgen_f9baf71e8f239a21" hs_bindgen_f9baf71e8f239a21 ::
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
  hs_bindgen_f9baf71e8f239a21

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_start@
foreign import ccall unsafe "hs_bindgen_56c5a180f9446bf7" hs_bindgen_56c5a180f9446bf7 ::
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
botan_cipher_start = hs_bindgen_56c5a180f9446bf7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_update@
foreign import ccall unsafe "hs_bindgen_e063f4a55b473d86" hs_bindgen_e063f4a55b473d86 ::
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
  hs_bindgen_e063f4a55b473d86

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
                                                                  hs_bindgen_e063f4a55b473d86 x0 x1 x2 x3 x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_clear@
foreign import ccall unsafe "hs_bindgen_ecfeb7c6facd4776" hs_bindgen_ecfeb7c6facd4776 ::
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
botan_cipher_clear = hs_bindgen_ecfeb7c6facd4776

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_12330e6f6d9d3d98" hs_bindgen_12330e6f6d9d3d98 ::
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
botan_cipher_destroy = hs_bindgen_12330e6f6d9d3d98

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pbkdf@
foreign import ccall unsafe "hs_bindgen_4e22d71dd5b2927a" hs_bindgen_4e22d71dd5b2927a ::
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
botan_pbkdf_wrapper = hs_bindgen_4e22d71dd5b2927a

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
                                                                hs_bindgen_4e22d71dd5b2927a x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x5 x6)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pbkdf_timed@
foreign import ccall unsafe "hs_bindgen_33c491736990a21a" hs_bindgen_33c491736990a21a ::
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
  hs_bindgen_33c491736990a21a

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
                                                                  hs_bindgen_33c491736990a21a x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pwdhash@
foreign import ccall unsafe "hs_bindgen_73e9909b4443cb3f" hs_bindgen_73e9909b4443cb3f ::
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
botan_pwdhash_wrapper = hs_bindgen_73e9909b4443cb3f

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
                                                                      hs_bindgen_73e9909b4443cb3f x0 x1 x2 x3 x4 x5 x6 x7 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x9)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pwdhash_timed@
foreign import ccall unsafe "hs_bindgen_bb3a36ce6dd3e7da" hs_bindgen_bb3a36ce6dd3e7da ::
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
  hs_bindgen_bb3a36ce6dd3e7da

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
                                                                        hs_bindgen_bb3a36ce6dd3e7da x0 x1 x2 x3 x4 x5 x6 x7 x8 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x10)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_scrypt@
foreign import ccall unsafe "hs_bindgen_9742bccff511067a" hs_bindgen_9742bccff511067a ::
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
botan_scrypt_wrapper = hs_bindgen_9742bccff511067a

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
                                                                  hs_bindgen_9742bccff511067a x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_kdf@
foreign import ccall unsafe "hs_bindgen_13803a3b3ee5b33c" hs_bindgen_13803a3b3ee5b33c ::
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
botan_kdf_wrapper = hs_bindgen_13803a3b3ee5b33c

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
                                                                                                                                                                    hs_bindgen_13803a3b3ee5b33c x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr11) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x6 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x8)))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_init@
foreign import ccall unsafe "hs_bindgen_7950f660fb144b22" hs_bindgen_7950f660fb144b22 ::
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
botan_block_cipher_init = hs_bindgen_7950f660fb144b22

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_destroy@
foreign import ccall unsafe "hs_bindgen_1aa35f7148171776" hs_bindgen_1aa35f7148171776 ::
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
  hs_bindgen_1aa35f7148171776

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_clear@
foreign import ccall unsafe "hs_bindgen_ed2214aef9511d95" hs_bindgen_ed2214aef9511d95 ::
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
  hs_bindgen_ed2214aef9511d95

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_set_key@
foreign import ccall unsafe "hs_bindgen_b0b13aa76ce21482" hs_bindgen_b0b13aa76ce21482 ::
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
  hs_bindgen_b0b13aa76ce21482

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
                                                        hs_bindgen_b0b13aa76ce21482 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_block_size@
foreign import ccall unsafe "hs_bindgen_d3ffb134c92830a8" hs_bindgen_d3ffb134c92830a8 ::
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
  hs_bindgen_d3ffb134c92830a8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_encrypt_blocks@
foreign import ccall unsafe "hs_bindgen_4400f08decebbb1e" hs_bindgen_4400f08decebbb1e ::
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
  hs_bindgen_4400f08decebbb1e

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
                                                          hs_bindgen_4400f08decebbb1e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_decrypt_blocks@
foreign import ccall unsafe "hs_bindgen_13de4359f21082d4" hs_bindgen_13de4359f21082d4 ::
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
  hs_bindgen_13de4359f21082d4

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
                                                          hs_bindgen_13de4359f21082d4 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x2 x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_name@
foreign import ccall unsafe "hs_bindgen_6dd913b1f3521a1d" hs_bindgen_6dd913b1f3521a1d ::
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
botan_block_cipher_name = hs_bindgen_6dd913b1f3521a1d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_block_cipher_get_keyspec@
foreign import ccall unsafe "hs_bindgen_630712a2515a74ec" hs_bindgen_630712a2515a74ec ::
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
  hs_bindgen_630712a2515a74ec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_init@
foreign import ccall unsafe "hs_bindgen_970a21fa5d9e9825" hs_bindgen_970a21fa5d9e9825 ::
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
botan_mp_init = hs_bindgen_970a21fa5d9e9825

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_destroy@
foreign import ccall unsafe "hs_bindgen_9d892389b4b9aea5" hs_bindgen_9d892389b4b9aea5 ::
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
botan_mp_destroy = hs_bindgen_9d892389b4b9aea5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_to_hex@
foreign import ccall unsafe "hs_bindgen_156f6fa1c0c4736f" hs_bindgen_156f6fa1c0c4736f ::
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
botan_mp_to_hex = hs_bindgen_156f6fa1c0c4736f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_to_str@
foreign import ccall unsafe "hs_bindgen_679d59bd4fa438bb" hs_bindgen_679d59bd4fa438bb ::
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
botan_mp_to_str = hs_bindgen_679d59bd4fa438bb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_clear@
foreign import ccall unsafe "hs_bindgen_ec67b6e9e6ef62a2" hs_bindgen_ec67b6e9e6ef62a2 ::
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
botan_mp_clear = hs_bindgen_ec67b6e9e6ef62a2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_set_from_int@
foreign import ccall unsafe "hs_bindgen_c0b736764c3ff600" hs_bindgen_c0b736764c3ff600 ::
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
botan_mp_set_from_int = hs_bindgen_c0b736764c3ff600

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_set_from_mp@
foreign import ccall unsafe "hs_bindgen_2ecbc410e924da8a" hs_bindgen_2ecbc410e924da8a ::
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
botan_mp_set_from_mp = hs_bindgen_2ecbc410e924da8a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_set_from_str@
foreign import ccall unsafe "hs_bindgen_9bb2531eaad57008" hs_bindgen_9bb2531eaad57008 ::
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
botan_mp_set_from_str = hs_bindgen_9bb2531eaad57008

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_set_from_radix_str@
foreign import ccall unsafe "hs_bindgen_050631db9df13fa3" hs_bindgen_050631db9df13fa3 ::
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
  hs_bindgen_050631db9df13fa3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_num_bits@
foreign import ccall unsafe "hs_bindgen_4c9e8b852ab9a45c" hs_bindgen_4c9e8b852ab9a45c ::
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
botan_mp_num_bits = hs_bindgen_4c9e8b852ab9a45c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_num_bytes@
foreign import ccall unsafe "hs_bindgen_a88934bf693b6213" hs_bindgen_a88934bf693b6213 ::
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
botan_mp_num_bytes = hs_bindgen_a88934bf693b6213

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_to_bin@
foreign import ccall unsafe "hs_bindgen_e59fa720fcc53df4" hs_bindgen_e59fa720fcc53df4 ::
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
botan_mp_to_bin = hs_bindgen_e59fa720fcc53df4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_from_bin@
foreign import ccall unsafe "hs_bindgen_4be761ecc31af4ba" hs_bindgen_4be761ecc31af4ba ::
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
  hs_bindgen_4be761ecc31af4ba

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
                                                        hs_bindgen_4be761ecc31af4ba x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_to_uint32@
foreign import ccall unsafe "hs_bindgen_ba389f1b156b3967" hs_bindgen_ba389f1b156b3967 ::
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
botan_mp_to_uint32 = hs_bindgen_ba389f1b156b3967

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_positive@
foreign import ccall unsafe "hs_bindgen_d83cc37169200644" hs_bindgen_d83cc37169200644 ::
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
botan_mp_is_positive = hs_bindgen_d83cc37169200644

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_negative@
foreign import ccall unsafe "hs_bindgen_d10b2350a7f37e34" hs_bindgen_d10b2350a7f37e34 ::
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
botan_mp_is_negative = hs_bindgen_d10b2350a7f37e34

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_flip_sign@
foreign import ccall unsafe "hs_bindgen_389e0a8429c92faa" hs_bindgen_389e0a8429c92faa ::
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
botan_mp_flip_sign = hs_bindgen_389e0a8429c92faa

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_zero@
foreign import ccall unsafe "hs_bindgen_82babc1e99d4d991" hs_bindgen_82babc1e99d4d991 ::
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
botan_mp_is_zero = hs_bindgen_82babc1e99d4d991

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_odd@
foreign import ccall unsafe "hs_bindgen_ec090b31aa2e4f22" hs_bindgen_ec090b31aa2e4f22 ::
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
botan_mp_is_odd = hs_bindgen_ec090b31aa2e4f22

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_even@
foreign import ccall unsafe "hs_bindgen_d196ef539512654c" hs_bindgen_d196ef539512654c ::
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
botan_mp_is_even = hs_bindgen_d196ef539512654c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_add_u32@
foreign import ccall unsafe "hs_bindgen_87a7b70ab0769fc4" hs_bindgen_87a7b70ab0769fc4 ::
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
botan_mp_add_u32 = hs_bindgen_87a7b70ab0769fc4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_sub_u32@
foreign import ccall unsafe "hs_bindgen_937d5fc22c457044" hs_bindgen_937d5fc22c457044 ::
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
botan_mp_sub_u32 = hs_bindgen_937d5fc22c457044

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_add@
foreign import ccall unsafe "hs_bindgen_8320ca0834c3a456" hs_bindgen_8320ca0834c3a456 ::
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
botan_mp_add = hs_bindgen_8320ca0834c3a456

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_sub@
foreign import ccall unsafe "hs_bindgen_04fabc2dd409fe15" hs_bindgen_04fabc2dd409fe15 ::
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
botan_mp_sub = hs_bindgen_04fabc2dd409fe15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_mul@
foreign import ccall unsafe "hs_bindgen_f2ec11843a7cbe03" hs_bindgen_f2ec11843a7cbe03 ::
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
botan_mp_mul = hs_bindgen_f2ec11843a7cbe03

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_div@
foreign import ccall unsafe "hs_bindgen_728ddaa346730a0d" hs_bindgen_728ddaa346730a0d ::
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
botan_mp_div = hs_bindgen_728ddaa346730a0d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_mod_mul@
foreign import ccall unsafe "hs_bindgen_404a12eabb0cf3d1" hs_bindgen_404a12eabb0cf3d1 ::
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
botan_mp_mod_mul = hs_bindgen_404a12eabb0cf3d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_equal@
foreign import ccall unsafe "hs_bindgen_6c39e83b29e90fc8" hs_bindgen_6c39e83b29e90fc8 ::
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
botan_mp_equal = hs_bindgen_6c39e83b29e90fc8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_cmp@
foreign import ccall unsafe "hs_bindgen_6305754fde7cd020" hs_bindgen_6305754fde7cd020 ::
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
botan_mp_cmp = hs_bindgen_6305754fde7cd020

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_swap@
foreign import ccall unsafe "hs_bindgen_717a118082c09647" hs_bindgen_717a118082c09647 ::
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
botan_mp_swap = hs_bindgen_717a118082c09647

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_powmod@
foreign import ccall unsafe "hs_bindgen_6091c2ff1eccec4e" hs_bindgen_6091c2ff1eccec4e ::
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
botan_mp_powmod = hs_bindgen_6091c2ff1eccec4e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_lshift@
foreign import ccall unsafe "hs_bindgen_1a828c21e2ac0ef8" hs_bindgen_1a828c21e2ac0ef8 ::
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
botan_mp_lshift = hs_bindgen_1a828c21e2ac0ef8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_rshift@
foreign import ccall unsafe "hs_bindgen_409e775b6fe1caee" hs_bindgen_409e775b6fe1caee ::
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
botan_mp_rshift = hs_bindgen_409e775b6fe1caee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_mod_inverse@
foreign import ccall unsafe "hs_bindgen_8499792d1ff389b7" hs_bindgen_8499792d1ff389b7 ::
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
botan_mp_mod_inverse = hs_bindgen_8499792d1ff389b7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_rand_bits@
foreign import ccall unsafe "hs_bindgen_675f85197d1b7a97" hs_bindgen_675f85197d1b7a97 ::
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
botan_mp_rand_bits = hs_bindgen_675f85197d1b7a97

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_rand_range@
foreign import ccall unsafe "hs_bindgen_74584b3fcf99aefb" hs_bindgen_74584b3fcf99aefb ::
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
botan_mp_rand_range = hs_bindgen_74584b3fcf99aefb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_gcd@
foreign import ccall unsafe "hs_bindgen_054c3d2c2603032d" hs_bindgen_054c3d2c2603032d ::
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
botan_mp_gcd = hs_bindgen_054c3d2c2603032d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_is_prime@
foreign import ccall unsafe "hs_bindgen_a9590a48656257e5" hs_bindgen_a9590a48656257e5 ::
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
botan_mp_is_prime = hs_bindgen_a9590a48656257e5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_get_bit@
foreign import ccall unsafe "hs_bindgen_486e063e46b49de8" hs_bindgen_486e063e46b49de8 ::
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
botan_mp_get_bit = hs_bindgen_486e063e46b49de8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_set_bit@
foreign import ccall unsafe "hs_bindgen_9d282dc855b85047" hs_bindgen_9d282dc855b85047 ::
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
botan_mp_set_bit = hs_bindgen_9d282dc855b85047

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mp_clear_bit@
foreign import ccall unsafe "hs_bindgen_0eb9b3dee3447747" hs_bindgen_0eb9b3dee3447747 ::
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
botan_mp_clear_bit = hs_bindgen_0eb9b3dee3447747

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_bcrypt_generate@
foreign import ccall unsafe "hs_bindgen_824e25a74d21d3fe" hs_bindgen_824e25a74d21d3fe ::
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
botan_bcrypt_generate = hs_bindgen_824e25a74d21d3fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_bcrypt_is_valid@
foreign import ccall unsafe "hs_bindgen_68fc45ce2dc5f8f2" hs_bindgen_68fc45ce2dc5f8f2 ::
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
botan_bcrypt_is_valid = hs_bindgen_68fc45ce2dc5f8f2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create@
foreign import ccall unsafe "hs_bindgen_f29636716dabd219" hs_bindgen_f29636716dabd219 ::
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
botan_privkey_create = hs_bindgen_f29636716dabd219

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_check_key@
foreign import ccall unsafe "hs_bindgen_6be6fe1b9f397ffc" hs_bindgen_6be6fe1b9f397ffc ::
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
botan_privkey_check_key = hs_bindgen_6be6fe1b9f397ffc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_rsa@
foreign import ccall unsafe "hs_bindgen_06ccd3492d70ac7f" hs_bindgen_06ccd3492d70ac7f ::
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
  hs_bindgen_06ccd3492d70ac7f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_ecdsa@
foreign import ccall unsafe "hs_bindgen_eb40e129dd40675d" hs_bindgen_eb40e129dd40675d ::
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
  hs_bindgen_eb40e129dd40675d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_ecdh@
foreign import ccall unsafe "hs_bindgen_cf5692b6f6ba28c6" hs_bindgen_cf5692b6f6ba28c6 ::
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
  hs_bindgen_cf5692b6f6ba28c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_mceliece@
foreign import ccall unsafe "hs_bindgen_29eb57a39bf3d80e" hs_bindgen_29eb57a39bf3d80e ::
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
  hs_bindgen_29eb57a39bf3d80e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_dh@
foreign import ccall unsafe "hs_bindgen_c76cee3dc4a08a30" hs_bindgen_c76cee3dc4a08a30 ::
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
botan_privkey_create_dh = hs_bindgen_c76cee3dc4a08a30

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_dsa@
foreign import ccall unsafe "hs_bindgen_9285ff6388833e74" hs_bindgen_9285ff6388833e74 ::
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
  hs_bindgen_9285ff6388833e74

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_create_elgamal@
foreign import ccall unsafe "hs_bindgen_d134bcc4fa5b8f26" hs_bindgen_d134bcc4fa5b8f26 ::
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
  hs_bindgen_d134bcc4fa5b8f26

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load@
foreign import ccall unsafe "hs_bindgen_145682c5ff1eac9b" hs_bindgen_145682c5ff1eac9b ::
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
  hs_bindgen_145682c5ff1eac9b

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
                                                            hs_bindgen_145682c5ff1eac9b x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_destroy@
foreign import ccall unsafe "hs_bindgen_0865d929151b4ac8" hs_bindgen_0865d929151b4ac8 ::
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
botan_privkey_destroy = hs_bindgen_0865d929151b4ac8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_export@
foreign import ccall unsafe "hs_bindgen_3fc3eb237faa8ce6" hs_bindgen_3fc3eb237faa8ce6 ::
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
botan_privkey_export = hs_bindgen_3fc3eb237faa8ce6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_der@
foreign import ccall unsafe "hs_bindgen_f1ba2253ceb8ba0b" hs_bindgen_f1ba2253ceb8ba0b ::
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
botan_privkey_view_der = hs_bindgen_f1ba2253ceb8ba0b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_pem@
foreign import ccall unsafe "hs_bindgen_be97a5468efd5dc3" hs_bindgen_be97a5468efd5dc3 ::
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
botan_privkey_view_pem = hs_bindgen_be97a5468efd5dc3

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_algo_name@
foreign import ccall unsafe "hs_bindgen_1436d3016b3b6188" hs_bindgen_1436d3016b3b6188 ::
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
botan_privkey_algo_name = hs_bindgen_1436d3016b3b6188

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_export_encrypted@
foreign import ccall unsafe "hs_bindgen_1cace8491886db1f" hs_bindgen_1cace8491886db1f ::
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
  hs_bindgen_1cace8491886db1f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_export_encrypted_pbkdf_msec@
foreign import ccall unsafe "hs_bindgen_12470c8c51653b15" hs_bindgen_12470c8c51653b15 ::
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
  hs_bindgen_12470c8c51653b15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_export_encrypted_pbkdf_iter@
foreign import ccall unsafe "hs_bindgen_c8cfe0b7750d0c09" hs_bindgen_c8cfe0b7750d0c09 ::
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
  hs_bindgen_c8cfe0b7750d0c09

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_encrypted_der@
foreign import ccall unsafe "hs_bindgen_adc35efc8160328b" hs_bindgen_adc35efc8160328b ::
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
  hs_bindgen_adc35efc8160328b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_encrypted_der_timed@
foreign import ccall unsafe "hs_bindgen_65795285cd8f63ce" hs_bindgen_65795285cd8f63ce ::
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
  hs_bindgen_65795285cd8f63ce

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_encrypted_pem@
foreign import ccall unsafe "hs_bindgen_ca9073790f7adffe" hs_bindgen_ca9073790f7adffe ::
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
  hs_bindgen_ca9073790f7adffe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_view_encrypted_pem_timed@
foreign import ccall unsafe "hs_bindgen_b01041027d416aed" hs_bindgen_b01041027d416aed ::
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
  hs_bindgen_b01041027d416aed

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load@
foreign import ccall unsafe "hs_bindgen_b38f292d770c3894" hs_bindgen_b38f292d770c3894 ::
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
  hs_bindgen_b38f292d770c3894

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
                                                        hs_bindgen_b38f292d770c3894 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_export_pubkey@
foreign import ccall unsafe "hs_bindgen_623dc9c4cccb6f4b" hs_bindgen_623dc9c4cccb6f4b ::
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
  hs_bindgen_623dc9c4cccb6f4b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_export@
foreign import ccall unsafe "hs_bindgen_29a4ea8ac4d94014" hs_bindgen_29a4ea8ac4d94014 ::
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
botan_pubkey_export = hs_bindgen_29a4ea8ac4d94014

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_view_der@
foreign import ccall unsafe "hs_bindgen_e22fabf98b7cefdb" hs_bindgen_e22fabf98b7cefdb ::
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
botan_pubkey_view_der = hs_bindgen_e22fabf98b7cefdb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_view_pem@
foreign import ccall unsafe "hs_bindgen_49ddc4f8ab98655b" hs_bindgen_49ddc4f8ab98655b ::
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
botan_pubkey_view_pem = hs_bindgen_49ddc4f8ab98655b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_algo_name@
foreign import ccall unsafe "hs_bindgen_7d68e2ff618bdac6" hs_bindgen_7d68e2ff618bdac6 ::
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
botan_pubkey_algo_name = hs_bindgen_7d68e2ff618bdac6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_check_key@
foreign import ccall unsafe "hs_bindgen_04690e40f7484569" hs_bindgen_04690e40f7484569 ::
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
botan_pubkey_check_key = hs_bindgen_04690e40f7484569

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_estimated_strength@
foreign import ccall unsafe "hs_bindgen_e074794c70b86dee" hs_bindgen_e074794c70b86dee ::
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
  hs_bindgen_e074794c70b86dee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_fingerprint@
foreign import ccall unsafe "hs_bindgen_72a437385e94e038" hs_bindgen_72a437385e94e038 ::
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
  hs_bindgen_72a437385e94e038

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_destroy@
foreign import ccall unsafe "hs_bindgen_ec04026678587685" hs_bindgen_ec04026678587685 ::
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
botan_pubkey_destroy = hs_bindgen_ec04026678587685

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_get_field@
foreign import ccall unsafe "hs_bindgen_fb3e700c78ee9c13" hs_bindgen_fb3e700c78ee9c13 ::
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
botan_pubkey_get_field = hs_bindgen_fb3e700c78ee9c13

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_get_field@
foreign import ccall unsafe "hs_bindgen_ae7013bb21d20e87" hs_bindgen_ae7013bb21d20e87 ::
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
botan_privkey_get_field = hs_bindgen_ae7013bb21d20e87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_a4370e7019ec5cec" hs_bindgen_a4370e7019ec5cec ::
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
botan_privkey_load_rsa = hs_bindgen_a4370e7019ec5cec

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_rsa_pkcs1@
foreign import ccall unsafe "hs_bindgen_3feb361d05574e21" hs_bindgen_3feb361d05574e21 ::
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
  hs_bindgen_3feb361d05574e21

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
                                                        hs_bindgen_3feb361d05574e21 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_p@
foreign import ccall unsafe "hs_bindgen_9239ce6952072d19" hs_bindgen_9239ce6952072d19 ::
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
botan_privkey_rsa_get_p = hs_bindgen_9239ce6952072d19

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_q@
foreign import ccall unsafe "hs_bindgen_f6b9c2556a4a9856" hs_bindgen_f6b9c2556a4a9856 ::
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
botan_privkey_rsa_get_q = hs_bindgen_f6b9c2556a4a9856

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_d@
foreign import ccall unsafe "hs_bindgen_60e41a938ecce9a0" hs_bindgen_60e41a938ecce9a0 ::
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
botan_privkey_rsa_get_d = hs_bindgen_60e41a938ecce9a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_b0f13c772bfd45d2" hs_bindgen_b0f13c772bfd45d2 ::
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
botan_privkey_rsa_get_n = hs_bindgen_b0f13c772bfd45d2

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_c238cee3b846cb87" hs_bindgen_c238cee3b846cb87 ::
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
botan_privkey_rsa_get_e = hs_bindgen_c238cee3b846cb87

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_rsa_get_privkey@
foreign import ccall unsafe "hs_bindgen_60b1085b6e10a73b" hs_bindgen_60b1085b6e10a73b ::
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
  hs_bindgen_60b1085b6e10a73b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_rsa@
foreign import ccall unsafe "hs_bindgen_b543885c6c25f4b9" hs_bindgen_b543885c6c25f4b9 ::
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
botan_pubkey_load_rsa = hs_bindgen_b543885c6c25f4b9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_rsa_get_e@
foreign import ccall unsafe "hs_bindgen_e02eccf6f17c7fcf" hs_bindgen_e02eccf6f17c7fcf ::
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
botan_pubkey_rsa_get_e = hs_bindgen_e02eccf6f17c7fcf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_rsa_get_n@
foreign import ccall unsafe "hs_bindgen_e94890f4ad2ac5d0" hs_bindgen_e94890f4ad2ac5d0 ::
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
botan_pubkey_rsa_get_n = hs_bindgen_e94890f4ad2ac5d0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_1e9cac36751bc8e8" hs_bindgen_1e9cac36751bc8e8 ::
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
botan_privkey_load_dsa = hs_bindgen_1e9cac36751bc8e8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_dsa@
foreign import ccall unsafe "hs_bindgen_70c0b0eddfd0aac8" hs_bindgen_70c0b0eddfd0aac8 ::
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
botan_pubkey_load_dsa = hs_bindgen_70c0b0eddfd0aac8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_dsa_get_x@
foreign import ccall unsafe "hs_bindgen_b92cf58086d52f41" hs_bindgen_b92cf58086d52f41 ::
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
botan_privkey_dsa_get_x = hs_bindgen_b92cf58086d52f41

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_dsa_get_p@
foreign import ccall unsafe "hs_bindgen_198d1517dee7e7a4" hs_bindgen_198d1517dee7e7a4 ::
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
botan_pubkey_dsa_get_p = hs_bindgen_198d1517dee7e7a4

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_dsa_get_q@
foreign import ccall unsafe "hs_bindgen_55e6c39ea6d3fe05" hs_bindgen_55e6c39ea6d3fe05 ::
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
botan_pubkey_dsa_get_q = hs_bindgen_55e6c39ea6d3fe05

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_dsa_get_g@
foreign import ccall unsafe "hs_bindgen_a361f3b9bdccf148" hs_bindgen_a361f3b9bdccf148 ::
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
botan_pubkey_dsa_get_g = hs_bindgen_a361f3b9bdccf148

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_dsa_get_y@
foreign import ccall unsafe "hs_bindgen_c103df7a56e0049c" hs_bindgen_c103df7a56e0049c ::
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
botan_pubkey_dsa_get_y = hs_bindgen_c103df7a56e0049c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_dh@
foreign import ccall unsafe "hs_bindgen_13a98a6c42087fa7" hs_bindgen_13a98a6c42087fa7 ::
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
botan_privkey_load_dh = hs_bindgen_13a98a6c42087fa7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_dh@
foreign import ccall unsafe "hs_bindgen_3a9727fb96babdd7" hs_bindgen_3a9727fb96babdd7 ::
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
botan_pubkey_load_dh = hs_bindgen_3a9727fb96babdd7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_59ba2add33a8f02c" hs_bindgen_59ba2add33a8f02c ::
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
  hs_bindgen_59ba2add33a8f02c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_elgamal@
foreign import ccall unsafe "hs_bindgen_aab9500c8d559f72" hs_bindgen_aab9500c8d559f72 ::
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
  hs_bindgen_aab9500c8d559f72

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_da76c75d0e07c34a" hs_bindgen_da76c75d0e07c34a ::
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
  hs_bindgen_da76c75d0e07c34a

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
                                                    hs_bindgen_da76c75d0e07c34a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_ed25519@
foreign import ccall unsafe "hs_bindgen_156cac709e97cdd9" hs_bindgen_156cac709e97cdd9 ::
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
  hs_bindgen_156cac709e97cdd9

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
                                                    hs_bindgen_156cac709e97cdd9 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_ed25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_4644b88c0a4a71c7" hs_bindgen_4644b88c0a4a71c7 ::
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
  hs_bindgen_4644b88c0a4a71c7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_ed25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_cb8ab939c7c29d1c" hs_bindgen_cb8ab939c7c29d1c ::
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
  hs_bindgen_cb8ab939c7c29d1c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_627daeac85418594" hs_bindgen_627daeac85418594 ::
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
  hs_bindgen_627daeac85418594

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
                                                    hs_bindgen_627daeac85418594 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_x25519@
foreign import ccall unsafe "hs_bindgen_2e74e9ddb58f3ba3" hs_bindgen_2e74e9ddb58f3ba3 ::
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
  hs_bindgen_2e74e9ddb58f3ba3

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
                                                    hs_bindgen_2e74e9ddb58f3ba3 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr2))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_x25519_get_privkey@
foreign import ccall unsafe "hs_bindgen_f76b440205cfabe7" hs_bindgen_f76b440205cfabe7 ::
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
  hs_bindgen_f76b440205cfabe7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_x25519_get_pubkey@
foreign import ccall unsafe "hs_bindgen_942806143cfdf66c" hs_bindgen_942806143cfdf66c ::
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
  hs_bindgen_942806143cfdf66c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_ece85749646e9689" hs_bindgen_ece85749646e9689 ::
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
  hs_bindgen_ece85749646e9689

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_ecdsa@
foreign import ccall unsafe "hs_bindgen_fd42014cccac9915" hs_bindgen_fd42014cccac9915 ::
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
botan_pubkey_load_ecdsa = hs_bindgen_fd42014cccac9915

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_386d8446a5bc8713" hs_bindgen_386d8446a5bc8713 ::
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
botan_pubkey_load_ecdh = hs_bindgen_386d8446a5bc8713

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_ecdh@
foreign import ccall unsafe "hs_bindgen_30ad05f74ca4cc83" hs_bindgen_30ad05f74ca4cc83 ::
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
botan_privkey_load_ecdh = hs_bindgen_30ad05f74ca4cc83

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_4219f03890a454e6" hs_bindgen_4219f03890a454e6 ::
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
botan_pubkey_load_sm2 = hs_bindgen_4219f03890a454e6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_sm2@
foreign import ccall unsafe "hs_bindgen_4eea3b9a7b62c986" hs_bindgen_4eea3b9a7b62c986 ::
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
botan_privkey_load_sm2 = hs_bindgen_4eea3b9a7b62c986

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_56749a0c36eb5761" hs_bindgen_56749a0c36eb5761 ::
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
  hs_bindgen_56749a0c36eb5761

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_privkey_load_sm2_enc@
foreign import ccall unsafe "hs_bindgen_e4f6ba3c4c2fdfd8" hs_bindgen_e4f6ba3c4c2fdfd8 ::
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
  hs_bindgen_e4f6ba3c4c2fdfd8

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_sm2_compute_za@
foreign import ccall unsafe "hs_bindgen_f94bcaa769e0e2fe" hs_bindgen_f94bcaa769e0e2fe ::
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
  hs_bindgen_f94bcaa769e0e2fe

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pubkey_view_ec_public_point@
foreign import ccall unsafe "hs_bindgen_0e235be46a7ff659" hs_bindgen_0e235be46a7ff659 ::
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
  hs_bindgen_0e235be46a7ff659

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_encrypt_create@
foreign import ccall unsafe "hs_bindgen_84cce397dfc5f030" hs_bindgen_84cce397dfc5f030 ::
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
  hs_bindgen_84cce397dfc5f030

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_bd67ffcf5d3bbdba" hs_bindgen_bd67ffcf5d3bbdba ::
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
  hs_bindgen_bd67ffcf5d3bbdba

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_encrypt_output_length@
foreign import ccall unsafe "hs_bindgen_8cfcffd2b60f2798" hs_bindgen_8cfcffd2b60f2798 ::
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
  hs_bindgen_8cfcffd2b60f2798

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_encrypt@
foreign import ccall unsafe "hs_bindgen_5cb2b790f538a2be" hs_bindgen_5cb2b790f538a2be ::
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
  hs_bindgen_5cb2b790f538a2be

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
                                                              hs_bindgen_5cb2b790f538a2be x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_decrypt_create@
foreign import ccall unsafe "hs_bindgen_b1b77b24043b39af" hs_bindgen_b1b77b24043b39af ::
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
  hs_bindgen_b1b77b24043b39af

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_16e49f4a57ab6040" hs_bindgen_16e49f4a57ab6040 ::
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
  hs_bindgen_16e49f4a57ab6040

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_decrypt_output_length@
foreign import ccall unsafe "hs_bindgen_529644687c0851d6" hs_bindgen_529644687c0851d6 ::
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
  hs_bindgen_529644687c0851d6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_decrypt@
foreign import ccall unsafe "hs_bindgen_9ffb3d9eced9fe75" hs_bindgen_9ffb3d9eced9fe75 ::
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
  hs_bindgen_9ffb3d9eced9fe75

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
                                                            hs_bindgen_9ffb3d9eced9fe75 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_sign_create@
foreign import ccall unsafe "hs_bindgen_c7208d8b32e52edf" hs_bindgen_c7208d8b32e52edf ::
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
botan_pk_op_sign_create = hs_bindgen_c7208d8b32e52edf

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_sign_destroy@
foreign import ccall unsafe "hs_bindgen_038c55b2eec6445b" hs_bindgen_038c55b2eec6445b ::
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
  hs_bindgen_038c55b2eec6445b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_sign_output_length@
foreign import ccall unsafe "hs_bindgen_3d469a3bfd0cd19a" hs_bindgen_3d469a3bfd0cd19a ::
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
  hs_bindgen_3d469a3bfd0cd19a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_sign_update@
foreign import ccall unsafe "hs_bindgen_3a6fe2e9cccdf76b" hs_bindgen_3a6fe2e9cccdf76b ::
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
  hs_bindgen_3a6fe2e9cccdf76b

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
                                                        hs_bindgen_3a6fe2e9cccdf76b x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_sign_finish@
foreign import ccall unsafe "hs_bindgen_bcc1e7289876da2f" hs_bindgen_bcc1e7289876da2f ::
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
botan_pk_op_sign_finish = hs_bindgen_bcc1e7289876da2f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_verify_create@
foreign import ccall unsafe "hs_bindgen_7230c154b73ef167" hs_bindgen_7230c154b73ef167 ::
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
  hs_bindgen_7230c154b73ef167

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_verify_destroy@
foreign import ccall unsafe "hs_bindgen_c1a8f1c707dd0fa5" hs_bindgen_c1a8f1c707dd0fa5 ::
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
  hs_bindgen_c1a8f1c707dd0fa5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_verify_update@
foreign import ccall unsafe "hs_bindgen_e5eaca407607a791" hs_bindgen_e5eaca407607a791 ::
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
  hs_bindgen_e5eaca407607a791

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
                                                        hs_bindgen_e5eaca407607a791 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_verify_finish@
foreign import ccall unsafe "hs_bindgen_a951469f5a91eb53" hs_bindgen_a951469f5a91eb53 ::
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
  hs_bindgen_a951469f5a91eb53

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
                                                        hs_bindgen_a951469f5a91eb53 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement_create@
foreign import ccall unsafe "hs_bindgen_d3950a5488d5784e" hs_bindgen_d3950a5488d5784e ::
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
  hs_bindgen_d3950a5488d5784e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement_destroy@
foreign import ccall unsafe "hs_bindgen_5b97b3dfcdc2d911" hs_bindgen_5b97b3dfcdc2d911 ::
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
  hs_bindgen_5b97b3dfcdc2d911

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement_export_public@
foreign import ccall unsafe "hs_bindgen_5ba58bca9b0e77dc" hs_bindgen_5ba58bca9b0e77dc ::
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
  hs_bindgen_5ba58bca9b0e77dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement_view_public@
foreign import ccall unsafe "hs_bindgen_6742a42deebea5a1" hs_bindgen_6742a42deebea5a1 ::
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
  hs_bindgen_6742a42deebea5a1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement_size@
foreign import ccall unsafe "hs_bindgen_68797ed9db928901" hs_bindgen_68797ed9db928901 ::
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
  hs_bindgen_68797ed9db928901

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_key_agreement@
foreign import ccall unsafe "hs_bindgen_9a6a9c78b63eeb33" hs_bindgen_9a6a9c78b63eeb33 ::
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
  hs_bindgen_9a6a9c78b63eeb33

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
                                                                                                                hs_bindgen_9a6a9c78b63eeb33 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x6))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_encrypt_create@
foreign import ccall unsafe "hs_bindgen_8fd8540777c8ed6d" hs_bindgen_8fd8540777c8ed6d ::
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
  hs_bindgen_8fd8540777c8ed6d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_encrypt_destroy@
foreign import ccall unsafe "hs_bindgen_7716a4c0866ed246" hs_bindgen_7716a4c0866ed246 ::
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
  hs_bindgen_7716a4c0866ed246

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_encrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_ad8d06ee062ce57a" hs_bindgen_ad8d06ee062ce57a ::
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
  hs_bindgen_ad8d06ee062ce57a

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_encrypt_encapsulated_key_length@
foreign import ccall unsafe "hs_bindgen_2e5412392b6ab8dc" hs_bindgen_2e5412392b6ab8dc ::
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
  hs_bindgen_2e5412392b6ab8dc

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_encrypt_create_shared_key@
foreign import ccall unsafe "hs_bindgen_520a10376b5cffd3" hs_bindgen_520a10376b5cffd3 ::
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
  hs_bindgen_520a10376b5cffd3

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
                                                                    hs_bindgen_520a10376b5cffd3 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 x4 x5 x6 x7 x8)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_decrypt_create@
foreign import ccall unsafe "hs_bindgen_97573923bee0c1a0" hs_bindgen_97573923bee0c1a0 ::
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
  hs_bindgen_97573923bee0c1a0

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_decrypt_destroy@
foreign import ccall unsafe "hs_bindgen_acab7c3544794419" hs_bindgen_acab7c3544794419 ::
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
  hs_bindgen_acab7c3544794419

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_decrypt_shared_key_length@
foreign import ccall unsafe "hs_bindgen_7696e69c6aa264c6" hs_bindgen_7696e69c6aa264c6 ::
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
  hs_bindgen_7696e69c6aa264c6

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pk_op_kem_decrypt_shared_key@
foreign import ccall unsafe "hs_bindgen_2e86a13586756950" hs_bindgen_2e86a13586756950 ::
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
  hs_bindgen_2e86a13586756950

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
                                                                                                                  hs_bindgen_2e86a13586756950 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x4 x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_pkcs_hash_id@
foreign import ccall unsafe "hs_bindgen_1e5950991ed3e1d9" hs_bindgen_1e5950991ed3e1d9 ::
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
botan_pkcs_hash_id = hs_bindgen_1e5950991ed3e1d9

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mceies_encrypt@
foreign import ccall unsafe "hs_bindgen_e28214bae44c6251" hs_bindgen_e28214bae44c6251 ::
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
  hs_bindgen_e28214bae44c6251

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
                                                                                                                    hs_bindgen_e28214bae44c6251 x0 x1 x2 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr10) x4 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x6 x7 x8))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_mceies_decrypt@
foreign import ccall unsafe "hs_bindgen_8338743b2b24e771" hs_bindgen_8338743b2b24e771 ::
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
  hs_bindgen_8338743b2b24e771

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
                                                                                                                  hs_bindgen_8338743b2b24e771 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_load@
foreign import ccall unsafe "hs_bindgen_f1deef85025eff3e" hs_bindgen_f1deef85025eff3e ::
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
  hs_bindgen_f1deef85025eff3e

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
                                                        hs_bindgen_f1deef85025eff3e x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_load_file@
foreign import ccall unsafe "hs_bindgen_f4e0c10e0666f0c1" hs_bindgen_f4e0c10e0666f0c1 ::
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
  hs_bindgen_f4e0c10e0666f0c1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_destroy@
foreign import ccall unsafe "hs_bindgen_c5c4d21741875738" hs_bindgen_c5c4d21741875738 ::
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
botan_x509_cert_destroy = hs_bindgen_c5c4d21741875738

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_dup@
foreign import ccall unsafe "hs_bindgen_68829da068a548f5" hs_bindgen_68829da068a548f5 ::
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
botan_x509_cert_dup = hs_bindgen_68829da068a548f5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_time_starts@
foreign import ccall unsafe "hs_bindgen_a09c8f71693f1880" hs_bindgen_a09c8f71693f1880 ::
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
  hs_bindgen_a09c8f71693f1880

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_time_expires@
foreign import ccall unsafe "hs_bindgen_cc0e363581b558a7" hs_bindgen_cc0e363581b558a7 ::
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
  hs_bindgen_cc0e363581b558a7

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_not_before@
foreign import ccall unsafe "hs_bindgen_5cd5c3f02e0a58b1" hs_bindgen_5cd5c3f02e0a58b1 ::
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
  hs_bindgen_5cd5c3f02e0a58b1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_not_after@
foreign import ccall unsafe "hs_bindgen_e28cba74f627be2e" hs_bindgen_e28cba74f627be2e ::
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
  hs_bindgen_e28cba74f627be2e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_fingerprint@
foreign import ccall unsafe "hs_bindgen_210d4af4ba377a43" hs_bindgen_210d4af4ba377a43 ::
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
  hs_bindgen_210d4af4ba377a43

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_serial_number@
foreign import ccall unsafe "hs_bindgen_db77422855b17046" hs_bindgen_db77422855b17046 ::
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
  hs_bindgen_db77422855b17046

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_authority_key_id@
foreign import ccall unsafe "hs_bindgen_bf070ce8be37002f" hs_bindgen_bf070ce8be37002f ::
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
  hs_bindgen_bf070ce8be37002f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_subject_key_id@
foreign import ccall unsafe "hs_bindgen_6cd3823019ba075b" hs_bindgen_6cd3823019ba075b ::
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
  hs_bindgen_6cd3823019ba075b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_public_key_bits@
foreign import ccall unsafe "hs_bindgen_4003d8ff0f330ada" hs_bindgen_4003d8ff0f330ada ::
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
  hs_bindgen_4003d8ff0f330ada

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_view_public_key_bits@
foreign import ccall unsafe "hs_bindgen_2ff2109e2a48ff96" hs_bindgen_2ff2109e2a48ff96 ::
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
  hs_bindgen_2ff2109e2a48ff96

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_public_key@
foreign import ccall unsafe "hs_bindgen_ee989703a0c67e27" hs_bindgen_ee989703a0c67e27 ::
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
  hs_bindgen_ee989703a0c67e27

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_issuer_dn@
foreign import ccall unsafe "hs_bindgen_87ff05da0793a057" hs_bindgen_87ff05da0793a057 ::
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
  hs_bindgen_87ff05da0793a057

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_get_subject_dn@
foreign import ccall unsafe "hs_bindgen_ea7d597594d96638" hs_bindgen_ea7d597594d96638 ::
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
  hs_bindgen_ea7d597594d96638

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_to_string@
foreign import ccall unsafe "hs_bindgen_be6c6923475edd18" hs_bindgen_be6c6923475edd18 ::
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
  hs_bindgen_be6c6923475edd18

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_view_as_string@
foreign import ccall unsafe "hs_bindgen_576deb4f28e1488f" hs_bindgen_576deb4f28e1488f ::
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
  hs_bindgen_576deb4f28e1488f

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_allowed_usage@
foreign import ccall unsafe "hs_bindgen_0df94c47b0227d71" hs_bindgen_0df94c47b0227d71 ::
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
  hs_bindgen_0df94c47b0227d71

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_hostname_match@
foreign import ccall unsafe "hs_bindgen_396cd55f0d20550c" hs_bindgen_396cd55f0d20550c ::
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
  hs_bindgen_396cd55f0d20550c

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_verify@
foreign import ccall unsafe "hs_bindgen_03285da4f53028bb" hs_bindgen_03285da4f53028bb ::
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
botan_x509_cert_verify = hs_bindgen_03285da4f53028bb

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_validation_status@
foreign import ccall unsafe "hs_bindgen_4325e4a23286212d" hs_bindgen_4325e4a23286212d ::
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
  hs_bindgen_4325e4a23286212d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_crl_load_file@
foreign import ccall unsafe "hs_bindgen_2f9681570f4a388d" hs_bindgen_2f9681570f4a388d ::
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
  hs_bindgen_2f9681570f4a388d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_crl_load@
foreign import ccall unsafe "hs_bindgen_cfc1d4d70d3b7d2a" hs_bindgen_cfc1d4d70d3b7d2a ::
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
  hs_bindgen_cfc1d4d70d3b7d2a

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
                                                        hs_bindgen_cfc1d4d70d3b7d2a x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr3) x2)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_crl_destroy@
foreign import ccall unsafe "hs_bindgen_ee8644d99725f073" hs_bindgen_ee8644d99725f073 ::
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
botan_x509_crl_destroy = hs_bindgen_ee8644d99725f073

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_is_revoked@
foreign import ccall unsafe "hs_bindgen_8e8376aa6c2f3096" hs_bindgen_8e8376aa6c2f3096 ::
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
botan_x509_is_revoked = hs_bindgen_8e8376aa6c2f3096

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_x509_cert_verify_with_crl@
foreign import ccall unsafe "hs_bindgen_9550d7d84bad350d" hs_bindgen_9550d7d84bad350d ::
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
  hs_bindgen_9550d7d84bad350d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_key_wrap3394@
foreign import ccall unsafe "hs_bindgen_e5bc5fa706d03290" hs_bindgen_e5bc5fa706d03290 ::
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
  hs_bindgen_e5bc5fa706d03290

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
                                                                                                              hs_bindgen_e5bc5fa706d03290 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_key_unwrap3394@
foreign import ccall unsafe "hs_bindgen_5bf6a4aa2c12d606" hs_bindgen_5bf6a4aa2c12d606 ::
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
  hs_bindgen_5bf6a4aa2c12d606

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
                                                                                                              hs_bindgen_5bf6a4aa2c12d606 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr7) x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_nist_kw_enc@
foreign import ccall unsafe "hs_bindgen_2691416a1849d8d6" hs_bindgen_2691416a1849d8d6 ::
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
  hs_bindgen_2691416a1849d8d6

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
                                                                                                                  hs_bindgen_2691416a1849d8d6 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_nist_kw_dec@
foreign import ccall unsafe "hs_bindgen_b94c87abddb1c3bd" hs_bindgen_b94c87abddb1c3bd ::
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
  hs_bindgen_b94c87abddb1c3bd

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
                                                                                                                  hs_bindgen_b94c87abddb1c3bd x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr9) x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x5 x6 x7))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hotp_init@
foreign import ccall unsafe "hs_bindgen_b0869e7d1ed2c3ec" hs_bindgen_b0869e7d1ed2c3ec ::
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
botan_hotp_init_wrapper = hs_bindgen_b0869e7d1ed2c3ec

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
                                                            hs_bindgen_b0869e7d1ed2c3ec x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hotp_destroy@
foreign import ccall unsafe "hs_bindgen_a4122819b6f615ee" hs_bindgen_a4122819b6f615ee ::
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
botan_hotp_destroy = hs_bindgen_a4122819b6f615ee

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hotp_generate@
foreign import ccall unsafe "hs_bindgen_8a970e1c8ceadae5" hs_bindgen_8a970e1c8ceadae5 ::
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
botan_hotp_generate = hs_bindgen_8a970e1c8ceadae5

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_hotp_check@
foreign import ccall unsafe "hs_bindgen_edfe9ab0e22d611b" hs_bindgen_edfe9ab0e22d611b ::
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
botan_hotp_check = hs_bindgen_edfe9ab0e22d611b

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_totp_init@
foreign import ccall unsafe "hs_bindgen_498859899ae7f77f" hs_bindgen_498859899ae7f77f ::
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
botan_totp_init_wrapper = hs_bindgen_498859899ae7f77f

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
                                                              hs_bindgen_498859899ae7f77f x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x2 x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_totp_destroy@
foreign import ccall unsafe "hs_bindgen_72fe5154d6d956d1" hs_bindgen_72fe5154d6d956d1 ::
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
botan_totp_destroy = hs_bindgen_72fe5154d6d956d1

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_totp_generate@
foreign import ccall unsafe "hs_bindgen_4bc7ba45ba382481" hs_bindgen_4bc7ba45ba382481 ::
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
botan_totp_generate = hs_bindgen_4bc7ba45ba382481

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_totp_check@
foreign import ccall unsafe "hs_bindgen_712de19f34689e07" hs_bindgen_712de19f34689e07 ::
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
botan_totp_check = hs_bindgen_712de19f34689e07

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_fpe_fe1_init@
foreign import ccall unsafe "hs_bindgen_34bd55593172bfef" hs_bindgen_34bd55593172bfef ::
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
  hs_bindgen_34bd55593172bfef

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
                                                              hs_bindgen_34bd55593172bfef x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr6) x3 x4 x5)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_fpe_destroy@
foreign import ccall unsafe "hs_bindgen_04cc072a948c056d" hs_bindgen_04cc072a948c056d ::
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
botan_fpe_destroy = hs_bindgen_04cc072a948c056d

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_fpe_encrypt@
foreign import ccall unsafe "hs_bindgen_497f2719046f9fcc" hs_bindgen_497f2719046f9fcc ::
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
  hs_bindgen_497f2719046f9fcc

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
                                                          hs_bindgen_497f2719046f9fcc x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_fpe_decrypt@
foreign import ccall unsafe "hs_bindgen_0b7b698271ad8e23" hs_bindgen_0b7b698271ad8e23 ::
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
  hs_bindgen_0b7b698271ad8e23

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
                                                          hs_bindgen_0b7b698271ad8e23 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr4) x3)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_server_session_init@
foreign import ccall unsafe "hs_bindgen_e90b4ac55f684b15" hs_bindgen_e90b4ac55f684b15 ::
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
  hs_bindgen_e90b4ac55f684b15

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_server_session_destroy@
foreign import ccall unsafe "hs_bindgen_c5b86161d7103278" hs_bindgen_c5b86161d7103278 ::
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
  hs_bindgen_c5b86161d7103278

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_server_session_step1@
foreign import ccall unsafe "hs_bindgen_eca3422d1b410999" hs_bindgen_eca3422d1b410999 ::
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
  hs_bindgen_eca3422d1b410999

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
                                                                  hs_bindgen_eca3422d1b410999 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x2 x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_server_session_step2@
foreign import ccall unsafe "hs_bindgen_6d7c44e5669ac709" hs_bindgen_6d7c44e5669ac709 ::
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
  hs_bindgen_6d7c44e5669ac709

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
                                                            hs_bindgen_6d7c44e5669ac709 x0 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr5) x2 x3 x4)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_generate_verifier@
foreign import ccall unsafe "hs_bindgen_2925d593022349d9" hs_bindgen_2925d593022349d9 ::
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
  hs_bindgen_2925d593022349d9

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
                                                                  hs_bindgen_2925d593022349d9 x0 x1 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr8) x3 x4 x5 x6 x7)

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_client_agree@
foreign import ccall unsafe "hs_bindgen_cc418ea8ca4aeee9" hs_bindgen_cc418ea8ca4aeee9 ::
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
  hs_bindgen_cc418ea8ca4aeee9

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
                                                                                                                            hs_bindgen_cc418ea8ca4aeee9 x0 x1 x2 x3 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr14) x5 (HsBindgen.Runtime.ConstPtr.ConstPtr ptr13) x7 x8 x9 x10 x11 x12))

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_srp6_group_size@
foreign import ccall unsafe "hs_bindgen_d71edc913a88236e" hs_bindgen_d71edc913a88236e ::
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
botan_srp6_group_size = hs_bindgen_d71edc913a88236e

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_zfec_encode@
foreign import ccall unsafe "hs_bindgen_5f04a99f419f18cd" hs_bindgen_5f04a99f419f18cd ::
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
botan_zfec_encode = hs_bindgen_5f04a99f419f18cd

-- __unique:__ @botanbindings_Botan.Bindings.Generated.Botan_3_0_0_Unsafe_botan_zfec_decode@
foreign import ccall unsafe "hs_bindgen_01b90dd6ba07d1f7" hs_bindgen_01b90dd6ba07d1f7 ::
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
botan_zfec_decode = hs_bindgen_01b90dd6ba07d1f7
