/* Local J460 decompiler output.
 * VA: 0x0053bae0
 * Entry: 0053bae0
 * Dispatcher: 0x006c2990
 * Types: 222
 * Identities: 222.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0053c0d0; instructions=369
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=222; identities=222.0.0; dispatcher=0x006c2990;
   end=0x0053c0d0; instructions=369 */

void __fastcall AI_0053bae0(int *param_1)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  float *pfVar4;
  int iVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  char local_34 [4];
  int *local_30;
  uint local_28;
  undefined local_24 [4];
  float local_20;
  float local_1c;
  int *local_18;
  float local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af480d;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  iVar3 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  if ((iVar3 != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    FUN_009e5c00(param_1);
    (**(code **)(*param_1 + 0x28))(uVar2);
    FUN_007599d0(1,param_1 + 0xcf,0);
    ExceptionList = local_10;
    return;
  }
  iVar3 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
  if ((iVar3 != 0) && ((param_1[0x5a] & 0x20000000U) == 0)) {
    FUN_006c0f30(0xd,0,0,0xffffffff);
    iVar3 = DAT_00c7b640;
    param_1[0x2ee] = DAT_00c7b640;
    iVar5 = DAT_00c7b644;
    param_1[0x2ef] = DAT_00c7b644;
    param_1[0x2ec] = iVar3;
    param_1[0x2ed] = iVar5;
    ExceptionList = local_10;
    return;
  }
  AI_0041af60(local_34,0xde,0xffffffff,0xffffffff,1,0);
  local_8 = 0;
  piVar1 = param_1 + 0xef;
  local_18 = local_30;
  if (((*piVar1 == 0) && (local_28 != 0)) && (iVar3 = *local_30, *piVar1 = iVar3, iVar3 != 0)) {
    FUN_004cdcf0(piVar1);
  }
  if (param_1[0xc] == 1) {
    fVar8 = (float)param_1[0xe1];
    if (fVar8 < (float)param_1[0xe0]) {
      local_20 = (float)param_1[0xe0] - DAT_00baa75c;
      pfVar4 = &local_20;
      if (local_20 <= fVar8) {
        pfVar4 = (float *)(param_1 + 0xe1);
      }
      param_1[0xe0] = (int)*pfVar4;
    }
  }
  if (param_1[0x2d9] == 0) {
    piVar1 = (int *)param_1[0xef];
    param_1[0x61] = 0;
    if (param_1 == piVar1) {
      param_1[0xcd] = param_1[0xcf];
      iVar3 = param_1[0xd0];
    }
    else {
      param_1[0xcd] = piVar1[0xcd];
      iVar3 = piVar1[0xce];
    }
    param_1[0xce] = iVar3;
    param_1[0x2f0] = 1;
    param_1[0x2ed] = 0x42200000;
    param_1[0x2d9] = 4;
  }
  else if (param_1[0x2d9] == 4) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380(&DAT_00b1de04,0);
    }
    pfVar4 = (float *)FUN_006bec40(local_24,0);
    uVar2 = 0;
    fVar8 = 0.0;
    iVar6 = 0;
    local_14 = 0.0;
    iVar3 = 0;
    local_1c = *pfVar4 - (float)param_1[0xcf];
    local_20 = pfVar4[1] - (float)param_1[0xd0];
    iVar5 = iVar3;
    if (local_28 != 0) {
      do {
        piVar1 = (int *)local_18[uVar2];
        iVar3 = iVar6;
        if (param_1 != piVar1) {
          iVar3 = iVar5;
        }
        if (piVar1[0xef] == param_1[0xef]) {
          fVar8 = fVar8 + (float)piVar1[0xe7];
          iVar6 = iVar6 + 1;
        }
        uVar2 = uVar2 + 1;
        iVar5 = iVar3;
      } while (uVar2 < local_28);
      local_14 = fVar8;
      if (0 < iVar6) {
        local_14 = fVar8 / (float)iVar6;
      }
    }
    piVar1 = (int *)param_1[0xef];
    if (piVar1 == param_1) {
      if (param_1[0x3c7] == -1) {
        fVar9 = local_1c * local_1c + local_20 * local_20;
        FUN_00435a50();
        fVar8 = local_1c;
        if (0.0 < fVar9) {
          local_20 = (DAT_00baa454 / fVar9) * local_20;
          fVar8 = local_1c * (DAT_00baa454 / fVar9);
        }
        param_1[0xcd] = (int)((fVar8 + fVar8) * (float)param_1[0xe7] + (float)param_1[0xcd]);
        param_1[0xce] = (int)((local_20 + local_20) * (float)param_1[0xe7] + (float)param_1[0xce]);
      }
      else {
        pfVar4 = (float *)FUN_006d82d0(local_24);
        fVar8 = pfVar4[1] * DAT_00baa6bc;
        param_1[0xcd] = (int)(*pfVar4 * DAT_00baa6bc * (float)param_1[0xe7] + (float)param_1[0xcd]);
        param_1[0xce] = (int)(fVar8 * (float)param_1[0xe7] + (float)param_1[0xce]);
      }
      fVar9 = DAT_00baa97c;
      fVar8 = DAT_00baa904;
      if (param_1[0x2f0] == 0) {
        fVar9 = (float)param_1[0x2ed] - DAT_00baa2d0;
        param_1[0x2ed] = (int)fVar9;
        if (fVar9 < fVar8) {
          param_1[0x2f0] = 1;
        }
      }
      else {
        fVar8 = (float)param_1[0x2ed] + DAT_00baa2d0;
        param_1[0x2ed] = (int)fVar8;
        if (fVar9 < fVar8) {
          param_1[0x2f0] = 0;
        }
      }
      fVar9 = DAT_00baad88;
      fVar8 = DAT_00baa7a8;
      fVar7 = (float)param_1[0x2ee] - local_14 * _DAT_00baa110;
      param_1[0x2ee] = (int)fVar7;
      while (fVar7 < fVar9) {
        fVar7 = (float)param_1[0x2ee] + fVar8;
        param_1[0x2ee] = (int)fVar7;
      }
    }
    else {
      fVar8 = DAT_00baa7a8;
      if (piVar1 != (int *)0x0) {
        param_1[0xcd] = piVar1[0xcd];
        param_1[0xce] = piVar1[0xce];
        iVar5 = FUN_00447770();
        param_1[0x2ed] = *(int *)(iVar5 + 0xbb4);
        iVar5 = FUN_00447770();
        param_1[0x2ee] = *(int *)(iVar5 + 3000);
        fVar8 = DAT_00baa7a8;
      }
    }
    local_20 = ((float)iVar3 * fVar8) / (float)iVar6;
    param_1[0x2ec] = (int)local_20;
    local_20 = local_20 + (float)param_1[0x2ee];
    fVar8 = local_20;
    FUN_0041d520();
    local_1c = fVar8;
    local_14 = (float)param_1[0x2ed];
    FUN_0041d540();
    fVar9 = (local_20 * local_14 + (float)param_1[0xcd]) - (float)param_1[0xcf];
    fVar8 = (local_14 * local_1c + (float)param_1[0xce]) - (float)param_1[0xd0];
    fVar7 = fVar9 * fVar9 + fVar8 * fVar8;
    local_20 = fVar9;
    local_14 = fVar8;
    if (DAT_00baa9d0 < fVar7) {
      FUN_00435a50();
      fVar8 = local_14;
      fVar9 = local_20;
      if (0.0 < fVar7) {
        fVar8 = local_14 * (DAT_00baa454 / fVar7);
        fVar9 = local_20 * (DAT_00baa454 / fVar7);
      }
      fVar9 = fVar9 * DAT_00baa7a4;
      fVar8 = fVar8 * DAT_00baa7a4;
    }
    param_1[0xd9] = (int)fVar8;
    param_1[0xd8] = (int)fVar9;
  }
  if (local_34[0] == '\0') {
    local_8 = 1;
    FUN_00a648b0(0,0);
  }
  ExceptionList = local_10;
  return;
}

