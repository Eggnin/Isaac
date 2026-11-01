/* Local J460 decompiler output.
 * VA: 0x004530e0
 * Entry: 004530e0
 * Dispatcher: 0x006c2990
 * Types: 411
 * Identities: big_horn.attack_helper
 * Evidence: Called on Big Horn State 13 Shoot event
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=411; identities=big_horn.attack_helper; Called on Big
   Horn State 13 Shoot event */

void __fastcall HELPER_004530e0_BigHornAttackHelperD(int param_1)

{
  int iVar1;
  int iVar2;
  bool bVar3;
  
  iVar2 = *(int *)(param_1 + 0x3c0);
  while (iVar2 != 0) {
    *(undefined4 *)(iVar2 + 0x188) = 0;
    if (*(int *)(iVar2 + 0x3fc) == 2) {
      *(undefined4 *)(iVar2 + 0x33c) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(iVar2 + 0x340) = *(undefined4 *)(param_1 + 0x340);
      *(undefined4 *)(iVar2 + 0x358) = 0xc2ca0000;
    }
    iVar1 = *(int *)(*(int *)(param_1 + 0x3c0) + 0x3c0);
    bVar3 = iVar1 != iVar2;
    iVar2 = 0;
    if (bVar3) {
      iVar2 = iVar1;
    }
  }
  return;
}

