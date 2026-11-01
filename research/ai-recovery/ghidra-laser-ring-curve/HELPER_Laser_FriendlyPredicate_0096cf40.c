/* Local J460 decompiler output.
 * VA: 0x0096cf40
 * Entry: 0096cf40
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: CanDamageEntity allegiance predicate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; CanDamageEntity allegiance predicate
    */

uint __fastcall HELPER_Laser_FriendlyPredicate(int param_1)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = *(int *)(param_1 + 0x3bc);
  if (iVar1 != 0) {
    uVar2 = *(uint *)(iVar1 + 0x28);
    if ((uVar2 == 2) || (uVar2 == 1000)) {
      if (*(int *)(iVar1 + 0x34) == 1) goto LAB_0096cf58;
    }
    else if ((uVar2 == 1) || (uVar2 == 3)) goto LAB_0096cf58;
  }
  uVar2 = *(uint *)(param_1 + 0x34);
  if ((uVar2 != 1) && (uVar2 != 3)) {
    return uVar2 & 0xffffff00;
  }
LAB_0096cf58:
  return CONCAT31((int3)(uVar2 >> 8),1);
}

