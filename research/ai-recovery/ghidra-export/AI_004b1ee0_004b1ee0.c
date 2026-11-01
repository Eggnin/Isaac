/* Local J460 decompiler output.
 * VA: 0x004b1ee0
 * Entry: 004b1ee0
 * Dispatcher: 0x006c2990
 * Types: 907
 * Identities: 907.0.0,907.0.1
 * Evidence: dispatcher=0x006c2990; end=0x004b3610; instructions=1276
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=907; identities=907.0.0,907.0.1; dispatcher=0x006c2990;
   end=0x004b3610; instructions=1276 */

void __fastcall AI_004b1ee0(int *param_1)

{
  float fVar1;
  double dVar2;
  byte bVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  float *pfVar9;
  int *piVar10;
  undefined4 uVar11;
  byte **ppbVar12;
  int iVar13;
  char *pcVar14;
  int **ppiVar15;
  bool bVar16;
  int **ppiVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float local_1e8;
  float local_1e4;
  char local_1e0 [4];
  int local_1dc;
  undefined local_1d8 [4];
  uint local_1d4;
  float local_1d0;
  float local_1cc;
  float local_1c8;
  int *local_1c4;
  float local_1c0;
  int **local_1bc;
  float local_1b8;
  float local_1b4;
  float local_1b0;
  int **local_1ac;
  int *local_1a8;
  int local_1a4;
  undefined local_1a0 [88];
  undefined4 local_148;
  undefined4 local_144;
  undefined local_f8 [36];
  undefined4 local_d4;
  undefined4 local_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined local_bc [16];
  ulonglong local_ac;
  float local_a4;
  float local_a0;
  undefined4 local_9c;
  undefined local_50 [8];
  float afStack_48 [2];
  undefined local_40 [8];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  iVar13 = DAT_00c71678;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af32b0;
  local_1c = ExceptionList;
  puStack_20 = &stack0xfffffffc;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_24 = uVar5;
  ExceptionList = &local_1c;
  iVar8 = *(int *)(DAT_00c71678 + 0x18300);
  local_1ac = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  iVar6 = param_1[0x2d9];
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa280);
  local_1c4 = param_1;
  local_1a4 = iVar8;
  if (param_1[0x2dd] == 1) {
    if ((((iVar6 != 0) && (iVar6 != 1)) && (iVar6 = param_1[0xef], iVar6 != 0)) &&
       (*(int *)(iVar6 + 0x28) == param_1[10])) {
      if (*(int *)(iVar6 + 0xb64) != 0x12) {
        param_1[0x104] = *(int *)(iVar6 + 0x410);
        *(undefined *)(param_1 + 0x2f0) = *(undefined *)(iVar6 + 0xbc0);
        param_1[0xe0] = *(int *)(iVar6 + 0x380);
      }
      if ((param_1[0xc] == 0) && (*(int *)(iVar6 + 0x30) == 1)) {
        param_1[0xc] = 1;
        param_1[0x2d9] = 0x10;
        FUN_0040a380("ClosedEyes",0);
        param_1[0x5b] = param_1[0x5b];
        param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x100000;
      }
    }
    iVar6 = param_1[0x2e9];
    if (-1 < iVar6) {
      local_1ac = (int **)(iVar6 / *(int *)(iVar8 + 0xc));
      local_1a4 = iVar6 % *(int *)(iVar8 + 0xc);
      uVar5 = 0;
      do {
        iVar6 = *(int *)((int)&DAT_00b1ee44 + uVar5) + (int)local_1ac;
        iVar13 = *(int *)((int)&DAT_00b1ee40 + uVar5) + local_1a4;
        if (((-1 < iVar13) && (iVar13 < *(int *)(iVar8 + 0xc))) &&
           ((-1 < iVar6 &&
            (((iVar6 < *(int *)(iVar8 + 0x10) &&
              (uVar7 = iVar6 * *(int *)(iVar8 + 0xc) + iVar13, uVar7 < 0x1c0)) &&
             (*(int *)(iVar8 + 0x76c + uVar7 * 4) < 0x3b7)))))) {
          *(undefined4 *)(iVar8 + 0x76c + uVar7 * 4) = 3999;
        }
        uVar5 = uVar5 + 8;
      } while (uVar5 < 0x30);
    }
    goto LAB_004b35a7;
  }
  local_1c8 = DAT_00baa454;
  switch(iVar6) {
  case 0:
    local_1ac = (int **)0x3ee66666;
    local_1b0 = 1.0;
    FUN_006ac2a0(0x42500000,0x3f800000,0x3ee66666,8);
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x5a] = param_1[0x5a] | 0x11;
    param_1[0x2d9] = 3;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x3c6] = 1;
    param_1[0x5b] = param_1[0x5b];
    *(undefined *)(param_1 + 0x2f0) = 1;
    iVar8 = FUN_00812c90(param_1 + 0xcf);
    param_1[0x2e9] = iVar8;
    param_1[0x2db] = 0;
    param_1[0x2e8] = 0;
    param_1[0x104] = 0;
    *(undefined *)((int)param_1 + 0xbc1) = 0;
    param_1[0x2f1] = 0;
    if (param_1[0xc] == 1) {
      param_1[0x2d9] = 0x10;
      FUN_0040a380("ClosedEyes",0);
      param_1[0x5b] = param_1[0x5b];
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x100000;
    }
    FUN_006d0c60(local_1e0,param_1[10],0xffffffff);
    local_14 = 0;
    uVar5 = 0;
    if (local_1d4 != 0) {
LAB_004b21f0:
      if (*(int **)(local_1dc + uVar5 * 4) == param_1) goto code_r0x004b21f5;
      iVar8 = *(int *)(local_1dc + uVar5 * 4);
      for (iVar6 = *(int *)(iVar8 + 0x3c0); iVar6 != 0; iVar6 = *(int *)(iVar6 + 0x3c0)) {
        iVar8 = iVar6;
      }
      if (param_1[0xef] != 0) {
        local_1ac = (int **)(param_1 + 0xef);
        FUN_004cf210(&local_1ac);
      }
      param_1[0xef] = iVar8;
      FUN_004cdcf0(param_1 + 0xef);
      ppiVar17 = (int **)(iVar8 + 0x3c0);
      if (*(int *)(iVar8 + 0x3c0) != 0) {
        local_1ac = ppiVar17;
        FUN_004cf210(&local_1ac);
      }
      *ppiVar17 = param_1;
      FUN_004cdcf0(ppiVar17);
    }
LAB_004b228c:
    if (param_1[0xef] != 0) {
      param_1[0x5a] = param_1[0x5a] | 0x80100000;
      param_1[0x5b] = param_1[0x5b];
      FUN_00436220(0);
    }
    if (local_1e0[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
    }
    iVar8 = DAT_00c71678;
    local_14 = 0xffffffff;
    if (param_1[0xef] == 0) {
      fVar18 = (float)param_1[0xe1];
      *(short *)(DAT_00c71678 + 0x22ebc) =
           (short)(int)((fVar18 - (float)param_1[0xe0]) + DAT_00baa454);
      *(short *)(iVar8 + 0x22ebe) = (short)(int)fVar18;
    }
    break;
  case 3:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    iVar8 = param_1[0x2db] + 1;
    param_1[0x2db] = iVar8;
    if (((iVar8 < 0x1f) || (*(char *)(param_1 + 0x2f0) == '\0')) || (param_1[0xef] != 0)) {
      if ((0x5a < iVar8) && (uVar5 = FUN_006eef60(), uVar5 % 0xf == 0)) {
        FUN_004b1210();
      }
    }
    else {
      uVar5 = FUN_006eef60();
      if ((uVar5 & 7) == 0) {
        FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f666666);
        param_1[0x2d9] = 0xd;
      }
    }
    break;
  case 6:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380("Attack2Loop",0);
    }
    AI_0043ef30();
    local_50._4_4_ = _UNK_00bac7b4;
    local_50._0_4_ = _DAT_00bac7b0;
    afStack_48[0] = (float)_UNK_00bac7b8;
    afStack_48[1] = (float)_UNK_00bac7bc;
    local_30 = 0x3f800000;
    _local_40 = ZEXT816(0);
    local_2c = 0x3e99999a;
    local_28 = 0;
    FUN_004071f0(local_50);
    local_148 = 0;
    local_144 = 0x80;
    iVar8 = FUN_006ccdd0(1,&DAT_00c7b640,0,local_1a0);
    FUN_0067f070(&local_1c0);
    iVar6 = FUN_006eef60();
    local_1ac = (int **)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                        DAT_00ba9ff4);
    iVar6 = FUN_006eef60();
    dVar2 = (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)];
    *(float *)(iVar8 + 0x364) = (float)local_1ac * DAT_00baa75c + DAT_00baa85c;
    fVar18 = (float)((double)iVar6 + dVar2) * DAT_00ba9ff4 * local_1c0;
    local_1c0 = local_1c0 * DAT_00baa8d0;
    *(float *)(iVar8 + 0x360) = fVar18 + fVar18;
    fVar20 = (float)local_1bc * DAT_00baa81c;
    fVar18 = (float)param_1[0xd0];
    *(float *)(iVar8 + 0x33c) = local_1c0 + (float)param_1[0xcf];
    *(float *)(iVar8 + 0x340) = fVar20 + fVar18;
    iVar6 = FUN_006eef60();
    *(undefined4 *)(iVar8 + 0x418) = 0x40000000;
    *(float *)(iVar8 + 0x420) =
         (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 +
         DAT_00baa454;
    iVar6 = FUN_006eef60();
    *(float *)(iVar8 + 0x414) =
         (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
         _DAT_00baa934 - DAT_00baa91c;
    param_1[0x2e8] = param_1[0x2e8] + -1;
    if (0 < param_1[0x2e8]) break;
    FUN_0040a380("Attack2End",0);
    goto LAB_004b2651;
  case 7:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380("Attack4Loop",0);
      (**(code **)(*param_1 + 0x40))(0x3f800000);
      iVar13 = DAT_00c71678;
    }
    local_1bc = (int **)0x0;
    if (*(int *)(iVar8 + 0x1264) != 0) {
      do {
        local_1a8 = *(int **)(*(int *)(iVar8 + 0x125c) + (int)local_1bc * 4);
        if (local_1a8 != param_1) {
          iVar8 = local_1a4;
          if ((*(int *)(iVar13 + 0x26614) < 2) || (local_1a8[10] != 1)) {
            iVar6 = local_1a8[10];
            if ((iVar6 - 10U < 0x3de) && (((iVar6 != 0x21 && (iVar6 != 0x11)) && (iVar6 != 0x124))))
            {
              if (iVar6 == 0x375) {
                if (local_1a8[0xb] == 10) goto LAB_004b2bef;
              }
              else if (((iVar6 == 0x3c0) || (iVar6 == 0x3c5)) || (iVar6 == 0xf5)) goto LAB_004b2f20;
              goto LAB_004b2f17;
            }
LAB_004b2f20:
            if (((iVar6 != 1) && (iVar6 != 2)) && ((iVar6 != 4 && ((iVar6 != 9 && (iVar6 != 5))))))
            goto LAB_004b2bef;
          }
          else {
            iVar6 = 1;
LAB_004b2f17:
            if (*(char *)((int)local_1a8 + 0x173) != '\0') goto LAB_004b2f20;
          }
          local_1cc = (float)param_1[0xd0] - (float)local_1a8[0xd0];
          local_1b8 = (float)param_1[0xcf] - (float)local_1a8[0xcf];
          fVar19 = local_1cc * local_1cc + local_1b8 * local_1b8;
          local_1b4 = DAT_00baa630 / (fVar19 * DAT_00baa010 + DAT_00baa454);
          FUN_00435a50(uVar5);
          fVar18 = local_1b8;
          fVar20 = local_1cc;
          if (0.0 < fVar19) {
            fVar20 = local_1cc * (DAT_00baa454 / fVar19);
            fVar18 = local_1b8 * (DAT_00baa454 / fVar19);
          }
          if (iVar6 == 1) {
            fVar19 = DAT_00baa3a4;
            if (local_1b4 * DAT_00baa500 <= DAT_00baa3a4) {
              fVar19 = local_1b4 * DAT_00baa500;
            }
            fVar1 = (float)local_1a8[0xdf];
            if (DAT_00baa454 <= (float)local_1a8[0xdf]) {
              fVar1 = DAT_00baa454;
            }
            fVar19 = fVar19 / fVar1;
          }
          else if (iVar6 == 2) {
            fVar19 = local_1b4 * DAT_00baa354;
          }
          else {
            fVar19 = local_1b4;
            if (((iVar6 == 9) && (local_1a8[0xb] == 9)) && (local_1a8[0xd] == param_1[10])) {
              fVar19 = DAT_00baa304;
              if (DAT_00baa304 <= local_1b4) {
                fVar19 = local_1b4;
              }
              if (DAT_00baa280 <= fVar19) {
                fVar19 = DAT_00baa280;
              }
            }
          }
          fVar1 = (float)local_1a8[0xdb];
          iVar8 = local_1a4;
          if (NAN(fVar1) == (fVar1 == 0.0)) {
            local_1a8[0xd8] =
                 (int)((fVar19 * fVar18 * (float)local_1a8[0xe7]) / fVar1 + (float)local_1a8[0xd8]);
            local_1a8[0xd9] =
                 (int)((fVar19 * fVar20 * (float)local_1a8[0xe7]) / fVar1 + (float)local_1a8[0xd9]);
          }
        }
LAB_004b2bef:
        local_1bc = (int **)((int)local_1bc + 1);
        iVar13 = DAT_00c71678;
      } while (local_1bc < *(uint *)(iVar8 + 0x1264));
    }
    local_1bc = (int **)0x0;
    if (0 < (int)local_1ac) {
      piVar10 = (int *)param_1[0x2e8];
      local_1cc = 8.407791e-45;
      local_1b4 = 4.203895e-45;
      do {
        local_1a8 = piVar10;
        if (((0x2d < (int)piVar10) && ((int)piVar10 < 0x56)) &&
           (local_1b8 = (float)((int)piVar10 / (int)local_1cc), (int)piVar10 % (int)local_1cc == 0))
        {
          afStack_48[0] = (float)_DAT_00bacae0;
          afStack_48[1] = (float)_UNK_00bacae4;
          local_40._4_4_ = _UNK_00bacaec;
          local_40._0_4_ = _UNK_00bacae8;
          uStack_38 = _DAT_00bacbe0;
          uStack_34 = _UNK_00bacbe4;
          local_30 = _UNK_00bacbe8;
          local_2c = _UNK_00bacbec;
          local_28 = 0xc2100000;
          local_1b8 = (*(float *)(local_50 + ((uint)local_1b8 % 9) * 4 + 8) + DAT_00baa9b4) *
                      DAT_00baa088;
          fVar18 = local_1b8;
          FUN_0041d540();
          local_1e8 = fVar18;
          fVar18 = local_1b8;
          FUN_0041d520();
          local_1e4 = fVar18;
          FUN_0096fd60(local_1d8,param_1 + 0xcf,&local_1e8,&DAT_00c7b640,0,0x41a00000);
          uVar11 = FUN_006eef60();
          local_1a8 = (int *)FUN_00428b20(9,9,local_1d8,&DAT_00c7b640,param_1,0,uVar11);
          iVar6 = FUN_006eef60();
          dVar2 = (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)];
          local_1a8[0x105] = 0;
          local_1a8[0x104] =
               (int)(DAT_00baadf0 - (float)((double)iVar6 + dVar2) * DAT_00ba9ff4 * DAT_00baa7e8);
          iVar6 = FUN_006eef60();
          local_1a8[0x106] =
               (int)(DAT_00baace8 -
                    (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * _DAT_00baa0a4);
          iVar6 = FUN_006eef60();
          local_1a8[0x10e] = 0x2000;
          local_1a8[0x108] =
               (int)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                     DAT_00ba9ff4 * _DAT_00baa4ac + DAT_00baa304);
          local_1a8[0x10f] = 0;
          if ((param_1[0x5a] & 0x80U) != 0) {
            local_1a8[0x10e] = 0x1002000;
            local_1a8[0x10f] = 0;
          }
          _local_40 = ZEXT816(0);
          local_30 = 0;
          local_2c = 0;
          local_28 = 0;
          _local_50 = _DAT_00bab050;
          (**(code **)(*local_1a8 + 0x3c))(local_50,10,0xff,1,1);
          local_1a8 = (int *)param_1[0x2e8];
        }
        piVar10 = local_1a8;
        if ((int)local_1a8 % 6 == 0) {
          uVar11 = FUN_006eef60();
          piVar10 = (int *)FUN_00428b20(1000,0x97,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar11);
          piVar10[0xd3] = 0;
          piVar10[0xd4] = -0x3e400000;
          (**(code **)(*piVar10 + 0xc))();
          piVar10 = (int *)param_1[0x2e8];
        }
        if ((int)piVar10 % (int)local_1b4 == 0) {
          uVar11 = FUN_006eef60();
          piVar10 = (int *)FUN_00428b20(1000,0x97,param_1 + 0xcf,&DAT_00c7b640,0,1,uVar11);
          piVar10[0xd3] = 0;
          piVar10[0xd4] = -0x3e400000;
          (**(code **)(*piVar10 + 0xc))();
          piVar10 = (int *)param_1[0x2e8];
        }
        piVar10 = (int *)((int)piVar10 + -1);
        param_1[0x2e8] = (int)piVar10;
        if ((int)piVar10 < 1) {
          (**(code **)(*param_1 + 0x40))(0);
          FUN_0040a380("Attack4End",0);
          uVar5 = 0;
          param_1[0x2d9] = 3;
          param_1[0x2db] = 0;
          if (*(int *)(iVar8 + 0x1264) != 0) {
            do {
              iVar6 = *(int *)(*(int *)(iVar8 + 0x125c) + uVar5 * 4);
              if (((*(int *)(iVar6 + 0x28) == 9) && (*(int *)(iVar6 + 0x2c) == 9)) &&
                 (*(int *)(iVar6 + 0x34) == param_1[10])) {
                *(undefined4 *)(iVar6 + 0x418) = 0x3e4ccccd;
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < *(uint *)(iVar8 + 0x1264));
          }
          break;
        }
        local_1bc = (int **)((int)local_1bc + 1);
      } while ((int)local_1bc < (int)local_1ac);
    }
    break;
  case 8:
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f666666);
      iVar8 = FUN_006be840();
      local_1b0 = *(float *)(iVar8 + 0x33c) - (float)param_1[0xcf];
      local_1ac = (int **)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]);
      pfVar9 = (float *)FUN_00a10030(local_1d8);
      local_1b8 = -NAN;
      local_1a8 = (int *)(*pfVar9 * DAT_00baa81c);
      local_1b4 = pfVar9[1] * DAT_00baa81c;
      do {
        fVar18 = local_1b8;
        AI_0043ef30();
        if (fVar18 == 0.0) {
          local_cc = _DAT_00bac7b0;
          uStack_c8 = _UNK_00bac7b4;
          uStack_c4 = _UNK_00bac7b8;
          uStack_c0 = _UNK_00bac7bc;
          local_ac = (ulonglong)DAT_00baa198;
          local_9c = 0x60;
          local_d4 = 0x3f70a3d7;
          local_bc = ZEXT816(0);
          local_a4 = fVar18;
          local_a0 = fVar18;
          iVar8 = FUN_006ccdd0(1,&DAT_00c7b640,0,local_f8);
          ppiVar17 = (int **)0x0;
          FUN_0041d540();
          local_1ac = ppiVar17;
          fVar18 = 0.0;
          FUN_0041d520();
          *(undefined4 *)(iVar8 + 0x410) = 0xc1b80000;
          *(undefined4 *)(iVar8 + 0x418) = 0;
          *(undefined4 *)(iVar8 + 0x414) = 0;
          *(undefined4 *)(iVar8 + 0x420) = 0x40000000;
          *(float *)(iVar8 + 0x360) = (float)local_1ac * (float)local_1a8 - fVar18 * local_1b4;
          *(float *)(iVar8 + 0x364) = fVar18 * (float)local_1a8 + (float)local_1ac * local_1b4;
          fVar18 = local_1b8;
        }
        else {
          ppiVar17 = (int **)((float)(int)fVar18 * DAT_00baa87c * DAT_00baa088);
          local_1ac = ppiVar17;
          FUN_0041d540();
          local_1bc = ppiVar17;
          ppiVar17 = local_1ac;
          FUN_0041d520();
          local_1d0 = (float)local_1bc * (float)local_1a8 - (float)ppiVar17 * local_1b4;
          local_1cc = (float)local_1bc * local_1b4 + (float)ppiVar17 * (float)local_1a8;
          FUN_006cb2e0(param_1 + 0xcf,&local_1d0,0,local_f8);
        }
        local_1b8 = (float)((int)fVar18 + 1);
      } while ((int)local_1b8 < 3);
    }
    goto LAB_004b2642;
  case 9:
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      param_1[0x2d9] = 6;
      FUN_006d6ba0(0x131,0x3f800000,2,0,0x3f666666);
      FUN_006d6ba0(0x1e3,0x3fc00000,2,0,0x3f800000);
      param_1[0x2e8] = 0x32;
    }
    break;
  case 10:
    cVar4 = FUN_0040b030("Sound");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0xcd,0x3f800000,2,0,0x3f800000);
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x34,0x3f800000,2,0,0x3f800000);
      local_1bc = (int **)FUN_00428b20(1000,0x96,param_1 + 0xcf,&DAT_00c7b640,param_1,0,
                                       param_1[0xfb]);
      ppiVar17 = local_1bc + 0xef;
      if (local_1bc[0xef] != (int *)0x0) {
        local_1ac = ppiVar17;
        FUN_004cf210(&local_1ac);
      }
      *ppiVar17 = param_1;
      FUN_004cdcf0(ppiVar17);
      local_1bc[0x11d] = (int *)0x42b40000;
      FUN_00703670(0xe);
    }
LAB_004b2642:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_004b2651:
      param_1[0x2d9] = 3;
LAB_004b265b:
      param_1[0x2db] = 0;
    }
    break;
  case 0xb:
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x130,0x3f800000,2,0,0x3f800000);
      param_1[0x2d9] = 7;
      param_1[0x2e8] = 0x73;
    }
    break;
  case 0xd:
    FUN_0040a380("Summon",0);
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    param_1[0x104] = param_1[0x104] + 1;
    param_1[0x2d9] = 3;
    FUN_004b1910();
    *(undefined *)(param_1 + 0x2f0) = 0;
    goto LAB_004b265b;
  case 0x10:
    if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) &&
       ((FUN_0040a380("ClosedEyes",0), param_1[0xef] != 0 || (param_1[0x3d5] != 0)))) {
      FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
      uVar11 = FUN_00407170();
      uVar5 = FUN_006eef60();
      FUN_00703330(local_1c4 + 0xcf,4,uVar5 % 3 + 0xc,0x41100000,uVar11,0x47c35000,7);
      (**(code **)(*local_1c4 + 0x28))();
      goto LAB_004b35a7;
    }
  }
  iVar8 = local_1a4;
  if (param_1[0xef] == 0) {
    if ((DAT_00baa454 <= (float)param_1[0xe0]) && (*(char *)(param_1 + 0x2f0) == '\0')) {
      iVar13 = *(int *)(local_1a4 + 0x12c0) + *(int *)(local_1a4 + 0x12c4);
      iVar6 = 0;
      if (0 < iVar13) {
        iVar6 = iVar13;
      }
      if (iVar6 + -1 < 1) {
        fVar18 = (float)param_1[0xe0] - DAT_00baa454;
        *(undefined *)(param_1 + 0x2f0) = 1;
        param_1[0xe0] = (int)fVar18;
        if (fVar18 <= 0.0) {
          if ((param_1[0x2d9] == 7) && (uVar5 = 0, *(int *)(local_1a4 + 0x1264) != 0)) {
            do {
              iVar6 = *(int *)(*(int *)(local_1a4 + 0x125c) + uVar5 * 4);
              if ((*(int *)(iVar6 + 0x28) == 9) &&
                 ((*(int *)(iVar6 + 0x2c) == 9 && (*(int *)(iVar6 + 0x34) == param_1[10])))) {
                *(undefined4 *)(iVar6 + 0x418) = 0x3e4ccccd;
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < *(uint *)(local_1a4 + 0x1264));
          }
          (**(code **)(*param_1 + 0x40))(0);
          param_1[0xe0] = 0x3f000000;
          FUN_007fec00(param_1);
          param_1[0x2d9] = 0x10;
          FUN_0040a380("CloseEyes",0);
          *(undefined *)(param_1 + 0x30f) = 0;
          param_1[0xc] = 1;
        }
      }
    }
  }
  else if (*(int *)(param_1[0xef] + 0x30) == 1) {
    (**(code **)(*param_1 + 0x40))(0);
    iVar8 = local_1a4;
    param_1[0xe0] = 0x3f000000;
    FUN_007fec00(param_1);
    param_1[0x2d9] = 0x10;
    ppbVar12 = (byte **)param_1[0x1f];
    if (ppbVar12 == (byte **)0x0) {
LAB_004b3350:
      cVar4 = FUN_0040a5d0("CloseEyes",1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar12 = (byte **)*ppbVar12;
      }
      pcVar14 = "CloseEyes";
      do {
        bVar3 = *(byte *)ppbVar12;
        bVar16 = bVar3 < (byte)*pcVar14;
        if (bVar3 != *pcVar14) {
LAB_004b3330:
          uVar5 = -(uint)bVar16 | 1;
          goto LAB_004b3335;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar12 + 1);
        bVar16 = bVar3 < ((byte *)pcVar14)[1];
        if (bVar3 != ((byte *)pcVar14)[1]) goto LAB_004b3330;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar3 != 0);
      uVar5 = 0;
LAB_004b3335:
      if ((uVar5 != 0) ||
         ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004b3350;
    }
    *(undefined *)(param_1 + 0x30f) = 0;
    param_1[0xc] = 1;
  }
  cVar4 = FUN_006ac710(2,param_1[8]);
  if (cVar4 != '\0') {
    if (param_1[0x2d9] == 7) {
LAB_004b33fd:
      local_1ac = (int **)0x0;
      if (*(int *)(iVar8 + 0x1264) != 0) {
        do {
          local_1bc = *(int ***)(*(int *)(iVar8 + 0x125c) + (int)local_1ac * 4);
          if (local_1bc[10] == (int *)0x9) {
            ppiVar17 = local_1bc + 0xde;
            ppiVar15 = local_1bc + 0xdd;
            fVar18 = ((float)local_1c4[0xd0] - (float)local_1bc[0xd0]) *
                     ((float)local_1c4[0xd0] - (float)local_1bc[0xd0]) +
                     ((float)local_1c4[0xcf] - (float)local_1bc[0xcf]) *
                     ((float)local_1c4[0xcf] - (float)local_1bc[0xcf]);
            FUN_00435a50();
            param_1 = local_1c4;
            piVar10 = *ppiVar15;
            if ((float)*ppiVar17 <= (float)piVar10 && (float)piVar10 != (float)*ppiVar17) {
              ppiVar15 = ppiVar17;
            }
            iVar8 = local_1a4;
            if (fVar18 < (float)*ppiVar15 * (float)local_1c4[0xdc] + (float)local_1bc[0xdc]) {
              (*(code *)(*local_1bc)[10])();
              iVar8 = local_1a4;
            }
          }
          local_1ac = (int **)((int)local_1ac + 1);
        } while (local_1ac < *(int ***)(iVar8 + 0x1264));
      }
    }
    else if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) {
      ppbVar12 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar12[5]) {
        ppbVar12 = (byte **)*ppbVar12;
      }
      pcVar14 = "Attack4End";
      do {
        bVar3 = *(byte *)ppbVar12;
        bVar16 = bVar3 < (byte)*pcVar14;
        if (bVar3 != *pcVar14) {
LAB_004b33f0:
          uVar5 = -(uint)bVar16 | 1;
          goto LAB_004b33f5;
        }
        if (bVar3 == 0) break;
        bVar3 = *(byte *)((int)ppbVar12 + 1);
        bVar16 = bVar3 < ((byte *)pcVar14)[1];
        if (bVar3 != ((byte *)pcVar14)[1]) goto LAB_004b33f0;
        ppbVar12 = (byte **)((int)ppbVar12 + 2);
        pcVar14 = (char *)((byte *)pcVar14 + 2);
      } while (bVar3 != 0);
      uVar5 = 0;
LAB_004b33f5:
      if (uVar5 == 0) goto LAB_004b33fd;
    }
  }
  if (*(short *)(param_1 + 0x2f1) != 0) {
    *(short *)(param_1 + 0x2f1) = *(short *)(param_1 + 0x2f1) + -1;
  }
  if (*(short *)((int)param_1 + 0xbc6) != 0) {
    *(short *)((int)param_1 + 0xbc6) = *(short *)((int)param_1 + 0xbc6) + -1;
  }
  param_1[0xd8] = (int)(((float)param_1[0xcd] - (float)param_1[0xcf]) / (float)param_1[0xdb]);
  param_1[0xd9] = (int)(((float)param_1[0xce] - (float)param_1[0xd0]) / (float)param_1[0xdb]);
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    fVar18 = DAT_00baa528;
    if ((param_1[0x319] == 0x12) || (fVar18 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
      local_1c8 = fVar18;
    }
    local_1ac = (int **)0x75;
    FUN_00956780();
    FUN_0092dc30(local_1ac,0x3f800000,2,0,local_1c8,0);
  }
LAB_004b35a7:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
code_r0x004b21f5:
  uVar5 = uVar5 + 1;
  if (local_1d4 <= uVar5) goto LAB_004b228c;
  goto LAB_004b21f0;
}

