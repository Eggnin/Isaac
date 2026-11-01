/* Local J460 decompiler output.
 * VA: 0x0096cf80
 * Entry: 0096cf80
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Reference method signature match
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Reference method signature match */

undefined4 __thiscall HELPER_Laser_CanDamageEntity(int param_1_00,int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  bool bVar5;
  char cVar6;
  char cVar7;
  int local_c;
  
  iVar1 = *(int *)(param_1 + 0x28);
  if (iVar1 == 0x11) {
    return 0;
  }
  iVar2 = *(int *)(param_1_00 + 0x3bc);
  if (iVar2 == 0) {
    local_c = 0;
  }
  else {
    local_c = *(int *)(iVar2 + 0x28);
    if ((*(uint *)(iVar2 + 0x168) & 0x100) != 0) {
      bVar4 = true;
      goto LAB_0096cfc9;
    }
  }
  bVar4 = false;
LAB_0096cfc9:
  if ((iVar1 == 3) &&
     ((((iVar3 = *(int *)(param_1 + 0x2c), iVar3 == 0x3e || (iVar3 == 0x43)) || (iVar3 == 0xd3)) ||
      ((iVar3 == 100 || ((iVar3 == 0xce && (*(int *)(param_1 + 0x30) == 0x1ab)))))))) {
    bVar5 = true;
  }
  else {
    bVar5 = false;
  }
  if (((((param_1 != iVar2) && (*(char *)(param_1 + 0x173) == '\0')) &&
       ((*(int *)(param_1 + 0x188) != 0 && (0.0 < *(float *)(param_1 + 900))))) || (bVar5)) &&
     ((((local_c == 1 && (1 < *(int *)(DAT_00c71678 + 0x26614))) || (local_c != iVar1)) || (bVar4)))
     ) {
    if ((*(int *)(param_1_00 + 0x52c) != 0) && (*(int *)(*(int *)(param_1_00 + 0x52c) + 0x52c) != 0)
       ) {
      FUN_0096ce70();
    }
    cVar6 = FUN_00431640(param_1);
    if (cVar6 == '\0') {
      cVar6 = FUN_0096cf40();
      if ((cVar6 == '\0') || ((local_c == 3 && (bVar4)))) {
        bVar4 = false;
      }
      else {
        bVar4 = true;
      }
      cVar7 = FUN_006ac530();
      cVar6 = cVar7;
      if ((1 < *(int *)(DAT_00c71678 + 0x26614)) &&
         ((cVar7 != '\0' || (*(int *)(param_1 + 0x28) == 1)))) {
        cVar6 = '\x01';
      }
      if (bVar4) {
        if (((cVar6 != '\0') && (cVar6 = FUN_00417430(0x20000000,0), cVar6 == '\0')) ||
           ((*(int *)(param_1 + 0x188) != 0 &&
            (((iVar1 = *(int *)(param_1 + 0x28), iVar1 == 0x21 || (iVar1 == 0x124)) ||
             (iVar1 == 0xf5)))))) {
          return 1;
        }
      }
      else {
        if (*(int *)(param_1 + 0x28) == 1) {
          return 1;
        }
        if (cVar7 != '\0') {
          return 1;
        }
        if (bVar5) {
          return 1;
        }
      }
    }
  }
  return 0;
}

