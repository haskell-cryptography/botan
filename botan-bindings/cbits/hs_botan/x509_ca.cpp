#include "x509_ca.h"
#include "internal.h"

#if defined(BOTAN_HAS_X509_CERTIFICATES)
   #include <botan/x509self.h>
   #include <botan/x509_ca.h>
#endif

extern "C" {

using namespace Hs_Botan;
// using namespace Botan_FFI;

#if defined(BOTAN_HAS_X509_CERTIFICATES)

// struct hs_botan_x509_ca_struct { uint64_t value; };
// struct hs_botan_x509_csr_struct { uint64_t value; };
// struct hs_botan_x509_exts_struct { uint64_t value; };
// NOTE: Magic numbers generated randomly
HS_BOTAN_DECLARE_STRUCT(hs_botan_x509_ca_struct, Botan::X509_CA, 0x63458bb4);
HS_BOTAN_DECLARE_STRUCT(hs_botan_x509_csr_struct, Botan::PKCS10_Request, 0x3a369b4b);
HS_BOTAN_DECLARE_STRUCT(hs_botan_x509_exts_struct, Botan::Extensions, 0xb5ffd19c);

#endif

int hs_botan_x509_ca_create(hs_botan_x509_ca_t* ca, botan_x509_cert_t cert, botan_privkey_t key, const char* hash_fn, botan_rng_t rng) {

    if(!ca || !hash_fn) {
        return BOTAN_FFI_ERROR_NULL_POINTER;
    }

#if defined(BOTAN_HAS_X509_CERTIFICATES)

    // FROM botan cert load
    // return ffi_guard_thunk(__func__, [=]() -> int {
    //     auto c = std::make_unique<Botan::X509_Certificate>(cert_path);
    //     *cert_obj = new botan_x509_cert_struct(std::move(c));
    //     return BOTAN_FFI_SUCCESS;
    // });

    return BOTAN_FFI_SUCCESS;

#else

    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;

#endif

}

int hs_botan_x509_ca_create_padding(hs_botan_x509_ca_t* ca, botan_x509_cert_t cert, botan_privkey_t key, const char* hash_fn, const char* padding_fn, botan_rng_t rng) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_ca_destroy(hs_botan_x509_ca_t ca) {

/*
#if defined(BOTAN_HAS_X509_CERTIFICATES)
   return BOTAN_FFI_CHECKED_DELETE(cert);
#else
   BOTAN_UNUSED(cert);
   return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
#endif
*/

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

// struct hs_botan_x509_cert_options_struct { uint64_t value; };
// NOTE: Magic numbers generated randomly
// HS_BOTAN_DECLARE_STRUCT(hs_botan_x509_cert_options_struct, Botan::X509_Cert_Options, 0x90c5a192);
struct hs_botan_x509_cert_options_struct final : public hs_botan_struct<Botan::X509_Cert_Options, 0x90c5a192> { };

int hs_botan_x509_create_cert_req(hs_botan_x509_csr_t* csr, hs_botan_x509_cert_options_t opts, botan_privkey_t key, const char* hash_fn, botan_rng_t rng) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

int hs_botan_x509_csr_create(hs_botan_x509_csr_t* csr, botan_privkey_t key, const char* subject_dn, hs_botan_x509_exts_t extensions, const char* hash_fn, botan_rng_t rng, const char* padding_fn, const char* challenge) {
    return BOTAN_FFI_ERROR_NOT_IMPLEMENTED;
}

} // extern "C"
