/* Local J460 decompiler output.
 * VA: 0x006ac560
 * Entry: 006ac560
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_damage_filter
 * Evidence: Public pre-damage filter
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_damage_filter; Public pre-damage
   filter */

undefined __thiscall HELPER_Entity_DamageFilter(int param_1_00,int param_1)

{
  char cVar1;
  undefined extraout_DL;
  int iVar2;
  
  if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
    if (((param_1 != 0) && (*(int *)(param_1 + 0x28) == 1)) &&
       (cVar1 = FUN_006a8fa0(param_1), cVar1 != '\0')) {
      return 0;
    }
    if ((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*(int *)(param_1_00 + 0x28) == 1)) {
      iVar2 = 1;
      goto LAB_006ac5c1;
    }
  }
  iVar2 = *(int *)(param_1_00 + 0x28);
  if (0x3dd < iVar2 - 10U) {
    return 0;
  }
LAB_006ac5c1:
  if ((((*(int *)(param_1_00 + 0x188) == 1) || (*(int *)(param_1_00 + 0x188) == 0)) ||
      ((*(char *)(param_1_00 + 0x3b0) != '\0' || (*(char *)(param_1_00 + 0x173) != '\0')))) ||
     (((cVar1 = FUN_00417430(0x10,0), cVar1 != '\0' && (iVar2 != 0x322)) && (iVar2 != 0x362)))) {
    return 0;
  }
  if (param_1 == 0) {
    return 1;
  }
  if ((*(uint *)(param_1_00 + 0x168) & 0x20000000) != 0) {
    iVar2 = FUN_006a89d0();
    if ((((*(uint *)(iVar2 + 0x168) & 0x20000000) == 0) && (*(int *)(iVar2 + 0x28) != 1)) &&
       (*(int *)(iVar2 + 0x28) != 3)) {
      return extraout_DL;
    }
    return 0;
  }
  return 1;
}

