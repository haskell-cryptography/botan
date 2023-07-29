module Botan.Bindings.MPI where

import Botan.Bindings.Error
import Botan.Bindings.Prelude
import Botan.Bindings.Random

-- /*
-- * Multiple precision integers (MPI)
-- */
-- typedef struct botan_mp_struct* botan_mp_t;
data MPStruct
type MPPtr = Ptr MPStruct

-- /**
-- * Initialize an MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_init(botan_mp_t* mp);
foreign import ccall unsafe botan_mp_init :: Ptr MPPtr -> IO BotanErrorCode

-- /**
-- * Destroy (deallocate) an MPI
-- * @return 0 if success, error if invalid object handle
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_destroy(botan_mp_t mp);
foreign import ccall unsafe "&botan_mp_destroy" botan_mp_destroy :: FinalizerPtr MPStruct

-- /**
-- * Convert the MPI to a hex string. Writes botan_mp_num_bytes(mp)*2 + 1 bytes
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_hex(const botan_mp_t mp, char* out);
foreign import ccall unsafe botan_mp_to_hex :: MPPtr -> Ptr CChar -> IO BotanErrorCode

-- /**
-- * Convert the MPI to a string. Currently base == 10 and base == 16 are supported.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_str(const botan_mp_t mp, uint8_t base, char* out, size_t* out_len);
-- NOTE: Despite the size ptr, this appears to be returning null-terminated CStrings
-- NOTE: base 16 encoding has an `0x` prefix, base 10 does not.
-- FRAGILE / AWKWARD FUNCTION
foreign import ccall unsafe botan_mp_to_str :: MPPtr -> Word8 -> Ptr CChar -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Set the MPI to zero
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_clear(botan_mp_t mp);
foreign import ccall unsafe botan_mp_clear :: MPPtr -> IO BotanErrorCode

-- /**
-- * Set the MPI value from an int
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_int(botan_mp_t mp, int initial_value);
foreign import ccall unsafe botan_mp_set_from_int :: MPPtr -> CInt -> IO BotanErrorCode

-- /**
-- * Set the MPI value from another MP object
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_mp(botan_mp_t dest, const botan_mp_t source);
foreign import ccall unsafe botan_mp_set_from_mp :: MPPtr -> MPPtr -> IO BotanErrorCode

-- /**
-- * Set the MPI value from a string
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_str(botan_mp_t dest, const char* str);
-- NOTE: leading prefix 0x is accepted
foreign import ccall unsafe botan_mp_set_from_str :: MPPtr -> CString -> IO BotanErrorCode

-- /**
-- * Set the MPI value from a string with arbitrary radix.
-- * For arbitrary being 10 or 16.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_from_radix_str(botan_mp_t dest, const char* str, size_t radix);
foreign import ccall unsafe botan_mp_set_from_radix_str :: MPPtr -> CString -> CSize -> IO BotanErrorCode

-- /**
-- * Return the number of significant bits in the MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_num_bits(const botan_mp_t n, size_t* bits);
foreign import ccall unsafe botan_mp_num_bits :: MPPtr -> Ptr CSize -> IO BotanErrorCode

-- /**
-- * Return the number of significant bytes in the MPI
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_num_bytes(const botan_mp_t n, size_t* bytes);
foreign import ccall unsafe botan_mp_num_bytes :: MPPtr -> Ptr CSize -> IO BotanErrorCode

-- /*
-- * Convert the MPI to a big-endian binary string. Writes botan_mp_num_bytes to vec
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_bin(const botan_mp_t mp, uint8_t vec[]);
foreign import ccall unsafe botan_mp_to_bin :: MPPtr -> Ptr Word8 -> IO BotanErrorCode

-- /*
-- * Set an MP to the big-endian binary value
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_from_bin(const botan_mp_t mp, const uint8_t vec[], size_t vec_len);
foreign import ccall unsafe botan_mp_from_bin :: MPPtr -> Ptr Word8 -> CSize -> IO BotanErrorCode

-- /*
-- * Convert the MPI to a uint32_t, if possible. Fails if MPI is negative or too large.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_to_uint32(const botan_mp_t mp, uint32_t* val);
foreign import ccall unsafe botan_mp_to_uint32 :: MPPtr -> Ptr Word32 -> IO BotanErrorCode

-- /**
-- * This function should have been named mp_is_non_negative. Returns 1
-- * iff mp is greater than *or equal to* zero. Use botan_mp_is_negative
-- * to detect negative numbers, botan_mp_is_zero to check for zero.
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_positive(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_positive :: MPPtr -> IO BotanErrorCode

-- /**
-- * Return 1 iff mp is less than 0
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_negative(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_negative :: MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_flip_sign(botan_mp_t mp);
foreign import ccall unsafe botan_mp_flip_sign :: MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_zero(const botan_mp_t mp);
foreign import ccall unsafe botan_mp_is_zero :: MPPtr -> IO BotanErrorCode

-- BOTAN_DEPRECATED("Use botan_mp_get_bit(0)") BOTAN_PUBLIC_API(2,1)
-- int botan_mp_is_odd(const botan_mp_t mp);
-- BOTAN_DEPRECATED("Use botan_mp_get_bit(0)") BOTAN_PUBLIC_API(2,1)
-- int botan_mp_is_even(const botan_mp_t mp);

-- NOTE: *specifically* Word32 / UInt32 - not CInt, not CSize
-- BOTAN_PUBLIC_API(2,8) int botan_mp_add_u32(botan_mp_t result, const botan_mp_t x, uint32_t y);
-- BOTAN_PUBLIC_API(2,8) int botan_mp_sub_u32(botan_mp_t result, const botan_mp_t x, uint32_t y);
foreign import ccall unsafe botan_mp_add_u32 :: MPPtr -> MPPtr -> Word32 -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_sub_u32 :: MPPtr -> MPPtr -> Word32 -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_add(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
-- BOTAN_PUBLIC_API(2,1) int botan_mp_sub(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
-- BOTAN_PUBLIC_API(2,1) int botan_mp_mul(botan_mp_t result, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_add :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_sub :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode
foreign import ccall unsafe botan_mp_mul :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_div(botan_mp_t quotient,
--                                        botan_mp_t remainder,
--                                        const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_div :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_mod_mul(botan_mp_t result, const botan_mp_t x,
--                                            const botan_mp_t y, const botan_mp_t mod);
foreign import ccall unsafe botan_mp_mod_mul :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- /*
-- * Returns 0 if x != y
-- * Returns 1 if x == y
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_equal(const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_equal :: MPPtr -> IO BotanErrorCode

-- /*
-- * Sets *result to comparison result:
-- * -1 if x < y, 0 if x == y, 1 if x > y
-- * Returns negative number on error or zero on success
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_cmp(int* result, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_cmp :: Ptr CInt -> MPPtr -> MPPtr -> IO BotanErrorCode

-- /*
-- * Swap two botan_mp_t
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_swap(botan_mp_t x, botan_mp_t y);
foreign import ccall unsafe botan_mp_swap :: MPPtr -> MPPtr -> IO BotanErrorCode

-- /* Return (base^exponent) % modulus */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_powmod(botan_mp_t out, const botan_mp_t base, const botan_mp_t exponent, const botan_mp_t modulus);
foreign import ccall unsafe botan_mp_powmod :: MPPtr -> MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_lshift(botan_mp_t out, const botan_mp_t in, size_t shift);
foreign import ccall unsafe botan_mp_lshift :: MPPtr -> MPPtr -> CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rshift(botan_mp_t out, const botan_mp_t in, size_t shift);
foreign import ccall unsafe botan_mp_rshift :: MPPtr -> MPPtr -> CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_mod_inverse(botan_mp_t out, const botan_mp_t in, const botan_mp_t modulus);
foreign import ccall unsafe botan_mp_mod_inverse :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rand_bits(botan_mp_t rand_out, botan_rng_t rng, size_t bits);
foreign import ccall unsafe botan_mp_rand_bits :: MPPtr -> RandomPtr -> CSize -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_rand_range(botan_mp_t rand_out, botan_rng_t rng,
--                                   const botan_mp_t lower_bound, const botan_mp_t upper_bound);
foreign import ccall unsafe botan_mp_rand_range :: MPPtr -> RandomPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- BOTAN_PUBLIC_API(2,1) int botan_mp_gcd(botan_mp_t out, const botan_mp_t x, const botan_mp_t y);
foreign import ccall unsafe botan_mp_gcd :: MPPtr -> MPPtr -> MPPtr -> IO BotanErrorCode

-- /**
-- * Returns 0 if n is not prime
-- * Returns 1 if n is prime
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_is_prime(const botan_mp_t n, botan_rng_t rng, size_t test_prob);
foreign import ccall unsafe botan_mp_is_prime :: MPPtr -> RandomPtr -> CSize -> IO BotanErrorCode

-- /**
-- * Returns 0 if specified bit of n is not set
-- * Returns 1 if specified bit of n is set
-- * Returns negative number on error
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_get_bit(const botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_get_bit :: MPPtr -> CSize -> IO BotanErrorCode

-- /**
-- * Set the specified bit
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_set_bit(botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_set_bit :: MPPtr -> CSize -> IO BotanErrorCode

-- /**
-- * Clear the specified bit
-- */
-- BOTAN_PUBLIC_API(2,1) int botan_mp_clear_bit(botan_mp_t n, size_t bit);
foreign import ccall unsafe botan_mp_clear_bit :: MPPtr -> CSize -> IO BotanErrorCode
