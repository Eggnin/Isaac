/* Local J460 decompiler output.
 * VA: 0x009a1610
 * Entry: 009a1610
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: HomingType 2 removes straight endpoint before walking
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; HomingType 2 removes straight
   endpoint before walking */

void __thiscall HELPER_LaserNode_PopBack(int param_1_00,int *param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  
  puVar1 = *(undefined4 **)(param_1_00 + 4);
  puVar4 = (undefined4 *)(param_2 + 0x18);
  if (puVar4 != puVar1) {
    puVar2 = (undefined4 *)(param_2 + 0x14);
    puVar3 = (undefined4 *)(param_2 + 0x2c);
    do {
      puVar2[-5] = *puVar4;
      puVar4 = puVar4 + 6;
      puVar2[-4] = puVar3[-4];
      puVar2[-3] = puVar3[-3];
      puVar2[-2] = puVar3[-2];
      puVar2[-1] = puVar3[-1];
      *puVar2 = *puVar3;
      puVar2 = puVar2 + 6;
      puVar3 = puVar3 + 6;
    } while (puVar4 != puVar1);
  }
  *(undefined4 **)(param_1_00 + 4) = puVar1 + -6;
  *param_1 = param_2;
  return;
}

