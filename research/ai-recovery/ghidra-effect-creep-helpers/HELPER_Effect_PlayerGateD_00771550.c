/* Local J460 decompiler output.
 * VA: 0x00771550
 * Entry: 00771550
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.*
 * Evidence: Effect Update 0x5EB8CC..0x5EBFA6 call site
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.*; Effect Update
   0x5EB8CC..0x5EBFA6 call site */

bool __thiscall HELPER_Effect_PlayerGateD(int param_1_00,uint param_1,char param_2)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  uint uVar5;
  
  uVar5 = *(uint *)(param_1_00 + 0x2ef8);
  if (((uVar5 != 0) && (uVar5 == param_1)) && (*(char *)(param_1_00 + 0x2ef0) != '\0')) {
    return true;
  }
  if (param_2 != '\0') {
    uVar5 = 1;
    cVar1 = FUN_007706e0(0x8b,0);
    if ((cVar1 != '\0') || (cVar1 = FUN_007706e0(0x1ca,0), cVar1 != '\0')) {
      uVar5 = 2;
    }
    uVar3 = 0;
    puVar4 = (uint *)(param_1_00 + 0x16c0);
    do {
      if ((*puVar4 & 0x7fff) == param_1) {
        return true;
      }
      uVar3 = uVar3 + 1;
      puVar4 = puVar4 + 1;
    } while (uVar3 < uVar5);
    return false;
  }
  if (((uVar5 != 0) && (uVar5 == param_1)) && (*(char *)(param_1_00 + 0x2ef0) == '\0')) {
    iVar2 = FUN_007cb6e0(param_1);
    return 1 < iVar2;
  }
  iVar2 = FUN_007cb6e0(param_1);
  return 0 < iVar2;
}

