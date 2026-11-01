/* Local J460 decompiler output.
 * VA: 0x00431640
 * Entry: 00431640
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser CanDamageEntity membership
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser CanDamageEntity membership */

undefined4 __fastcall HELPER_HitList_Contains(uint **param_1)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  uVar3 = FUN_006b62b0();
  puVar1 = *param_1;
  uVar4 = (int)param_1[1] - (int)puVar1 >> 2;
  while (uVar2 = uVar4, 0 < (int)uVar2) {
    uVar4 = uVar2 >> 1;
    if (puVar1[uVar4] < uVar3) {
      puVar1 = puVar1 + uVar4 + 1;
      uVar4 = uVar2 + (-1 - uVar4);
    }
  }
  if ((puVar1 != param_1[1]) && (*puVar1 == uVar3)) {
    return 1;
  }
  return 0;
}

