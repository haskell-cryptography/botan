#ifndef HS_BOTAN_X509_CRL_H
#define HS_BOTAN_X509_CRL_H

#include <botan/ffi.h>

extern "C" {

    /*
    -- X509_CA::X509_CA(const X509_Certificate &cert, const Private_Key &key, const std::string &hash_fn, RandomNumberGenerator &rng)
    hs_botan_x509_ca_create         :: Ptr X509CAPtr -> X509CertPtr -> PrivKeyPtr -> Ptr CChar -> RNGPtr -> IO BotanErrorCode

    -- X509_CA::X509_CA(const X509_Certificate &cert, const Private_Key &key, const std::string &hash_fn, const std::string &padding_fn, RandomNumberGenerator &rng)
    hs_botan_x509_ca_create_padding :: Ptr X509CAPtr -> X509CertPtr -> PrivKeyPtr -> Ptr CChar -> Ptr CChar -> RNGPtr -> IO BotanErrorCode

    -- X509_Certificate X509_CA::sign_request(const PKCS10_Request &req, RandomNumberGenerator &rng, const X509_Time &not_before, const X509_Time &not_after)¶
    hs_botan_x509_ca_sign_request   :: Ptr X509CAPtr -> PKCS10RequestPtr -> RNGPtr -> Word64 -> Word64 -> IO BotanErrorCode

    -- static X509_Certificate X509_CA::make_cert(PK_Signer &signer, RandomNumberGenerator &rng, const BigInt &serial_number, const AlgorithmIdentifier &sig_algo, const std::vector<uint8_t> &pub_key, const X509_Time &not_before, const X509_Time &not_after, const X509_DN &issuer_dn, const X509_DN &subject_dn, const Extensions &extensions)
    hs_botan_x509_ca_make_cert      :: Ptr X509CAPtr -> PKSignerPtr -> RNGPtr -> MP -> Ptr CChar -> Ptr Word8 -> CSize -> Word64 -> Word64 -> Ptr CChar -> Ptr CChar -> X509ExtensionsPtr -> IO BotanErrorCode

    -- static Extensions X509_CA::choose_extensions(const PKCS10_Request &req, const X509_Certificate &ca_certificate, const std::string &hash_fn)
    hs_botan_x509_ca_choose_extensions :: Ptr X509ExtensionsPtr -> PKCS10RequestPtr -> X509CertPtr -> Ptr CChar -> IO BotanErrorCode
    */

    /*
    PKCS10_Request create_cert_req(const X509_Cert_Options &opts, const Private_Key &key, const std::string &hash_fn, RandomNumberGenerator &rng)¶
    PKCS10_Request PKCS10_Request::create(const Private_Key &key, const X509_DN &subject_dn, const Extensions &extensions, const std::string &hash_fn, RandomNumberGenerator &rng, const std::string &padding_scheme = "", const std::string &challenge = "")
    */

}

#endif
