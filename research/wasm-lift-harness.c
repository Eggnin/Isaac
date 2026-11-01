#include "lifted_decls.h"

static uint8_t arena[65536];
uint8_t *recomp_mem_base = arena;
uint32_t g_reentry_eip;
static uint32_t seed = 0x1843792u;
static uint32_t random32(void) {
    seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5;
    return seed;
}
static CpuState state(void) {
    CpuState s = {0};
    s.ESP = 0xf000; s.ECX = 0x100;
    MEMW32(s.ESP, 0xdeadbeef);
    return s;
}
int main(void) {
    unsigned failures = 0;
    const unsigned n = 20000;
    for (unsigned i = 0; i < n; ++i) {
        CpuState s = state();
        uint32_t value = random32();
        MEMW32(s.ECX + 0x13c0, value);
        sub_004253b0(&s);
        failures += s.EAX != value || s.EIP != 0xdeadbeef || s.ESP != 0xf004;
        s = state(); value = random32();
        MEMW32(s.ECX + 0x13bc, value);
        sub_0060d080(&s);
        failures += s.EAX != value || s.EIP != 0xdeadbeef || s.ESP != 0xf004;

        unsigned la = random32() % 65, lb = random32() % 65;
        for (unsigned j = 0; j < 65; ++j) {
            arena[0x100 + j] = (uint8_t)random32();
            arena[0x200 + j] = arena[0x100 + j];
        }
        if (i % 3 == 0) la = lb;
        if (i % 2) arena[0x200 + random32() % 65] ^= 0x80;
        int reference = memcmp(arena + 0x100, arena + 0x200, la < lb ? la : lb);
        if (!reference) reference = (la > lb) - (la < lb);
        s = state(); s.EDX = la;
        MEMW32(s.ESP + 4, 0x200); MEMW32(s.ESP + 8, lb);
        sub_00423480(&s);
        int32_t actual = (int32_t)s.EAX;
        failures += ((actual > 0) - (actual < 0)) != ((reference > 0) - (reference < 0))
                    || s.EIP != 0xdeadbeef || s.ESP != 0xf004;
    }
    printf("{\"functions\":3,\"cases_per_function\":%u,\"total_cases\":%u,\"failures\":%u}\n", n, n * 3, failures);
    return failures != 0;
}
