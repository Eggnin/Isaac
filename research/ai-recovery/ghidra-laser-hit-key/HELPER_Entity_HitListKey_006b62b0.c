/* Local J460 decompiler output.
 * VA: 0x006b62b0
 * Entry: 006b62b0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser DoDamage derives hit identity
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser DoDamage derives hit identity
    */

undefined4 __fastcall HELPER_Entity_HitListKey(int param_1)

{
  int iVar1;
  
  if (((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*(int *)(param_1 + 0x28) == 1)) ||
     (iVar1 = *(int *)(param_1 + 0x28), 0x3dd < iVar1 - 10U)) goto switchD_006b62ec_caseD_14;
  if (iVar1 < 0xd9) {
    if (iVar1 != 0xd8) {
      switch(iVar1) {
      case 0x13:
      case 0x1c:
      case 0x23:
      case 0x3e:
      case 0x59:
        break;
      default:
        goto switchD_006b62ec_caseD_14;
      }
    }
    if ((iVar1 == 0x59) || (iVar1 == 0x13)) goto switchD_006b62ec_caseD_14;
    if ((iVar1 != 0x1c) || (*(int *)(param_1 + 0x2c) != 2)) goto LAB_006b633c;
  }
  else {
    if (iVar1 < 0x38e) {
      if (((iVar1 != 0x38d) && (iVar1 != 0xef)) &&
         ((iVar1 != 0xf4 || (*(int *)(param_1 + 0x2c) != 2)))) goto switchD_006b62ec_caseD_14;
    }
    else if ((iVar1 != 0x390) && (iVar1 != 0x396)) goto switchD_006b62ec_caseD_14;
LAB_006b633c:
    if ((iVar1 != 0x3e) || (*(int *)(param_1 + 0x2c) != 1)) goto LAB_006b6350;
  }
  if (*(int *)(param_1 + 0x3c0) != 0) {
switchD_006b62ec_caseD_14:
    return *(undefined4 *)(param_1 + 0x20);
  }
LAB_006b6350:
  iVar1 = FUN_006a89f0();
  return *(undefined4 *)(iVar1 + 0x20);
}

