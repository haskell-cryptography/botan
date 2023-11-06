#include "x509_ca.h"

#if defined(BOTAN_HAS_X509_CERTIFICATES)
   #include <botan/x509_ca.h>
#endif

extern "C" {

struct botan_x509_ca_struct { uint64_t value; };
struct botan_x509_csr_struct { uint64_t value; };
struct botan_x509_exts_struct { uint64_t value; };

int hs_botan_x509_ca_create(hs_botan_x509_ca_t* ca, botan_x509_cert_t cert, botan_privkey_t key, const char* hash_fn, botan_rng_t rng) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_ca_create_padding(hs_botan_x509_ca_t* ca, botan_x509_cert_t cert, botan_privkey_t key, const char* hash_fn, const char* padding_fn, botan_rng_t rng) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_ca_destroy(hs_botan_x509_ca_t ca) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_ca_sign_request(botan_x509_cert_t* cert, hs_botan_x509_csr_t csr, botan_rng_t rng, uint64_t not_before, uint64_t not_after) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_ca_make_cert(botan_x509_cert_t* cert, botan_pk_op_sign_t signer, botan_rng_t rng, botan_mp_t serial_number, const char* sig_algo, botan_pubkey_t key, uint64_t not_before, uint64_t not_after, const char* issuer_dn, const char* subject_dn, hs_botan_x509_exts_t exts) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}
int hs_botan_x509_ca_choose_extensions(hs_botan_x509_exts_t* exts, hs_botan_x509_csr_t csr, botan_x509_cert_t ca_cert, const char* hash_fn) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

// TODO: Move to x509_csr.cpp

struct hs_botan_x509_cert_options_struct { uint64_t value; };

int hs_botan_x509_create_cert_req(hs_botan_x509_csr_t* csr, hs_botan_x509_cert_options_t opts, botan_privkey_t key, const char* hash_fn, botan_rng_t rng) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_csr_create(hs_botan_x509_csr_t* csr, botan_privkey_t key, const char* subject_dn, hs_botan_x509_exts_t extensions, const char* hash_fn, botan_rng_t rng, const char* padding_fn, const char* challenge) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

}
