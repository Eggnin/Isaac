/* Local J460 decompiler output.
 * VA: 0x0096f880
 * Entry: 0096f880
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Geometry Update first call
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Geometry Update first call */

void __fastcall HELPER_Laser_AdvanceState(int param_1)

{
  float fVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_8;
  
  if (*(char *)(param_1 + 0x518) != '\0') {
    return;
  }
  if ((*(int *)(param_1 + 0x3bc) != 0) && (*(int *)(*(int *)(param_1 + 0x3bc) + 0x28) == 7)) {
    return;
  }
  if (*(char *)(param_1 + 0x171) == '\0') {
    return;
  }
  switch(*(undefined4 *)(param_1 + 0x2c)) {
  case 1:
  case 8:
  case 9:
    if (*(int *)(param_1 + 0x3c8) == 0) goto switchD_0096f8c9_caseD_3;
    fVar1 = *(float *)(param_1 + 0x4e0);
    iVar2 = *(int *)(*(int *)(param_1 + 0x3c8) + 0x28);
    if (iVar2 < 0x3d) {
      if (iVar2 == 0x3c) {
        local_8 = 0x87;
      }
      else {
        if ((iVar2 != 0x2b) && (iVar2 != 0x31)) goto LAB_0096f92b;
        local_8 = 7;
      }
      break;
    }
    if (iVar2 == 0x54) {
      local_8 = 0xd3;
      break;
    }
    if (iVar2 != 0x193) {
LAB_0096f92b:
      if (*(int *)(param_1 + 0x30) == 0) {
        FUN_009568e0((fVar1 < DAT_00baa380) + '\x05',2,0,0x3f800000);
        return;
      }
      if (*(int *)(param_1 + 0x30) != 2) {
        return;
      }
      FUN_009568e0((fVar1 < DAT_00baa380) + '\x05',2,0,0x3f800000);
      FUN_009568e0((uint)(DAT_00baa380 <= fVar1) * 2 + 0x10f,2,0,0x3f800000);
      return;
    }
    local_8 = 0x3cb;
    FUN_00956780();
    uVar3 = 1;
    goto LAB_0096fc15;
  case 2:
    fVar1 = *(float *)(param_1 + 0x4e0);
    iVar2 = FUN_006eef60();
    if (*(int *)(param_1 + 0x30) == 2) {
      uVar3 = 0x10f;
      if (fVar1 < DAT_00baa380) {
        uVar3 = 0x110;
      }
      else if (_DAT_00baa518 < fVar1) {
        uVar3 = 0x111;
      }
    }
    else {
      uVar3 = 0x85;
      if (fVar1 < DAT_00baa380) {
        uVar3 = 0x86;
      }
      else if (_DAT_00baa518 < fVar1) {
        uVar3 = 0x87;
      }
    }
    FUN_009568e0(uVar3,1,0,
                 (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa1f8 + DAT_00baa3c4);
    return;
  case 3:
switchD_0096f8c9_caseD_3:
    local_8 = 5;
    break;
  default:
    goto switchD_0096f8c9_caseD_4;
  case 5:
    local_8 = 0x114;
    break;
  case 6:
  case 0xf:
    local_8 = 0x116;
    break;
  case 10:
    iVar2 = FUN_006eef60();
    FUN_009568e0(0x86,2,0,(float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa3e0);
    return;
  case 0xb:
  case 0xe:
    if (*(int *)(param_1 + 0x30) == 2) {
      FUN_00956780();
      FUN_0092dc30(10,0x3f19999a,2,0,0x3f800000,0);
      local_8 = 0x111;
    }
    else {
      if (*(int *)(param_1 + 0x30) == 1) {
        return;
      }
      local_8 = 10;
    }
    break;
  case 0xc:
    local_8 = 0x24d;
  }
  FUN_00956780();
  uVar3 = 0;
LAB_0096fc15:
  FUN_0092dc30(local_8,0x3f800000,2,uVar3,0x3f800000,0);
switchD_0096f8c9_caseD_4:
  return;
}

