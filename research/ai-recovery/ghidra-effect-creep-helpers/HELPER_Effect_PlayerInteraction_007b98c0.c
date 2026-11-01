/* Local J460 decompiler output.
 * VA: 0x007b98c0
 * Entry: 007b98c0
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

void __thiscall
HELPER_Effect_PlayerInteraction
          (int param_1_00,undefined4 param_1,undefined4 param_2,undefined4 param_3,
          undefined4 param_4,undefined4 param_5,char param_6)

{
  char cVar1;
  
  cVar1 = FUN_007b9940(0xffffffff);
  if (((cVar1 != '\0') || (param_6 != '\0')) && (*(char *)(param_1_00 + 0x1570) == '\0')) {
    cVar1 = FUN_007b9940(0);
    if (cVar1 != '\0') {
      *(undefined4 *)(param_1_00 + 0x1874) = param_1;
      *(undefined4 *)(param_1_00 + 0x1878) = param_2;
      *(undefined4 *)(param_1_00 + 0x187c) = param_3;
      return;
    }
    *(undefined4 *)(param_1_00 + 0x1848) = param_1;
    *(undefined4 *)(param_1_00 + 0x184c) = param_2;
    *(undefined4 *)(param_1_00 + 0x1850) = param_3;
  }
  return;
}

