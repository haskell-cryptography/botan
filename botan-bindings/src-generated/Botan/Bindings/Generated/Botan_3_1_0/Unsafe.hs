{-# LANGUAGE CApiFFI           #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# OPTIONS_HADDOCK prune #-}

module Botan.Bindings.Generated.Botan_3_1_0.Unsafe where

import           Botan.Bindings.Generated.Botan_3_1_0
import           Data.Void (Void)
import qualified Foreign.C as FC
import qualified GHC.Ptr as Ptr
import qualified HsBindgen.Runtime.ConstantArray
import qualified HsBindgen.Runtime.IncompleteArray
import qualified HsBindgen.Runtime.Prelude
import           Prelude (IO)

$(HsBindgen.Runtime.Prelude.addCSource (HsBindgen.Runtime.Prelude.unlines
  [ "#include <botan/ffi.h>"
  , "char const *hs_bindgen_botanbindings_0c82fc401e5bfe64 ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_error_description(arg1);"
  , "}"
  , "char const *hs_bindgen_botanbindings_e6b26172dbb9a618 (void)"
  , "{"
  , "  return botan_error_last_exception_message();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_7b5df6e254e8e64b (void)"
  , "{"
  , "  return botan_ffi_api_version();"
  , "}"
  , "signed int hs_bindgen_botanbindings_12feaf12f708aeeb ("
  , "  uint32_t arg1"
  , ")"
  , "{"
  , "  return botan_ffi_supports_api(arg1);"
  , "}"
  , "char const *hs_bindgen_botanbindings_3b1b851ecd5f4edf (void)"
  , "{"
  , "  return botan_version_string();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_afac5324ab0f80a1 (void)"
  , "{"
  , "  return botan_version_major();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_d4965542dceea12b (void)"
  , "{"
  , "  return botan_version_minor();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_5b77535169a70292 (void)"
  , "{"
  , "  return botan_version_patch();"
  , "}"
  , "uint32_t hs_bindgen_botanbindings_83f09064e71b8b7b (void)"
  , "{"
  , "  return botan_version_datestamp();"
  , "}"
  , "signed int hs_bindgen_botanbindings_567d1218ab02d880 ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_constant_time_compare(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_786938a9176fbb3e ("
  , "  uint8_t const *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_same_mem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a8d9c66d3c81cbb0 ("
  , "  void *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_scrub_mem(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dfdbff16a0138628 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_hex_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bb8cfe6376032a08 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_hex_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_eeb86d1a81a85c61 ("
  , "  uint8_t const *arg1,"
  , "  size_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_encode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f96312ef73835266 ("
  , "  char const *arg1,"
  , "  size_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_base64_decode(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8f7046e775883c09 ("
  , "  botan_rng_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_rng_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e97802a17ed29089 ("
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
  , "signed int hs_bindgen_botanbindings_34d4b16094fdf300 ("
  , "  botan_rng_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_get(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7c2ae956071370c6 ("
  , "  uint8_t *arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_system_rng_get(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_420c05ea6784a346 ("
  , "  botan_rng_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_rng_reseed(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_005ec185d6c6ffee ("
  , "  botan_rng_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_reseed_from_rng(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_15514d793f42a87e ("
  , "  botan_rng_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_rng_add_entropy(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5223bbead51e892d ("
  , "  botan_rng_t arg1"
  , ")"
  , "{"
  , "  return botan_rng_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8213d7e5b35474d6 ("
  , "  botan_hash_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ff3fcf62137ada07 ("
  , "  botan_hash_t *arg1,"
  , "  botan_hash_t const arg2"
  , ")"
  , "{"
  , "  return botan_hash_copy_state(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_164600ff3974c260 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cc31ba68e5952b98 ("
  , "  botan_hash_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_block_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_76243755c9c54277 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_hash_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3130e5b3017e4d67 ("
  , "  botan_hash_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_hash_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a68ba6b2b14aa2cc ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_18161b3fdcd3f88f ("
  , "  botan_hash_t arg1"
  , ")"
  , "{"
  , "  return botan_hash_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_079f7e8aafa565d7 ("
  , "  botan_hash_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_hash_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_553e360294ed8ec7 ("
  , "  botan_mac_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8d29d48cd47665fe ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c326b7a8b92e3e5e ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_83820584a97da93d ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_set_nonce(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3e1272c59d99a3a5 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mac_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d3aba1beb167e193 ("
  , "  botan_mac_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mac_final(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e8e8130a95f013f2 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_87552e5fbfe5a739 ("
  , "  botan_mac_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_mac_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e61661334d634d01 ("
  , "  botan_mac_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mac_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7313947e34324c89 ("
  , "  botan_mac_t arg1"
  , ")"
  , "{"
  , "  return botan_mac_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_596b103e1f48f89b ("
  , "  botan_cipher_t *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_init(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4ec71d9cf0510c4a ("
  , "  botan_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_34c552adce893b7b ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_92ba7509f90f35e4 ("
  , "  botan_cipher_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_cipher_valid_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ceb8154ad89a8407 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_tag_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_44a293b64cd8a72e ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_default_nonce_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8b4214bb991428d3 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_23faf06f3ab564c2 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_cipher_get_ideal_update_granularity(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_089ad179b84bf348 ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_cipher_query_keylen(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_71154a69f663f5fb ("
  , "  botan_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d3c75fcf426deb75 ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_94aac4fb31f10e5b ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_reset(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5b10c3749c49f84a ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_set_associated_data(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_12f5dc82dfa0bb6c ("
  , "  botan_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_cipher_start(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_54924b95a0a1a224 ("
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
  , "signed int hs_bindgen_botanbindings_57a68a1db32c4b4a ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_52260fc0dce6c138 ("
  , "  botan_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_61510dfd57e99367 ("
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
  , "signed int hs_bindgen_botanbindings_a6557cc75c285a05 ("
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
  , "signed int hs_bindgen_botanbindings_4fdfa8cf3310e9d8 ("
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
  , "signed int hs_bindgen_botanbindings_823235ec62a87ffe ("
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
  , "signed int hs_bindgen_botanbindings_f811ce9d0a0b3004 ("
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
  , "signed int hs_bindgen_botanbindings_9cd978ed09254f44 ("
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
  , "signed int hs_bindgen_botanbindings_6e09eb514aaaeee8 ("
  , "  botan_block_cipher_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_block_cipher_init(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b30322947af53ce3 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1b83908798b74c90 ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ac34abd15b165088 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_set_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_96a0d304d69c4d0a ("
  , "  botan_block_cipher_t arg1"
  , ")"
  , "{"
  , "  return botan_block_cipher_block_size(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c5fcb46713bbd819 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_encrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_99b8428cbd438440 ("
  , "  botan_block_cipher_t arg1,"
  , "  uint8_t const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_decrypt_blocks(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e1813f0c8f0d822d ("
  , "  botan_block_cipher_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_block_cipher_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_68c0487bc286591f ("
  , "  botan_block_cipher_t arg1,"
  , "  size_t *arg2,"
  , "  size_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_block_cipher_get_keyspec(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ed931c61ec3e6ffe ("
  , "  botan_mp_t *arg1"
  , ")"
  , "{"
  , "  return botan_mp_init(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f8f148de870bda61 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0cf55260ea7bb567 ("
  , "  botan_mp_t const arg1,"
  , "  char *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_hex(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9d1491a4f5a78aa1 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t arg2,"
  , "  char *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_mp_to_str(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d00d77b25af534da ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_clear(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f686b8f3cbb17c69 ("
  , "  botan_mp_t arg1,"
  , "  signed int arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_int(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e8a37e68398aea99 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_mp(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0dd6c4a7fb2993bc ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_from_str(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f3ebad10b90f48bb ("
  , "  botan_mp_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_set_from_radix_str(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3d9719b2c726b541 ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bits(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f67d34e81693a676 ("
  , "  botan_mp_t const arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_num_bytes(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_330d69e687c4fb29 ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_bin(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_63e428b280aa9e3c ("
  , "  botan_mp_t const arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_from_bin(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_291e6d2175bcbc3c ("
  , "  botan_mp_t const arg1,"
  , "  uint32_t *arg2"
  , ")"
  , "{"
  , "  return botan_mp_to_uint32(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b1e436eec7751c6f ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_positive(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d3e2fc8f1b7cb99f ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_negative(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6a53f5a3f3b5d2c9 ("
  , "  botan_mp_t arg1"
  , ")"
  , "{"
  , "  return botan_mp_flip_sign(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6ecc6c885f2b8c18 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_zero(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_286f4c414afee80f ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_odd(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b8260438c00c5813 ("
  , "  botan_mp_t const arg1"
  , ")"
  , "{"
  , "  return botan_mp_is_even(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b4485e0922358494 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_add_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dc19092112bb9949 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub_u32(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3c5a5e90dc17093c ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_add(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2e6692be6adc0d42 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_sub(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e25ebe1fd289083d ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mul(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ebbf5be856c1c85e ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_div(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b77625eeced4d4c1 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_mod_mul(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_abebe97e8be537cf ("
  , "  botan_mp_t const arg1,"
  , "  botan_mp_t const arg2"
  , ")"
  , "{"
  , "  return botan_mp_equal(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a287c063da85c628 ("
  , "  signed int *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_cmp(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f8c27a03ffe97ee3 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_swap(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8bcf73009d8ff312 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_powmod(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4837e6da5883cc56 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_lshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_701dcf6c93fa06e2 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rshift(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3b4b47c74f4bd1aa ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_mod_inverse(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f87c145ddc49fb2e ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_rand_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6a3d7abf9bc9ed8e ("
  , "  botan_mp_t arg1,"
  , "  botan_rng_t arg2,"
  , "  botan_mp_t const arg3,"
  , "  botan_mp_t const arg4"
  , ")"
  , "{"
  , "  return botan_mp_rand_range(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_726fe19da91bad95 ("
  , "  botan_mp_t arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3"
  , ")"
  , "{"
  , "  return botan_mp_gcd(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9eb33d3d12b355f7 ("
  , "  botan_mp_t const arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_mp_is_prime(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0f1f9c017fb0c76f ("
  , "  botan_mp_t const arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_get_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8701eacde8e84e54 ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_set_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4b288640d9200dbc ("
  , "  botan_mp_t arg1,"
  , "  size_t arg2"
  , ")"
  , "{"
  , "  return botan_mp_clear_bit(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a22e3637fcfb9460 ("
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
  , "signed int hs_bindgen_botanbindings_61860a3b530c39ef ("
  , "  char const *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_bcrypt_is_valid(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fba507d1693e4b85 ("
  , "  botan_privkey_t *arg1,"
  , "  char const *arg2,"
  , "  char const *arg3,"
  , "  botan_rng_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8ecfe09ce7067ccd ("
  , "  botan_privkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4f1fdb2eafeeeb44 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_747a9d90461c9edf ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_70dc17377a36c5cb ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8ca8f9cd344e3383 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_mceliece(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d3db06bd09632779 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_create_dh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e3b3ac2f037e6825 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_dsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3a76d89c53299e7c ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  size_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_create_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7d068b3c1a9e9e04 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_de8d124287a952f1 ("
  , "  botan_privkey_t arg1"
  , ")"
  , "{"
  , "  return botan_privkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a95a0f35ea04bf3a ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_269e66261475faa7 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_33023d97c8f8ee5c ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_24f0597c43aecbd0 ("
  , "  botan_privkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ff8313f732c866ef ("
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
  , "signed int hs_bindgen_botanbindings_50a15b788351f354 ("
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
  , "signed int hs_bindgen_botanbindings_23eb748ed7278f46 ("
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
  , "signed int hs_bindgen_botanbindings_2891b9a633f8ab4e ("
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
  , "signed int hs_bindgen_botanbindings_dd789a6eaef3cc9e ("
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
  , "signed int hs_bindgen_botanbindings_2dc1d75bd4b07b12 ("
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
  , "signed int hs_bindgen_botanbindings_b1fcca08f6502551 ("
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
  , "signed int hs_bindgen_botanbindings_9221e97350408eb6 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bfc37624c55dbed5 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_export_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1f880303e56a097a ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_export(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_26c482e7f209e5e7 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_der(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_078ecece57a53934 ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_pem(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3990cf2735e36a20 ("
  , "  botan_pubkey_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_algo_name(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8ab5abf6eac3bf3e ("
  , "  botan_pubkey_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_check_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_4d902c5c1244c84f ("
  , "  botan_pubkey_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_estimated_strength(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8695520e65faa9fc ("
  , "  botan_pubkey_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a6ed5b2509c6de70 ("
  , "  botan_pubkey_t arg1"
  , ")"
  , "{"
  , "  return botan_pubkey_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0291c584774aa9a9 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b5b8bbfd8c811f7f ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_get_field(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0cdf52ea0cdf51a1 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e5f9cd92d70e6c0b ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_rsa_pkcs1(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1337a7d2cef7f77a ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ec571240fda5bc3f ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_48a99ea49e36f922 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_d(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_aaee0540b307f69c ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8c97ec26b20b8d76 ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_de8750337dc6aa68 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_rsa_get_privkey(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cd36482b46dda539 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_rsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9a4a9bf4065bdca6 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_e(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a3fa4189e9ddeaea ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_rsa_get_n(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e22925b4f32be4c7 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_privkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cb725bebf0d31ce0 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4,"
  , "  botan_mp_t arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dsa(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f5ccf187d350dc1a ("
  , "  botan_mp_t arg1,"
  , "  botan_privkey_t arg2"
  , ")"
  , "{"
  , "  return botan_privkey_dsa_get_x(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a17632a356c1bc26 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_p(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6fa1b25f1b843566 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_q(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_78df8e1045ad15fe ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_g(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7cc569fb50875bd3 ("
  , "  botan_mp_t arg1,"
  , "  botan_pubkey_t arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_dsa_get_y(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3db8b64bb172c1b6 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dbaddb7f712d8f9d ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_dh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dd5d441c37b676bb ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9949fe54886e9995 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t arg2,"
  , "  botan_mp_t arg3,"
  , "  botan_mp_t arg4"
  , ")"
  , "{"
  , "  return botan_privkey_load_elgamal(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8be26c4615ff5a92 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e04d69549a7577f2 ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ed25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a09b2751e312745c ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_ed25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b6eea6c4fe9e3b9d ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_ed25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_63b86fa07f59e01f ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f34fbbb6b010741b ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_load_x25519(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ff20c34a45dfc654 ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_privkey_x25519_get_privkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_386477d006d7c52b ("
  , "  botan_pubkey_t arg1,"
  , "  uint8_t *arg2"
  , ")"
  , "{"
  , "  return botan_pubkey_x25519_get_pubkey(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7027b15dfd98aaf0 ("
  , "  botan_privkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ab3c2eec547a23bb ("
  , "  botan_pubkey_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_load_kyber(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3db681c13d4cd9d2 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_privkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7c09ee21233443dd ("
  , "  botan_pubkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_kyber_raw_key(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2043e2d70ed2b7a7 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdsa(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1b4aae4e87572022 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdsa(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_713f72073903fe81 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_ecdh(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3190f12d54f2eb05 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_ecdh(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_bcd0aaff64005db8 ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6fa82f01b7f85a90 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b6808d9deb62d35a ("
  , "  botan_pubkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  botan_mp_t const arg3,"
  , "  char const *arg4"
  , ")"
  , "{"
  , "  return botan_pubkey_load_sm2_enc(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_3c561df4e3af9b69 ("
  , "  botan_privkey_t *arg1,"
  , "  botan_mp_t const arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_privkey_load_sm2_enc(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b3c97febb670a0f3 ("
  , "  uint8_t *arg1,"
  , "  size_t *arg2,"
  , "  char const *arg3,"
  , "  char const *arg4,"
  , "  botan_pubkey_t const arg5"
  , ")"
  , "{"
  , "  return botan_pubkey_sm2_compute_za(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8eda1f2be42c3b11 ("
  , "  botan_pubkey_t const arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pubkey_view_ec_public_point(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cb48dcf85fc55678 ("
  , "  botan_pk_op_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_66fdea9673f67b1e ("
  , "  botan_pk_op_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d8230b53f933f63d ("
  , "  botan_pk_op_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_encrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e633cc19c702a394 ("
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
  , "signed int hs_bindgen_botanbindings_c2aecbe9317c4e36 ("
  , "  botan_pk_op_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ff1c7346e084681b ("
  , "  botan_pk_op_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1494fc11df7de2f7 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt_output_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8102990403ef4766 ("
  , "  botan_pk_op_decrypt_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3,"
  , "  uint8_t const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_pk_op_decrypt(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e4a28bad6c62302b ("
  , "  botan_pk_op_sign_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_fe8632a927e54c1f ("
  , "  botan_pk_op_sign_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f6ae1ef82d5f9493 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_output_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_033c86d7f66256cc ("
  , "  botan_pk_op_sign_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_56559efaf282cc00 ("
  , "  botan_pk_op_sign_t arg1,"
  , "  botan_rng_t arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_sign_finish(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e2e77aa0a59a8690 ("
  , "  botan_pk_op_verify_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_417ee57ed723dd0c ("
  , "  botan_pk_op_verify_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d20f57d8ab58b51b ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_update(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_72dd75187d0eb769 ("
  , "  botan_pk_op_verify_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_verify_finish(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f699490105efc499 ("
  , "  botan_pk_op_ka_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_create(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_49febf6becc654e3 ("
  , "  botan_pk_op_ka_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b94cff12a0e1981b ("
  , "  botan_privkey_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_export_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_d8f338125f78a5c5 ("
  , "  botan_privkey_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_view_public(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_c9bdf93dfca08111 ("
  , "  botan_pk_op_ka_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_key_agreement_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ce65ecf14914ff74 ("
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
  , "signed int hs_bindgen_botanbindings_3794db5af9cb13f9 ("
  , "  botan_pk_op_kem_encrypt_t *arg1,"
  , "  botan_pubkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_03e7f6ecbb8aa155 ("
  , "  botan_pk_op_kem_encrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_22368945208a7d3d ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7dc8b5ed1a208539 ("
  , "  botan_pk_op_kem_encrypt_t arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_encrypt_encapsulated_key_length(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6256adbde3497204 ("
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
  , "signed int hs_bindgen_botanbindings_70970b8dd8067938 ("
  , "  botan_pk_op_kem_decrypt_t *arg1,"
  , "  botan_privkey_t arg2,"
  , "  char const *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_create(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_96193235d8b76244 ("
  , "  botan_pk_op_kem_decrypt_t arg1"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b0c2b53b4b5f662f ("
  , "  botan_pk_op_kem_decrypt_t arg1,"
  , "  size_t arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pk_op_kem_decrypt_shared_key_length(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a0db0b97e19a3df5 ("
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
  , "signed int hs_bindgen_botanbindings_63bcb4b80c5f2d01 ("
  , "  char const *arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_pkcs_hash_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2955f10159dffe69 ("
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
  , "signed int hs_bindgen_botanbindings_f76fe2f3cdabce2a ("
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
  , "signed int hs_bindgen_botanbindings_990386e714db6479 ("
  , "  botan_x509_cert_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_500273ecaae588f7 ("
  , "  botan_x509_cert_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_90e59dde54afe375 ("
  , "  botan_x509_cert_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b7f2510304f5fe97 ("
  , "  botan_x509_cert_t *arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_dup(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_dd4506e96a953745 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_starts(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_6e789382b04c479a ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_time_expires(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ece7916875a88603 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_before(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1e2205d1c50db798 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint64_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_not_after(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_586610f32a070b5e ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  uint8_t *arg3,"
  , "  size_t *arg4"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_fingerprint(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9565c09d89a11360 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_serial_number(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0916e5fb34939a07 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_authority_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_88c14629aa8c0d36 ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_key_id(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_be555cb93e61594d ("
  , "  botan_x509_cert_t arg1,"
  , "  uint8_t *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a149e46fa06c581a ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_bin_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_public_key_bits(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_603a6f22891479fb ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_pubkey_t *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_public_key(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_9b559e481bda669f ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_issuer_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_61db63c49580871b ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_x509_cert_get_subject_dn(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a959137067a0c2d5 ("
  , "  botan_x509_cert_t arg1,"
  , "  char *arg2,"
  , "  size_t *arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_to_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_5fcdf11bff80b0df ("
  , "  botan_x509_cert_t arg1,"
  , "  botan_view_ctx arg2,"
  , "  botan_view_str_fn arg3"
  , ")"
  , "{"
  , "  return botan_x509_cert_view_as_string(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1a828663b64a5c7c ("
  , "  botan_x509_cert_t arg1,"
  , "  unsigned int arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_allowed_usage(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1359c194d362baa4 ("
  , "  botan_x509_cert_t arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_cert_hostname_match(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_457a6c5c6f642f7b ("
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
  , "char const *hs_bindgen_botanbindings_ce3c56ede7054aaa ("
  , "  signed int arg1"
  , ")"
  , "{"
  , "  return botan_x509_cert_validation_status(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_68940d88df608e9b ("
  , "  botan_x509_crl_t *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return botan_x509_crl_load_file(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_7ccb7f3a736ca057 ("
  , "  botan_x509_crl_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3"
  , ")"
  , "{"
  , "  return botan_x509_crl_load(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_87d92fc987d8844d ("
  , "  botan_x509_crl_t arg1"
  , ")"
  , "{"
  , "  return botan_x509_crl_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_88edd79f3b78852a ("
  , "  botan_x509_crl_t arg1,"
  , "  botan_x509_cert_t arg2"
  , ")"
  , "{"
  , "  return botan_x509_is_revoked(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_518a30ec574d44e6 ("
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
  , "signed int hs_bindgen_botanbindings_fe0e8cbbca9e9792 ("
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
  , "signed int hs_bindgen_botanbindings_7c48465eb837b09b ("
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
  , "signed int hs_bindgen_botanbindings_0c6c2536c5259a79 ("
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
  , "signed int hs_bindgen_botanbindings_c240dfae8a60a106 ("
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
  , "signed int hs_bindgen_botanbindings_d844aac65da6f015 ("
  , "  botan_hotp_t *arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  char const *arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_init(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_e4954d6bd4b8366b ("
  , "  botan_hotp_t arg1"
  , ")"
  , "{"
  , "  return botan_hotp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_0471bc98010da303 ("
  , "  botan_hotp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_hotp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_13590dc3d0991af3 ("
  , "  botan_hotp_t arg1,"
  , "  uint64_t *arg2,"
  , "  uint32_t arg3,"
  , "  uint64_t arg4,"
  , "  size_t arg5"
  , ")"
  , "{"
  , "  return botan_hotp_check(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_ce7782541a46682f ("
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
  , "signed int hs_bindgen_botanbindings_ae7198e403ca3a61 ("
  , "  botan_totp_t arg1"
  , ")"
  , "{"
  , "  return botan_totp_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_348cb01c526ba711 ("
  , "  botan_totp_t arg1,"
  , "  uint32_t *arg2,"
  , "  uint64_t arg3"
  , ")"
  , "{"
  , "  return botan_totp_generate(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_botanbindings_1dfc280e5e4cfeff ("
  , "  botan_totp_t arg1,"
  , "  uint32_t arg2,"
  , "  uint64_t arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_totp_check(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_cb398c70c5014403 ("
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
  , "signed int hs_bindgen_botanbindings_62acb9c85bbfe11d ("
  , "  botan_fpe_t arg1"
  , ")"
  , "{"
  , "  return botan_fpe_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b9c554b31e0a2751 ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_encrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_a3e396bcfd89d40c ("
  , "  botan_fpe_t arg1,"
  , "  botan_mp_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4"
  , ")"
  , "{"
  , "  return botan_fpe_decrypt(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b3e7b0ad0ae9dfa8 ("
  , "  botan_srp6_server_session_t *arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_init(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_2114c58721ad4937 ("
  , "  botan_srp6_server_session_t arg1"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_destroy(arg1);"
  , "}"
  , "signed int hs_bindgen_botanbindings_8cbd24aaf0fdd115 ("
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
  , "signed int hs_bindgen_botanbindings_29b0d060584ddc34 ("
  , "  botan_srp6_server_session_t arg1,"
  , "  uint8_t const *arg2,"
  , "  size_t arg3,"
  , "  uint8_t *arg4,"
  , "  size_t *arg5"
  , ")"
  , "{"
  , "  return botan_srp6_server_session_step2(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_b0947be5a542392a ("
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
  , "signed int hs_bindgen_botanbindings_18a7646d45336a2b ("
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
  , "signed int hs_bindgen_botanbindings_e124010bd88244d8 ("
  , "  char const *arg1,"
  , "  size_t *arg2"
  , ")"
  , "{"
  , "  return botan_srp6_group_size(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_botanbindings_12bd57ac1f6534b6 ("
  , "  size_t arg1,"
  , "  size_t arg2,"
  , "  uint8_t const *arg3,"
  , "  size_t arg4,"
  , "  uint8_t **arg5"
  , ")"
  , "{"
  , "  return botan_zfec_encode(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_botanbindings_f54d6a5ff91b24b6 ("
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

__defined at:__ @botan\/ffi.h:144:36@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0c82fc401e5bfe64" botan_error_description ::
     FC.CInt
     {- ^ __C declaration:__ @err@
     -}
  -> IO (Ptr.Ptr FC.CChar)

{-| Return the message of the last exception caught in this thread.

  This pointer can/will be reallocated or overwritten the next time this thread calls any other Botan FFI function and must be copied to persistent storage first.

__C declaration:__ @botan_error_last_exception_message@

__defined at:__ @botan\/ffi.h:153:36@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e6b26172dbb9a618" botan_error_last_exception_message ::
     IO (Ptr.Ptr FC.CChar)

{-| Return the version of the currently supported FFI API. This is expressed in the form YYYYMMDD of the release date of this version of the API.

__C declaration:__ @botan_ffi_api_version@

__defined at:__ @botan\/ffi.h:160:33@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7b5df6e254e8e64b" botan_ffi_api_version ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return 0 (ok) if the version given is one this library supports. botan_ffi_supports_api(botan_ffi_api_version()) will always return 0.

__C declaration:__ @botan_ffi_supports_api@

__defined at:__ @botan\/ffi.h:166:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_12feaf12f708aeeb" botan_ffi_supports_api ::
     HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @api_version@
     -}
  -> IO FC.CInt

{-| Return a free-form version string, e.g., 2.0.0

__C declaration:__ @botan_version_string@

__defined at:__ @botan\/ffi.h:171:36@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3b1b851ecd5f4edf" botan_version_string ::
     IO (Ptr.Ptr FC.CChar)

{-| Return the major version of the library

__C declaration:__ @botan_version_major@

__defined at:__ @botan\/ffi.h:176:33@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_afac5324ab0f80a1" botan_version_major ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the minor version of the library

__C declaration:__ @botan_version_minor@

__defined at:__ @botan\/ffi.h:181:33@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d4965542dceea12b" botan_version_minor ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the patch version of the library

__C declaration:__ @botan_version_patch@

__defined at:__ @botan\/ffi.h:186:33@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5b77535169a70292" botan_version_patch ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Return the date this version was released as an integer, or 0 if an unreleased version

__C declaration:__ @botan_version_datestamp@

__defined at:__ @botan\/ffi.h:192:33@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_83f09064e71b8b7b" botan_version_datestamp ::
     IO HsBindgen.Runtime.Prelude.Word32

{-| Returns 0 if x[0..len] == y[0..len], or otherwise -1

__C declaration:__ @botan_constant_time_compare@

__defined at:__ @botan\/ffi.h:197:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_567d1218ab02d880" botan_constant_time_compare ::
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

__defined at:__ @botan\/ffi.h:203:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_786938a9176fbb3e" botan_same_mem ::
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

__defined at:__ @botan\/ffi.h:209:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a8d9c66d3c81cbb0" botan_scrub_mem ::
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

__defined at:__ @botan\/ffi.h:221:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dfdbff16a0138628" botan_hex_encode ::
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

__defined at:__ @botan\/ffi.h:231:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bb8cfe6376032a08" botan_hex_decode ::
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

__defined at:__ @botan\/ffi.h:236:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_eeb86d1a81a85c61" botan_base64_encode ::
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

__defined at:__ @botan\/ffi.h:241:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f96312ef73835266" botan_base64_decode ::
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

__defined at:__ @botan\/ffi.h:258:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8f7046e775883c09" botan_rng_init ::
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

__defined at:__ @botan\/ffi.h:270:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e97802a17ed29089" botan_rng_init_custom ::
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

__defined at:__ @botan\/ffi.h:284:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_34d4b16094fdf300" botan_rng_get ::
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

__defined at:__ @botan\/ffi.h:292:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7c2ae956071370c6" botan_system_rng_get ::
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

__defined at:__ @botan\/ffi.h:302:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_420c05ea6784a346" botan_rng_reseed ::
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

__defined at:__ @botan\/ffi.h:312:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_005ec185d6c6ffee" botan_rng_reseed_from_rng ::
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

__defined at:__ @botan\/ffi.h:322:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_15514d793f42a87e" botan_rng_add_entropy ::
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

__defined at:__ @botan\/ffi.h:329:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5223bbead51e892d" botan_rng_destroy ::
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

__defined at:__ @botan\/ffi.h:343:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8213d7e5b35474d6" botan_hash_init ::
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

__defined at:__ @botan\/ffi.h:351:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ff3fcf62137ada07" botan_hash_copy_state ::
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

__defined at:__ @botan\/ffi.h:359:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_164600ff3974c260" botan_hash_output_length ::
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

__defined at:__ @botan\/ffi.h:367:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cc31ba68e5952b98" botan_hash_block_size ::
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

__defined at:__ @botan\/ffi.h:376:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_76243755c9c54277" botan_hash_update ::
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

__defined at:__ @botan\/ffi.h:386:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3130e5b3017e4d67" botan_hash_final ::
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

__defined at:__ @botan\/ffi.h:394:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a68ba6b2b14aa2cc" botan_hash_clear ::
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

__defined at:__ @botan\/ffi.h:401:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_18161b3fdcd3f88f" botan_hash_destroy ::
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

__defined at:__ @botan\/ffi.h:409:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_079f7e8aafa565d7" botan_hash_name ::
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

__defined at:__ @botan\/ffi.h:424:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_553e360294ed8ec7" botan_mac_init ::
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

__defined at:__ @botan\/ffi.h:432:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8d29d48cd47665fe" botan_mac_output_length ::
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

__defined at:__ @botan\/ffi.h:441:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c326b7a8b92e3e5e" botan_mac_set_key ::
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

__defined at:__ @botan\/ffi.h:450:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_83820584a97da93d" botan_mac_set_nonce ::
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

__defined at:__ @botan\/ffi.h:459:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3e1272c59d99a3a5" botan_mac_update ::
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

__defined at:__ @botan\/ffi.h:469:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d3aba1beb167e193" botan_mac_final ::
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

__defined at:__ @botan\/ffi.h:477:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e8e8130a95f013f2" botan_mac_clear ::
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

__defined at:__ @botan\/ffi.h:485:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_87552e5fbfe5a739" botan_mac_name ::
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

__defined at:__ @botan\/ffi.h:495:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e61661334d634d01" botan_mac_get_keyspec ::
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

__defined at:__ @botan\/ffi.h:505:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7313947e34324c89" botan_mac_destroy ::
     Botan_mac_t
     {- ^

        [__@mac@ /(input)/__]: mac object

     __C declaration:__ @mac@
     -}
  -> IO FC.CInt

{-| Initialize a cipher object

__C declaration:__ @botan_cipher_init@

__defined at:__ @botan\/ffi.h:519:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_596b103e1f48f89b" botan_cipher_init ::
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

__defined at:__ @botan\/ffi.h:524:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4ec71d9cf0510c4a" botan_cipher_name ::
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

__defined at:__ @botan\/ffi.h:529:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_34c552adce893b7b" botan_cipher_output_length ::
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

__defined at:__ @botan\/ffi.h:534:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_92ba7509f90f35e4" botan_cipher_valid_nonce_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @nl@
     -}
  -> IO FC.CInt

{-| Get the tag length of the cipher (0 for non-AEAD modes)

__C declaration:__ @botan_cipher_get_tag_length@

__defined at:__ @botan\/ffi.h:539:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ceb8154ad89a8407" botan_cipher_get_tag_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @tag_size@
     -}
  -> IO FC.CInt

{-| Get the default nonce length of this cipher

__C declaration:__ @botan_cipher_get_default_nonce_length@

__defined at:__ @botan\/ffi.h:544:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_44a293b64cd8a72e" botan_cipher_get_default_nonce_length ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @nl@
     -}
  -> IO FC.CInt

{-| Return the update granularity of the cipher; botan_cipher_update must be called with blocks of this size, except for the final.

__C declaration:__ @botan_cipher_get_update_granularity@

__defined at:__ @botan\/ffi.h:550:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8b4214bb991428d3" botan_cipher_get_update_granularity ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ug@
     -}
  -> IO FC.CInt

{-| Return the ideal update granularity of the cipher. This is some multiple of the update granularity, reflecting possibilities for optimization.

__C declaration:__ @botan_cipher_get_ideal_update_granularity@

__defined at:__ @botan\/ffi.h:556:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_23faf06f3ab564c2" botan_cipher_get_ideal_update_granularity ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @ug@
     -}
  -> IO FC.CInt

{-| Get information about the key lengths. Prefer botan_cipher_get_keyspec

__C declaration:__ @botan_cipher_query_keylen@

__defined at:__ @botan\/ffi.h:562:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_089ad179b84bf348" botan_cipher_query_keylen ::
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

__defined at:__ @botan\/ffi.h:568:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_71154a69f663f5fb" botan_cipher_get_keyspec ::
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

__defined at:__ @botan\/ffi.h:573:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d3c75fcf426deb75" botan_cipher_set_key ::
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

__defined at:__ @botan\/ffi.h:583:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_94aac4fb31f10e5b" botan_cipher_reset ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> IO FC.CInt

{-| Set the associated data. Will fail if cipher is not an AEAD

__C declaration:__ @botan_cipher_set_associated_data@

__defined at:__ @botan\/ffi.h:588:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5b10c3749c49f84a" botan_cipher_set_associated_data ::
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

__defined at:__ @botan\/ffi.h:593:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_12f5dc82dfa0bb6c" botan_cipher_start ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_54924b95a0a1a224" botan_cipher_update_wrapper ::
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

__defined at:__ @botan\/ffi.h:601:5@

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

__defined at:__ @botan\/ffi.h:613:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_57a68a1db32c4b4a" botan_cipher_clear ::
     Botan_cipher_t
     {- ^ __C declaration:__ @hash@
     -}
  -> IO FC.CInt

{-| Destroy the cipher object

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_cipher_destroy@

__defined at:__ @botan\/ffi.h:619:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_52260fc0dce6c138" botan_cipher_destroy ::
     Botan_cipher_t
     {- ^ __C declaration:__ @cipher@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pbkdf'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_61510dfd57e99367" botan_pbkdf_wrapper ::
     Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pbkdf@

    __defined at:__ @botan\/ffi.h:638:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_a6557cc75c285a05" botan_pbkdf_timed_wrapper ::
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

__defined at:__ @botan\/ffi.h:671:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_4fdfa8cf3310e9d8" botan_pwdhash_wrapper ::
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

    __defined at:__ @botan\/ffi.h:695:28@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_823235ec62a87ffe" botan_pwdhash_timed_wrapper ::
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

    __defined at:__ @botan\/ffi.h:722:28@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_f811ce9d0a0b3004" botan_scrypt_wrapper ::
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

__defined at:__ @botan\/ffi.h:741:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_9cd978ed09254f44" botan_kdf_wrapper ::
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

__defined at:__ @botan\/ffi.h:764:5@

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

__defined at:__ @botan\/ffi.h:782:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6e09eb514aaaeee8" botan_block_cipher_init ::
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

__defined at:__ @botan\/ffi.h:788:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b30322947af53ce3" botan_block_cipher_destroy ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Reinitializes the block cipher

  __returns:__ 0 on success, a negative value on failure

__C declaration:__ @botan_block_cipher_clear@

__defined at:__ @botan\/ffi.h:794:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1b83908798b74c90" botan_block_cipher_clear ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_set_key'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ac34abd15b165088" botan_block_cipher_set_key_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Set the key for a block cipher instance

__C declaration:__ @botan_block_cipher_set_key@

__defined at:__ @botan\/ffi.h:799:28@

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

__defined at:__ @botan\/ffi.h:805:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_96a0d304d69c4d0a" botan_block_cipher_block_size ::
     Botan_block_cipher_t
     {- ^ __C declaration:__ @bc@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_block_cipher_encrypt_blocks'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c5fcb46713bbd819" botan_block_cipher_encrypt_blocks_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Encrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_encrypt_blocks@

__defined at:__ @botan\/ffi.h:811:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_99b8428cbd438440" botan_block_cipher_decrypt_blocks_wrapper ::
     Botan_block_cipher_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Decrypt one or more blocks with the cipher

__C declaration:__ @botan_block_cipher_decrypt_blocks@

__defined at:__ @botan\/ffi.h:817:5@

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

__defined at:__ @botan\/ffi.h:825:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e1813f0c8f0d822d" botan_block_cipher_name ::
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

__defined at:__ @botan\/ffi.h:835:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_68c0487bc286591f" botan_block_cipher_get_keyspec ::
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

__defined at:__ @botan\/ffi.h:848:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ed931c61ec3e6ffe" botan_mp_init ::
     Ptr.Ptr Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Destroy (deallocate) an MPI

  __returns:__ 0 if success, error if invalid object handle

__C declaration:__ @botan_mp_destroy@

__defined at:__ @botan\/ffi.h:854:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f8f148de870bda61" botan_mp_destroy ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes

__C declaration:__ @botan_mp_to_hex@

__defined at:__ @botan\/ffi.h:859:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0cf55260ea7bb567" botan_mp_to_hex ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @out@
     -}
  -> IO FC.CInt

{-| Convert the MPI to a string. Currently base == 10 and base == 16 are supported.

__C declaration:__ @botan_mp_to_str@

__defined at:__ @botan\/ffi.h:864:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9d1491a4f5a78aa1" botan_mp_to_str ::
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

__defined at:__ @botan\/ffi.h:869:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d00d77b25af534da" botan_mp_clear ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Set the MPI value from an int

__C declaration:__ @botan_mp_set_from_int@

__defined at:__ @botan\/ffi.h:874:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f686b8f3cbb17c69" botan_mp_set_from_int ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> FC.CInt
     {- ^ __C declaration:__ @initial_value@
     -}
  -> IO FC.CInt

{-| Set the MPI value from another MP object

__C declaration:__ @botan_mp_set_from_mp@

__defined at:__ @botan\/ffi.h:879:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e8a37e68398aea99" botan_mp_set_from_mp ::
     Botan_mp_t
     {- ^ __C declaration:__ @dest@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @source@
     -}
  -> IO FC.CInt

{-| Set the MPI value from a string

__C declaration:__ @botan_mp_set_from_str@

__defined at:__ @botan\/ffi.h:884:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0dd6c4a7fb2993bc" botan_mp_set_from_str ::
     Botan_mp_t
     {- ^ __C declaration:__ @dest@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @str@
     -}
  -> IO FC.CInt

{-| Set the MPI value from a string with arbitrary radix. For arbitrary being 10 or 16.

__C declaration:__ @botan_mp_set_from_radix_str@

__defined at:__ @botan\/ffi.h:890:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f3ebad10b90f48bb" botan_mp_set_from_radix_str ::
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

__defined at:__ @botan\/ffi.h:895:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3d9719b2c726b541" botan_mp_num_bits ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bits@
     -}
  -> IO FC.CInt

{-| Return the number of significant bytes in the MPI

__C declaration:__ @botan_mp_num_bytes@

__defined at:__ @botan\/ffi.h:900:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f67d34e81693a676" botan_mp_num_bytes ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bytes@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_to_bin@

    __defined at:__ @botan\/ffi.h:905:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_330d69e687c4fb29" botan_mp_to_bin ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @vec@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_mp_from_bin'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_63e428b280aa9e3c" botan_mp_from_bin_wrapper ::
     Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_from_bin@

    __defined at:__ @botan\/ffi.h:910:28@

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

    __defined at:__ @botan\/ffi.h:915:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_291e6d2175bcbc3c" botan_mp_to_uint32 ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word32
     {- ^ __C declaration:__ @val@
     -}
  -> IO FC.CInt

{-| This function should have been named mp_is_non_negative. Returns 1 iff mp is greater than *or equal to* zero. Use botan_mp_is_negative to detect negative numbers, botan_mp_is_zero to check for zero.

__C declaration:__ @botan_mp_is_positive@

__defined at:__ @botan\/ffi.h:922:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b1e436eec7751c6f" botan_mp_is_positive ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| Return 1 iff mp is less than 0

__C declaration:__ @botan_mp_is_negative@

__defined at:__ @botan\/ffi.h:927:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d3e2fc8f1b7cb99f" botan_mp_is_negative ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_flip_sign@

    __defined at:__ @botan\/ffi.h:929:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6a53f5a3f3b5d2c9" botan_mp_flip_sign ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_zero@

    __defined at:__ @botan\/ffi.h:931:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6ecc6c885f2b8c18" botan_mp_is_zero ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_odd@

    __defined at:__ @botan\/ffi.h:933:76@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_286f4c414afee80f" botan_mp_is_odd ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_is_even@

    __defined at:__ @botan\/ffi.h:934:76@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b8260438c00c5813" botan_mp_is_even ::
     Botan_mp_t
     {- ^ __C declaration:__ @mp@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_add_u32@

    __defined at:__ @botan\/ffi.h:936:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b4485e0922358494" botan_mp_add_u32 ::
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

    __defined at:__ @botan\/ffi.h:937:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dc19092112bb9949" botan_mp_sub_u32 ::
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

    __defined at:__ @botan\/ffi.h:939:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3c5a5e90dc17093c" botan_mp_add ::
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

    __defined at:__ @botan\/ffi.h:940:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2e6692be6adc0d42" botan_mp_sub ::
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

    __defined at:__ @botan\/ffi.h:941:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e25ebe1fd289083d" botan_mp_mul ::
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

    __defined at:__ @botan\/ffi.h:944:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ebbf5be856c1c85e" botan_mp_div ::
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

    __defined at:__ @botan\/ffi.h:947:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b77625eeced4d4c1" botan_mp_mod_mul ::
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

    __defined at:__ @botan\/ffi.h:954:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_abebe97e8be537cf" botan_mp_equal ::
     Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_cmp@

    __defined at:__ @botan\/ffi.h:961:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a287c063da85c628" botan_mp_cmp ::
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

    __defined at:__ @botan\/ffi.h:966:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f8c27a03ffe97ee3" botan_mp_swap ::
     Botan_mp_t
     {- ^ __C declaration:__ @x@
     -}
  -> Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_mp_powmod@

    __defined at:__ @botan\/ffi.h:970:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8bcf73009d8ff312" botan_mp_powmod ::
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

    __defined at:__ @botan\/ffi.h:972:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4837e6da5883cc56" botan_mp_lshift ::
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

    __defined at:__ @botan\/ffi.h:973:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_701dcf6c93fa06e2" botan_mp_rshift ::
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

    __defined at:__ @botan\/ffi.h:975:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3b4b47c74f4bd1aa" botan_mp_mod_inverse ::
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

    __defined at:__ @botan\/ffi.h:977:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f87c145ddc49fb2e" botan_mp_rand_bits ::
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

    __defined at:__ @botan\/ffi.h:980:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6a3d7abf9bc9ed8e" botan_mp_rand_range ::
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

    __defined at:__ @botan\/ffi.h:985:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_726fe19da91bad95" botan_mp_gcd ::
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

__defined at:__ @botan\/ffi.h:992:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9eb33d3d12b355f7" botan_mp_is_prime ::
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

__defined at:__ @botan\/ffi.h:999:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0f1f9c017fb0c76f" botan_mp_get_bit ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bit@
     -}
  -> IO FC.CInt

{-| Set the specified bit

__C declaration:__ @botan_mp_set_bit@

__defined at:__ @botan\/ffi.h:1004:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8701eacde8e84e54" botan_mp_set_bit ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @bit@
     -}
  -> IO FC.CInt

{-| Clear the specified bit

__C declaration:__ @botan_mp_clear_bit@

__defined at:__ @botan\/ffi.h:1009:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4b288640d9200dbc" botan_mp_clear_bit ::
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

__defined at:__ @botan\/ffi.h:1027:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a22e3637fcfb9460" botan_bcrypt_generate ::
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

__defined at:__ @botan\/ffi.h:1038:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_61860a3b530c39ef" botan_bcrypt_is_valid ::
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

__defined at:__ @botan\/ffi.h:1054:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fba507d1693e4b85" botan_privkey_create ::
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

    __defined at:__ @botan\/ffi.h:1058:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8ecfe09ce7067ccd" botan_privkey_check_key ::
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

    __defined at:__ @botan\/ffi.h:1061:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4f1fdb2eafeeeb44" botan_privkey_create_rsa ::
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

    __defined at:__ @botan\/ffi.h:1063:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_747a9d90461c9edf" botan_privkey_create_ecdsa ::
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

    __defined at:__ @botan\/ffi.h:1065:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_70dc17377a36c5cb" botan_privkey_create_ecdh ::
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

    __defined at:__ @botan\/ffi.h:1067:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8ca8f9cd344e3383" botan_privkey_create_mceliece ::
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

    __defined at:__ @botan\/ffi.h:1069:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d3db06bd09632779" botan_privkey_create_dh ::
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

__defined at:__ @botan\/ffi.h:1089:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e3b3ac2f037e6825" botan_privkey_create_dsa ::
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

__defined at:__ @botan\/ffi.h:1111:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3a76d89c53299e7c" botan_privkey_create_elgamal ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_7d068b3c1a9e9e04" botan_privkey_load_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> IO FC.CInt

{-| Input currently assumed to be PKCS #8 structure; Set password to NULL to indicate no encryption expected Starting in 2.8.0, the rng parameter is unused and may be set to null

__C declaration:__ @botan_privkey_load@

__defined at:__ @botan\/ffi.h:1119:5@

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

__defined at:__ @botan\/ffi.h:1124:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_de8d124287a952f1" botan_privkey_destroy ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| On input *out_len is number of bytes in out[] On output *out_len is number of bytes written (or required) If out is not big enough no output is written, *out_len is set and 1 is returned Returns 0 on success and sets If some other error occurs a negative integer is returned.

__C declaration:__ @botan_privkey_export@

__defined at:__ @botan\/ffi.h:1136:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a95a0f35ea04bf3a" botan_privkey_export ::
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

__defined at:__ @botan\/ffi.h:1141:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_269e66261475faa7" botan_privkey_view_der ::
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

__defined at:__ @botan\/ffi.h:1146:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_33023d97c8f8ee5c" botan_privkey_view_pem ::
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

    __defined at:__ @botan\/ffi.h:1148:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_24f0597c43aecbd0" botan_privkey_algo_name ::
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

    __defined at:__ @botan\/ffi.h:1155:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ff8313f732c866ef" botan_privkey_export_encrypted ::
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

    __defined at:__ @botan\/ffi.h:1170:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_50a15b788351f354" botan_privkey_export_encrypted_pbkdf_msec ::
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

__defined at:__ @botan\/ffi.h:1185:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_23eb748ed7278f46" botan_privkey_export_encrypted_pbkdf_iter ::
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

__defined at:__ @botan\/ffi.h:1202:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2891b9a633f8ab4e" botan_privkey_view_encrypted_der ::
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

__defined at:__ @botan\/ffi.h:1217:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dd789a6eaef3cc9e" botan_privkey_view_encrypted_der_timed ::
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

__defined at:__ @botan\/ffi.h:1233:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2dc1d75bd4b07b12" botan_privkey_view_encrypted_pem ::
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

__defined at:__ @botan\/ffi.h:1248:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b1fcca08f6502551" botan_privkey_view_encrypted_pem_timed ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_9221e97350408eb6" botan_pubkey_load_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load@

    __defined at:__ @botan\/ffi.h:1259:28@

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

    __defined at:__ @botan\/ffi.h:1261:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bfc37624c55dbed5" botan_privkey_export_pubkey ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @out@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @in'@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_export@

    __defined at:__ @botan\/ffi.h:1263:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1f880303e56a097a" botan_pubkey_export ::
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

__defined at:__ @botan\/ffi.h:1268:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_26c482e7f209e5e7" botan_pubkey_view_der ::
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

__defined at:__ @botan\/ffi.h:1273:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_078ecece57a53934" botan_pubkey_view_pem ::
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

    __defined at:__ @botan\/ffi.h:1275:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3990cf2735e36a20" botan_pubkey_algo_name ::
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

__defined at:__ @botan\/ffi.h:1280:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8ab5abf6eac3bf3e" botan_pubkey_check_key ::
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

    __defined at:__ @botan\/ffi.h:1282:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_4d902c5c1244c84f" botan_pubkey_estimated_strength ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @estimate@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_fingerprint@

    __defined at:__ @botan\/ffi.h:1285:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8695520e65faa9fc" botan_pubkey_fingerprint ::
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

__defined at:__ @botan\/ffi.h:1290:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a6ed5b2509c6de70" botan_pubkey_destroy ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_get_field@

    __defined at:__ @botan\/ffi.h:1295:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0291c584774aa9a9" botan_pubkey_get_field ::
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

    __defined at:__ @botan\/ffi.h:1297:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b5b8bbfd8c811f7f" botan_privkey_get_field ::
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

    __defined at:__ @botan\/ffi.h:1302:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0cdf52ea0cdf51a1" botan_privkey_load_rsa ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_e5f9cd92d70e6c0b" botan_privkey_load_rsa_pkcs1_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_rsa_pkcs1@

    __defined at:__ @botan\/ffi.h:1304:28@

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

    __defined at:__ @botan\/ffi.h:1307:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1337a7d2cef7f77a" botan_privkey_rsa_get_p ::
     Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_q@

    __defined at:__ @botan\/ffi.h:1309:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ec571240fda5bc3f" botan_privkey_rsa_get_q ::
     Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_d@

    __defined at:__ @botan\/ffi.h:1311:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_48a99ea49e36f922" botan_privkey_rsa_get_d ::
     Botan_mp_t
     {- ^ __C declaration:__ @d@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1313:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_aaee0540b307f69c" botan_privkey_rsa_get_n ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_e@

    __defined at:__ @botan\/ffi.h:1315:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8c97ec26b20b8d76" botan_privkey_rsa_get_e ::
     Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_rsa_get_privkey@

    __defined at:__ @botan\/ffi.h:1318:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_de8750337dc6aa68" botan_privkey_rsa_get_privkey ::
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

    __defined at:__ @botan\/ffi.h:1320:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cd36482b46dda539" botan_pubkey_load_rsa ::
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

    __defined at:__ @botan\/ffi.h:1323:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9a4a9bf4065bdca6" botan_pubkey_rsa_get_e ::
     Botan_mp_t
     {- ^ __C declaration:__ @e@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_rsa_get_n@

    __defined at:__ @botan\/ffi.h:1325:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a3fa4189e9ddeaea" botan_pubkey_rsa_get_n ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @rsa_key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dsa@

    __defined at:__ @botan\/ffi.h:1331:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e22925b4f32be4c7" botan_privkey_load_dsa ::
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

    __defined at:__ @botan\/ffi.h:1334:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cb725bebf0d31ce0" botan_pubkey_load_dsa ::
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

    __defined at:__ @botan\/ffi.h:1337:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f5ccf187d350dc1a" botan_privkey_dsa_get_x ::
     Botan_mp_t
     {- ^ __C declaration:__ @n@
     -}
  -> Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_p@

    __defined at:__ @botan\/ffi.h:1340:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a17632a356c1bc26" botan_pubkey_dsa_get_p ::
     Botan_mp_t
     {- ^ __C declaration:__ @p@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_q@

    __defined at:__ @botan\/ffi.h:1342:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6fa1b25f1b843566" botan_pubkey_dsa_get_q ::
     Botan_mp_t
     {- ^ __C declaration:__ @q@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_g@

    __defined at:__ @botan\/ffi.h:1344:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_78df8e1045ad15fe" botan_pubkey_dsa_get_g ::
     Botan_mp_t
     {- ^ __C declaration:__ @d@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_dsa_get_y@

    __defined at:__ @botan\/ffi.h:1346:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7cc569fb50875bd3" botan_pubkey_dsa_get_y ::
     Botan_mp_t
     {- ^ __C declaration:__ @y@
     -}
  -> Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_dh@

    __defined at:__ @botan\/ffi.h:1361:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3db8b64bb172c1b6" botan_privkey_load_dh ::
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

__defined at:__ @botan\/ffi.h:1375:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dbaddb7f712d8f9d" botan_pubkey_load_dh ::
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

__defined at:__ @botan\/ffi.h:1393:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dd5d441c37b676bb" botan_pubkey_load_elgamal ::
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

__defined at:__ @botan\/ffi.h:1408:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9949fe54886e9995" botan_privkey_load_elgamal ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_8be26c4615ff5a92" botan_privkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1414:28@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_e04d69549a7577f2" botan_pubkey_load_ed25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_ed25519@

    __defined at:__ @botan\/ffi.h:1416:28@

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

    __defined at:__ @botan\/ffi.h:1418:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a09b2751e312745c" botan_privkey_ed25519_get_privkey ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @output@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_ed25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1420:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b6eea6c4fe9e3b9d" botan_pubkey_ed25519_get_pubkey ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_x25519'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_63b86fa07f59e01f" botan_privkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1426:28@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_f34fbbb6b010741b" botan_pubkey_load_x25519_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_x25519@

    __defined at:__ @botan\/ffi.h:1428:28@

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

    __defined at:__ @botan\/ffi.h:1430:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ff20c34a45dfc654" botan_privkey_x25519_get_privkey ::
     Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @output@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_x25519_get_pubkey@

    __defined at:__ @botan\/ffi.h:1432:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_386477d006d7c52b" botan_pubkey_x25519_get_pubkey ::
     Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_privkey_load_kyber'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7027b15dfd98aaf0" botan_privkey_load_kyber_wrapper ::
     Ptr.Ptr Botan_privkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_privkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1438:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_privkey_load_kyber ::
     Ptr.Ptr Botan_privkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @privkey@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> IO FC.CInt
botan_privkey_load_kyber =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_privkey_load_kyber_wrapper x0 ptr3 x2)

{-| Pointer-based API for 'botan_pubkey_load_kyber'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ab3c2eec547a23bb" botan_pubkey_load_kyber_wrapper ::
     Ptr.Ptr Botan_pubkey_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pubkey_load_kyber@

    __defined at:__ @botan\/ffi.h:1440:28@

    __exported by:__ @botan\/ffi.h@
-}
botan_pubkey_load_kyber ::
     Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> HsBindgen.Runtime.IncompleteArray.IncompleteArray HsBindgen.Runtime.Prelude.Word8
     {- ^ __C declaration:__ @pubkey@
     -}
  -> HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @key_len@
     -}
  -> IO FC.CInt
botan_pubkey_load_kyber =
  \x0 ->
    \x1 ->
      \x2 ->
        HsBindgen.Runtime.IncompleteArray.withPtr x1 (\ptr3 ->
                                                        botan_pubkey_load_kyber_wrapper x0 ptr3 x2)

{-| __C declaration:__ @botan_privkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1443:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3db681c13d4cd9d2" botan_privkey_view_kyber_raw_key ::
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

{-| __C declaration:__ @botan_pubkey_view_kyber_raw_key@

    __defined at:__ @botan\/ffi.h:1446:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7c09ee21233443dd" botan_pubkey_view_kyber_raw_key ::
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

{-| __C declaration:__ @botan_privkey_load_ecdsa@

    __defined at:__ @botan\/ffi.h:1452:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2043e2d70ed2b7a7" botan_privkey_load_ecdsa ::
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

    __defined at:__ @botan\/ffi.h:1455:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1b4aae4e87572022" botan_pubkey_load_ecdsa ::
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

    __defined at:__ @botan\/ffi.h:1461:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_713f72073903fe81" botan_pubkey_load_ecdh ::
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

    __defined at:__ @botan\/ffi.h:1467:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3190f12d54f2eb05" botan_privkey_load_ecdh ::
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

    __defined at:__ @botan\/ffi.h:1470:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_bcd0aaff64005db8" botan_pubkey_load_sm2 ::
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

    __defined at:__ @botan\/ffi.h:1476:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6fa82f01b7f85a90" botan_privkey_load_sm2 ::
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

    __defined at:__ @botan\/ffi.h:1480:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b6808d9deb62d35a" botan_pubkey_load_sm2_enc ::
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

    __defined at:__ @botan\/ffi.h:1487:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3c561df4e3af9b69" botan_privkey_load_sm2_enc ::
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

    __defined at:__ @botan\/ffi.h:1490:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b3c97febb670a0f3" botan_pubkey_sm2_compute_za ::
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

__defined at:__ @botan\/ffi.h:1497:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8eda1f2be42c3b11" botan_pubkey_view_ec_public_point ::
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

    __defined at:__ @botan\/ffi.h:1505:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_cb48dcf85fc55678" botan_pk_op_encrypt_create ::
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

__defined at:__ @botan\/ffi.h:1510:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_66fdea9673f67b1e" botan_pk_op_encrypt_destroy ::
     Botan_pk_op_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt_output_length@

    __defined at:__ @botan\/ffi.h:1513:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d8230b53f933f63d" botan_pk_op_encrypt_output_length ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_e633cc19c702a394" botan_pk_op_encrypt_wrapper ::
     Botan_pk_op_encrypt_t
  -> Botan_rng_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_encrypt@

    __defined at:__ @botan\/ffi.h:1516:5@

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

    __defined at:__ @botan\/ffi.h:1529:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c2aecbe9317c4e36" botan_pk_op_decrypt_create ::
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

__defined at:__ @botan\/ffi.h:1534:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ff1c7346e084681b" botan_pk_op_decrypt_destroy ::
     Botan_pk_op_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt_output_length@

    __defined at:__ @botan\/ffi.h:1537:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1494fc11df7de2f7" botan_pk_op_decrypt_output_length ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_8102990403ef4766" botan_pk_op_decrypt_wrapper ::
     Botan_pk_op_decrypt_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_decrypt@

    __defined at:__ @botan\/ffi.h:1540:5@

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

    __defined at:__ @botan\/ffi.h:1552:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e4a28bad6c62302b" botan_pk_op_sign_create ::
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

__defined at:__ @botan\/ffi.h:1557:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_fe8632a927e54c1f" botan_pk_op_sign_destroy ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_output_length@

    __defined at:__ @botan\/ffi.h:1559:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f6ae1ef82d5f9493" botan_pk_op_sign_output_length ::
     Botan_pk_op_sign_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @olen@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_sign_update'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_033c86d7f66256cc" botan_pk_op_sign_update_wrapper ::
     Botan_pk_op_sign_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_sign_update@

    __defined at:__ @botan\/ffi.h:1561:28@

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

    __defined at:__ @botan\/ffi.h:1564:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_56559efaf282cc00" botan_pk_op_sign_finish ::
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

    __defined at:__ @botan\/ffi.h:1572:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e2e77aa0a59a8690" botan_pk_op_verify_create ::
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

__defined at:__ @botan\/ffi.h:1580:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_417ee57ed723dd0c" botan_pk_op_verify_destroy ::
     Botan_pk_op_verify_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_verify_update'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d20f57d8ab58b51b" botan_pk_op_verify_update_wrapper ::
     Botan_pk_op_verify_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_update@

    __defined at:__ @botan\/ffi.h:1582:28@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_72dd75187d0eb769" botan_pk_op_verify_finish_wrapper ::
     Botan_pk_op_verify_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_verify_finish@

    __defined at:__ @botan\/ffi.h:1583:28@

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

    __defined at:__ @botan\/ffi.h:1591:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f699490105efc499" botan_pk_op_key_agreement_create ::
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

__defined at:__ @botan\/ffi.h:1596:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_49febf6becc654e3" botan_pk_op_key_agreement_destroy ::
     Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement_export_public@

    __defined at:__ @botan\/ffi.h:1598:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b94cff12a0e1981b" botan_pk_op_key_agreement_export_public ::
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

    __defined at:__ @botan\/ffi.h:1601:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_d8f338125f78a5c5" botan_pk_op_key_agreement_view_public ::
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

    __defined at:__ @botan\/ffi.h:1603:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_c9bdf93dfca08111" botan_pk_op_key_agreement_size ::
     Botan_pk_op_ka_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @out_len@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_key_agreement'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ce65ecf14914ff74" botan_pk_op_key_agreement_wrapper ::
     Botan_pk_op_ka_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_key_agreement@

    __defined at:__ @botan\/ffi.h:1606:5@

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

    __defined at:__ @botan\/ffi.h:1620:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_3794db5af9cb13f9" botan_pk_op_kem_encrypt_create ::
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

__defined at:__ @botan\/ffi.h:1625:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_03e7f6ecbb8aa155" botan_pk_op_kem_encrypt_destroy ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_encrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1628:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_22368945208a7d3d" botan_pk_op_kem_encrypt_shared_key_length ::
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

    __defined at:__ @botan\/ffi.h:1633:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7dc8b5ed1a208539" botan_pk_op_kem_encrypt_encapsulated_key_length ::
     Botan_pk_op_kem_encrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
     {- ^ __C declaration:__ @output_encapsulated_key_length@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_pk_op_kem_encrypt_create_shared_key'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6256adbde3497204" botan_pk_op_kem_encrypt_create_shared_key_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1637:5@

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

    __defined at:__ @botan\/ffi.h:1650:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_70970b8dd8067938" botan_pk_op_kem_decrypt_create ::
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

__defined at:__ @botan\/ffi.h:1655:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_96193235d8b76244" botan_pk_op_kem_decrypt_destroy ::
     Botan_pk_op_kem_decrypt_t
     {- ^ __C declaration:__ @op@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_pk_op_kem_decrypt_shared_key_length@

    __defined at:__ @botan\/ffi.h:1658:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b0c2b53b4b5f662f" botan_pk_op_kem_decrypt_shared_key_length ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_a0db0b97e19a3df5" botan_pk_op_kem_decrypt_shared_key_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1663:5@

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

__defined at:__ @botan\/ffi.h:1676:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_63bcb4b80c5f2d01" botan_pkcs_hash_id ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_2955f10159dffe69" botan_mceies_encrypt_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1683:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_f76fe2f3cdabce2a" botan_mceies_decrypt_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1698:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_990386e714db6479" botan_x509_cert_load_wrapper ::
     Ptr.Ptr Botan_x509_cert_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_load@

    __defined at:__ @botan\/ffi.h:1713:28@

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

    __defined at:__ @botan\/ffi.h:1714:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_500273ecaae588f7" botan_x509_cert_load_file ::
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

__defined at:__ @botan\/ffi.h:1719:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_90e59dde54afe375" botan_x509_cert_destroy ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_dup@

    __defined at:__ @botan\/ffi.h:1721:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b7f2510304f5fe97" botan_x509_cert_dup ::
     Ptr.Ptr Botan_x509_cert_t
     {- ^ __C declaration:__ @new_cert@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_time_starts@

    __defined at:__ @botan\/ffi.h:1724:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_dd4506e96a953745" botan_x509_cert_get_time_starts ::
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

    __defined at:__ @botan\/ffi.h:1725:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_6e789382b04c479a" botan_x509_cert_get_time_expires ::
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

    __defined at:__ @botan\/ffi.h:1727:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ece7916875a88603" botan_x509_cert_not_before ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @time_since_epoch@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_not_after@

    __defined at:__ @botan\/ffi.h:1728:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1e2205d1c50db798" botan_x509_cert_not_after ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word64
     {- ^ __C declaration:__ @time_since_epoch@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_fingerprint@

    __defined at:__ @botan\/ffi.h:1731:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_586610f32a070b5e" botan_x509_cert_get_fingerprint ::
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

    __defined at:__ @botan\/ffi.h:1733:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9565c09d89a11360" botan_x509_cert_get_serial_number ::
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

    __defined at:__ @botan\/ffi.h:1734:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0916e5fb34939a07" botan_x509_cert_get_authority_key_id ::
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

    __defined at:__ @botan\/ffi.h:1735:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_88c14629aa8c0d36" botan_x509_cert_get_subject_key_id ::
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

    __defined at:__ @botan\/ffi.h:1737:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_be555cb93e61594d" botan_x509_cert_get_public_key_bits ::
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

    __defined at:__ @botan\/ffi.h:1740:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a149e46fa06c581a" botan_x509_cert_view_public_key_bits ::
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

    __defined at:__ @botan\/ffi.h:1742:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_603a6f22891479fb" botan_x509_cert_get_public_key ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> Ptr.Ptr Botan_pubkey_t
     {- ^ __C declaration:__ @key@
     -}
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_cert_get_issuer_dn@

    __defined at:__ @botan\/ffi.h:1745:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_9b559e481bda669f" botan_x509_cert_get_issuer_dn ::
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

    __defined at:__ @botan\/ffi.h:1749:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_61db63c49580871b" botan_x509_cert_get_subject_dn ::
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

    __defined at:__ @botan\/ffi.h:1752:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_a959137067a0c2d5" botan_x509_cert_to_string ::
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

    __defined at:__ @botan\/ffi.h:1755:5@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_5fcdf11bff80b0df" botan_x509_cert_view_as_string ::
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

    __defined at:__ @botan\/ffi.h:1771:28@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1a828663b64a5c7c" botan_x509_cert_allowed_usage ::
     Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> FC.CUInt
     {- ^ __C declaration:__ @key_usage@
     -}
  -> IO FC.CInt

{-| Check if the certificate matches the specified hostname via alternative name or CN match. RFC 5280 wildcards also supported.

__C declaration:__ @botan_x509_cert_hostname_match@

__defined at:__ @botan\/ffi.h:1777:28@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1359c194d362baa4" botan_x509_cert_hostname_match ::
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

__defined at:__ @botan\/ffi.h:1788:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_457a6c5c6f642f7b" botan_x509_cert_verify ::
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

__defined at:__ @botan\/ffi.h:1803:36@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ce3c56ede7054aaa" botan_x509_cert_validation_status ::
     FC.CInt
     {- ^ __C declaration:__ @code@
     -}
  -> IO (Ptr.Ptr FC.CChar)

{-| __C declaration:__ @botan_x509_crl_load_file@

    __defined at:__ @botan\/ffi.h:1811:29@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_68940d88df608e9b" botan_x509_crl_load_file ::
     Ptr.Ptr Botan_x509_crl_t
     {- ^ __C declaration:__ @crl_obj@
     -}
  -> Ptr.Ptr FC.CChar
     {- ^ __C declaration:__ @crl_path@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_x509_crl_load'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_7ccb7f3a736ca057" botan_x509_crl_load_wrapper ::
     Ptr.Ptr Botan_x509_crl_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_x509_crl_load@

    __defined at:__ @botan\/ffi.h:1813:5@

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

    __defined at:__ @botan\/ffi.h:1815:29@

    __exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_87d92fc987d8844d" botan_x509_crl_destroy ::
     Botan_x509_crl_t
     {- ^ __C declaration:__ @crl@
     -}
  -> IO FC.CInt

{-| Given a CRL and a certificate, check if the certificate is revoked on that particular CRL

__C declaration:__ @botan_x509_is_revoked@

__defined at:__ @botan\/ffi.h:1821:29@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_88edd79f3b78852a" botan_x509_is_revoked ::
     Botan_x509_crl_t
     {- ^ __C declaration:__ @crl@
     -}
  -> Botan_x509_cert_t
     {- ^ __C declaration:__ @cert@
     -}
  -> IO FC.CInt

{-| Different flavor of `botan_x509_cert_verify`, supports revocation lists. CRLs are passed as an array, same as intermediates and trusted CAs

__C declaration:__ @botan_x509_cert_verify_with_crl@

__defined at:__ @botan\/ffi.h:1828:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_518a30ec574d44e6" botan_x509_cert_verify_with_crl ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_fe0e8cbbca9e9792" botan_key_wrap3394_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Key wrapping as per RFC 3394

__C declaration:__ @botan_key_wrap3394@

__defined at:__ @botan\/ffi.h:1846:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_7c48465eb837b09b" botan_key_unwrap3394_wrapper ::
     Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_key_unwrap3394@

    __defined at:__ @botan\/ffi.h:1855:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_0c6c2536c5259a79" botan_nist_kw_enc_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1863:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_c240dfae8a60a106" botan_nist_kw_dec_wrapper ::
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

    __defined at:__ @botan\/ffi.h:1873:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_d844aac65da6f015" botan_hotp_init_wrapper ::
     Ptr.Ptr Botan_hotp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Initialize a HOTP instance

__C declaration:__ @botan_hotp_init@

__defined at:__ @botan\/ffi.h:1892:5@

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

__defined at:__ @botan\/ffi.h:1899:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e4954d6bd4b8366b" botan_hotp_destroy ::
     Botan_hotp_t
     {- ^ __C declaration:__ @hotp@
     -}
  -> IO FC.CInt

{-| Generate a HOTP code for the provided counter

__C declaration:__ @botan_hotp_generate@

__defined at:__ @botan\/ffi.h:1905:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_0471bc98010da303" botan_hotp_generate ::
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

__defined at:__ @botan\/ffi.h:1911:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_13590dc3d0991af3" botan_hotp_check ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_ce7782541a46682f" botan_totp_init_wrapper ::
     Ptr.Ptr Botan_totp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> Ptr.Ptr FC.CChar
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| Initialize a TOTP instance

__C declaration:__ @botan_totp_init@

__defined at:__ @botan\/ffi.h:1924:5@

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

__defined at:__ @botan\/ffi.h:1932:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_ae7198e403ca3a61" botan_totp_destroy ::
     Botan_totp_t
     {- ^ __C declaration:__ @totp@
     -}
  -> IO FC.CInt

{-| Generate a TOTP code for the provided timestamp

  [__@totp@ /(input)/__]: the TOTP object

  [__@totp_code@ /(input)/__]: the OTP code will be written here

  [__@timestamp@ /(input)/__]: the current local timestamp

__C declaration:__ @botan_totp_generate@

__defined at:__ @botan\/ffi.h:1941:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_348cb01c526ba711" botan_totp_generate ::
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

__defined at:__ @botan\/ffi.h:1952:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_1dfc280e5e4cfeff" botan_totp_check ::
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
foreign import ccall unsafe "hs_bindgen_botanbindings_cb398c70c5014403" botan_fpe_fe1_init_wrapper ::
     Ptr.Ptr Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.CSize
  -> HsBindgen.Runtime.Prelude.Word32
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_fe1_init@

    __defined at:__ @botan\/ffi.h:1963:5@

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

__defined at:__ @botan\/ffi.h:1970:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_62acb9c85bbfe11d" botan_fpe_destroy ::
     Botan_fpe_t
     {- ^ __C declaration:__ @fpe@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_fpe_encrypt'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b9c554b31e0a2751" botan_fpe_encrypt_wrapper ::
     Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_encrypt@

    __defined at:__ @botan\/ffi.h:1973:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_a3e396bcfd89d40c" botan_fpe_decrypt_wrapper ::
     Botan_fpe_t
  -> Botan_mp_t
  -> Ptr.Ptr HsBindgen.Runtime.Prelude.Word8
  -> HsBindgen.Runtime.Prelude.CSize
  -> IO FC.CInt

{-| __C declaration:__ @botan_fpe_decrypt@

    __defined at:__ @botan\/ffi.h:1976:5@

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

__defined at:__ @botan\/ffi.h:1988:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_b3e7b0ad0ae9dfa8" botan_srp6_server_session_init ::
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

__defined at:__ @botan\/ffi.h:1996:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_2114c58721ad4937" botan_srp6_server_session_destroy ::
     Botan_srp6_server_session_t
     {- ^

        [__@srp6@ /(input)/__]: SRP-6 server session object

     __C declaration:__ @srp6@
     -}
  -> IO FC.CInt

{-| Pointer-based API for 'botan_srp6_server_session_step1'

-}
foreign import ccall unsafe "hs_bindgen_botanbindings_8cbd24aaf0fdd115" botan_srp6_server_session_step1_wrapper ::
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

__defined at:__ @botan\/ffi.h:2011:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_29b0d060584ddc34" botan_srp6_server_session_step2_wrapper ::
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

__defined at:__ @botan\/ffi.h:2030:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_b0947be5a542392a" botan_srp6_generate_verifier_wrapper ::
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

__defined at:__ @botan\/ffi.h:2046:5@

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
foreign import ccall unsafe "hs_bindgen_botanbindings_18a7646d45336a2b" botan_srp6_client_agree_wrapper ::
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

__defined at:__ @botan\/ffi.h:2073:5@

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

__defined at:__ @botan\/ffi.h:2091:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_e124010bd88244d8" botan_srp6_group_size ::
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

__defined at:__ @botan\/ffi.h:2112:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_12bd57ac1f6534b6" botan_zfec_encode ::
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

__defined at:__ @botan\/ffi.h:2133:5@

__exported by:__ @botan\/ffi.h@
-}
foreign import ccall unsafe "hs_bindgen_botanbindings_f54d6a5ff91b24b6" botan_zfec_decode ::
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
