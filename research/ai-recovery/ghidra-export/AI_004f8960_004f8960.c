/* Local J460 decompiler output.
 * VA: 0x004f8960
 * Entry: 004f8960
 * Dispatcher: 0x006c2990
 * Types: 804
 * Identities: 804.0.0,804.0.1,804.0.2,804.0.3
 * Evidence: dispatcher=0x006c2990; end=0x004f8cc0; instructions=216
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=804; identities=804.0.0,804.0.1,804.0.2,804.0.3;
   dispatcher=0x006c2990; end=0x004f8cc0; instructions=216 */

void __fastcall AI_004f8960(int param_1)

{
  int *piVar1;
  char cVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  float fVar9;
  int *local_14;
  int local_10;
  int local_c;
  
  iVar5 = *(int *)(param_1 + 0x3d4);
  local_c = iVar5;
  if (*(int *)(param_1 + 0xb74) == 1) {
    if (iVar5 != 0) {
      return;
    }
    if (*(char *)(param_1 + 0x173) != '\0') {
      return;
    }
    if (*(int *)(param_1 + 0x434) < 0) {
      return;
    }
    FUN_004565e0(*(int *)(param_1 + 0x434),3999);
    return;
  }
  local_14 = *(int **)(DAT_00c71678 + 0x18300);
  iVar3 = FUN_00740bc0(*(undefined4 *)(DAT_00c71678 + 0x18304),
                       *(undefined4 *)(DAT_00c71678 + 0x1830c));
  iVar6 = *(int *)(param_1 + 0xb64);
  uVar8 = *(uint *)(iVar3 + 0x44) >> 1;
  if (((iVar6 == 3) || (iVar6 == 8)) && ((uVar8 & 1) != 0)) {
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    FUN_0040a380("CloseEyes",0);
    iVar6 = *(int *)(param_1 + 0xb64);
  }
  local_10 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  if (iVar6 == 0) {
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 1;
    *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 0x2008;
    *(undefined *)(param_1 + 0x3b0) = 1;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xf18) = 1;
    *(undefined4 *)(param_1 + 0x410) = 10;
    if (iVar5 == 0) {
      iVar5 = FUN_00812c90(param_1 + 0x33c);
      FUN_007e6ff0();
      fVar9 = (float)(iVar5 / local_14[3]) * DAT_00baa904 + DAT_00baaa00;
      *(float *)(param_1 + 0x334) = (float)(iVar5 % local_14[3]) * DAT_00baa904 + DAT_00baa904;
      *(float *)(param_1 + 0x338) = fVar9;
    }
    if ((uVar8 & 1) == 0) {
      return;
    }
    *(undefined4 *)(param_1 + 0xb64) = 0x10;
    FUN_0040a380("CloseEyes",0);
    if (*(int *)(param_1 + 0x7c) == 0) {
      return;
    }
    FUN_00408d00(*(int *)(*(int *)(param_1 + 0x7c) + 0x30) + -1);
    return;
  }
  if (iVar6 == 3) {
    FUN_0040a380(&DAT_00b1bc54,0);
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) - local_10;
    if (*(int *)(param_1 + 0x410) < 1) {
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
  }
  else if (iVar6 == 8) {
    FUN_0040a380(&DAT_00b1d710,0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0(&DAT_00b1d3b0);
      if (cVar2 != '\0') {
        local_14 = (int *)0x34;
        FUN_00956780();
        FUN_0092dc30(local_14,0x3f800000,2,0,0x3f800000,0);
        FUN_00703670(0x10);
        uVar4 = FUN_006eef60();
        local_10 = FUN_006fe410(1000,0x48,param_1 + 0x33c,&DAT_00c7b640,param_1,1,uVar4,0);
        piVar1 = (int *)(local_10 + 0x3bc);
        if (*(int *)(local_10 + 0x3bc) != 0) {
          local_14 = piVar1;
          FUN_004cf210(&local_14);
        }
        *piVar1 = param_1;
        FUN_004cdcf0(piVar1);
        uVar7 = -(uint)(*(int *)(param_1 + 0x30) != 0) & *(uint *)(param_1 + 0x30);
        uVar8 = 3;
        if (uVar7 < 3) {
          uVar8 = uVar7;
        }
        *(undefined4 *)(local_10 + 0x474) = *(undefined4 *)(&DAT_00b60b68 + uVar8 * 4);
        iVar5 = local_c;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004f8ba7;
    }
    FUN_0040a380(&DAT_00b1bc54,0);
    *(undefined4 *)(param_1 + 0x410) = 10;
  }
LAB_004f8ba7:
  if (iVar5 != 0) {
    return;
  }
  *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
  *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
  return;
}

