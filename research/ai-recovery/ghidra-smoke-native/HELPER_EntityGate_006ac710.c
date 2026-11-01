/* Local J460 decompiler output.
 * VA: 0x006ac710
 * Entry: 006ac710
 * Dispatcher: 0x006c2990
 * Types: 1000
 * Identities: 1000.141.*
 * Evidence: Smoke ignition gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1000; identities=1000.141.*; Smoke ignition gate */

uint __thiscall HELPER_EntityGate(int param_1_00,int param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = DAT_00c71678;
  uVar2 = *(uint *)(param_1_00 + 0x168) & 0x4000;
  if (uVar2 == 0) {
    uVar2 = HELPER_Entity_TimeGate();
    if ((char)uVar2 == '\0') {
      param_2 = *(int *)(iVar1 + 0x264f8) + param_2;
      return CONCAT31((int3)((uint)(param_2 / param_1) >> 8),param_2 % param_1 == 0);
    }
  }
  return uVar2 & 0xffffff00;
}

