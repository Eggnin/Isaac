/* Local J460 decompiler output.
 * VA: 0x005769b0
 * Entry: 005769b0
 * Dispatcher: 0x006c2990
 * Types: 919
 * Identities: 919.0.0,919.1.0
 * Evidence: dispatcher=0x006c2990; end=0x005784c0; instructions=1479
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=919; identities=919.0.0,919.1.0; dispatcher=0x006c2990;
   end=0x005784c0; instructions=1479 */

void __fastcall AI_005769b0(int param_1)

{
  short sVar1;
  byte bVar2;
  char cVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  byte **ppbVar7;
  int iVar8;
  float *pfVar9;
  undefined4 *puVar10;
  byte *pbVar11;
  undefined **ppuVar12;
  undefined *puVar13;
  int iVar14;
  undefined4 extraout_ECX;
  float *extraout_EDX;
  float fVar15;
  bool bVar16;
  float fVar17;
  byte *pbVar18;
  undefined auVar19 [16];
  char local_104 [4];
  int local_100;
  byte *local_f8;
  float local_f4;
  byte *local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  byte *local_d4;
  undefined local_d0 [148];
  undefined4 local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af51b1;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar4;
  if (*(int *)(param_1 + 0x2c) == 1) {
    FUN_00576450();
    goto switchD_00576dbf_caseD_1;
  }
  pfVar9 = *(float **)(param_1 + 8);
  auVar19 = ZEXT816(0);
  fVar15 = 0.0;
  puStack_20 = &stack0xfffffffc;
  puVar13 = &stack0xfffffffc;
  if (pfVar9 != *(float **)(param_1 + 0xc)) {
    do {
      if ((pfVar9[4] == *(float *)(param_1 + 0x28)) &&
         (bVar2 = FUN_004567b0(uVar4), pfVar9 = extraout_EDX,
         ((byte)((uint)extraout_EDX[0xc] >> 1) & 1) == bVar2)) {
        *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - *extraout_EDX;
        *extraout_EDX = 0.0;
      }
      fVar15 = auVar19._0_4_;
      pfVar9 = pfVar9 + 0xe;
      puVar13 = puStack_20;
    } while (pfVar9 != *(float **)(param_1 + 0xc));
  }
  puStack_20 = puVar13;
  if (*(float *)(param_1 + 0x14) <= fVar15 && fVar15 != *(float *)(param_1 + 0x14)) {
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  fVar15 = *(float *)(DAT_00c71678 + 0x18300);
  local_e0 = (float)((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
  local_f4 = fVar15;
  if (*(int *)(param_1 + 0xb74) == 1) {
    if (*(int *)(param_1 + 0xb64) == 1) {
      local_e4 = DAT_00baa454;
      if ((((((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040add0("Shoot"), cVar3 == '\0')) &&
            (*(int *)(param_1 + 0x7c) != 0)) && (*(char *)(param_1 + 0x8c) != '\0')) ||
          (*(undefined4 *)(param_1 + 0x188) = 4, *(int *)(param_1 + 0x7c) != 0)) &&
         (cVar3 = FUN_0040add0("Sound"), cVar3 != '\0')) {
        fVar15 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (fVar15 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_e4 = fVar15;
        }
        local_d4 = (byte *)0x131;
        FUN_00956780();
        FUN_0092dc30(local_d4,0x3f800000,2,0,local_e4,0);
      }
      if (((*(int *)(param_1 + 0x7c) != 0) && (cVar3 = FUN_0040ae70("Sound"), cVar3 != '\0')) &&
         (0 < (int)local_e0)) {
        do {
          *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
          iVar8 = *(int *)(param_1 + 0x410);
          if ((((iVar8 == 10) || (iVar8 == 0x14)) || (iVar8 == 0x1e)) || (iVar8 == 0x28)) {
            FUN_0081e9d0(&local_dc,0);
            uVar5 = FUN_006eef60();
            piVar6 = (int *)FUN_00428b20(0xf0,2,&local_dc,&DAT_00c7b640,param_1,0,uVar5);
            (**(code **)(*piVar6 + 0xc))();
            local_d4 = (byte *)0x109;
            FUN_00956780();
            FUN_0092dc30(local_d4,0x3f800000,2,0,0x3f800000,0);
          }
          local_e0 = (float)((int)local_e0 + -1);
        } while (local_e0 != 0.0);
        local_e0 = 0.0;
      }
    }
    goto switchD_00576dbf_caseD_1;
  }
  bVar2 = *(byte *)(param_1 + 0xbc3);
  if (((-1 < (char)bVar2) && (bVar2 < 3)) &&
     (fVar17 = *(float *)(&DAT_00b61e64 + (char)bVar2 * 4) * *(float *)(param_1 + 900),
     *(float *)(param_1 + 0x380) <= fVar17 && fVar17 != *(float *)(param_1 + 0x380))) {
    *(byte *)(param_1 + 0xbc3) = bVar2 + 1;
    FUN_006b45c0();
    if (*(char *)(param_1 + 0xbc3) == '\x01') {
      cVar3 = FUN_0040a5d0((&PTR_s_SummonLeft_00b61e70)[*(short *)(param_1 + 0xbc0)],1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      *(undefined4 *)(param_1 + 0xb64) = 0xe;
      FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
    }
    else {
      if (*(char *)(param_1 + 0xbc3) != '\x02') goto LAB_00576d85;
      cVar3 = FUN_0040a5d0((&PTR_s_SummonArmLeft_00b61e80)[*(short *)(param_1 + 0xbc0)],1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
      FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
      *(undefined4 *)(param_1 + 0xb64) = 0xf;
    }
    *(undefined4 *)(param_1 + 0x410) = 0;
  }
LAB_00576d85:
  if (0 < *(int *)(param_1 + 0xba4)) {
    *(int *)(param_1 + 0xba4) = *(int *)(param_1 + 0xba4) - (int)local_e0;
  }
  if (0 < *(int *)(param_1 + 0xba0)) {
    *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - (int)local_e0;
  }
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(undefined4 *)(param_1 + 0xf18) = 1;
    FUN_004071f0(&DAT_00c34da4);
    fVar17 = DAT_00baa904;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x34c) = 0;
    *(undefined4 *)(param_1 + 0x350) = 0x41880000;
    iVar8 = (int)((*(float *)(param_1 + 0x33c) - fVar17) / fVar17 + DAT_00baa2d0);
    if (((iVar8 < 0) || (iVar14 = *(int *)((int)fVar15 + 0xc), iVar14 <= iVar8)) ||
       (*(int *)((int)fVar15 + 0x10) < 2)) {
      iVar14 = *(int *)((int)fVar15 + 0xc);
      iVar8 = -1;
    }
    else {
      iVar8 = iVar8 + iVar14;
    }
    fVar15 = (float)(iVar8 / iVar14) * fVar17 + DAT_00baaa00;
    *(float *)(param_1 + 0x334) = (float)(iVar8 % iVar14) * fVar17 + fVar17;
    *(float *)(param_1 + 0x338) = fVar15;
    *(undefined4 *)(param_1 + 0xbc0) = 0xff0003;
    uVar4 = FUN_006eef60();
    *(uint *)(param_1 + 0xba4) = uVar4 % 0x3c + 0x3c;
    goto LAB_00578464;
  default:
    goto switchD_00576dbf_caseD_1;
  case 3:
    ppuVar12 = &PTR_s_MoveLeftUp_00c5c340;
    if (*(char *)(param_1 + 0xbc2) < '\x01') {
      ppuVar12 = &PTR_s_MoveLeftDown_00c5c350;
    }
    local_d4 = ppuVar12[*(short *)(param_1 + 0xbc0)];
    ppbVar7 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar7 == (byte **)0x0) {
LAB_00576f1b:
      cVar3 = FUN_0040a5d0(local_d4,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      pbVar11 = local_d4;
      if (&DAT_0000000f < ppbVar7[5]) {
        ppbVar7 = (byte **)*ppbVar7;
      }
      do {
        bVar2 = *(byte *)ppbVar7;
        bVar16 = bVar2 < *pbVar11;
        if (bVar2 != *pbVar11) {
LAB_00576f00:
          uVar4 = -(uint)bVar16 | 1;
          goto LAB_00576f05;
        }
        if (bVar2 == 0) break;
        bVar2 = *(byte *)((int)ppbVar7 + 1);
        bVar16 = bVar2 < pbVar11[1];
        if (bVar2 != pbVar11[1]) goto LAB_00576f00;
        ppbVar7 = (byte **)((int)ppbVar7 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar2 != 0);
      uVar4 = 0;
LAB_00576f05:
      if ((uVar4 != 0) ||
         ((*(char *)(*(int *)(param_1 + 0x7c) + 0x34) != '\0' && (*(char *)(param_1 + 0x8c) == '\0')
          ))) goto LAB_00576f1b;
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    FUN_00576090();
    FUN_0067f1d0();
    iVar8 = FUN_006be840();
    fVar15 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
    fVar17 = *(float *)(param_1 + 0x33c) - *(float *)(iVar8 + 0x33c);
    fVar15 = fVar15 * fVar15 + fVar17 * fVar17;
    FUN_00435a50();
    local_f4 = (fVar15 * DAT_00baa120 * *(float *)(iVar8 + 0x364) + *(float *)(iVar8 + 0x340)) -
               *(float *)(param_1 + 0x340);
    local_e4 = (fVar15 * DAT_00baa120 * *(float *)(iVar8 + 0x360) + *(float *)(iVar8 + 0x33c)) -
               *(float *)(param_1 + 0x33c);
    pbVar11 = DAT_00baa54c;
    FUN_0041d540();
    local_d4 = pbVar11;
    pbVar11 = DAT_00baa54c;
    FUN_0041d520();
    if ((DAT_00baa89c <=
         (float)((uint)(((float)local_d4 * local_dc - local_d8 * (float)pbVar11) * local_e4 +
                       ((float)pbVar11 * local_dc + (float)local_d4 * local_d8) * local_f4) &
                DAT_00bacb40)) || (0 < *(int *)(param_1 + 0xba0))) {
      if (*(int *)(param_1 + 0xba4) < 1) {
        *(undefined4 *)(param_1 + 0xb64) = 8;
        FUN_0040a380((&PTR_s_BrimstoneLeft_00b61e24)[*(short *)(param_1 + 0xbc0)],0);
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
    }
    else {
      if (*(char *)(param_1 + 0xbc3) == '\0') {
        puVar13 = (&PTR_s_DashLeft_00b61e44)[*(short *)(param_1 + 0xbc0)];
      }
      else {
        puVar13 = (&PTR_s_DashAltLeft_00b61e54)[*(short *)(param_1 + 0xbc0)];
      }
      *(uint *)(param_1 + 0xb64) = (*(char *)(param_1 + 0xbc3) != '\0') + 6;
      FUN_0040a380(puVar13,0);
    }
    iVar8 = FUN_006ac760();
    if ((iVar8 == 0) || (uVar4 = FUN_006eef60(), uVar4 % 5 != 0)) goto switchD_00576dbf_caseD_1;
    FUN_006d0c60(local_104,0xf0,0xffffffff);
    pbVar11 = (byte *)0x0;
    local_14 = 0;
    iVar8 = 0;
    if (local_f8 == (byte *)0x0) {
LAB_00577178:
      *(undefined4 *)(param_1 + 0xb64) = 0xd;
      FUN_0040a380((&PTR_s_SummonLeft_00b61e70)[*(short *)(param_1 + 0xbc0)],0);
      if (*(int *)(param_1 + 0x7c) != 0) {
        FUN_00408e00();
      }
      *(undefined4 *)(param_1 + 0x410) = 0;
    }
    else {
      do {
        iVar14 = iVar8 + 1;
        if (*(int *)(*(int *)(local_100 + (int)pbVar11 * 4) + 0x3c8) != param_1) {
          iVar14 = iVar8;
        }
        pbVar11 = pbVar11 + 1;
        iVar8 = iVar14;
      } while (pbVar11 < local_f8);
      if (iVar14 < 2) goto LAB_00577178;
    }
    local_14 = 0xffffffff;
    if (local_104[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
    }
    goto switchD_00576dbf_caseD_1;
  case 6:
  case 7:
    *(undefined4 *)(param_1 + 0x36c) = 0x3f19999a;
    if ((*(int *)(param_1 + 0x7c) == 0) || (cVar3 = FUN_0040add0("DashStart"), cVar3 == '\0')) {
      if (*(int *)(param_1 + 0x410) == 1) goto LAB_0057747b;
    }
    else {
      FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
      *(undefined4 *)(param_1 + 0x410) = 1;
      *(undefined4 *)(param_1 + 0xbb4) = 0x41900000;
LAB_0057747b:
      iVar8 = FUN_0040a780();
      if ((((iVar8 != 0x1a) || (*(int *)(param_1 + 0xb64) != 7)) ||
          ((*(int *)(param_1 + 0x7c) != 0 && (FUN_00408e00(), *(int *)(param_1 + 0x410) == 1)))) &&
         ((*(int *)(param_1 + 0x7c) != 0 && (cVar3 = FUN_0040add0("DashEnd"), cVar3 != '\0')))) {
        if (*(int *)(param_1 + 0xb64) == 7) {
          if ((&PTR_s_TurnDownFromLeft_00b61e34)[*(short *)(param_1 + 0xbc0)] == (undefined *)0x0) {
            FUN_0040a380("DashAltShoot",0);
            *(float *)(param_1 + 0xbb4) = *(float *)(param_1 + 0xbb4) * DAT_00baa2d0;
            *(undefined4 *)(param_1 + 0x410) = 4;
          }
          else {
            FUN_0040a380((&PTR_s_TurnDownFromLeft_00b61e34)[*(short *)(param_1 + 0xbc0)],0);
            *(undefined4 *)(param_1 + 0x410) = 3;
          }
        }
        else {
          local_e4 = *(float *)(param_1 + 0x33c);
          local_e0 = *(float *)(param_1 + 0x340);
          *(undefined4 *)(param_1 + 0x410) = 2;
          local_dc = local_e4;
          local_d8 = local_e0;
          FUN_0067f1d0();
          local_d4 = (byte *)(local_ec * DAT_00baa904);
          local_f0 = (byte *)(local_e8 * DAT_00baa904);
          local_ec = (float)local_d4 + local_e4;
          local_e8 = local_e0 + (float)local_f0;
          cVar3 = FUN_00813360(&local_ec,0);
          while (cVar3 != '\0') {
            local_e4 = (float)local_d4 + local_e4;
            local_e0 = local_e0 + (float)local_f0;
            local_ec = local_e4 + (float)local_d4;
            local_e8 = (float)local_f0 + local_e0;
            local_dc = local_e4;
            local_d8 = local_e0;
            cVar3 = FUN_00813360(&local_ec,0);
          }
          iVar8 = FUN_00812c90(&local_dc);
          fVar15 = (float)(iVar8 / *(int *)((int)fVar15 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
          *(float *)(param_1 + 0x334) =
               (float)(iVar8 % *(int *)((int)fVar15 + 0xc)) * DAT_00baa904 + DAT_00baa904;
          *(float *)(param_1 + 0x338) = fVar15;
          uVar4 = (int)*(short *)(param_1 + 0xbc0) + 2U & 0x80000003;
          if ((int)uVar4 < 0) {
            uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
          }
          *(short *)(param_1 + 0xbc0) = (short)uVar4;
        }
      }
    }
    iVar8 = *(int *)(param_1 + 0x410);
    if (iVar8 == 1) {
      FUN_0067f1d0();
      *(float *)(param_1 + 0x360) =
           local_dc * *(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           local_d8 * *(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x364);
      fVar17 = *(float *)(param_1 + 0xbb4) - *(float *)(param_1 + 0x39c) * DAT_00baa280;
      fVar15 = DAT_00baa7e8;
      if (DAT_00baa7e8 <= fVar17) {
        fVar15 = fVar17;
      }
      *(float *)(param_1 + 0xbb4) = fVar15;
      if (((*(int *)(param_1 + 0xb64) != 6) || (iVar8 = FUN_0040a780(), 0x4f < iVar8)) ||
         (pfVar9 = (float *)FUN_00812d00(&local_ec),
         (*(float *)(param_1 + 0x340) - pfVar9[1]) * local_d8 +
         (*(float *)(param_1 + 0x33c) - *pfVar9) * local_dc <= DAT_00ba9fe4)) goto LAB_00577f90;
      if (*(int *)(param_1 + 0x7c) != 0) {
        FUN_00408e00();
        goto LAB_00577f90;
      }
    }
    else {
      if (iVar8 == 2) {
        local_f4 = *(float *)(param_1 + 0x39c);
        fVar15 = local_f4 * DAT_00baa198 + *(float *)(param_1 + 0xbb4);
        local_e4 = DAT_00baa834;
        if (fVar15 <= DAT_00baa834) {
          local_e4 = fVar15;
        }
        *(float *)(param_1 + 0xbb4) = local_e4;
        local_f0 = (byte *)((*(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c)) *
                           DAT_00baa0d0);
        local_d4 = (byte *)((*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) *
                           DAT_00baa0d0);
        fVar15 = (float)local_d4 * (float)local_d4 + (float)local_f0 * (float)local_f0;
        FUN_00435a50();
        pbVar11 = local_f0;
        pbVar18 = local_d4;
        if ((local_e4 < fVar15) && (DAT_00ba9fe4 < fVar15)) {
          pbVar18 = (byte *)((local_e4 / fVar15) * (float)local_d4);
          pbVar11 = (byte *)((local_e4 / fVar15) * (float)local_f0);
        }
        *(float *)(param_1 + 0x360) = (float)pbVar11 * local_f4 + *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) = (float)pbVar18 * local_f4 + *(float *)(param_1 + 0x364);
      }
      else if (iVar8 == 3) {
        FUN_0067f1d0();
        *(float *)(param_1 + 0x360) =
             local_dc * *(float *)(param_1 + 0xbb4) * *(float *)(param_1 + 0x39c) +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0xbb4) * local_d8 * *(float *)(param_1 + 0x39c) +
             *(float *)(param_1 + 0x364);
        fVar17 = *(float *)(param_1 + 0xbb4) -
                 (*(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x39c));
        fVar15 = DAT_00baa630;
        if (DAT_00baa630 <= fVar17) {
          fVar15 = fVar17;
        }
        *(float *)(param_1 + 0xbb4) = fVar15;
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          FUN_0040a380("DashAltShoot",0);
          *(undefined4 *)(param_1 + 0x410) = 4;
        }
      }
      else if (iVar8 == 4) {
        FUN_0067f1d0();
        fVar15 = DAT_00baa454;
        local_f0 = (byte *)0x3f800000;
        *(float *)(param_1 + 0x360) =
             *(float *)(param_1 + 0xbb4) * local_dc * *(float *)(param_1 + 0x39c) +
             *(float *)(param_1 + 0x360);
        *(float *)(param_1 + 0x364) =
             *(float *)(param_1 + 0xbb4) * local_d8 * *(float *)(param_1 + 0x39c) +
             *(float *)(param_1 + 0x364);
        local_d4 = (byte *)(*(float *)(param_1 + 0xbb4) - *(float *)(param_1 + 0x39c));
        ppbVar7 = &local_f0;
        if (fVar15 <= (float)local_d4) {
          ppbVar7 = &local_d4;
        }
        *(byte **)(param_1 + 0xbb4) = *ppbVar7;
        cVar3 = FUN_0040b030("Shoot");
        if (cVar3 == '\0') {
          cVar3 = FUN_0040b030("Shoot2");
          if (cVar3 != '\0') {
            FUN_006d6ba0(0x6a,0x3f800000,2,0,0x3f800000);
            AI_0043ef30();
            local_3c = 2;
            FUN_004071f0(&DAT_00c34e28);
            local_dc = 10.0;
            local_d8 = 0.0;
            FUN_006cb2e0(param_1 + 0x33c,&local_dc,6,local_d0);
            FUN_006d0c60(local_104,0x21,3);
            local_14 = 3;
            local_d4 = (byte *)0x0;
            iVar8 = local_100;
            pbVar11 = local_f8;
            if (local_f8 != (byte *)0x0) {
              do {
                iVar14 = *(int *)(iVar8 + (int)local_d4 * 4);
                if (((iVar14 != 0) &&
                    (((iVar8 = local_100, 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                      (*(int *)(iVar14 + 0x28) == 1)) || (*(int *)(iVar14 + 0x28) - 10U < 0x3de))))
                   && ((*(int *)(iVar14 + 0x34) == *(int *)(param_1 + 0x28) &&
                       (*(int *)(iVar14 + 0xb64) == 8)))) {
                  local_ec = *(float *)(iVar14 + 0x33c);
                  local_e8 = *(float *)(iVar14 + 0x340);
                  local_dc = 10.0;
                  local_d8 = 0.0;
                  FUN_006cb2e0(&local_ec,&local_dc,6,local_d0);
                  cVar3 = FUN_0040aaf0("Shoot",1);
                  iVar8 = local_100;
                  pbVar11 = local_f8;
                  if (cVar3 != '\0') {
                    FUN_0040a1b0();
                    *(undefined *)(iVar14 + 0xac) = 1;
                    iVar8 = local_100;
                    pbVar11 = local_f8;
                  }
                }
                local_d4 = local_d4 + 1;
              } while (local_d4 < pbVar11);
            }
            goto LAB_00577db9;
          }
        }
        else {
          FUN_006d6ba0(0x68,0x3f800000,2,0,0x3f800000);
          AI_0043ef30();
          local_3c = 2;
          FUN_004071f0(&DAT_00c34e28);
          local_dc = 10.0;
          local_d8 = 0.0;
          FUN_006cb2e0(param_1 + 0x33c,&local_dc,7,local_d0);
          FUN_006d0c60(local_104,0x21,3);
          local_14 = 2;
          local_d4 = (byte *)0x0;
          iVar8 = local_100;
          pbVar11 = local_f8;
          if (local_f8 != (byte *)0x0) {
            do {
              iVar14 = *(int *)(iVar8 + (int)local_d4 * 4);
              if (((iVar14 != 0) &&
                  (((iVar8 = local_100, 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                    (*(int *)(iVar14 + 0x28) == 1)) || (*(int *)(iVar14 + 0x28) - 10U < 0x3de)))) &&
                 ((*(int *)(iVar14 + 0x34) == *(int *)(param_1 + 0x28) &&
                  (*(int *)(iVar14 + 0xb64) == 8)))) {
                local_ec = *(float *)(iVar14 + 0x33c);
                local_e8 = *(float *)(iVar14 + 0x340);
                local_dc = 10.0;
                local_d8 = 0.0;
                FUN_006cb2e0(&local_ec,&local_dc,7,local_d0);
                cVar3 = FUN_0040aaf0("Shoot",1);
                iVar8 = local_100;
                pbVar11 = local_f8;
                if (cVar3 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(iVar14 + 0xac) = 1;
                  iVar8 = local_100;
                  pbVar11 = local_f8;
                }
              }
              local_d4 = local_d4 + 1;
            } while (local_d4 < pbVar11);
          }
LAB_00577db9:
          local_14 = 0xffffffff;
          FUN_004175b0();
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
          FUN_0040a380((&PTR_s_DashLeft_00b61e44)[*(short *)(param_1 + 0xbc0)],1);
          local_e4 = *(float *)(param_1 + 0x33c);
          local_e0 = *(float *)(param_1 + 0x340);
          local_dc = local_e4;
          local_d8 = local_e0;
          FUN_0067f1d0();
          local_f0 = (byte *)(local_ec * DAT_00baa904);
          local_d4 = (byte *)(local_e8 * DAT_00baa904);
          local_ec = (float)local_f0 + local_e4;
          local_e8 = (float)local_d4 + local_e0;
          cVar3 = FUN_00813360(&local_ec,0);
          while (cVar3 != '\0') {
            local_e4 = (float)local_f0 + local_e4;
            local_e0 = (float)local_d4 + local_e0;
            local_ec = local_e4 + (float)local_f0;
            local_e8 = local_e0 + (float)local_d4;
            local_dc = local_e4;
            local_d8 = local_e0;
            cVar3 = FUN_00813360(&local_ec,0);
          }
          uVar5 = FUN_00812c90(&local_dc);
          puVar10 = (undefined4 *)FUN_00812f00(&local_dc,uVar5);
          *(undefined4 *)(param_1 + 0x334) = *puVar10;
          *(undefined4 *)(param_1 + 0x338) = puVar10[1];
          uVar4 = (int)*(short *)(param_1 + 0xbc0) + 2U & 0x80000003;
          if ((int)uVar4 < 0) {
            uVar4 = (uVar4 - 1 | 0xfffffffc) + 1;
          }
          *(short *)(param_1 + 0xbc0) = (short)uVar4;
          FUN_0040a720(0x5a);
          *(undefined4 *)(param_1 + 0x410) = 2;
        }
      }
LAB_00577f90:
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
      goto switchD_00576dbf_caseD_1;
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(char *)(param_1 + 0xbc2) = -*(char *)(param_1 + 0xbc2);
    *(undefined4 *)(param_1 + 0xba0) = 0x3c;
    break;
  case 8:
    *(undefined4 *)(param_1 + 0x36c) = 0x3f19999a;
    sVar1 = *(short *)(param_1 + 0xbc0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      FUN_0040ae70("Shoot");
    }
    FUN_00576090();
    if ((int)*(short *)(param_1 + 0xbc0) != (int)sVar1) {
      FUN_0040a5d0((&PTR_s_BrimstoneLeft_00b61e24)[*(short *)(param_1 + 0xbc0)],0);
      iVar8 = *(int *)(param_1 + 0x3c0);
      if ((iVar8 != 0) && (*(int *)(iVar8 + 0x28) == 7)) {
        FUN_0096ce90((float)(int)*(short *)(param_1 + 0xbc0) * DAT_00baa9b4 - DAT_00baaa78);
        iVar14 = DAT_00baabfc;
        if (*(short *)(param_1 + 0xbc0) == 1) {
          iVar14 = DAT_00baadc0;
        }
        *(int *)(iVar8 + 0x358) = iVar14;
      }
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f800000);
        *(undefined4 *)(param_1 + 0x410) = 0;
        local_dc = 0.0;
        local_d8 = -24.0;
        fVar15 = (float)(int)*(short *)(param_1 + 0xbc0) * DAT_00baa9b4 - DAT_00baaa78;
        *(float *)(param_1 + 0xbb0) =
             (float)(int)*(short *)(param_1 + 0xbc0) * DAT_00baa9b4 - DAT_00baaa78;
        piVar6 = (int *)FUN_0096f310(1,param_1 + 0x33c,fVar15,0x2d,&local_dc,param_1,0);
        iVar8 = DAT_00baabfc;
        if (*(short *)(param_1 + 0xbc0) == 1) {
          iVar8 = DAT_00baadc0;
        }
        piVar6[0xd6] = iVar8;
        (**(code **)(*piVar6 + 0x3c))(&DAT_00c34dd0,0xffffffff,0xff,0,1);
        if (*(int *)(param_1 + 0x3c0) != 0) {
          local_d4 = (byte *)(param_1 + 0x3c0);
          FUN_004cf210(&local_d4);
        }
        *(int **)(param_1 + 0x3c0) = piVar6;
        FUN_004cdcf0((int **)(param_1 + 0x3c0));
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
      goto switchD_00576dbf_caseD_1;
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    uVar4 = FUN_006eef60();
    *(uint *)(param_1 + 0xba4) = uVar4 % 0x3c + 0x3c;
    goto switchD_00576dbf_caseD_1;
  case 0xd:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    cVar3 = FUN_0040b030("Sound");
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      FUN_0081e9d0(&local_dc,0);
      uVar5 = FUN_006eef60();
      piVar6 = (int *)FUN_00428b20(0xf0,2,&local_dc,&DAT_00c7b640,param_1,0,uVar5);
      (**(code **)(*piVar6 + 0xc))();
      FUN_00956940(0x109,extraout_ECX,2,0,0x3f800000);
    }
    goto LAB_00578084;
  case 0xe:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    cVar3 = FUN_0040b030("Sound");
    if (cVar3 != '\0') {
      FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
      FUN_00703670(8);
    }
    cVar3 = FUN_0040b090("Shoot");
    if (cVar3 != '\0') {
      FUN_006d0c60(local_104,0x21,3);
      local_14 = 4;
      if (0 < (int)local_e0) {
        local_f0 = (byte *)0x6;
        fVar15 = local_e0;
        do {
          iVar8 = *(int *)(param_1 + 0x410);
          *(int *)(param_1 + 0x410) = iVar8 + 1;
          if ((iVar8 % (int)local_f0 == 0) && (local_f8 != (byte *)0x0)) {
            pbVar11 = (byte *)0x0;
            do {
              piVar6 = *(int **)(local_100 + (int)pbVar11 * 4);
              if ((piVar6 != (int *)0x0) &&
                 ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar6[10] == 1)) ||
                   (piVar6[10] - 10U < 0x3de)) &&
                  ((piVar6[0xd] == *(int *)(param_1 + 0x28) && ((float)piVar6[0xe0] <= DAT_00baa454)
                   ))))) {
                piVar6[0x2d9] = 9;
                (**(code **)(*piVar6 + 0xc))();
                break;
              }
              pbVar11 = pbVar11 + 1;
            } while (pbVar11 < local_f8);
          }
          fVar15 = (float)((int)fVar15 + -1);
        } while (fVar15 != 0.0);
      }
      local_14 = 0xffffffff;
      if (local_104[0] == '\0') {
        local_14 = 5;
        FUN_00a648b0(0,0);
      }
    }
LAB_00578084:
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
    goto switchD_00576dbf_caseD_1;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    break;
  case 0xf:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    cVar3 = FUN_0040b030("DashStart");
    if (cVar3 != '\0') {
      puVar10 = (undefined4 *)FUN_00812d00(&local_dc);
      *(undefined4 *)(param_1 + 0x334) = *puVar10;
      *(undefined4 *)(param_1 + 0x338) = puVar10[1];
      *(float *)(param_1 + 0x338) = *(float *)(param_1 + 0x338) - DAT_00baaa00;
    }
    cVar3 = FUN_0040b090("DashStart");
    if (cVar3 != '\0') {
      fVar17 = DAT_00baa3e0;
      FUN_00684cb0();
      fVar17 = DAT_00baa454 - fVar17;
      *(float *)(param_1 + 0x360) =
           ((*(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c)) -
           *(float *)(param_1 + 0x360)) * fVar17 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           ((*(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340)) -
           *(float *)(param_1 + 0x364)) * fVar17 + *(float *)(param_1 + 0x364);
    }
    cVar3 = FUN_0040b030("Sound");
    if (cVar3 != '\0') {
      uVar5 = FUN_006eef60();
      local_dc = *(float *)(param_1 + 0x334) - DAT_00baaa94;
      local_d8 = *(float *)(param_1 + 0x338) + DAT_00ba9fe4;
      piVar6 = (int *)FUN_00428b20(0x397,1,&local_dc,&DAT_00c7b640,param_1,0,uVar5);
      (**(code **)(*piVar6 + 0xc))();
      uVar5 = FUN_006eef60();
      local_dc = *(float *)(param_1 + 0x334) + DAT_00baaa94;
      local_d8 = *(float *)(param_1 + 0x338) + DAT_00ba9fe4;
      piVar6 = (int *)FUN_00428b20(0x397,1,&local_dc,&DAT_00c7b640,param_1,0,uVar5);
      *(undefined *)(piVar6 + 0x52) = 1;
      (**(code **)(*piVar6 + 0xc))();
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0'))
    goto switchD_00576dbf_caseD_1;
    FUN_00812ea0(param_1 + 0x33c,&local_f0,&local_d4);
    if (((int)local_f0 < 0) ||
       ((*(int *)((int)fVar15 + 0xc) <= (int)local_f0 || (*(int *)((int)fVar15 + 0x10) < 2)))) {
      pbVar11 = (byte *)0xffffffff;
    }
    else {
      pbVar11 = local_f0 + *(int *)((int)fVar15 + 0xc);
    }
    puVar10 = (undefined4 *)FUN_00812f00(&local_ec,pbVar11);
    *(undefined4 *)(param_1 + 0x334) = *puVar10;
    *(undefined4 *)(param_1 + 0x338) = puVar10[1];
    *(undefined2 *)(param_1 + 0xbc0) = 3;
    *(undefined *)(param_1 + 0xbc2) = 0xff;
    *(undefined4 *)(param_1 + 0xb64) = 3;
  }
  *(undefined4 *)(param_1 + 0xbb4) = 0;
LAB_00578464:
  *(undefined4 *)(param_1 + 0x410) = 0;
switchD_00576dbf_caseD_1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

