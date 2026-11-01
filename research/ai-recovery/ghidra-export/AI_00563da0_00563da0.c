/* Local J460 decompiler output.
 * VA: 0x00563da0
 * Entry: 00563da0
 * Dispatcher: 0x006c2990
 * Types: 879
 * Identities: 879.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00564f30; instructions=958
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=879; identities=879.0.0; dispatcher=0x006c2990;
   end=0x00564f30; instructions=958 */

void __fastcall AI_00563da0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  float fVar3;
  undefined auVar4 [16];
  char cVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  float *pfVar9;
  byte **ppbVar10;
  byte *pbVar11;
  uint uVar12;
  int iVar13;
  bool bVar14;
  float fVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  float local_15c;
  float local_158;
  int local_154;
  int local_150;
  byte *local_14c;
  float local_148;
  float local_144;
  float local_140;
  float local_13c;
  float local_138;
  byte *local_134;
  byte *local_130;
  byte *local_12c;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  uint uStack_60;
  undefined4 local_5c;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined uStack_3b;
  undefined2 uStack_3a;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4ee5;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar13 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  local_154 = param_1;
  local_150 = iVar13;
  local_24 = uVar6;
  FUN_006d8e40(1);
  auVar4 = _local_40;
  iVar7 = *(int *)(param_1 + 0xb64);
  if (iVar7 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    cVar5 = FUN_0040a5d0("WalkVert",1);
    if (((cVar5 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(uVar6), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    if (*(int *)(param_1 + 0xf1c) == -1) {
      uVar6 = FUN_006eef60();
      iVar7 = uVar6 % 0x96 + 0x3c;
    }
    else {
      iVar7 = 0x3c;
    }
    *(int *)(param_1 + 0xba0) = iVar7;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    iVar7 = FUN_006eef60();
    fVar15 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
    if (DAT_00baab30 < (float)((uint)fVar15 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    if (fVar15 <= DAT_00baaa78) {
      if (fVar15 < DAT_00baae7c) {
        fVar15 = fVar15 + DAT_00baab30;
      }
    }
    else {
      fVar15 = fVar15 - DAT_00baab30;
    }
    *(float *)(param_1 + 0xbb4) = fVar15;
    *(float *)(param_1 + 0xbb0) = fVar15;
    goto LAB_00564f0b;
  }
  if (iVar7 == 4) {
    local_28 = 0xf;
    local_2c = 8;
    local_40[4] = s_WalkVert_00b1dd18[0];
    uStack_3b = s_WalkVert_00b1dd18[1];
    uStack_3a._0_1_ = s_WalkVert_00b1dd18[2];
    uStack_3a._1_1_ = s_WalkVert_00b1dd18[3];
    uStack_38._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_38._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_38._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_38._3_1_ = s_WalkVert_00b1dd18[7];
    uStack_34._1_3_ = auVar4._13_3_;
    uStack_34._0_1_ = 0;
    local_54 = 0xf;
    local_58 = 8;
    uStack_68._0_1_ = s_WalkHori_00b1dd30[0];
    uStack_68._1_1_ = s_WalkHori_00b1dd30[1];
    uStack_68._2_1_ = s_WalkHori_00b1dd30[2];
    uStack_68._3_1_ = s_WalkHori_00b1dd30[3];
    uStack_64._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_64._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_64._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_64._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_60 = uStack_60 & 0xffffff00;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&uStack_68,local_40 + 4,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_54) {
      uVar12 = local_54 + 1;
      uVar6 = uStack_68;
      if (0xfff < uVar12) {
        uVar6 = *(uint *)(uStack_68 - 4);
        uVar12 = local_54 + 0x24;
        if (0x1f < (uStack_68 - uVar6) - 4) goto LAB_0056458d;
      }
      FUN_00aef15c(uVar6,uVar12);
    }
    local_14 = -1;
    local_58 = 0;
    local_54 = 0xf;
    uStack_68 = uStack_68 & 0xffffff00;
    if (0xf < local_28) {
      uVar6 = local_28 + 1;
      iVar7 = stack0xffffffc4;
      if (0xfff < uVar6) {
        iVar7 = *(int *)(stack0xffffffc4 + -4);
        uVar6 = local_28 + 0x24;
        if (0x1f < (stack0xffffffc4 - iVar7) - 4U) {
LAB_0056458d:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar7,uVar6);
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      local_144 = *(float *)(param_1 + 0x16c);
      if (((*(uint *)(param_1 + 0x168) & 0x1000b00) != 0) || (*(int *)(param_1 + 0xf38) != 0)) {
        *(undefined4 *)(param_1 + 0xbc0) = 10;
      }
      if ((*(uint *)(param_1 + 0x168) & 0x200) == 0) {
        cVar5 = FUN_00417430(0x100,0);
        if ((cVar5 == '\0') && (*(int *)(param_1 + 0xf38) == 0)) {
          cVar5 = FUN_00417430(0x1000800,0);
          if (cVar5 != '\0') {
            iVar7 = FUN_006be840();
            fVar15 = *(float *)(param_1 + 0x340) - *(float *)(iVar7 + 0x340);
            FUN_00499d60();
            *(float *)(param_1 + 0xbb0) = fVar15 * DAT_00baa948;
          }
        }
        else {
          local_13c = (float)FUN_006be840();
          cVar5 = FUN_006ac710(5,*(undefined4 *)(param_1 + 0x20));
          if (cVar5 != '\0') {
            local_140 = *(float *)(param_1 + 0x33c);
            local_12c = *(byte **)(param_1 + 0x340);
            local_14c = *(byte **)(param_1 + 0x360);
            local_130 = *(byte **)(param_1 + 0x364);
            local_134 = *(byte **)(param_1 + 0x36c);
            FUN_007e3260();
            local_148 = *(float *)((int)local_13c + 0x33c);
            local_144 = *(float *)((int)local_13c + 0x340);
            FUN_007e33c0(&local_148,0x3f800000,900,1);
            fVar15 = *(float *)(param_1 + 0x364);
            FUN_00499d60();
            *(float *)(param_1 + 0xbb0) = fVar15 * DAT_00baa948;
            *(float *)(param_1 + 0x33c) = local_140;
            *(byte **)(param_1 + 0x340) = local_12c;
            *(byte **)(param_1 + 0x360) = local_14c;
            *(byte **)(param_1 + 0x364) = local_130;
            *(byte **)(param_1 + 0x36c) = local_134;
            iVar13 = local_150;
          }
        }
      }
      else {
        uVar6 = FUN_006eef60();
        if (uVar6 % 5 == 0) {
          iVar7 = FUN_006eef60();
          fVar15 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baab30;
          FUN_00682740();
          *(float *)(param_1 + 0xbb0) = fVar15;
        }
      }
      *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) - iVar13;
      local_134 = (byte *)(*(float *)(param_1 + 0xbb4) * DAT_00baa088);
      pbVar11 = local_134;
      FUN_0041d540();
      local_12c = pbVar11;
      FUN_0041d520();
      *(float *)(param_1 + 0x360) =
           (float)local_12c * DAT_00baa4b0 * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           (float)local_134 * DAT_00baa4b0 * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x364);
      uVar16 = *(undefined4 *)(param_1 + 0xbb4);
      FUN_00682a50();
      *(undefined4 *)(param_1 + 0xbb4) = uVar16;
      if ((*(char *)(param_1 + 400) != '\0') && (uVar6 = FUN_006eef60(), (uVar6 & 3) == 0)) {
        fVar15 = *(float *)(param_1 + 0x1a0);
        fVar15 = (float)local_134 -
                 (fVar15 + fVar15) *
                 (fVar15 * (float)local_134 + *(float *)(param_1 + 0x19c) * (float)local_12c);
        FUN_00499d60();
        *(float *)(param_1 + 0xbb0) = fVar15 * DAT_00baa948;
      }
      if (*(int *)(param_1 + 0xbc0) < 1) {
        iVar7 = FUN_006eef60();
        fVar15 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baab30;
        FUN_00682740();
        *(float *)(param_1 + 0xbb0) = fVar15;
        uVar6 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc0) = uVar6 % 0x78 + 0x2d;
      }
    }
    else {
      pfVar9 = (float *)FUN_006d82d0(&local_148);
      fVar15 = pfVar9[1] * DAT_00baa4b0 * DAT_00baa4c0;
      *(float *)(param_1 + 0x360) =
           *pfVar9 * DAT_00baa4b0 * DAT_00baa4c0 * *(float *)(param_1 + 0x39c) +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           fVar15 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
    }
    uVar6 = FUN_006eef60();
    if (uVar6 % 0x14 == 0) {
      FUN_006d6ba0(0xa7,0x3f800000,0x3c,0,0x3f800000);
    }
    if (((0 < *(int *)(param_1 + 0xba0)) &&
        (iVar13 = *(int *)(param_1 + 0xba0) - iVar13, *(int *)(param_1 + 0xba0) = iVar13, 0 < iVar13
        )) || ((*(int *)(param_1 + 0xf1c) != -1 && (cVar5 = FUN_006cae60(0,7), cVar5 == '\0'))))
    goto LAB_00564d05;
    *(undefined4 *)(param_1 + 0xb64) = 8;
    if (*(int *)(param_1 + 0xf1c) == -1) {
      local_12c = (byte *)0x0;
      do {
        fVar15 = *(float *)(param_1 + 0x364);
        FUN_00499d60();
        local_134 = (byte *)fVar15;
        iVar7 = FUN_006eef60();
        fVar15 = ((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa9b4 + (float)local_134 * DAT_00baa948) - DAT_00baa910;
        if (DAT_00baab30 < (float)((uint)fVar15 & DAT_00bacb40)) {
          FUN_00499d20();
        }
        fVar3 = DAT_00baa910;
        if (fVar15 <= DAT_00baaa78) {
          if (fVar15 < DAT_00baae7c) {
            fVar15 = fVar15 + DAT_00baab30;
          }
        }
        else {
          fVar15 = fVar15 - DAT_00baab30;
        }
        uVar6 = (int)(fVar15 / DAT_00baa910 + DAT_00baa7e8) & 0x80000007;
        if ((int)uVar6 < 0) {
          uVar6 = (uVar6 - 1 | 0xfffffff8) + 1;
        }
        *(uint *)(param_1 + 0xbc4) = uVar6;
        pbVar11 = (byte *)((float)uVar6 * fVar3 * DAT_00baa088);
        local_134 = pbVar11;
        FUN_0041d540();
        local_148 = (float)pbVar11 * DAT_00baa9a0 + *(float *)(param_1 + 0x33c);
        pbVar11 = local_134;
        FUN_0041d520();
        local_144 = (float)pbVar11 * DAT_00baa9a0 + *(float *)(param_1 + 0x340);
        cVar5 = FUN_00813360(&local_148,0);
      } while ((cVar5 == '\0') && (local_12c = (byte *)((int)local_12c + 1), local_12c < 8));
    }
    else {
      iVar7 = FUN_006d85a0(&local_148);
      fVar15 = *(float *)(iVar7 + 4);
      FUN_00499d60();
      fVar15 = (fVar15 * DAT_00baa948) / DAT_00baa910;
      FUN_00682740();
      uVar6 = (int)(fVar15 + DAT_00baa7e8) & 0x80000007;
      if ((int)uVar6 < 0) {
        uVar6 = (uVar6 - 1 | 0xfffffff8) + 1;
      }
      *(uint *)(param_1 + 0xbc4) = uVar6;
      FUN_006d9050(1);
    }
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    local_12c = (&PTR_s_AttackRight_00b61894)[*(int *)(param_1 + 0xbc4)];
    if (ppbVar2 == (byte **)0x0) {
LAB_00564cc4:
      cVar5 = FUN_0040a5d0(local_12c,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar10 = ppbVar2;
      pbVar11 = local_12c;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar10 = (byte **)*ppbVar2;
      }
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar14 = bVar1 < *pbVar11;
        if (bVar1 != *pbVar11) {
LAB_00564ca1:
          uVar6 = -(uint)bVar14 | 1;
          goto LAB_00564ca6;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar14 = bVar1 < pbVar11[1];
        if (bVar1 != pbVar11[1]) goto LAB_00564ca1;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pbVar11 = pbVar11 + 2;
      } while (bVar1 != 0);
      uVar6 = 0;
LAB_00564ca6:
      if ((uVar6 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_00564cc4;
    }
    *(bool *)(param_1 + 0x148) = *(int *)(param_1 + 0xbc4) - 3U < 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
  }
  else if (iVar7 == 8) {
    FUN_006d9050(0);
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_0056445a:
      *(undefined4 *)(param_1 + 0xb64) = 4;
      *(undefined4 *)(param_1 + 0x410) = 0;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        uVar6 = FUN_006eef60();
        iVar7 = uVar6 % 0x96 + 0x3c;
      }
      else {
        iVar7 = 0x3c;
      }
      *(int *)(param_1 + 0xba0) = iVar7;
    }
    else {
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        uVar19 = 0x3f800000;
        uVar18 = 0;
        uVar17 = 10;
        uVar16 = 0x3f800000;
        uVar6 = FUN_006eef60(0x3f800000,10,0,0x3f800000);
        FUN_006d6ba0((~uVar6 & 1) + 0xb,uVar16,uVar17,uVar18,uVar19);
        FUN_006d6ba0(0xd5,0x3f19999a,10,0,0x3f800000);
      }
      if (*(int *)(param_1 + 0x7c) == 0) goto LAB_0056445a;
      cVar5 = FUN_0040ae70("Shoot");
      if (cVar5 != '\0') {
        local_130 = (byte *)((float)*(int *)(param_1 + 0xbc4) * DAT_00baa910);
        fVar15 = (float)local_130;
        if ((*(int *)(param_1 + 0xf1c) != -1) &&
           (cVar5 = FUN_00a10630(&DAT_00c7b640), cVar5 != '\0')) {
          FUN_00499d60();
          fVar15 = (float)local_130;
          FUN_00682a50();
        }
        local_130 = (byte *)(fVar15 * DAT_00baa088);
        local_14c = local_130;
        FUN_0041d540();
        local_12c = local_130;
        FUN_0041d520();
        local_130 = (byte *)0x0;
        if (0 < local_150) {
          do {
            if (7 < *(int *)(param_1 + 0x410)) break;
            iVar7 = *(int *)(param_1 + 0x410) + 1;
            *(int *)(param_1 + 0x410) = iVar7;
            fVar15 = (float)iVar7 * DAT_00baa8a0;
            local_134 = (byte *)(fVar15 * (float)local_12c + *(float *)(param_1 + 0x340));
            local_138 = fVar15 * (float)local_14c + *(float *)(param_1 + 0x33c);
            uVar16 = FUN_006eef60();
            piVar8 = (int *)FUN_00428b20(1000,0x17,&local_138,&DAT_00c7b640,param_1,0,uVar16);
            iVar7 = *(int *)(param_1 + 0x410);
            piVar8[0x117] = 0x5a;
            piVar8[0x118] = 0x5a;
            local_13c = (float)iVar7 * DAT_00baa0f4 + DAT_00baa3e0;
            piVar8[0x39] = (int)local_13c;
            piVar8[0x3a] = (int)local_13c;
            (**(code **)(*piVar8 + 0xc))();
            cVar5 = FUN_00813360(&local_138,0);
            if (cVar5 != '\0') {
              iVar7 = FUN_006eef60();
              local_30 = 0x3da3d70a;
              local_2c = 0x3f000000;
              local_28 = 0x3c23d70a;
              local_15c = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                          DAT_00ba9ff4;
              local_158 = local_15c * *(float *)(param_1 + 0x338);
              local_15c = local_15c * *(float *)(param_1 + 0x334);
              local_158 = local_158 + local_158;
              local_15c = local_15c + local_15c;
              _local_40 = ZEXT416(0);
              local_50 = _DAT_00babf20;
              uStack_4c = _UNK_00babf24;
              uStack_48 = _UNK_00babf28;
              uStack_44 = _UNK_00babf2c;
              iVar7 = FUN_006eef60();
              local_140 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baaddc;
              local_148 = local_138 - *(float *)(param_1 + 0x334) * DAT_00baa784;
              local_144 = (float)local_134 - *(float *)(param_1 + 0x338) * DAT_00baa784;
              uVar16 = FUN_006eef60();
              piVar8 = (int *)FUN_00428b20(1000,2,&local_148,&local_15c,0,2,uVar16);
              (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
              piVar8[0x37] = 0;
              piVar8[0x38] = (int)local_140;
              piVar8[0xd6] = 0x41200000;
              iVar13 = FUN_006eef60();
              iVar7 = DAT_00c71678;
              piVar8[0x3b] = (int)((float)((double)iVar13 +
                                          (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baab30);
              pfVar9 = (float *)(*(int *)(iVar7 + 0x18300) + 0x7240);
              if (*pfVar9 <= DAT_00baa198 && DAT_00baa198 != *pfVar9) {
                uVar16 = FUN_006eef60();
                piVar8 = (int *)FUN_00428b20(1000,7,&local_138,&DAT_00c7b640,0,0,uVar16);
                piVar8[0xdd] = (int)local_13c;
                piVar8[0xde] = (int)local_13c;
                FUN_00682ed0();
                local_30 = 0x3da3d70a;
                local_50 = _DAT_00babbb0;
                uStack_4c = _UNK_00babbb4;
                uStack_48 = _UNK_00babbb8;
                uStack_44 = _UNK_00babbbc;
                local_2c = 0x3f000000;
                local_28 = 0x3c23d70a;
                (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
                (**(code **)(*piVar8 + 0xc))();
              }
            }
            if ((*(byte *)(param_1 + 0x410) & 1) == 0) {
              uVar16 = AI_0043ef30();
              piVar8 = (int *)FUN_006ccdd0(1,&DAT_00c7b640,0x41200000,uVar16);
              piVar8[0x108] = (int)((float)piVar8[0x108] * DAT_00baa324);
              iVar7 = FUN_006eef60();
              local_13c = ((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa87c - DAT_00baa81c) * DAT_00baa088;
              fVar15 = local_13c;
              FUN_0041d540();
              local_140 = fVar15;
              FUN_0041d520();
              iVar7 = FUN_006eef60();
              fVar15 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa75c;
              piVar8[0xd8] = (int)(((float)local_14c * local_140 - (float)local_12c * local_13c) *
                                  fVar15);
              piVar8[0xd9] = (int)(((float)local_14c * local_13c + (float)local_12c * local_140) *
                                  fVar15);
              FUN_00682ed0();
              local_50 = _DAT_00bac7b0;
              uStack_4c = _UNK_00bac7b4;
              uStack_48 = _UNK_00bac7b8;
              uStack_44 = _UNK_00bac7bc;
              stack0xffffffc4 = _UNK_00bac504;
              local_40._0_4_ = _DAT_00bac500;
              uStack_38 = _UNK_00bac508;
              uStack_34 = _UNK_00bac50c;
              (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            }
            local_130 = (byte *)((int)local_130 + 1);
          } while ((int)local_130 < local_150);
        }
      }
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) goto LAB_0056445a;
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa280;
  }
LAB_00564d05:
  if (DAT_00ba9fe4 < *(float *)(param_1 + 0x14)) {
    iVar13 = (int)(*(float *)(param_1 + 0x14) * DAT_00baa7e8);
    iVar7 = 1;
    if (1 < iVar13) {
      iVar7 = iVar13;
    }
    *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) - iVar7;
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    uVar16 = FUN_006eef60();
    piVar8 = (int *)FUN_00428b20(1000,0x84,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar16);
    local_5c = 0;
    local_7c = _DAT_00bac7b0;
    uStack_78 = _UNK_00bac7b4;
    uStack_74 = _UNK_00bac7b8;
    uStack_70 = _UNK_00bac7bc;
    local_6c = _DAT_00bac3b0;
    uStack_68 = _UNK_00bac3b4;
    uStack_64._0_1_ = UNK_00bac3b8;
    uStack_64._1_1_ = UNK_00bac3b9;
    uStack_64._2_1_ = UNK_00bac3ba;
    uStack_64._3_1_ = UNK_00bac3bb;
    uStack_60 = _UNK_00bac3bc;
    local_58 = 0;
    local_54 = 0;
    (**(code **)(*piVar8 + 0x3c))(&local_7c,0xffffffff,0xff,0,1);
    (**(code **)(*piVar8 + 0xc))();
    uVar16 = FUN_006eef60();
    piVar8 = (int *)FUN_00428b20(1000,0x17,param_1 + 0x33c,&DAT_00c7b640,local_154,0,uVar16);
    piVar8[0x39] = 0x40000000;
    piVar8[0x3a] = 0x40000000;
    piVar8[0x117] = 0x5a;
    piVar8[0x118] = 0x5a;
    (**(code **)(*piVar8 + 0xc))();
  }
LAB_00564f0b:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

