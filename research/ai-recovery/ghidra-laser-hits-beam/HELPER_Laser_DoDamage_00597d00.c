/* Local J460 decompiler output.
 * VA: 0x00597d00
 * Entry: 00597d00
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: SDK DoDamage signature matched original J460
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; SDK DoDamage signature matched
   original J460 */

void __thiscall HELPER_Laser_DoDamage(int param_1_00,float *param_1)

{
  float *pfVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  float fVar5;
  double dVar6;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined local_28 [16];
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  if (8 < *(uint *)(param_1_00 + 0xc28)) {
                    /* WARNING: Load size is inaccurate */
    iVar2 = *ThreadLocalStoragePointer;
    if ((*(int *)(iVar2 + 0xc) < DAT_00c7f838) && (FUN_00aef29d(), DAT_00c7f838 == -1)) {
      _atexit((_func_4879 *)&LAB_00b15560);
      FUN_00aef253();
    }
    if ((*(int *)(iVar2 + 0xc) < DAT_00c7f848) && (FUN_00aef29d(), DAT_00c7f848 == -1)) {
      _atexit((_func_4879 *)&LAB_00b15500);
      FUN_00aef253();
    }
    uVar4 = 0;
    DAT_00c7f840 = DAT_00c7f83c;
    DAT_00c7f850 = DAT_00c7f84c;
    if (*(int *)(param_1_00 + 0xc28) != 0) {
      do {
        pfVar1 = DAT_00c7f840;
        fStack_54 = *(float *)(param_1_00 + 0xc24);
        local_40 = DAT_00bf941c * DAT_00bf93e8;
        uVar3 = (int)fStack_54 + uVar4 & 1;
        iVar2 = *(int *)(*(int *)(param_1_00 + 0xc1c) +
                        (*(int *)(param_1_00 + 0xc20) - 1U & (int)fStack_54 + uVar4 >> 1) * 4);
        fStack_48 = *(float *)(iVar2 + uVar3 * 8);
        fStack_44 = *(float *)(iVar2 + 4 + uVar3 * 8);
        local_3c = ((DAT_00c78dc4 - DAT_00baab20) * DAT_00baa2d0 +
                   (fStack_48 - DAT_00baa950) * DAT_00baa324) * local_40 + DAT_00baa2d0;
        dVar6 = floor((double)local_3c);
        fStack_54 = (float)dVar6 / local_40;
        local_3c = ((DAT_00c78edc - DAT_00baaa7c) * DAT_00baa2d0 +
                   (fStack_44 - DAT_00baaa30) * DAT_00baa324) * local_40 + DAT_00baa2d0;
        dVar6 = floor((double)local_3c);
        local_3c = (float)dVar6;
        fStack_48 = fStack_54 + *param_1;
        fStack_44 = local_3c / local_40 + param_1[1];
        if (pfVar1 == DAT_00c7f844) {
          FUN_0042f430(pfVar1,&fStack_48);
        }
        else {
          *pfVar1 = fStack_48;
          DAT_00c7f840[1] = fStack_44;
          DAT_00c7f840 = DAT_00c7f840 + 2;
        }
        uVar4 = uVar4 + 3;
      } while (uVar4 < *(uint *)(param_1_00 + 0xc28));
    }
    pfVar1 = DAT_00c7f850;
    local_50 = *DAT_00c7f83c;
    fStack_4c = DAT_00c7f83c[1];
    uVar4 = *(int *)(param_1_00 + 0xc24) + 2;
    local_40 = 0.0;
    fStack_44 = 0.0;
    fStack_48 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                                   (uVar4 >> 1 & *(int *)(param_1_00 + 0xc20) - 1U) * 4) +
                          (uVar4 & 1) * 8);
    if (DAT_00c7f850 == DAT_00c7f854) {
      FUN_00598290(DAT_00c7f850,&local_50);
    }
    else {
      *DAT_00c7f850 = local_50;
      pfVar1[1] = fStack_4c;
      pfVar1[2] = fStack_48;
      pfVar1[3] = 0.0;
      DAT_00c7f850 = DAT_00c7f850 + 4;
    }
    fVar5 = 0.0;
    uVar4 = 1;
    if (1 < ((int)DAT_00c7f840 - (int)DAT_00c7f83c >> 3) - 1U) {
      local_3c = 4.203895e-45;
      do {
        pfVar1 = DAT_00c7f850;
        uVar3 = (int)local_3c + *(int *)(param_1_00 + 0xc24) + 2;
        fStack_54 = 0.0;
        local_60 = DAT_00c7f83c[uVar4 * 2 + -2] * DAT_00baa1f8 +
                   DAT_00c7f83c[uVar4 * 2] * DAT_00baa280 +
                   DAT_00c7f83c[uVar4 * 2 + 2] * DAT_00baa1f8;
        fStack_5c = DAT_00c7f83c[uVar4 * 2 + -1] * DAT_00baa1f8 +
                    DAT_00c7f83c[uVar4 * 2 + 1] * DAT_00baa280 +
                    DAT_00c7f83c[uVar4 * 2 + 3] * DAT_00baa1f8;
        fStack_58 = *(float *)(*(int *)(*(int *)(param_1_00 + 0xc1c) +
                                       (*(int *)(param_1_00 + 0xc20) - 1U & uVar3 >> 1) * 4) +
                              (uVar3 & 1) * 8);
        if (DAT_00c7f850 == DAT_00c7f854) {
          FUN_00598290(DAT_00c7f850,&local_60);
        }
        else {
          *DAT_00c7f850 = local_60;
          pfVar1[1] = fStack_5c;
          pfVar1[2] = fStack_58;
          pfVar1[3] = 0.0;
          DAT_00c7f850 = DAT_00c7f850 + 4;
        }
        pfVar1 = DAT_00c7f850;
        iVar2 = (int)DAT_00c7f850 - (int)DAT_00c7f84c >> 4;
        fVar5 = (DAT_00c7f84c[(iVar2 + -2) * 4 + 1] - DAT_00c7f84c[iVar2 * 4 + -3]) *
                (DAT_00c7f84c[(iVar2 + -2) * 4 + 1] - DAT_00c7f84c[iVar2 * 4 + -3]) +
                (DAT_00c7f84c[(iVar2 + -2) * 4] - DAT_00c7f84c[iVar2 * 4 + -4]) *
                (DAT_00c7f84c[(iVar2 + -2) * 4] - DAT_00c7f84c[iVar2 * 4 + -4]);
        FUN_00435a50();
        fVar5 = fVar5 + local_40;
        uVar4 = uVar4 + 1;
        local_3c = (float)((int)local_3c + 3);
        pfVar1[-1] = fVar5;
        local_40 = fVar5;
      } while (uVar4 < ((int)DAT_00c7f840 - (int)DAT_00c7f83c >> 3) - 1U);
    }
    local_3c = DAT_00baa454;
    if ((DAT_00baaa14 < fVar5) && (local_3c = DAT_00baaa14 / fVar5, local_3c <= DAT_00baa2d0)) {
      local_3c = DAT_00baa2d0;
    }
    DAT_00c78ef0 = param_1_00 + 0x48;
    uVar4 = 0;
    DAT_00c78ef4 = 0;
    DAT_00c78ef8._0_2_ = 0;
    DAT_00c78f00 = DAT_00c78efc;
    if ((int)DAT_00c7f850 - (int)DAT_00c7f84c >> 4 != 0) {
      iVar2 = 0;
      do {
        local_18 = 0;
        local_14 = 0;
        local_10 = 0;
        local_28 = ZEXT816(0);
        local_2c = *(undefined4 *)(iVar2 + (int)DAT_00c7f84c + 8);
        local_38 = 0x3f800000;
        local_34 = 0x3f800000;
        local_30 = 0x3f800000;
        FUN_0041e720(iVar2 + (int)DAT_00c7f84c,&local_38);
        iVar2 = iVar2 + 0x10;
        uVar4 = uVar4 + 1;
      } while (uVar4 < (uint)((int)DAT_00c7f850 - (int)DAT_00c7f84c >> 4));
    }
    FUN_0041e960();
  }
  FUN_00aef12b();
  return;
}

