/* Local J460 decompiler output.
 * VA: 0x004ce8a0
 * Entry: 004ce8a0
 * Dispatcher: 0x006c2990
 * Types: 965
 * Identities: 965.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004cee90; instructions=333
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=965; identities=965.0.0; dispatcher=0x006c2990;
   end=0x004cee90; instructions=333 */

void __fastcall AI_004ce8a0(int *param_1)

{
  int iVar1;
  char cVar2;
  int iVar3;
  undefined4 uVar4;
  float *pfVar5;
  int *piVar6;
  uint uVar7;
  int iVar8;
  float *pfVar9;
  float *pfVar10;
  float fVar11;
  undefined auVar12 [16];
  float fVar13;
  undefined auStack_54 [4];
  float local_50 [3];
  float local_44;
  undefined local_40 [52];
  uint local_c;
  
  fVar11 = DAT_00baa3a4;
  local_c = DAT_00bf93b4 ^ (uint)auStack_54;
  iVar3 = param_1[0x2d9];
  iVar1 = param_1[0xb];
  if (iVar3 == 0) {
    iVar3 = 4;
    if (iVar1 == 10) {
      iVar3 = 0x10;
    }
    param_1[0x2d9] = iVar3;
    if (iVar1 == 10) {
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
    }
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x104] = 0;
    param_1[0x5b] = param_1[0x5b] | 0x10;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 1;
    goto LAB_004cee6b;
  }
  if (iVar3 == 0x10) {
    param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    goto LAB_004cee6b;
  }
  if (iVar3 != 4) {
    if (iVar3 == 3) {
      param_1[0x62] = 0;
      *(undefined *)((int)param_1 + 0x171) = 0;
    }
    goto LAB_004cee6b;
  }
  if (iVar1 == 10) {
    param_1[0xdf] = 0x42c80000;
    param_1[0x62] = 4;
    if ((fVar11 < (float)param_1[0x2ee]) && (iVar3 = FUN_006ac760(), iVar3 != 0)) {
      uVar4 = FUN_006eef60();
      local_50[0] = (float)param_1[0xd8];
      local_50[1] = (float)param_1[0xd9];
      pfVar5 = (float *)FUN_0067f070(local_40);
      local_50[2] = local_50[0] * DAT_00baa198 + *pfVar5;
      local_44 = local_50[1] * DAT_00baa198 + pfVar5[1];
      piVar6 = (int *)FUN_006fe410(1000,0x3b,param_1 + 0xcf,local_50 + 2,param_1,0,uVar4,0);
      iVar3 = FUN_006eef60();
      piVar6[0x11d] =
           (int)((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa81c + DAT_00baa630);
      uVar7 = FUN_006eef60();
      iVar3 = uVar7 % 0xf + 0xf;
      piVar6[0x117] = iVar3;
      piVar6[0x118] = iVar3;
      uVar4 = FUN_004238f0(0x3f000000);
      (**(code **)(*piVar6 + 0x3c))(uVar4,0xffffffff,0xff,0,1);
      iVar8 = FUN_006eef60();
      iVar3 = DAT_00c71678;
      fVar13 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa1f8;
      fVar11 = fVar13 * DAT_00c3793c;
      piVar6[0x3a] = (int)(fVar13 * DAT_00c37940);
      piVar6[0x39] = (int)fVar11;
      if (*(int *)(iVar3 + 0x1b83c) != 0) {
        piVar6[0x5b] = piVar6[0x5b] | 0x1000;
        piVar6[0x5a] = piVar6[0x5a];
      }
      (**(code **)(*piVar6 + 0xc))();
    }
    *(undefined *)((int)param_1 + 0x171) = 1;
    param_1[0xdb] = 0x3f666666;
    pfVar5 = (float *)FUN_00a10030(local_40);
    fVar13 = pfVar5[1] * DAT_00baa4cc;
    param_1[0xd8] = (int)(*pfVar5 * DAT_00baa4cc * (float)param_1[0x2ee] + (float)param_1[0xd8]);
    fVar11 = (float)param_1[0x2ee] * _DAT_00baa45c;
    param_1[0xd9] = (int)(fVar13 * (float)param_1[0x2ee] + (float)param_1[0xd9]);
    param_1[0x2ee] = (int)(fVar11 + DAT_00baa06c);
  }
  else {
    if (param_1[0xf0] == 0) {
      param_1[0xdf] = 0x42480000;
LAB_004cebfd:
      iVar3 = 4;
    }
    else {
      param_1[0xdf] = 0x461c4000;
      if (*(int *)(param_1[0xf0] + 0x188) == 0) goto LAB_004cebfd;
      iVar3 = 0;
    }
    param_1[0x62] = iVar3;
    *(undefined *)((int)param_1 + 0x171) = 1;
    fVar11 = DAT_00baa3e0;
    if (param_1[0xf0] != 0) {
      pfVar5 = (float *)FUN_00a10030(local_40);
      fVar11 = pfVar5[1] * DAT_00baa4cc;
      param_1[0xd8] = (int)(*pfVar5 * DAT_00baa4cc * (float)param_1[0x2ee] + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar11 * (float)param_1[0x2ee] + (float)param_1[0xd9]);
      fVar11 = DAT_00baa3e0;
      if (param_1[0xf0] != 0) {
        fVar11 = DAT_00baa3a4;
      }
    }
    param_1[0xdb] = (int)fVar11;
  }
  param_1[0x61] = 0;
  if ((param_1[0xf0] == 0) && (iVar1 != 10)) {
    param_1[0x104] = param_1[0x104] + 1;
    if (2 < param_1[0x104]) {
      FUN_004cee90();
    }
  }
  else {
    param_1[0x104] = 0;
  }
  iVar1 = DAT_00c71678;
  iVar3 = *(int *)(DAT_00c71678 + 0x18300);
  cVar2 = FUN_00813360(param_1 + 0xcf,0);
  pfVar5 = (float *)(param_1 + 0xcf);
  fVar11 = DAT_00baa454;
  if (cVar2 == '\0') {
    local_50[0] = *(float *)(iVar3 + 0x14) - *pfVar5;
    local_50[1] = *pfVar5 - *(float *)(iVar3 + 0x1c);
    local_50[2] = *(float *)(iVar3 + 0x18) - (float)param_1[0xd0];
    fVar11 = (float)param_1[0xd0] - *(float *)(iVar3 + 0x20);
    pfVar10 = local_50 + 1;
    if (local_50[1] <= local_50[0]) {
      pfVar10 = local_50;
    }
    pfVar9 = local_50 + 2;
    if (local_50[2] < *pfVar10 || local_50[2] == *pfVar10) {
      pfVar9 = pfVar10;
    }
    if (fVar11 <= *pfVar9) {
      fVar11 = *pfVar9;
    }
    fVar11 = (fVar11 - 0.0) / DAT_00baa91c;
    auVar12 = ZEXT416((uint)fVar11);
    if (fVar11 <= 0.0) {
      auVar12 = ZEXT416(0) << 0x20;
    }
    if (DAT_00baa454 <= auVar12._0_4_) {
      auVar12._0_4_ = DAT_00baa454;
    }
    fVar11 = DAT_00baa454 - auVar12._0_4_;
  }
  param_1[0x3f] = (int)fVar11;
  if (((0xf < *(int *)(iVar1 + 0x264f8) - param_1[0xca]) ||
      ((*(int *)(iVar1 + 0x1b83c) != 0 && (*(int *)(iVar1 + 0x1b858) == 0x13)))) &&
     ((iVar3 = param_1[0xf0], iVar3 == 0 ||
      ((*(int *)(iVar3 + 0x28) != 0x38a || (*(int *)(iVar3 + 0x2c) != 0)))))) {
    if (param_1[0xb] == 10) {
      cVar2 = FUN_00813360(pfVar5,0xc3960000);
      uVar7 = (uint)(cVar2 == '\0');
    }
    else {
      uVar7 = FUN_00812c90(pfVar5);
      uVar7 = uVar7 >> 0x1f;
    }
    if (uVar7 != 0) {
      if (param_1[0x2d9] == 0) {
        AI_004ce8a0();
      }
      param_1[0x2d9] = 3;
      if ((int *)param_1[0xf0] != (int *)0x0) {
        (**(code **)(*(int *)param_1[0xf0] + 0x28))();
      }
      (**(code **)(*param_1 + 0x28))();
      FUN_00aef12b();
      return;
    }
  }
LAB_004cee6b:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    *(undefined *)((int)param_1 + 0x173) = 0;
  }
  FUN_00aef12b();
  return;
}

