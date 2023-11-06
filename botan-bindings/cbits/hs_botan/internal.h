#ifndef HS_BOTAN_INTERNAL_H_
#define HS_BOTAN_INTERNAL_H_

// #include <botan/exceptn.h>
// #include <botan/ffi.h>
// #include <botan/mem_ops.h>
#include <cstdint>
#include <functional>
#include <memory>
#include <stdexcept>

// NOTE: This is not exposed, and cannot be imported
// #include <botan/internal/ffi_util.h>
// We will copy items from it and use our new namespace

namespace Hs_Botan {

template <typename T, uint32_t MAGIC>
struct hs_botan_struct {
   public:
      hs_botan_struct(std::unique_ptr<T> obj) : m_magic(MAGIC), m_obj(std::move(obj)) {}

      virtual ~hs_botan_struct() {
         m_magic = 0;
         m_obj.reset();
      }

      bool magic_ok() const { return (m_magic == MAGIC); }

      T* unsafe_get() const { return m_obj.get(); }

   private:
      uint32_t m_magic = 0;
      std::unique_ptr<T> m_obj;
};

#define HS_BOTAN_DECLARE_STRUCT(NAME, TYPE, MAGIC)                             \
struct NAME final : public Hs_Botan::hs_botan_struct<TYPE, MAGIC> {            \
        explicit NAME(std::unique_ptr<TYPE> x) : hs_botan_struct(std::move(x)) {} \
}

}  // namespace Hs_Botan

#endif