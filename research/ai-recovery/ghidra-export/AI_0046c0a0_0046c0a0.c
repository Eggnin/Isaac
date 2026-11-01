/* Local J460 decompiler output.
 * VA: 0x0046c0a0
 * Entry: 0046c0a0
 * Dispatcher: 0x006c2990
 * Types: 20,43
 * Identities: 20.0.0,43.0.0,43.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0046e290; instructions=1862
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=20,43; identities=20.0.0,43.0.0,43.1.0;
   dispatcher=0x006c2990; end=0x0046e290; instructions=1862 */

void __fastcall AI_0046c0a0(int param_1)

{
  code *pcVar1;
  byte **ppbVar2;
  char cVar3;
  byte bVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  byte **ppbVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  float *pfVar12;
  uint *puVar13;
  int *extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  undefined4 extraout_ECX_09;
  int *extraout_ECX_10;
  int *extraout_ECX_11;
  int *extraout_ECX_12;
  int *extraout_ECX_13;
  char *pcVar14;
  undefined4 extraout_ECX_14;
  undefined4 extraout_ECX_15;
  undefined4 extraout_ECX_16;
  int *piVar15;
  undefined4 uVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  int *piVar20;
  float fVar21;
  TypeDescriptor *pTVar22;
  TypeDescriptor *pTVar23;
  undefined4 uVar24;
  int local_234 [8];
  undefined4 local_214;
  undefined4 uStack_210;
  undefined4 local_20c;
  undefined4 local_208;
  undefined4 local_204;
  undefined4 local_1fc;
  int local_1f8;
  int *local_1f0;
  float local_1ec;
  int *local_1e8;
  float local_1e4;
  int *local_1e0;
  int *local_1dc;
  int *local_1d8;
  float local_1d4;
  int *local_1d0;
  char local_1c9;
  int *local_1c8;
  int *local_1c4;
  int local_1c0;
  int *local_1bc;
  undefined local_1b8 [4];
  int *local_1b4;
  int *local_1b0;
  int *local_1ac;
  char local_1a7;
  char local_1a6;
  char local_1a5;
  int *local_1a4;
  undefined local_f8 [20];
  undefined4 local_e4;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2850;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if ((*(int *)(param_1 + 0x28) != 0x2b) || (local_1a5 = '\x01', *(int *)(param_1 + 0x2c) != 1)) {
    local_1a5 = '\0';
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
  local_1a4 = (int *)0x0;
  local_24 = uVar5;
  FUN_006bec40(&local_1d4,0);
  iVar7 = *(int *)(param_1 + 0xf1c);
  local_1c4 = local_1a4;
  local_1ac = local_1a4;
  local_1c8 = local_1a4;
  local_1b0 = local_1a4;
  local_1d8 = local_1a4;
  local_1dc = local_1a4;
  local_1c0 = iVar7;
  if (iVar7 == -1) {
    local_1bc = local_1d0;
    local_1a6 = local_1c9;
    piVar11 = extraout_ECX;
  }
  else {
    piVar11 = local_1a4;
    FUN_009562d0(0,iVar7,param_1,extraout_ECX);
    local_1c8 = (int *)((float)local_1a4 - (float)piVar11);
    if (*(int *)(param_1 + 0xf1c) == -1) {
      local_1c8 = (int *)((float)local_1c8 + (float)local_1a4);
      piVar15 = local_1a4;
      local_1b0 = local_1c8;
LAB_0046c323:
      local_1c4 = (int *)((float)piVar15 + (float)local_1a4);
      local_1e8 = (int *)((float)local_1a4 + (float)local_1a4);
      local_1dc = local_1e8;
      local_1bc = local_1c4;
      local_1ac = local_1c4;
      piVar15 = local_1a4;
LAB_0046c3c0:
      local_1b4 = (int *)0xffffffff;
      piVar11 = local_1a4;
    }
    else {
      FUN_009562d0(1,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_00);
      local_1c8 = (int *)((float)local_1c8 + (float)piVar11);
      piVar15 = local_1a4;
      local_1b0 = local_1c8;
      if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0046c323;
      FUN_009562d0(2,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_01);
      local_1c4 = (int *)((float)local_1a4 - (float)piVar11);
      piVar15 = local_1c4;
      if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0046c323;
      FUN_009562d0(3,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_02);
      local_1c4 = (int *)((float)local_1c4 + (float)piVar11);
      local_1bc = local_1c4;
      local_1ac = local_1c4;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        local_1e8 = (int *)((float)local_1a4 + (float)local_1a4);
        local_1dc = local_1e8;
        piVar15 = local_1a4;
        goto LAB_0046c3c0;
      }
      FUN_009562d0(4,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_03);
      local_1dc = (int *)((float)local_1a4 - (float)piVar11);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        local_1e8 = (int *)((float)local_1dc + (float)local_1a4);
        local_1dc = local_1e8;
        piVar15 = local_1a4;
        goto LAB_0046c3c0;
      }
      FUN_009562d0(5,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_04);
      local_1e8 = (int *)((float)local_1dc + (float)piVar11);
      local_1dc = local_1e8;
      piVar15 = local_1a4;
      if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0046c3c0;
      FUN_009562d0(6,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_05);
      local_1d8 = (int *)((float)local_1a4 - (float)piVar11);
      piVar15 = local_1d8;
      if (*(int *)(param_1 + 0xf1c) == -1) goto LAB_0046c3c0;
      FUN_009562d0(7,*(int *)(param_1 + 0xf1c),param_1,extraout_ECX_06);
      local_1b4 = *(int **)(param_1 + 0xf1c);
      piVar15 = local_1d8;
    }
    local_1d8 = (int *)((float)piVar11 + (float)piVar15);
    fVar18 = (float)local_1bc * (float)local_1bc + (float)local_1c8 * (float)local_1c8;
    FUN_00435a50();
    if ((DAT_00baa454 < fVar18) && ((float)local_1a4 < fVar18)) {
      local_1c8 = (int *)((DAT_00baa454 / fVar18) * (float)local_1c8);
      local_1c4 = (int *)((float)local_1bc * (DAT_00baa454 / fVar18));
      local_1b0 = local_1c8;
      local_1ac = local_1c4;
    }
    fVar18 = (float)local_1d8 * (float)local_1d8 + (float)local_1e8 * (float)local_1e8;
    FUN_00435a50();
    if ((DAT_00baa454 < fVar18) && ((float)local_1a4 < fVar18)) {
      local_1dc = (int *)((float)local_1e8 * (DAT_00baa454 / fVar18));
      local_1d8 = (int *)((float)local_1d8 * (DAT_00baa454 / fVar18));
    }
    uVar6 = extraout_ECX_07;
    if ((((local_1b4 == (int *)0xffffffff) ||
         (cVar3 = FUN_00956110(9,local_1b4,param_1,extraout_ECX_07), uVar6 = extraout_ECX_08,
         cVar3 == '\0')) &&
        ((*(int *)(param_1 + 0xf1c) == -1 ||
         (cVar3 = FUN_00956110(8,*(int *)(param_1 + 0xf1c),param_1,uVar6), uVar6 = extraout_ECX_09,
         cVar3 == '\0')))) &&
       ((*(int *)(param_1 + 0xf1c) == -1 ||
        (cVar3 = FUN_00956110(10,*(int *)(param_1 + 0xf1c),param_1,uVar6), cVar3 == '\0')))) {
      cVar3 = FUN_006d8260(0xb);
      local_1a6 = '\0';
      if (cVar3 != '\0') goto LAB_0046c512;
    }
    else {
LAB_0046c512:
      local_1a6 = '\x01';
    }
    fVar18 = (float)local_1c4 * (float)local_1c4 + (float)local_1c8 * (float)local_1c8;
    FUN_00435a50();
    if (DAT_00baa2d0 < fVar18) {
      *(int **)(param_1 + 0xbb0) = local_1c8;
      *(int **)(param_1 + 0xbb4) = local_1c4;
    }
    fVar18 = (float)local_1d8 * (float)local_1d8 + (float)local_1dc * (float)local_1dc;
    FUN_00435a50();
    if (DAT_00baa2d0 < fVar18) {
      *(int **)(param_1 + 3000) = local_1dc;
      *(int **)(param_1 + 0xbbc) = local_1d8;
    }
    uVar6 = *(undefined4 *)(param_1 + 0x370);
    local_1d4 = *(float *)(param_1 + 0xbb0) * DAT_00baaae0 + *(float *)(param_1 + 0x33c);
    local_1d0 = (int *)(*(float *)(param_1 + 0xbb4) * DAT_00baaae0 + *(float *)(param_1 + 0x340));
    FUN_00812f50(&local_1e4,&local_1d4,uVar6,uVar6,uVar6);
    local_1d4 = local_1e4;
    local_1bc = local_1e0;
    piVar11 = extraout_ECX_10;
  }
  local_1e8 = (int *)local_1d4;
  local_1d0 = local_1bc;
  if ((((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x2c) == 0)) &&
      ((*(int *)(param_1 + 0xb64) == 7 || (*(int *)(param_1 + 0xb64) == 4)))) &&
     ((*(int *)(param_1 + 0x7c) != 0 &&
      (cVar3 = FUN_0040add0(&DAT_00b1d574), piVar11 = extraout_ECX_11, cVar3 != '\0')))) {
    FUN_0041a790(&local_1fc,param_1 + 0x33c,8);
    local_14 = 0;
    local_1b4 = (int *)0x0;
    piVar11 = local_1f0;
    if (local_1f0 != (int *)0x0) {
      do {
        local_1e0 = *(int **)(local_1f8 + (int)local_1b4 * 4);
        if ((local_1e0[10] == 0x3d) && (local_1e0[0xb] == 0)) {
          pcVar1 = *(code **)(*local_1e0 + 0x20);
          FUN_00431310(param_1);
          (*pcVar1)(0x41f00000,0,0,&uStack_4c,0x1e);
          piVar11 = local_1f0;
        }
        local_1b4 = (int *)((int)local_1b4 + 1);
        iVar7 = local_1c0;
      } while (local_1b4 < piVar11);
    }
    local_14 = 0xffffffff;
    piVar11 = local_1b4;
    if ((char)local_1fc == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
      piVar11 = extraout_ECX_12;
    }
  }
  iVar9 = *(int *)(param_1 + 0xb64);
  if (iVar9 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    iVar7 = *(int *)(param_1 + 0x28);
    if (iVar7 == 0x14) {
      if ((*(int *)(param_1 + 0x30) == 1) && (*(int *)(param_1 + 0x34) != 0x14)) {
        uVar6 = FUN_006eef60();
        local_1b0 = (int *)(*(float *)(param_1 + 0x33c) + DAT_00baa89c);
        local_1ac = (int *)(*(float *)(param_1 + 0x340) + (float)local_1a4);
        FUN_00428b20(*(undefined4 *)(param_1 + 0x28),*(undefined4 *)(param_1 + 0x2c),&local_1b0,
                     param_1 + 0x360,param_1,*(undefined4 *)(param_1 + 0x30),uVar6);
        *(float *)(param_1 + 0x33c) = *(float *)(param_1 + 0x33c) - DAT_00baa89c;
        *(float *)(param_1 + 0x340) = *(float *)(param_1 + 0x340) - (float)local_1a4;
        iVar7 = *(int *)(param_1 + 0x28);
        piVar11 = extraout_ECX_13;
        goto LAB_0046c87b;
      }
    }
    else {
LAB_0046c87b:
      uVar24 = _UNK_00bac12c;
      uVar16 = _UNK_00bac128;
      uVar6 = _UNK_00bac124;
      iVar9 = _DAT_00bac120;
      if ((iVar7 == 0x2b) && (*(int *)(param_1 + 0x2c) == 1)) {
        piVar11 = (int *)(param_1 + 0x1e4);
        local_214 = 0;
        uStack_210 = 0;
        local_20c = 0;
        if (piVar11 != local_234) {
          *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
          *(undefined8 *)(param_1 + 0x204) = 0;
          *piVar11 = iVar9;
          *(undefined4 *)(param_1 + 0x1e8) = uVar6;
          *(undefined4 *)(param_1 + 0x1ec) = uVar16;
          *(undefined4 *)(param_1 + 0x1f0) = uVar24;
          *(undefined4 *)(param_1 + 0x20c) = 0;
        }
      }
    }
    iVar7 = FUN_00738470(piVar11);
    if (iVar7 != 0x19) goto LAB_0046e270;
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xfffffffb;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    *(undefined4 *)(param_1 + 0xb64) = 7;
    *(undefined4 *)(param_1 + 0xbc0) = 2;
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 != (byte **)0x0) {
      ppbVar8 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      pcVar14 = "JumpDown";
      do {
        bVar4 = *(byte *)ppbVar8;
        bVar17 = bVar4 < (byte)*pcVar14;
        if (bVar4 != *pcVar14) {
LAB_0046c951:
          uVar5 = -(uint)bVar17 | 1;
          goto LAB_0046c956;
        }
        if (bVar4 == 0) break;
        bVar4 = *(byte *)((int)ppbVar8 + 1);
        bVar17 = bVar4 < ((byte *)pcVar14)[1];
        if (bVar4 != ((byte *)pcVar14)[1]) goto LAB_0046c951;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar4 != 0);
      uVar5 = 0;
LAB_0046c956:
      if ((uVar5 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x8c) != '\0'))))
      goto LAB_0046e270;
    }
  }
  else {
    if (iVar9 == 3) {
      cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
         (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
        *(undefined *)(param_1 + 0x8c) = 0;
      }
      *(undefined4 *)(param_1 + 0x188) = 4;
      *(undefined4 *)(param_1 + 0x184) = 5;
      if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x2c) == 0)) {
        iVar7 = FUN_006be840();
        iVar9 = FUN_006eef60();
        if ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
            DAT_00baa924 + DAT_00baa87c <=
            (float)((uint)(*(float *)(param_1 + 0x340) - *(float *)(iVar7 + 0x340)) & DAT_00bacb40))
        {
          uVar5 = FUN_006eef60();
          uVar5 = ((uVar5 & 0xff ^ 0xffffffff) & 1) * 2;
        }
        else {
          uVar5 = 1;
        }
        iVar7 = *(int *)(param_1 + 0x28);
LAB_0046ca54:
        if (((iVar7 == 0x2b) && (*(uint *)(param_1 + 0xbc4) == uVar5)) &&
           (iVar7 = FUN_006eef60(),
           (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 <
           DAT_00baa3e0)) {
          uVar10 = FUN_006eef60();
          iVar9 = uVar5 + (uVar10 & 1) + 1;
          iVar7 = (int)((ulonglong)((longlong)iVar9 * 0x55555555) >> 0x20) - iVar9;
          uVar5 = ((iVar7 >> 1) - (iVar7 >> 0x1f)) * 3 + iVar9;
        }
      }
      else {
        uVar5 = FUN_006eef60();
        uVar5 = uVar5 % 3;
        iVar7 = *(int *)(param_1 + 0x28);
        if (iVar7 != 0x14) goto LAB_0046ca54;
        if ((*(int *)(param_1 + 0x30) == 2) && (uVar5 == 2)) {
          uVar5 = 1;
        }
      }
      if (((*(uint *)(param_1 + 0x16c) & 0x10000000) != 0) &&
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0)) {
        uVar5 = 0;
      }
      *(uint *)(param_1 + 0xbc4) = uVar5;
      if (local_1c0 == -1) {
        if (uVar5 == 2) {
LAB_0046cb4a:
          *(undefined4 *)(param_1 + 0xb64) = 6;
          FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
          cVar3 = FUN_0040a5d0(&DAT_00b1e0e4,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          if (local_1a5 != '\0') {
            local_1b4 = (int *)0x3a9;
LAB_0046cba6:
            FUN_00956780();
            FUN_0092dc30(local_1b4,0x3f800000,2,0,0x3f800000,0);
          }
        }
        else {
          if (uVar5 == 1) {
LAB_0046cc2e:
            *(undefined4 *)(param_1 + 0xb64) = 8;
            cVar3 = FUN_0040a5d0("Taunt",1);
            if (cVar3 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x8c) = 1;
            }
            goto LAB_0046cc60;
          }
          if (uVar5 != 0) goto LAB_0046cc60;
LAB_0046ccbb:
          *(undefined4 *)(param_1 + 0xb64) = 4;
          FUN_006d6ba0(0xe,0x3f000000,2,0,0x3f800000);
          cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          if (local_1a5 != '\0') {
            local_1b4 = (int *)0x3a8;
            goto LAB_0046cba6;
          }
        }
        if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x30) == 1)) {
          *(undefined4 *)(param_1 + 0x14c) = 0x3fc00000;
        }
      }
      else {
        if (local_1a6 != '\0') goto LAB_0046cb4a;
        fVar18 = (float)local_1dc * (float)local_1dc + (float)local_1d8 * (float)local_1d8;
        FUN_00435a50();
        if (DAT_00baa2d0 < fVar18) goto LAB_0046cc2e;
        fVar18 = (float)local_1c4 * (float)local_1c4 + (float)local_1c8 * (float)local_1c8;
        FUN_00435a50();
        if (DAT_00baa2d0 < fVar18) goto LAB_0046ccbb;
      }
LAB_0046cc60:
      if (*(int *)(param_1 + 0xb64) == 8) {
        if (local_1c0 == -1) {
          iVar7 = FUN_006be840();
          bVar17 = *(float *)(param_1 + 0x33c) - *(float *)(iVar7 + 0x33c) < (float)local_1a4;
        }
        else {
          bVar17 = (float)local_1a4 <= *(float *)(param_1 + 3000);
        }
        *(bool *)(param_1 + 0x148) = bVar17;
        if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x2c) == 0)) {
          uVar6 = FUN_004238f0(0x3f4ccccd);
          if (*(char *)(param_1 + 0x148) == '\0') {
            local_1a4 = DAT_00baaa78;
          }
          local_1a4 = (int *)((float)local_1a4 * DAT_00baa088);
          piVar11 = local_1a4;
          FUN_0041d540();
          local_1b0 = piVar11;
          piVar11 = local_1a4;
          FUN_0041d520();
          local_1d4 = 0.0;
          local_1d0 = (int *)0xc1900000;
          local_1ac = piVar11;
          FUN_0060b890(&local_1b0,0x16,uVar6,0x40800000);
        }
      }
      goto LAB_0046e270;
    }
    if (iVar9 == 8) {
      if (*(int *)(param_1 + 0x7c) != 0) {
        cVar3 = FUN_0040add0("Shoot");
        if (cVar3 != '\0') {
          if (*(int *)(param_1 + 0x28) == 0x14) {
            FUN_006d6ba0(0x10,0x3f800000,2,0,0x3f800000);
            if (iVar7 == -1) {
              uVar6 = AI_0043ef30();
              iVar7 = FUN_006be840();
              local_1b0 = *(int **)(iVar7 + 0x33c);
              local_1ac = *(int **)(iVar7 + 0x340);
            }
            else {
              *(bool *)(param_1 + 0x148) = (float)local_1a4 <= *(float *)(param_1 + 3000);
              uVar6 = AI_0043ef30();
              local_1b0 = (int *)(*(float *)(param_1 + 3000) * DAT_00baa9d0 +
                                 *(float *)(param_1 + 0x33c));
              local_1ac = (int *)(*(float *)(param_1 + 0xbbc) * DAT_00baa9d0 +
                                 *(float *)(param_1 + 0x340));
            }
            FUN_006ccdd0(0xd,&local_1b0,0,uVar6);
            uVar6 = FUN_004238f0(0x3f4ccccd);
            iVar7 = FUN_006b6830(param_1 + 0x33c,uVar6);
            *(undefined4 *)(iVar7 + 0x34c) = 0;
            *(undefined4 *)(iVar7 + 0x350) = 0xc1e80000;
          }
          else if (*(int *)(param_1 + 0x28) == 0x2b) {
            if (*(int *)(param_1 + 0x2c) == 0) {
              local_1b0 = (int *)0x0;
              local_1ac = (int *)0xc1a00000;
              if (iVar7 == -1) {
                piVar11 = DAT_00baaa78;
                if (*(char *)(param_1 + 0x148) != '\0') {
                  piVar11 = local_1a4;
                }
              }
              else {
                *(bool *)(param_1 + 0x148) = (float)local_1a4 <= *(float *)(param_1 + 3000);
                fVar18 = *(float *)(param_1 + 0xbbc);
                FUN_00499d60();
                piVar11 = (int *)(fVar18 * DAT_00baa948);
              }
              piVar11 = (int *)FUN_0096f310(1,param_1 + 0x33c,piVar11,0x1e,&local_1b0,param_1,0);
              piVar11[0xd6] = 0x453b8000;
              (**(code **)(*piVar11 + 0xc))();
            }
            else {
              if (iVar7 == -1) {
                uVar6 = AI_0043ef30();
                iVar7 = FUN_006be840();
                local_1b0 = *(int **)(iVar7 + 0x33c);
                local_1ac = *(int **)(iVar7 + 0x340);
              }
              else {
                *(bool *)(param_1 + 0x148) = (float)local_1a4 <= *(float *)(param_1 + 3000);
                uVar6 = AI_0043ef30();
                local_1b0 = (int *)(*(float *)(param_1 + 3000) * DAT_00baa97c +
                                   *(float *)(param_1 + 0x33c));
                local_1ac = (int *)(*(float *)(param_1 + 0xbbc) * DAT_00baa97c +
                                   *(float *)(param_1 + 0x340));
              }
              piVar11 = (int *)FUN_006ccdd0(1,&local_1b0,0x41200000,uVar6);
              fVar18 = (float)piVar11[0x106] - DAT_00baa1f8;
              piVar11[0x10e] = piVar11[0x10e] | 10;
              piVar11[0x10f] = piVar11[0x10f];
              piVar11[0x106] = (int)fVar18;
              fVar18 = (float)piVar11[0x105] * DAT_00baa354;
              piVar11[0x108] = 0x3fcccccd;
              piVar11[0x105] = (int)(fVar18 - DAT_00baa83c);
              (**(code **)(*piVar11 + 0x3c))(&DAT_00c34e54,0xffffffff,0xff,0,1);
              local_1b4 = (int *)0x3aa;
              FUN_00956780();
              FUN_0092dc30(local_1b4,0x3f800000,2,0,0x3f800000,0);
            }
          }
        }
        if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
        goto LAB_0046e270;
      }
      *(undefined4 *)(param_1 + 0xb64) = 3;
      goto LAB_0046e270;
    }
    if (iVar9 == 4) {
      if ((iVar7 == -1) ||
         (((*(int *)(param_1 + 0x7c) != 0 &&
           (DAT_00baa75c < *(float *)(param_1 + 0x88) || DAT_00baa75c == *(float *)(param_1 + 0x88))
           ) || (local_1a6 == '\0')))) {
        if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) !=
             (*(float *)(param_1 + 0x334) == DAT_00c7b640)) &&
           ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) !=
            (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
          local_1b4 = *(int **)(DAT_00c71678 + 0x18300);
          iVar9 = FUN_007f0780(local_1d4,local_1d0);
          if (iVar9 == 0) {
            iVar9 = FUN_00812c90(&local_1d4);
            fVar18 = (float)(iVar9 / local_1b4[3]) * DAT_00baa904 + DAT_00baaa00;
            *(float *)(param_1 + 0x334) =
                 (float)(iVar9 % local_1b4[3]) * DAT_00baa904 + DAT_00baa904;
            *(float *)(param_1 + 0x338) = fVar18;
          }
          if (iVar7 != -1) {
            *(int **)(param_1 + 0x334) = local_1e8;
            *(int **)(param_1 + 0x338) = local_1bc;
          }
        }
        if (((NAN(*(float *)(param_1 + 0x334)) || NAN(DAT_00c7b640)) ==
             (*(float *)(param_1 + 0x334) == DAT_00c7b640)) ||
           ((NAN(*(float *)(param_1 + 0x338)) || NAN(DAT_00c7b644)) ==
            (*(float *)(param_1 + 0x338) == DAT_00c7b644))) {
          local_1a7 = FUN_0040b090(&DAT_00b1d560);
          local_1c9 = FUN_0040b090(&DAT_00b1d574);
          if ((local_1a7 == '\0') || (local_1c9 != '\0')) {
            uVar6 = 5;
            uVar16 = 4;
          }
          else {
            uVar6 = 3;
            uVar16 = 0;
          }
          *(undefined4 *)(param_1 + 0x188) = uVar16;
          *(undefined4 *)(param_1 + 0x184) = uVar6;
          cVar3 = FUN_0040b030(&DAT_00b1d574);
          if (cVar3 != '\0') {
            FUN_006d6ba0(0x30,0x3f000000,2,0,0x3f800000);
            uVar6 = FUN_006eef60();
            piVar11 = (int *)FUN_00428b20(1000,0x10,param_1 + 0x33c,&DAT_00c7b640,param_1,2,uVar6);
            bVar4 = FUN_006eef60();
            piVar11[0x37] = 0;
            *(byte *)(piVar11 + 0x52) = ~bVar4 & 1;
            piVar11[0x38] = 0x41700000;
            uVar6 = FUN_004238f0(0x3f333333);
            (**(code **)(*piVar11 + 0x3c))(uVar6,0xffffffff,0xff,0,1);
            FUN_004564b0(param_1);
            (**(code **)(*piVar11 + 0xc))();
          }
          if (local_1c9 == '\0') {
            local_1b4 = (int *)(*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340));
            local_1bc = (int *)(*(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c));
            piVar11 = (int *)((float)local_1b4 * (float)local_1b4 +
                             (float)local_1bc * (float)local_1bc);
            FUN_00435a50();
            local_1e0 = piVar11;
            piVar11 = local_1bc;
            piVar15 = local_1b4;
            if ((local_1c0 != -1) && (local_1a7 != '\0')) {
              pfVar12 = (float *)FUN_00a10030(&local_1b0);
              fVar18 = (float)local_1c4 * pfVar12[1] + (float)local_1c8 * *pfVar12;
              if (fVar18 < (float)local_1a4) {
                fVar18 = fVar18 * (float)local_1a4;
              }
              fVar18 = (float)((uint)(fVar18 * fVar18 * fVar18) & DAT_00bacb40) * DAT_00baa304 +
                       DAT_00baa280;
              piVar11 = local_1c8;
              piVar15 = local_1c4;
              cVar3 = FUN_00a10600(&DAT_00c7b640);
              if (cVar3 != '\0') {
                fVar18 = DAT_00baa454;
              }
              piVar11 = (int *)(fVar18 * (float)piVar11 * (float)local_1e0);
              piVar15 = (int *)(fVar18 * (float)piVar15 * (float)local_1e0);
            }
            piVar20 = local_1e0;
            if ((NAN((float)local_1e0) || NAN((float)local_1a4)) !=
                ((float)local_1e0 == (float)local_1a4)) {
              piVar20 = DAT_00baa020;
            }
            fVar18 = DAT_00baa4b0 / (float)piVar20;
            if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x30) == 1)) {
              fVar18 = fVar18 * DAT_00baa528;
            }
            fVar19 = *(float *)(param_1 + 0x36c);
            if ((NAN(fVar19) || NAN((float)local_1a4)) == (fVar19 == (float)local_1a4)) {
              fVar21 = ((float)piVar11 * fVar18 * *(float *)(param_1 + 0x39c)) / fVar19 +
                       *(float *)(param_1 + 0x360);
              *(float *)(param_1 + 0x360) = fVar21;
              *(float *)(param_1 + 0x364) =
                   ((float)piVar15 * fVar18 * *(float *)(param_1 + 0x39c)) / fVar19 +
                   *(float *)(param_1 + 0x364);
              fVar19 = *(float *)(param_1 + 0x36c);
            }
            else {
              fVar21 = *(float *)(param_1 + 0x360);
            }
            *(float *)(param_1 + 0x36c) = fVar19 * DAT_00baa3e0;
            *(bool *)(param_1 + 0x148) = (float)local_1a4 < fVar21;
            goto LAB_0046e270;
          }
          if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
            *(float *)(param_1 + 0x334) = DAT_00c7b640;
            *(float *)(param_1 + 0x338) = DAT_00c7b644;
            if (local_1c0 == -1) {
              uVar5 = FUN_006eef60();
              if ((uVar5 & 1) != 0) {
LAB_0046d72e:
                FUN_006d6ba0(0xe,0x3ecccccd,2,0,0x3f800000);
                cVar3 = FUN_0040a5d0(&DAT_00b1dce4,1);
                if (cVar3 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(param_1 + 0x8c) = 1;
                }
                if (local_1a5 != '\0') {
                  local_1b4 = (int *)0x3a8;
                  FUN_00956780();
                  FUN_0092dc30(local_1b4,0x3f800000,2,0,0x3f800000,0);
                }
                goto LAB_0046e270;
              }
            }
            else {
              fVar18 = (float)local_1c4 * (float)local_1c4 + (float)local_1c8 * (float)local_1c8;
              FUN_00435a50();
              if ((DAT_00baa2d0 <= fVar18) && (local_1a6 == '\0')) goto LAB_0046d72e;
            }
            *(undefined4 *)(param_1 + 0x14c) = 0x3f800000;
            *(undefined4 *)(param_1 + 0xb64) = 3;
            goto LAB_0046e270;
          }
        }
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        goto LAB_0046e270;
      }
      *(undefined4 *)(param_1 + 0xb64) = 6;
      FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
      cVar3 = FUN_0040a5d0(&DAT_00b1e0e4,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
LAB_0046d208:
      if (local_1a5 != '\0') {
        local_1b4 = (int *)0x3a9;
        FUN_00956780();
        FUN_0092dc30(local_1b4,0x3f800000,2,0,0x3f800000,0);
      }
      if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x30) == 1)) {
        *(undefined4 *)(param_1 + 0x14c) = 0x3fc00000;
      }
      goto LAB_0046e270;
    }
    if (iVar9 != 6) {
      if (iVar9 != 7) goto LAB_0046e270;
      cVar3 = FUN_00a10600(&DAT_00c7b640);
      if (cVar3 != '\0') {
        local_1d4 = (float)local_1e8;
        local_1d0 = local_1bc;
        if (*(int *)(param_1 + 0xbc0) == 2) {
          iVar7 = FUN_006be840(uVar5);
          local_1e4 = *(float *)(iVar7 + 0x360);
          local_1e0 = *(int **)(iVar7 + 0x364);
          puVar13 = (uint *)FUN_00a10030(local_1b8);
          fVar18 = *(float *)(iVar7 + 0x370) + *(float *)(param_1 + 0x370) + DAT_00baa784;
          local_1d4 = (float)(*puVar13 ^ DAT_00bacb70) * fVar18 + (float)local_1e8;
          local_1d0 = (int *)((float)(puVar13[1] ^ DAT_00bacb70) * fVar18 + (float)local_1bc);
        }
        local_1b4 = *(int **)(DAT_00c71678 + 0x18300);
        iVar7 = FUN_007f0780(local_1d4,local_1d0);
        if (iVar7 == 0) {
          iVar7 = FUN_00812c90(&local_1d4);
          fVar19 = (float)(iVar7 % local_1b4[3]) * DAT_00baa904 + DAT_00baa904;
          fVar18 = (float)(iVar7 / local_1b4[3]) * DAT_00baa904 + DAT_00baaa00;
          *(float *)(param_1 + 0x334) = fVar19;
          *(float *)(param_1 + 0x338) = fVar18;
          if (*(int *)(param_1 + 0xbc0) == 2) {
            *(float *)(param_1 + 0x33c) = fVar19;
            *(undefined4 *)(param_1 + 0x340) = *(undefined4 *)(param_1 + 0x338);
          }
        }
      }
      local_1a7 = FUN_0040b090(&DAT_00b1d574);
      cVar3 = FUN_00a10630(&DAT_00c7b640);
      if ((cVar3 == '\0') || (local_1a7 != '\0')) {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
      }
      else {
        *(undefined4 *)(param_1 + 0x188) = 0;
        *(undefined4 *)(param_1 + 0x184) = 3;
        if (local_1c0 == -1) {
          local_1e0 = (int *)(*(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c));
          local_1b4 = (int *)(*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340));
          local_1b0 = local_1e0;
          local_1ac = local_1b4;
          pfVar12 = (float *)FUN_00a10030(&local_1d4);
          fVar18 = *(float *)(param_1 + 0x36c);
          if ((NAN(fVar18) || NAN((float)local_1a4)) == (fVar18 == (float)local_1a4)) {
            fVar19 = (*(float *)(param_1 + 0x39c) *
                     ((float)local_1b4 * DAT_00baa058 + pfVar12[1] * DAT_00baa1f8)) / fVar18;
            fVar18 = (*(float *)(param_1 + 0x39c) *
                     ((float)local_1e0 * DAT_00baa058 + *pfVar12 * DAT_00baa1f8)) / fVar18;
            goto LAB_0046dbc2;
          }
        }
        else {
          pfVar12 = (float *)FUN_00a10030(&local_1d4);
          local_1c4 = (int *)((float)((uint)((float)local_1c4 * pfVar12[1] +
                                            (float)local_1c8 * *pfVar12) & DAT_00bacb40) *
                              _DAT_00baa4ac + DAT_00baa120);
          cVar3 = FUN_00a10600(&DAT_00c7b640);
          if (cVar3 != '\0') {
            local_1c4 = DAT_00baa4cc;
          }
          pfVar12 = (float *)FUN_00a10030(&local_1d4);
          fVar18 = *(float *)(param_1 + 0x36c);
          if ((NAN(fVar18) || NAN((float)local_1a4)) == (fVar18 == (float)local_1a4)) {
            fVar19 = (*(float *)(param_1 + 0x39c) * (float)local_1c4 * pfVar12[1]) / fVar18;
            fVar18 = (*(float *)(param_1 + 0x39c) * (float)local_1c4 * *pfVar12) / fVar18;
LAB_0046dbc2:
            *(float *)(param_1 + 0x360) = fVar18 + *(float *)(param_1 + 0x360);
            *(float *)(param_1 + 0x364) = fVar19 + *(float *)(param_1 + 0x364);
          }
        }
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        if (local_1a7 != '\0') {
          *(undefined4 *)(param_1 + 0x188) = 4;
          *(undefined4 *)(param_1 + 0x184) = 5;
          cVar3 = FUN_0040b030(&DAT_00b1d574);
          if (cVar3 != '\0') {
            FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
            FUN_00456570();
            local_208 = *(undefined4 *)(param_1 + 0x33c);
            local_204 = *(undefined4 *)(param_1 + 0x340);
            iVar7 = *(int *)(DAT_00c71678 + 0x18300);
            local_1f0 = (int *)0xa;
            local_1f8 = 0x3ccccccd;
            local_1fc = 0x3d0f5c29;
            piVar11 = (int *)(iVar7 + 0x70fc);
            *piVar11 = *piVar11 + 1;
            uVar5 = *(uint *)(iVar7 + 0x70fc) & 0x80000001;
            if ((int)uVar5 < 0) {
              uVar5 = (uVar5 - 1 | 0xfffffffe) + 1;
            }
            FUN_0081df10(uVar5,&local_208);
            FUN_00407170();
            if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x2c) == 1)) {
              local_50 = _DAT_00bac9c0;
              uStack_4c = _UNK_00bac9c4;
              uStack_48 = _UNK_00bac9c8;
              uStack_44 = _UNK_00bac9cc;
              local_40 = _DAT_00bac100;
              uStack_3c = _UNK_00bac104;
              uStack_38 = _UNK_00bac108;
              uStack_34 = _UNK_00bac10c;
            }
            else {
              local_50 = _DAT_00bac7b0;
              uStack_4c = _UNK_00bac7b4;
              uStack_48 = _UNK_00bac7b8;
              uStack_44 = _UNK_00bac7bc;
            }
            FUN_006b66c0(param_1 + 0x33c,&local_50);
          }
          cVar3 = FUN_0040b030("Shoot");
          if (cVar3 != '\0') {
            if (*(int *)(param_1 + 0x28) == 0x14) {
              uVar6 = AI_0043ef30();
              FUN_006ccdd0(0x12,&DAT_00c7b640,0,uVar6);
            }
            else if (*(int *)(param_1 + 0x28) == 0x2b) {
              if (*(int *)(param_1 + 0xbc0) == 0) {
                if (*(int *)(param_1 + 0x2c) == 1) {
                  uVar6 = FUN_006eef60();
                  uVar24 = 0;
                  pTVar23 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                  pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                  uVar16 = 0;
                  uVar6 = FUN_00428b20(1000,0x1a,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar6);
                  piVar11 = (int *)__RTDynamicCast(uVar6,uVar16,pTVar22,pTVar23,uVar24);
                  if (piVar11[0xef] != 0) {
                    local_1e0 = piVar11 + 0xef;
                    FUN_004cf210(&local_1e0);
                  }
                  piVar11[0xef] = param_1;
                  FUN_004cdcf0(piVar11 + 0xef);
                  fVar19 = DAT_00c3793c * DAT_00baa6fc;
                  fVar18 = DAT_00c37940 * DAT_00baa6fc;
                  piVar11[0x117] = 0;
                  piVar11[0x39] = (int)fVar19;
                  piVar11[0x118] = 0;
                  piVar11[0x3a] = (int)fVar18;
                  (**(code **)(*piVar11 + 0xc))();
                }
                else if (*(int *)(param_1 + 0x2c) == 0) {
                  AI_0043ef30();
                  local_e4 = 0x3fb33333;
                  local_1b0 = (int *)0x41200000;
                  local_1ac = (int *)0x0;
                  FUN_006cb2e0(param_1 + 0x33c,&local_1b0,8,local_f8);
                }
              }
              else if (*(int *)(param_1 + 0xbc0) == 1) {
                if (*(int *)(param_1 + 0x2c) == 1) {
                  iVar7 = FUN_004566b0();
                  if ((iVar7 < 3) &&
                     ((cVar3 = FUN_00417430(0,0x10000000), cVar3 == '\0' ||
                      (uVar5 = FUN_006ac7e0(0xf,1,extraout_ECX_14,0), uVar5 < 3)))) {
                    local_1b0 = (int *)0x40a00000;
                    local_1ac = (int *)0x0;
                    uVar6 = FUN_006eef60();
                    uVar24 = 0;
                    pTVar23 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
                    pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                    uVar16 = 0;
                    uVar6 = FUN_00428b20(0xf,1,param_1 + 0x33c,&local_1b0,param_1,0,uVar6);
                    iVar7 = __RTDynamicCast(uVar6,uVar16,pTVar22,pTVar23,uVar24);
                    *(float *)(iVar7 + 0x380) = *(float *)(iVar7 + 0x380) - DAT_00baa784;
                    iVar7 = FUN_004566b0();
                    if ((iVar7 < 3) &&
                       ((cVar3 = FUN_00417430(0,0x10000000), cVar3 == '\0' ||
                        (uVar5 = FUN_006ac7e0(0xf,1,extraout_ECX_15,0), uVar5 < 3)))) {
                      FUN_006d6ba0(0x109,0x3fc00000,2,0,0x3f800000);
                      uVar6 = FUN_006eef60();
                      uVar24 = 0;
                      pTVar23 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
                      pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                      uVar16 = 0;
                      local_1b0 = (int *)0xc0a00000;
                      local_1ac = (int *)0x80000000;
                      uVar6 = FUN_00428b20(0xf,1,param_1 + 0x33c,&local_1b0,param_1,0,uVar6);
                      iVar7 = __RTDynamicCast(uVar6,uVar16,pTVar22,pTVar23,uVar24);
                      *(float *)(iVar7 + 0x380) = *(float *)(iVar7 + 0x380) - DAT_00baa784;
                    }
                    else {
                      FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
                    }
                  }
                }
                else if ((*(int *)(param_1 + 0x2c) == 0) && (iVar7 = FUN_004566b0(), iVar7 < 5)) {
                  piVar11 = (int *)&DAT_00000004;
                  local_1bc = (int *)&DAT_00000004;
                  fVar18 = DAT_00baa528;
                  if ((*(int *)(param_1 + 0x28) == 0x2b) && (*(int *)(param_1 + 0x30) == 1)) {
                    piVar11 = (int *)0x2;
                    local_1bc = (int *)0x2;
                    fVar18 = DAT_00baa454;
                  }
                  FUN_006d6ba0(0x109,fVar18,2,0,0x3f800000);
                  cVar3 = FUN_00417430(0,0x10000000);
                  if (cVar3 != '\0') {
                    iVar7 = FUN_006ac7e0(0x3d,0,extraout_ECX_16,0);
                    piVar15 = (int *)(4 - iVar7);
                    local_1bc = piVar11;
                    if ((int)piVar15 <= (int)piVar11) {
                      piVar11 = piVar15;
                      local_1bc = piVar15;
                    }
                  }
                  if (0 < (int)piVar11) {
                    local_1b4 = (int *)&DAT_00c5c59c;
                    do {
                      uVar6 = FUN_006eef60();
                      iVar7 = FUN_006eef60();
                      fVar18 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa704;
                      local_1e0 = (int *)(fVar18 + fVar18);
                      piVar11 = local_1e0;
                      FUN_0041d540();
                      local_1ec = (float)piVar11 * *(float *)(param_1 + 0x370) +
                                  *(float *)(param_1 + 0x33c);
                      piVar15 = local_1e0;
                      FUN_0041d520();
                      piVar11 = local_1b4;
                      uVar24 = 0;
                      pTVar23 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
                      local_1e8 = (int *)((float)piVar15 * *(float *)(param_1 + 0x370) +
                                         *(float *)(param_1 + 0x340));
                      pTVar22 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                      uVar16 = 0;
                      uVar6 = FUN_00428b20(0x3d,0,&local_1ec,local_1b4,param_1,0,uVar6);
                      iVar7 = __RTDynamicCast(uVar6,uVar16,pTVar22,pTVar23,uVar24);
                      local_1b4 = piVar11 + 2;
                      local_1bc = (int *)((int)local_1bc + -1);
                      *(undefined *)(iVar7 + 0x174) = 1;
                    } while (local_1bc != (int *)0x0);
                    local_1bc = (int *)0x0;
                  }
                }
              }
            }
          }
        }
        goto LAB_0046e270;
      }
      *(float *)(param_1 + 0x334) = DAT_00c7b640;
      *(float *)(param_1 + 0x338) = DAT_00c7b644;
      uVar5 = *(uint *)(param_1 + 0xbc0);
      if (uVar5 == 2) {
        *(undefined4 *)(param_1 + 0xbc0) = 0;
        uVar5 = 0;
      }
      if (*(int *)(param_1 + 0x28) == 0x2b) {
        uVar5 = uVar5 ^ 1;
        *(uint *)(param_1 + 0xbc0) = uVar5;
      }
      uVar6 = 6;
      if (uVar5 == 0) {
        uVar6 = 3;
      }
      *(undefined4 *)(param_1 + 0xb64) = uVar6;
      if (uVar5 == 0) {
        *(undefined4 *)(param_1 + 0x14c) = 0x3f800000;
        goto LAB_0046e270;
      }
      FUN_0040a380(&DAT_00b1e0e4,0);
      goto LAB_0046d208;
    }
    *(undefined4 *)(param_1 + 0x188) = 4;
    *(undefined4 *)(param_1 + 0x184) = 5;
    if ((*(int *)(param_1 + 0x7c) == 0) || (cVar3 = FUN_0040ae70(&DAT_00b1d560), cVar3 == '\0'))
    goto LAB_0046e270;
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0xb64) = 7;
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(float *)(param_1 + 0x338) = DAT_00c7b644;
  }
  cVar3 = FUN_0040a5d0("JumpDown",1);
  if (cVar3 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
LAB_0046e270:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

