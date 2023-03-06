#include <stdbool.h>
#include <stdint.h>

inline bool __atomic_compare_exchange_8 (volatile void *ptr, void *expected, uint64_t desired, bool weak, int success_memorder, int failure_memorder) {
  (void) weak;
  (void) success_memorder;
  (void) failure_memorder;

  uint64_t *dst = (uint64_t *) ptr;
  uint64_t *old = (uint64_t *) expected;

  if (*dst == *old) {
    *dst = desired;
    return true;
  } else {
    *old = *dst;
    return false;
  }
}
