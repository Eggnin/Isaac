/* Local J460 decompiler output.
 * VA: 0x007cb6e0
 * Entry: 007cb6e0
 * Dispatcher: 0x006c2990
 * Types: 1,1000
 * Identities: 1.*,1000.*
 * Evidence: Creep damage/slow player immunity gate
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1,1000; identities=1.*,1000.*; Creep damage/slow player
   immunity gate */

void __thiscall HELPER_Player_TrinketMultiplier(int param_1_00,uint param_1)

{
  int *piVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint *puVar6;
  int iVar7;
  int local_1c;
  
  iVar7 = *(int *)(param_1_00 + 0x2c);
  while ((iVar7 == 1 &&
         (((iVar3 = *(int *)(param_1_00 + 0x3bc), iVar3 != 0 && (*(int *)(iVar3 + 0x28) == 1)) ||
          ((*(int *)(param_1_00 + 0x2c) == 1 && (iVar3 = FUN_00417870(0), iVar3 != 0))))))) {
    iVar7 = *(int *)(iVar3 + 0x2c);
    param_1_00 = iVar3;
  }
  iVar7 = 0;
  if ((param_1 == 0x56) && (*(int *)(param_1_00 + 0x13c0) == 4)) {
    iVar7 = 1;
  }
  if ((*(char *)(param_1_00 + 0x202c) != '\0') || (*(char *)(param_1_00 + 0x20a9) != '\0'))
  goto LAB_007cba0d;
  param_1 = param_1 & 0x7fff;
  if (*(int *)(DAT_00c71678 + 0x2663c) == 0x1c) {
    uVar4 = 0;
    do {
      if (param_1 == *(uint *)((int)&DAT_00b6bad0 + uVar4)) {
        iVar7 = iVar7 + 1;
        break;
      }
      uVar4 = uVar4 + 4;
    } while (uVar4 < 0x28);
  }
  if (((param_1 != 0x15) && (param_1 != 0x40)) && (param_1 != 0x4b)) {
    iVar3 = HELPER_Player_TrinketMultiplier(0x15);
    if (0 < iVar3) {
      uVar4 = *(uint *)(DAT_00c71678 + 0x264f8) & 0x80000003;
      if ((int)uVar4 < 0) {
        uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
      }
      if ((param_1 == 0x30) && ((uVar4 == 2 || ((1 < iVar3 && (uVar4 == 3)))))) {
        FUN_00aef12b();
        return;
      }
    }
    iVar3 = HELPER_Player_TrinketMultiplier(0x40);
    if ((0 < iVar3) &&
       (param_1 == (&DAT_00b6bad0)[(uint)(*(int *)(DAT_00c71678 + 0x264f8) / 0x5a) % 10])) {
      iVar7 = iVar7 + iVar3;
    }
    iVar3 = HELPER_Player_TrinketMultiplier(0x4b);
    if (0 < iVar3) {
      if ((param_1 == 0x7a) && (*(int *)(DAT_00c71678 + 0x26584) == 0x29)) goto LAB_007cb8d8;
      iVar5 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),0xffffffff);
      if ((*(int *)(iVar5 + 0x5c) != 0) && (iVar5 = FUN_007e9020(0xbd), param_1 == iVar5 + 1U)) {
        iVar7 = iVar7 + iVar3;
      }
    }
    if (param_1 == 0x17) {
      iVar3 = FUN_00930aa0(0x17);
      iVar7 = iVar7 + iVar3;
    }
    else {
      if (param_1 == 0x18) {
        iVar3 = *(int *)(param_1_00 + 0x18dc);
      }
      else {
        if (param_1 != 0x13) goto LAB_007cb8d8;
        iVar3 = *(int *)(param_1_00 + 0x18e0);
      }
      if (0 < iVar3) {
        iVar7 = iVar7 + 1;
      }
    }
  }
LAB_007cb8d8:
  local_1c = 1;
  cVar2 = HELPER_Effect_PlayerItemGate(0x8b,0);
  if ((cVar2 != '\0') || (cVar2 = HELPER_Effect_PlayerItemGate(0x1ca,0), cVar2 != '\0')) {
    local_1c = 2;
  }
  puVar6 = (uint *)(param_1_00 + 0x16c0);
  do {
    iVar3 = iVar7;
    if (((*puVar6 & 0x7fff) == param_1) && (iVar3 = iVar7 + 1, (*puVar6 & 0x8000) != 0)) {
      iVar3 = iVar7 + 2;
    }
    puVar6 = puVar6 + 1;
    local_1c = local_1c + -1;
    iVar7 = iVar3;
  } while (local_1c != 0);
  piVar1 = *(int **)(param_1_00 + 0x17c4);
  if (((((piVar1 != (int *)0x0) && (*piVar1 == 2)) && (piVar1[1] == param_1)) &&
      ((*(uint *)(param_1_00 + 0x2ef8) == 0 || (*(uint *)(param_1_00 + 0x2ef8) == param_1)))) &&
     (iVar7 = iVar3 + 1, (*(byte *)(param_1_00 + 0x17cc) & 2) != 0)) {
    iVar7 = iVar3 + 2;
  }
  iVar3 = *(int *)(param_1_00 + 0x1748);
  if (param_1 < (uint)(*(int *)(param_1_00 + 0x174c) - iVar3 >> 2)) {
    iVar7 = *(short *)(iVar3 + param_1 * 4) + iVar7 + *(short *)(iVar3 + 2 + param_1 * 4) * 2;
  }
  if ((int)param_1 < *(int *)(param_1_00 + 0x1fe4) - *(int *)(param_1_00 + 0x1fe0)) {
    cVar2 = *(char *)(*(int *)(param_1_00 + 0x1fe0) + param_1);
  }
  else {
    cVar2 = '\0';
  }
  uVar4 = *(uint *)(param_1_00 + 0x2ef8);
  iVar3 = iVar7 + 1;
  if (cVar2 == '\0') {
    iVar3 = iVar7;
  }
  if ((uVar4 != 0) && ((uVar4 & 0x7fff) == param_1)) {
    if (*(char *)(param_1_00 + 0x2ef0) == '\0') {
      iVar7 = 0;
      if (0 < iVar3 + -1) {
        iVar7 = iVar3 + -1;
      }
      iVar3 = iVar7;
      if ((uVar4 & 0x8000) != 0) {
        iVar3 = 0;
        if (0 < iVar7 + -1) {
          iVar3 = iVar7 + -1;
        }
      }
    }
    else {
      iVar3 = ((uVar4 & 0x8000) != 0) + 1 + iVar3;
    }
  }
  if (0 < iVar3) {
    HELPER_Effect_PlayerItemGate(0x1b7,0);
  }
LAB_007cba0d:
  FUN_00aef12b();
  return;
}

