module Botan.PubKey where

import Prelude

import Control.Monad

import Data.ByteString (ByteString)
import qualified Data.ByteString as ByteString
import qualified Data.ByteString.Unsafe as ByteString

import Data.Word

import System.IO

import Foreign.C.String
import Foreign.C.Types
import Foreign.ForeignPtr
import Foreign.Marshal.Alloc
import Foreign.Ptr
import Foreign.Storable

import Botan.Error
import Botan.Make
import Botan.MPI
import Botan.Prelude
import Botan.Random
import Botan.View
    
-- /*
-- * Public/private key creation, import, ...
-- */
-- typedef struct botan_privkey_struct* botan_privkey_t;
data PrivKeyStruct
type PrivKeyPtr = Ptr PrivKeyStruct

newtype PrivKey = MkPrivKey { getPrivKeyForeignPtr :: ForeignPtr PrivKeyStruct }

withPrivKeyPtr :: PrivKey -> (PrivKeyPtr -> IO a) -> IO a
withPrivKeyPtr = withForeignPtr . getPrivKeyForeignPtr

type PrivKeyName = ByteString

-- /**
-- * Create a new private key
-- * @param key the new object will be placed here
-- * @param algo_name something like "RSA" or "ECDSA"
-- * @param algo_params is specific to the algorithm. For RSA, specifies
-- *        the modulus bit length. For ECC is the name of the curve.
-- * @param rng a random number generator
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_create(botan_privkey_t* key,
--                                                const char* algo_name,
--                                                const char* algo_params,
--                                                botan_rng_t rng);
foreign import ccall unsafe botan_privkey_create :: Ptr PrivKeyPtr -> Ptr CChar -> Ptr CChar -> RandomPtr -> IO BotanErrorCode

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_destroy(botan_privkey_t key);
foreign import ccall unsafe "&botan_privkey_destroy" botan_privkey_destroy :: FinalizerPtr PrivKeyStruct

privKeyCreate :: ByteString -> ByteString -> Random -> IO PrivKey
privKeyCreate name params random = alloca $ \ outPtr -> do
    asCString name $ \ namePtr -> do
        asCString params $ \ paramsPtr -> do
            withRandomPtr random $ \ randomPtr -> do
                throwBotanIfNegative_ $ botan_privkey_create outPtr namePtr paramsPtr randomPtr
                out <- peek outPtr
                foreignPtr <- newForeignPtr botan_privkey_destroy out
                return $ MkPrivKey foreignPtr

privKeyDestroy :: PrivKey -> IO ()
privKeyDestroy privKey = finalizeForeignPtr (getPrivKeyForeignPtr privKey)

-- NOTE: Multiple ways of creating priv keys - need multiple withPrivKeys?
-- withPrivKey :: ByteString -> ByteString -> Random -> (PrivKey -> IO a) -> IO a
-- withPrivKey = mkWithTemp3 privKeyCreate privKeyDestroy

-- #define BOTAN_CHECK_KEY_EXPENSIVE_TESTS 1
type PubKeyCheckKeyFlags = Word32
pattern BOTAN_PUBKEY_CHECK_KEY_FLAGS_NONE = 0 :: PubKeyCheckKeyFlags -- NOTE: NOT ACTUAL FLAG.
pattern BOTAN_PUBKEYCHECK_KEY_FLAGS_EXPENSIVE_TESTS = 1 :: PubKeyCheckKeyFlags

-- NOTE: returns -1 (INVALID_INPUT) if key is wrong?
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_check_key(botan_privkey_t key, botan_rng_t rng, uint32_t flags);
foreign import ccall unsafe botan_privkey_check_key :: PrivKeyPtr -> RandomPtr -> PubKeyCheckKeyFlags -> IO BotanErrorCode

-- TODO: Probably catch -1 (INVALID_INPUT), return Bool
privKeyCheckKey :: PrivKey -> Random -> PubKeyCheckKeyFlags -> IO ()
privKeyCheckKey sk random flags = withPrivKeyPtr sk $ \ skPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanIfNegative_ $ botan_privkey_check_key skPtr randomPtr flags 

-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_rsa(botan_privkey_t* key, botan_rng_t rng, size_t n_bits);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_ecdsa(botan_privkey_t* key, botan_rng_t rng, const char* params);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_ecdh(botan_privkey_t* key, botan_rng_t rng, const char* params);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_mceliece(botan_privkey_t* key, botan_rng_t rng, size_t n, size_t t);
-- BOTAN_DEPRECATED("Use botan_privkey_create") BOTAN_PUBLIC_API(2,0)
-- int botan_privkey_create_dh(botan_privkey_t* key, botan_rng_t rng, const char* param);

-- /**
--  * Generates DSA key pair. Gives to a caller control over key length
--  * and order of a subgroup 'q'.
--  *
--  * @param   key   handler to the resulting key
--  * @param   rng   initialized PRNG
--  * @param   pbits length of the key in bits. Must be between in range (1024, 3072)
--  *          and multiple of 64. Bit size of the prime 'p'
--  * @param   qbits order of the subgroup. Must be in range (160, 256) and multiple
--  *          of 8
--  *
--  * @returns BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
--  * @returns BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
--  * @returns BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or
--  *          `qbits'
--  * @returns BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented
--  *
-- */
-- BOTAN_PUBLIC_API(2,5) int botan_privkey_create_dsa(
--                                 botan_privkey_t* key,
--                                 botan_rng_t rng,
--                                 size_t pbits,
--                                 size_t qbits);
foreign import ccall unsafe botan_privkey_create_dsa
    :: Ptr PrivKeyPtr   -- key
    -> RandomPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode

privKeyCreateDSA :: Random -> Int -> Int -> IO PrivKey
privKeyCreateDSA random pbits qbits = withRandomPtr random $ \ randomPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_dsa outPtr randomPtr (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr


-- /**
--  * Generates ElGamal key pair. Caller has a control over key length
--  * and order of a subgroup 'q'. Function is able to use two types of
--  * primes:
--  *    * if pbits-1 == qbits then safe primes are used for key generation
--  *    * otherwise generation uses group of prime order
--  *
--  * @param   key   handler to the resulting key
--  * @param   rng   initialized PRNG
--  * @param   pbits length of the key in bits. Must be at least 1024
--  * @param   qbits order of the subgroup. Must be at least 160
--  *
--  * @returns BOTAN_FFI_SUCCESS Success, `key' initialized with DSA key
--  * @returns BOTAN_FFI_ERROR_NULL_POINTER  either `key' or `rng' is NULL
--  * @returns BOTAN_FFI_ERROR_BAD_PARAMETER unexpected value for either `pbits' or
--  *          `qbits'
--  * @returns BOTAN_FFI_ERROR_NOT_IMPLEMENTED functionality not implemented
--  *
-- */
-- BOTAN_PUBLIC_API(2,5) int botan_privkey_create_elgamal(
--                             botan_privkey_t* key,
--                             botan_rng_t rng,
--                             size_t pbits,
--                             size_t qbits);
foreign import ccall unsafe botan_privkey_create_elgamal
    :: Ptr PrivKeyPtr   -- key
    -> RandomPtr        -- rng
    -> CSize            -- pbits
    -> CSize            -- qbits
    -> IO BotanErrorCode

privKeyCreateElGamal :: Random -> Int -> Int -> IO PrivKey
privKeyCreateElGamal random pbits qbits = withRandomPtr random $ \ randomPtr -> do
    alloca $ \ outPtr -> do
        throwBotanIfNegative_ $ botan_privkey_create_elgamal outPtr randomPtr (fromIntegral pbits) (fromIntegral qbits)
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

-- /**
-- * Input currently assumed to be PKCS #8 structure;
-- * Set password to NULL to indicate no encryption expected
-- * Starting in 2.8.0, the rng parameter is unused and may be set to null
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_load(botan_privkey_t* key,
--                                              botan_rng_t rng,
--                                              const uint8_t bits[], size_t len,
--                                              const char* password);
foreign import ccall unsafe botan_privkey_load :: Ptr PrivKeyPtr -> RandomPtr -> Ptr Word8 -> CSize -> CString -> IO BotanErrorCode

-- NOTE: Expectes PKCS #8 / PEM structure
-- botan_privkey_export -> null password? and botan_privkey_export_encrypted_... -> use a password?
privKeyLoad :: ByteString -> ByteString -> IO PrivKey
privKeyLoad bits password = alloca $ \ outPtr -> do
    asBytesLen bits $ \ bitsPtr bitsLen -> do
        let asCStringNullable str act = if ByteString.null str
            then act nullPtr
            else asCString str act
        asCStringNullable password $ \ passwordPtr -> do
            throwBotanIfNegative_ $ botan_privkey_load outPtr nullPtr bitsPtr bitsLen passwordPtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_privkey_destroy out
            return $ MkPrivKey foreignPtr

-- #define BOTAN_PRIVKEY_EXPORT_FLAG_DER 0
-- #define BOTAN_PRIVKEY_EXPORT_FLAG_PEM 1
type PrivKeyExportFlags = Word32
pattern BOTAN_PRIVKEY_EXPORT_FLAG_DER = 0 :: PrivKeyExportFlags
pattern BOTAN_PRIVKEY_EXPORT_FLAG_PEM = 1 :: PrivKeyExportFlags

-- /**
-- * On input *out_len is number of bytes in out[]
-- * On output *out_len is number of bytes written (or required)
-- * If out is not big enough no output is written, *out_len is set and 1 is returned
-- * Returns 0 on success and sets
-- * If some other error occurs a negative integer is returned.
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export(botan_privkey_t key,
--                                    uint8_t out[], size_t* out_len,
--                                    uint32_t flags);
foreign import ccall unsafe botan_privkey_export :: PrivKeyPtr -> Ptr Word8 -> Ptr CSize -> PrivKeyExportFlags -> IO BotanErrorCode

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
privKeyExport :: PrivKey -> PrivKeyExportFlags -> IO ByteString
privKeyExport sk flags = withPrivKeyPtr sk $ \ skPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_privkey_export skPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_privkey_export skPtr bytesPtr szPtr flags

-- /**
-- * View the private key's DER encoding
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_der(
--    botan_privkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- foreign import ccall unsafe botan_privkey_view_der
--     :: PrivKeyPtr
--     -> Ptr a
--     -> FunPtr (Ptr a -> Ptr Word8 -> CSize -> IO BotanErrorCode)
--     -> IO BotanErrorCode

-- NOTE: The bytestring only lives for the duration
-- TODO: This just causes blocking - figure it out later
-- privKeyViewDER :: PrivKey -> (ByteString -> IO BotanErrorCode) -> IO BotanErrorCode
-- privKeyViewDER privKey view = withPrivKeyPtr privKey $ \ privKeyPtr -> viewBin
--         (\ _ viewPtr viewLen -> view =<< ByteString.unsafePackCStringLen (castPtr viewPtr,fromIntegral viewLen))
--         (botan_privkey_view_der privKeyPtr nullPtr)

-- /**
-- * View the private key's PEM encoding
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_pem(
--    botan_privkey_t key,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: After figuring out the view functions

-- BOTAN_PUBLIC_API(2,8) int botan_privkey_algo_name(botan_privkey_t key, char out[], size_t* out_len);
foreign import ccall unsafe botan_privkey_algo_name :: PrivKeyPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

privKeyAlgoName :: PrivKey -> IO ByteString
privKeyAlgoName = mkGetName withPrivKeyPtr botan_privkey_algo_name

-- /**
-- * Set encryption_algo to NULL or "" to have the library choose a default (recommended)
-- */
-- BOTAN_DEPRECATED("Use botan_privkey_export_encrypted_pbkdf_{msec,iter}")
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted(botan_privkey_t key,
--                                              uint8_t out[], size_t* out_len,
--                                              botan_rng_t rng,
--                                              const char* passphrase,
--                                              const char* encryption_algo,
--                                              uint32_t flags);

-- /*
-- * Export a private key, running PBKDF for specified amount of time
-- * @param key the private key to export
-- *
-- * Note: starting in 3.0, the output iterations count is not provided
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted_pbkdf_msec(botan_privkey_t key,
--                                                         uint8_t out[], size_t* out_len,
--                                                         botan_rng_t rng,
--                                                         const char* passphrase,
--                                                         uint32_t pbkdf_msec_runtime,
--                                                         size_t* pbkdf_iterations_out,
--                                                         const char* cipher_algo,
--                                                         const char* pbkdf_algo,
--                                                         uint32_t flags);
foreign import ccall unsafe botan_privkey_export_encrypted_pbkdf_msec
    :: PrivKeyPtr   -- key
    -> Ptr Word8    -- out
    -> Ptr CSize    -- out_len
    -> RandomPtr    -- rng
    -> CString      -- passphrase
    -> Word32       -- pbkdf_msec_runtime
    -> Ptr CSize    -- pbkdf_iterations_out -- UNUSED, CAN PASS IN NULLPTR
    -> Ptr CChar    -- cipher_algo
    -> Ptr CChar    -- pbkdf_algo
    -> Word32       -- flags
    -> IO BotanErrorCode

-- TODO
-- privKeyExportEncryptedPBKDFMsec
--     :: PrivKey
--     -> Random
--     -> ByteString   -- Passphrase
--     -> Word32       -- Msec runtime
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFMsec = undefined

-- /**
-- * Export a private key using the specified number of iterations.
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export_encrypted_pbkdf_iter(botan_privkey_t key,
--                                                         uint8_t out[], size_t* out_len,
--                                                         botan_rng_t rng,
--                                                         const char* passphrase,
--                                                         size_t pbkdf_iterations,
--                                                         const char* cipher_algo,
--                                                         const char* pbkdf_algo,
--                                                         uint32_t flags);
foreign import ccall unsafe botan_privkey_export_encrypted_pbkdf_iter
    :: PrivKeyPtr   -- key
    -> Ptr Word8    -- out
    -> Ptr CSize    -- out_len
    -> RandomPtr    -- rng
    -> CString      -- passphrase
    -> CSize        -- pbkdf_iterations
    -> Ptr CChar    -- cipher_algo
    -> Ptr CChar    -- pbkdf_algo
    -> Word32       -- flags
    -> IO BotanErrorCode

-- privKeyExportEncryptedPBKDFIter
--     :: PrivKey
--     -> Random
--     -> ByteString   -- Passphrase
--     -> CSize        -- Iterations
--     -> ByteString   -- Cipher algo
--     -> ByteString   -- PBKDF algo
--     -> Word32       -- Flags
--     -> IO ByteString 
-- privKeyExportEncryptedPBKDFIter = undefined

-- /**
-- * View the encryption of a private key (binary DER encoding)
-- *
-- * Set cipher_algo, pbkdf_algo to NULL to use defaults
-- * Set pbkdf_iterations to 0 to use defaults
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_der(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_iterations,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions

-- /**
-- * View the encryption of a private key (binary DER encoding)
-- *
-- * Set cipher_algo, pbkdf_algo to NULL to use defaults
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_der_timed(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_runtime_msec,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions

-- /**
-- * View the encryption of a private key (PEM encoding)
-- *
-- * Set cipher_algo, pbkdf_algo to NULL to use defaults
-- * Set pbkdf_iterations to 0 to use defaults
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_pem(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_iterations,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: After figuring out the view functions

-- /**
-- * View the encryption of a private key (PEM encoding)
-- *
-- * Set cipher_algo, pbkdf_algo to NULL to use defaults
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_privkey_view_encrypted_pem_timed(
--    botan_privkey_t key,
--    botan_rng_t rng,
--    const char* passphrase,
--    const char* cipher_algo,
--    const char* pbkdf_algo,
--    size_t pbkdf_runtime_msec,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: After figuring out the view functions

-- typedef struct botan_pubkey_struct* botan_pubkey_t;
data PubKeyStruct
type PubKeyPtr = Ptr PubKeyStruct

newtype PubKey = MkPubKey { getPubKeyForeignPtr :: ForeignPtr PubKeyStruct }

withPubKeyPtr :: PubKey -> (PubKeyPtr -> IO a) -> IO a
withPubKeyPtr = withForeignPtr . getPubKeyForeignPtr

type PubKeyName = ByteString

-- /**
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_destroy(botan_pubkey_t key);
foreign import ccall unsafe "&botan_pubkey_destroy" botan_pubkey_destroy :: FinalizerPtr PubKeyStruct

pubKeyDestroy :: PubKey -> IO ()
pubKeyDestroy pubKey = finalizeForeignPtr (getPubKeyForeignPtr pubKey)

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_load(botan_pubkey_t* key, const uint8_t bits[], size_t len);
foreign import ccall unsafe botan_pubkey_load :: Ptr PubKeyPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

pubKeyLoad :: ByteString -> IO PubKey
pubKeyLoad = mkInit_bytes_len MkPubKey botan_pubkey_load botan_pubkey_destroy

withLoadedPubKey :: ByteString -> (PubKey -> IO a) -> IO a
withLoadedPubKey = mkWithTemp1 pubKeyLoad pubKeyDestroy

-- BOTAN_PUBLIC_API(2,0) int botan_privkey_export_pubkey(botan_pubkey_t* out, botan_privkey_t in);
foreign import ccall unsafe botan_privkey_export_pubkey :: Ptr PubKeyPtr -> PrivKeyPtr -> IO BotanErrorCode

privKeyExportPubKey :: PrivKey -> IO PubKey
privKeyExportPubKey = mkInit_with MkPubKey botan_privkey_export_pubkey botan_pubkey_destroy withPrivKeyPtr

withExportedPubKey :: PrivKey -> (PubKey -> IO a) -> IO a
withExportedPubKey = mkWithTemp1 privKeyExportPubKey pubKeyDestroy

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_export(botan_pubkey_t key, uint8_t out[], size_t* out_len, uint32_t flags);
foreign import ccall unsafe botan_pubkey_export :: PubKeyPtr -> Ptr Word8 -> Ptr CSize -> PubKeyExportFlags -> IO BotanErrorCode

type PubKeyExportFlags = Word32
pattern BOTAN_PUBKEY_EXPORT_FLAG_DER = BOTAN_PRIVKEY_EXPORT_FLAG_DER :: PubKeyExportFlags -- Not a real flag
pattern BOTAN_PUBKEY_EXPORT_FLAG_PEM = BOTAN_PRIVKEY_EXPORT_FLAG_PEM :: PubKeyExportFlags -- Not a real flag

-- NOTE: Different from allocBytesQuerying / INSUFFICIENT_BUFFER_SPACE
pubKeyExport :: PubKey -> PubKeyExportFlags -> IO ByteString
pubKeyExport pk flags = withPubKeyPtr pk $ \ pkPtr -> do
    alloca $ \szPtr -> do
        poke szPtr 0
        -- NOTE: Presumed be -1
        _ <- botan_pubkey_export pkPtr nullPtr szPtr flags
        sz <- peek szPtr
        allocBytes (fromIntegral sz) $ \ bytesPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_export pkPtr bytesPtr szPtr flags

-- /**
-- * View the public key's DER encoding
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_pubkey_view_der(
--    botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: When we figure out view functions

-- /**
-- * View the public key's PEM encoding
-- */
-- BOTAN_PUBLIC_API(3,0) int botan_pubkey_view_pem(
--    botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_str_fn view);
-- TODO: When we figure out view functions

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_algo_name(botan_pubkey_t key, char out[], size_t* out_len);
foreign import ccall unsafe botan_pubkey_algo_name :: PubKeyPtr -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

pubKeyAlgoName :: PubKey -> IO ByteString
pubKeyAlgoName = mkGetName withPubKeyPtr botan_pubkey_algo_name

-- /**
-- * Returns 0 if key is valid, negative if invalid key or some other error
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_check_key(botan_pubkey_t key, botan_rng_t rng, uint32_t flags);
foreign import ccall unsafe botan_pubkey_check_key :: PubKeyPtr -> RandomPtr -> PubKeyCheckKeyFlags -> IO BotanErrorCode

pubKeyCheckKey :: PubKey -> Random -> PubKeyCheckKeyFlags -> IO Bool
pubKeyCheckKey pk random flags = withPubKeyPtr pk $ \ pkPtr -> do
    withRandomPtr random $ \ randomPtr -> do
        throwBotanCatchingSuccess $ botan_pubkey_check_key pkPtr randomPtr flags

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_estimated_strength(botan_pubkey_t key, size_t* estimate);
foreign import ccall unsafe botan_pubkey_estimated_strength :: PubKeyPtr -> Ptr CSize -> IO BotanErrorCode

-- Annoying - this mixes cint and csize
--  I need to consolidate getsize / getint
pubKeyEstimatedStrength :: PubKey -> IO Int
pubKeyEstimatedStrength pk = fromIntegral <$> mkGetSize withPubKeyPtr botan_pubkey_estimated_strength pk

-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_fingerprint(botan_pubkey_t key, const char* hash,
--                                        uint8_t out[], size_t* out_len);
foreign import ccall unsafe botan_pubkey_fingerprint :: PubKeyPtr -> CString -> Ptr Word8 -> Ptr CSize -> IO BotanErrorCode

pubKeyFingerprint :: PubKey -> ByteString -> IO ByteString
pubKeyFingerprint pk algo = withPubKeyPtr pk $ \ pkPtr -> do
    asCString algo $ \ algoPtr -> do
        allocBytesQuerying $ \ outPtr outLen -> botan_pubkey_fingerprint
            pkPtr
            algoPtr
            outPtr
            outLen

-- /*
-- * Get arbitrary named fields from public or private keys
-- */
-- BOTAN_PUBLIC_API(2,0) int botan_pubkey_get_field(botan_mp_t output,
--                                      botan_pubkey_t key,
--                                      const char* field_name);
foreign import ccall unsafe botan_pubkey_get_field
    :: MPPtr
    -> PubKeyPtr
    -> CString
    -> IO BotanErrorCode

-- NOTE: Sets the MP
pubKeyGetField :: MP -> PubKey -> ByteString -> IO ()
pubKeyGetField mp pk field = withMPPtr mp $ \ mpPtr -> do
    withPubKeyPtr pk $ \ pkPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_pubkey_get_field mpPtr pkPtr fieldPtr

-- BOTAN_PUBLIC_API(2,0) int botan_privkey_get_field(botan_mp_t output,
--                                       botan_privkey_t key,
--                                       const char* field_name);
foreign import ccall unsafe botan_privkey_get_field
    :: MPPtr
    -> PrivKeyPtr
    -> CString
    -> IO BotanErrorCode

-- NOTE: Sets the MP
privKeyGetField :: MP -> PrivKey -> ByteString -> IO ()
privKeyGetField mp sk field = withMPPtr mp $ \ mpPtr -> do
    withPrivKeyPtr sk $ \ skPtr -> do
        asCString field $ \ fieldPtr -> do
            throwBotanIfNegative_ $ botan_privkey_get_field mpPtr skPtr fieldPtr

-- /*
-- * Algorithm specific key operations: ECDSA and ECDH
-- */
-- BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_ecdsa(botan_privkey_t* key,
--                              const botan_mp_t scalar,
--                              const char* curve_name);
foreign import ccall unsafe botan_privkey_load_ecdsa
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPrivKeyLoadECDSA :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadECDSA = mkPrivKeyLoad1_name botan_privkey_load_ecdsa

-- BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_ecdsa(botan_pubkey_t* key,
--                             const botan_mp_t public_x,
--                             const botan_mp_t public_y,
--                             const char* curve_name);
foreign import ccall unsafe botan_pubkey_load_ecdsa
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPubKeyLoadECDSA :: MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoadECDSA = mkPubKeyLoad2_name botan_pubkey_load_ecdsa

-- BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_ecdh(botan_privkey_t* key,
--                             const botan_mp_t scalar,
--                             const char* curve_name);v
foreign import ccall unsafe botan_privkey_load_ecdh
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPrivKeyLoadECDH :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadECDH = mkPrivKeyLoad1_name botan_privkey_load_ecdh

-- BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_ecdh(botan_pubkey_t* key,
--                            const botan_mp_t public_x,
--                            const botan_mp_t public_y,
--                            const char* curve_name);
foreign import ccall unsafe botan_pubkey_load_ecdh
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPubKeyLoadECDH :: MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoadECDH = mkPubKeyLoad2_name botan_pubkey_load_ecdh

-- BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_sm2(botan_privkey_t* key,
--                            const botan_mp_t scalar,
--                            const char* curve_name);
foreign import ccall unsafe botan_privkey_load_sm2
    :: Ptr PrivKeyPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPrivKeyLoadSM2 :: MP -> ByteString -> IO PrivKey
mkPrivKeyLoadSM2 = mkPrivKeyLoad1_name botan_privkey_load_sm2

-- BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_sm2(botan_pubkey_t* key,
--                           const botan_mp_t public_x,
--                           const botan_mp_t public_y,
--                           const char* curve_name);
foreign import ccall unsafe botan_pubkey_load_sm2
    :: Ptr PubKeyPtr
    -> MPPtr
    -> MPPtr
    -> CString
    -> IO BotanErrorCode

mkPubKeyLoadSM2 = mkPubKeyLoad2_name botan_pubkey_load_sm2

-- BOTAN_DEPRECATED("Use botan_privkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_privkey_load_sm2_enc(botan_privkey_t* key,
--                                const botan_mp_t scalar,
--                                const char* curve_name);

-- BOTAN_DEPRECATED("Use botan_pubkey_load_sm2") BOTAN_PUBLIC_API(2,2)
-- int botan_pubkey_load_sm2_enc(botan_pubkey_t* key,
--                               const botan_mp_t public_x,
--                               const botan_mp_t public_y,
--                               const char* curve_name);

-- BOTAN_PUBLIC_API(2,3)
-- int botan_pubkey_sm2_compute_za(uint8_t out[],
--                                 size_t* out_len,
--                                 const char* ident,
--                                 const char* hash_algo,
--                                 const botan_pubkey_t key);
-- TODO: Figure out what this is

-- /**
-- * View the uncompressed public point associated with the key
-- */
-- BOTAN_PUBLIC_API(3,0)
-- int botan_pubkey_view_ec_public_point(
--    const botan_pubkey_t key,
--    botan_view_ctx ctx,
--    botan_view_bin_fn view);
-- TODO: After figuring out the view functions

-- Helpers

mkPrivKeyLoad1_name
    :: (Ptr PrivKeyPtr -> MPPtr -> CString -> IO BotanErrorCode)
    -> MP -> ByteString -> IO PrivKey
mkPrivKeyLoad1_name load a name = alloca $ \ outPtr -> do
    withMPPtr a $ \ aPtr -> do
        asCString name $ \ namePtr -> do
            throwBotanIfNegative_ $ load outPtr aPtr namePtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_privkey_destroy out
            return $ MkPrivKey foreignPtr

mkPrivKeyLoad3
    :: (Ptr PrivKeyPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad3 load a b c = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

mkPrivKeyLoad4
    :: (Ptr PrivKeyPtr-> MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PrivKey
mkPrivKeyLoad4 load a b c d = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr dPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_privkey_destroy out
        return $ MkPrivKey foreignPtr

--

mkPubKeyLoad2
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> IO PubKey
mkPubKeyLoad2 load a b = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b] $ \ [aPtr,bPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr

mkPubKeyLoad2_name
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> CString -> IO BotanErrorCode)
    -> MP -> MP -> ByteString -> IO PubKey
mkPubKeyLoad2_name load x y name = alloca $ \ outPtr -> do
    withPtrs withMPPtr [x,y] $ \ [xPtr,yPtr] -> do
        asCString name $ \ namePtr -> do
            throwBotanIfNegative_ $ load outPtr xPtr yPtr namePtr
            out <- peek outPtr
            foreignPtr <- newForeignPtr botan_pubkey_destroy out
            return $ MkPubKey foreignPtr

mkPubKeyLoad3
    :: (Ptr PubKeyPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad3 load a b c = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c] $ \ [aPtr,bPtr,cPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr

mkPubKeyLoad4
    :: (Ptr PubKeyPtr-> MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode)
    -> MP -> MP -> MP -> MP -> IO PubKey
mkPubKeyLoad4 load a b c d = alloca $ \ outPtr -> do
    withPtrs withMPPtr [a,b,c,d] $ \ [aPtr,bPtr,cPtr,dPtr] -> do
        throwBotanIfNegative_ $ load outPtr aPtr bPtr cPtr dPtr
        out <- peek outPtr
        foreignPtr <- newForeignPtr botan_pubkey_destroy out
        return $ MkPubKey foreignPtr
