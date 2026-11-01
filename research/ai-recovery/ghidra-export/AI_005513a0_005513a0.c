/* Local J460 decompiler output.
 * VA: 0x005513a0
 * Entry: 005513a0
 * Dispatcher: 0x006c2990
 * Types: 857
 * Identities: 857.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00551d30; instructions=511
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=857; identities=857.0.0; dispatcher=0x006c2990;
   end=0x00551d30; instructions=511 */

void __fastcall AI_005513a0(int param_1)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  undefined1 *puVar5;
  float *pfVar6;
  float *pfVar7;
  undefined4 *puVar8;
  undefined4 uVar9;
  int *piVar10;
  int iVar11;
  float fVar12;
  int iVar13;
  float fVar14;
  undefined auStack_1c0 [4];
  float fStack_1bc;
  char acStack_1b8 [4];
  int iStack_1b4;
  undefined auStack_1b0 [4];
  float local_1ac;
  float fStack_1a8;
  float local_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  char cStack_191;
  undefined local_164 [88];
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_d0;
  undefined auStack_bc [36];
  undefined4 uStack_98;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_28;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = 0xffffffff;
  puStack_c = &LAB_00af4b30;
  local_10 = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_1ac = *(float *)(DAT_00c71678 + 0x18300);
  fVar12 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  local_1a4 = fVar12;
  local_14 = uVar3;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
  default:
    goto LAB_00551c99;
  case 3:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    FUN_0040a380(&DAT_00b1bc54,0);
    *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + (int)fVar12;
    if (8 < *(int *)(param_1 + 0x410)) {
      iVar11 = FUN_006be840();
      pfVar7 = (float *)(param_1 + 0x33c);
      fStack_19c = *(float *)(iVar11 + 0x33c);
      fStack_198 = *(float *)(iVar11 + 0x340);
      cStack_191 = FUN_007f0df0(pfVar7,&fStack_19c,3,0,0,0,0);
      uVar4 = FUN_006eef60();
      if ((uVar4 % 3 == 0) ||
         ((4 < *(int *)(param_1 + 0xbc0) && (uVar4 = FUN_006eef60(), uVar4 % 3 != 0)))) {
        fStack_1a0 = *pfVar7;
        fVar14 = *(float *)(param_1 + 0x340) - fStack_198;
        fVar14 = fVar14 * fVar14 + (fStack_1a0 - fStack_19c) * (fStack_1a0 - fStack_19c);
        FUN_00435a50();
        if (fVar14 < DAT_00baab60) {
          *(bool *)(param_1 + 0x148) = DAT_00ba9fe4 < fStack_19c - fStack_1a0;
          uVar4 = FUN_006eef60();
          if (((uVar4 & 1) == 0) && (cStack_191 != '\0')) {
            uVar9 = 8;
            puVar5 = &DAT_00b1d2cc;
          }
          else {
            uVar9 = 9;
            puVar5 = &DAT_00b1d2ec;
          }
          FUN_0040a380(puVar5,0);
          *(undefined4 *)(param_1 + 0xb64) = uVar9;
          *(undefined4 *)(param_1 + 0xbc0) = 0;
          goto LAB_00551c99;
        }
      }
      cVar2 = FUN_00417430(0x1000a00,0);
      if ((cVar2 == '\0') && (cVar2 = FUN_007f0df0(pfVar7,&fStack_19c,0,0,0,0,0), cVar2 == '\0')) {
        fStack_1bc = *(float *)(param_1 + 0x36c);
        pfVar7 = (float *)(param_1 + 0x360);
        fVar12 = *pfVar7;
        uVar9 = *(undefined4 *)(param_1 + 0x364);
        *pfVar7 = DAT_00c7b640;
        *(undefined4 *)(param_1 + 0x364) = DAT_00c7b644;
        FUN_007e3260();
        FUN_007e33c0(&fStack_19c,0x3f800000,0,1);
        cVar2 = FUN_00a10630(&DAT_00c7b640);
        if (cVar2 == '\0') {
          pfVar6 = (float *)FUN_006bec40(auStack_1b0,0);
          fStack_1a0 = *pfVar6;
          local_1ac = pfVar6[1];
        }
        else {
          fStack_1a0 = *pfVar7 * DAT_00baab08 + *(float *)(param_1 + 0x33c);
          local_1ac = *(float *)(param_1 + 0x364) * DAT_00baab08 + *(float *)(param_1 + 0x340);
        }
        *pfVar7 = fVar12;
        *(undefined4 *)(param_1 + 0x364) = uVar9;
        *(float *)(param_1 + 0x36c) = fStack_1bc;
        fVar12 = local_1a4;
      }
      else {
        pfVar7 = (float *)FUN_006bec40(&fStack_1a8,0);
        fStack_1a0 = *pfVar7;
        local_1ac = pfVar7[1];
      }
      FUN_0040a380(&DAT_00b1d560,0);
      fStack_1a8 = fStack_1a0 - *(float *)(param_1 + 0x33c);
      local_1a4 = local_1ac - *(float *)(param_1 + 0x340);
      puVar8 = (undefined4 *)FUN_00a10030(auStack_1c0);
      *(undefined4 *)(param_1 + 0x334) = *puVar8;
      uVar9 = puVar8[1];
      *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + (int)fVar12;
      *(undefined4 *)(param_1 + 0x338) = uVar9;
      *(undefined4 *)(param_1 + 0xb64) = 6;
    }
    goto LAB_00551c99;
  case 6:
    if ((*(int *)(param_1 + 0x7c) == 0) ||
       ((cVar2 = FUN_0040ae70(&DAT_00b1d560), cVar2 == '\0' ||
        (cVar2 = FUN_0040b090(&DAT_00b1d574), cVar2 != '\0')))) {
      fVar12 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      *(undefined4 *)(param_1 + 0x188) = 4;
      *(float *)(param_1 + 0x36c) = fVar12;
    }
    else {
      *(undefined4 *)(param_1 + 0x188) = 0;
      fVar14 = *(float *)(param_1 + 0x338) * DAT_00baa528;
      fVar12 = (*(float *)(param_1 + 0x334) * DAT_00baa528) / *(float *)(param_1 + 0x36c) +
               *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x360) = fVar12;
      *(float *)(param_1 + 0x364) =
           fVar14 / *(float *)(param_1 + 0x36c) + *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
      *(bool *)(param_1 + 0x148) = 0.0 < fVar12;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0(&DAT_00b1d574);
      if (cVar2 != '\0') {
        local_1ac = 6.726233e-44;
        FUN_00956780();
        FUN_0092dc30(local_1ac,0x3f000000,2,0,0x3f800000,0);
        uVar9 = FUN_006eef60();
        piVar10 = (int *)FUN_00428b20(1000,0x10,param_1 + 0x33c,&DAT_00c7b640,param_1,2,uVar9);
        bVar1 = FUN_006eef60();
        piVar10[0x37] = 0;
        *(byte *)(piVar10 + 0x52) = ~bVar1 & 1;
        piVar10[0x38] = 0x41700000;
        uVar9 = FUN_004238f0(0x3f333333);
        (**(code **)(*piVar10 + 0x3c))(uVar9,0xffffffff,0xff,0,1);
        FUN_004564b0(param_1);
        (**(code **)(*piVar10 + 0xc))();
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00551c99;
    }
    *(undefined4 *)(param_1 + 0x188) = 4;
    break;
  case 8:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f800000);
        iVar11 = FUN_006be840();
        fStack_19c = *(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c);
        fStack_198 = *(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340);
        FUN_00a10030(&fStack_1a8);
        AI_0043ef30();
        uStack_64 = 0;
        uStack_60 = 0x60;
        uStack_98 = 0x3f70a3d7;
        iVar11 = FUN_006ccdd0(1,&DAT_00c7b640,0,auStack_bc);
        fVar14 = fStack_1a8 * DAT_00baa81c;
        *(undefined4 *)(iVar11 + 0x410) = 0xc1b80000;
        fVar12 = local_1a4 * DAT_00baa81c;
        *(undefined4 *)(iVar11 + 0x418) = 0;
        *(float *)(iVar11 + 0x360) = fVar14;
        *(undefined4 *)(iVar11 + 0x414) = 0;
        *(float *)(iVar11 + 0x364) = fVar12;
        *(undefined4 *)(iVar11 + 0x420) = 0x40000000;
      }
LAB_00551c76:
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00551c99;
    }
    break;
  case 9:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0("Shoot");
      if (cVar2 != '\0') {
        FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
        iVar11 = FUN_006be840();
        fStack_19c = *(float *)(iVar11 + 0x33c);
        fStack_198 = *(float *)(iVar11 + 0x340);
        AI_0043ef30();
        FUN_006ccdd0(0x12,&fStack_19c,0,auStack_bc);
        FUN_006d0c60(acStack_1b8,0x18,0xffffffff);
        uStack_8 = 0;
        iVar11 = 0;
        fVar12 = 0.0;
        iVar13 = iVar11;
        if (local_1ac != 0.0) {
          do {
            iVar11 = iVar13 + 1;
            if (*(int *)(*(int *)(iStack_1b4 + (int)fVar12 * 4) + 0x3c8) != param_1) {
              iVar11 = iVar13;
            }
            fVar12 = (float)((int)fVar12 + 1);
            iVar13 = iVar11;
          } while ((uint)fVar12 < (uint)local_1ac);
        }
        if (((uint)local_1ac < 10) && (iVar11 < 4)) {
          uStack_28 = 0xb;
          uStack_64 = 0;
          uStack_60 = 0x400;
          iVar11 = FUN_006ccdd0(1,&fStack_19c,0x40400000,auStack_bc);
          local_1a4 = -10.0;
          fStack_1bc = *(float *)(iVar11 + 0x414);
          pfVar7 = &local_1a4;
          if (*(float *)(iVar11 + 0x414) <= DAT_00baadc0) {
            pfVar7 = &fStack_1bc;
          }
          *(float *)(iVar11 + 0x414) = *pfVar7;
        }
        uStack_8 = 0xffffffff;
        if (acStack_1b8[0] == '\0') {
          uStack_8 = 1;
          FUN_00a648b0(0,0);
          uStack_8 = 0xffffffff;
        }
      }
      goto LAB_00551c76;
    }
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
  *(undefined4 *)(param_1 + 0x410) = 0;
LAB_00551c99:
  if (*(char *)(param_1 + 0x173) != '\0') {
    AI_0043ef30(uVar3);
    local_d0 = 0xb;
    local_10c = 0;
    local_108 = 0x400;
    FUN_006ccdd0(4,&DAT_00c7b640,0x41200000,local_164);
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

