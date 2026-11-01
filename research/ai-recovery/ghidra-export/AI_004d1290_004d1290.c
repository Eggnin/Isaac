/* Local J460 decompiler output.
 * VA: 0x004d1290
 * Entry: 004d1290
 * Dispatcher: 0x006c2990
 * Types: 45
 * Identities: 45.0.0,45.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004d2f50; instructions=1666
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=45; identities=45.0.0,45.10.0; dispatcher=0x006c2990;
   end=0x004d2f50; instructions=1666 */

void __fastcall AI_004d1290(int **param_1)

{
  undefined auVar1 [16];
  undefined auVar2 [16];
  undefined auVar3 [12];
  char cVar4;
  uint uVar5;
  uint uVar6;
  int *piVar7;
  undefined4 *******pppppppuVar8;
  undefined4 uVar9;
  int **extraout_ECX;
  int **extraout_ECX_00;
  int **ppiVar10;
  int **extraout_ECX_01;
  int **extraout_ECX_02;
  int **extraout_ECX_03;
  char *pcVar11;
  int iVar12;
  int iVar13;
  int *piVar14;
  float *pfVar15;
  int **ppiVar16;
  float fVar17;
  float fVar18;
  undefined8 uVar19;
  undefined auVar20 [16];
  undefined auVar21 [16];
  undefined auVar22 [16];
  undefined auVar23 [16];
  undefined auVar24 [16];
  int **local_140;
  int **local_13c;
  int **local_138;
  float local_134;
  int **local_130;
  int **local_12c;
  int **local_128;
  char local_121;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined local_68 [16];
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 *******local_3c;
  int local_38;
  undefined4 ****local_34;
  int local_30;
  float local_2c;
  int **local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3805;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_28 = (int **)0x0;
  local_140 = (int **)param_1[0xc];
  local_130 = param_1;
  local_24 = uVar5;
  uVar6 = FUN_006eef60(uVar5);
  local_138 = DAT_00baa454;
  if ((float)((double)(uVar6 % 0x14 + 10) + DAT_00bacb00) < (float)param_1[5]) {
    uVar6 = FUN_006eef60(uVar5);
    local_12c = local_138;
    local_13c = (int **)(uVar6 % 0x1e);
    ppiVar10 = DAT_00baa528;
    if ((param_1[0x319] == (int *)0x12) || (ppiVar10 = DAT_00baa2d0, param_1[0x319] == (int *)0x13))
    {
      local_12c = ppiVar10;
    }
    local_128 = (int **)0x61;
    FUN_00956780();
    FUN_0092dc30();
  }
  local_13c = (int **)param_1[0x2d9];
  if (local_13c == (int **)0x0) {
    ppiVar10 = DAT_00baa528;
    if ((param_1[0x319] == (int *)0x12) || (ppiVar10 = DAT_00baa2d0, param_1[0x319] == (int *)0x13))
    {
      local_138 = ppiVar10;
    }
    local_128 = (int **)0x65;
    FUN_00956780();
    FUN_0092dc30();
    param_1[0x5a] = (int *)((uint)param_1[0x5a] | 0x40000);
    ppiVar10 = (int **)0x1;
    param_1[0x5b] = param_1[0x5b];
    local_121 = '\x01';
    if (param_1[0xb] == (int *)0xa) {
      param_1[0xe0] = param_1[0xe1];
      param_1[0x2f0] = (int *)0x0;
      param_1[0x2e9] = (int *)0x0;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      param_1[0x2d9] = (int *)0x3;
      param_1[0x57] = (int *)0x0;
      param_1[0x62] = (int *)0x0;
      param_1[0x61] = (int *)&DAT_00000005;
      goto LAB_004d2be4;
    }
    iVar13 = 0;
    do {
      if (((float)(&DAT_00c5c69c)[iVar13 * 2] - (float)param_1[0xd0]) *
          ((float)(&DAT_00c5c69c)[iVar13 * 2] - (float)param_1[0xd0]) +
          ((float)(&DAT_00c5c698)[iVar13 * 2] - (float)param_1[0xcf]) *
          ((float)(&DAT_00c5c698)[iVar13 * 2] - (float)param_1[0xcf]) < DAT_00baabf0) {
        local_13c = (int **)((float)iVar13 * DAT_00baa9b4 * DAT_00baa088);
        param_1[0x3b] = (int *)((float)iVar13 * DAT_00baa9b4 - DAT_00baa9b4);
        param_1[0x61] = (int *)0x0;
        ppiVar10 = local_13c;
        FUN_0041d520();
        local_128 = ppiVar10;
        ppiVar16 = local_13c;
        FUN_0041d540();
        ppiVar10 = (int **)0x0;
        local_121 = '\0';
        fVar18 = (float)local_128 * DAT_00baa854;
        fVar17 = (float)(&DAT_00c5c69c)[iVar13 * 2];
        param_1[0xcf] = (int *)((float)ppiVar16 * DAT_00baa854 + (float)(&DAT_00c5c698)[iVar13 * 2])
        ;
        param_1[0xd0] = (int *)(fVar18 + fVar17);
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb);
        param_1[0x5b] = param_1[0x5b];
        break;
      }
      iVar13 = iVar13 + 1;
    } while (iVar13 < 4);
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    if ((param_1[0xef] == (int *)0x0) && ((char)ppiVar10 != '\0')) {
      FUN_006c0f30();
      param_1[0xe0] = param_1[0xe1];
      param_1[0x2f0] = (int *)0x0;
      param_1[0x2e9] = (int *)0x0;
      local_128 = (int **)0x1;
      AI_0041af60();
      local_14 = 0;
      local_12c = (int **)0x0;
      ppiVar10 = extraout_ECX;
      if (local_28 != (int **)0x0) {
        do {
          ppiVar10 = *(int ***)(local_30 + (int)local_12c * 4);
          if ((ppiVar10 != param_1) &&
             (iVar13 = __RTDynamicCast(), ppiVar10 = extraout_ECX_00, *(int *)(iVar13 + 0x3bc) == 0)
             ) {
            FUN_006c0f30();
            *(undefined4 *)(iVar13 + 0x380) = *(undefined4 *)(iVar13 + 900);
            if (*(int *)(iVar13 + 0x3bc) != 0) {
              local_13c = (int **)(iVar13 + 0x3bc);
              FUN_004cf210(&local_13c);
            }
            *(int **)(iVar13 + 0x3bc) = (int *)param_1;
            FUN_004cdcf0((int **)(iVar13 + 0x3bc));
            ppiVar10 = (int **)((int)local_128 + 1);
            *(int ***)(iVar13 + 0xbc0) = local_128;
            local_128 = ppiVar10;
          }
          local_12c = (int **)((int)local_12c + 1);
        } while (local_12c < local_28);
      }
      local_14 = 0xffffffff;
      if ((char)local_34 == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
        ppiVar10 = extraout_ECX_01;
      }
    }
    if (local_140 == (int **)0x3) {
      piVar14 = (int *)0x0;
      if (param_1[0x32] != (int *)0x0) {
        do {
          if (piVar14 != param_1[0x55]) {
            piVar7 = (int *)FUN_0040b220(piVar14);
            if (*piVar7 == 0) {
              local_2c = 0.0;
              local_28 = (int **)&DAT_0000000f;
              local_3c = (undefined4 *******)0x0;
            }
            else {
              FUN_0040cf50(*piVar7 + 0x20);
            }
            fVar17 = (float)((int)local_2c - 4);
            local_14 = 2;
            if ((uint)local_2c < (uint)fVar17) {
              FUN_00414870((int)fVar17 - (int)local_2c,0);
            }
            else {
              pppppppuVar8 = &local_3c;
              if (&DAT_0000000f < local_28) {
                pppppppuVar8 = local_3c;
              }
              local_2c = fVar17;
              *(undefined *)((int)pppppppuVar8 + (int)fVar17) = 0;
            }
            FUN_004997f0("_mausoleum.png",0xe);
            FUN_0040bf30(piVar14,&local_3c);
            local_14 = 0xffffffff;
            ppiVar10 = extraout_ECX_02;
            if (&DAT_0000000f < local_28) {
              ppiVar10 = (int **)((int)local_28 + 1);
              pppppppuVar8 = local_3c;
              if ((int **)0xfff < ppiVar10) {
                pppppppuVar8 = (undefined4 *******)local_3c[-1];
                ppiVar10 = local_28 + 9;
                if (0x1f < (uint)((int)local_3c + (-4 - (int)pppppppuVar8))) {
                    /* WARNING: Subroutine does not return */
                  _invalid_parameter_noinfo_noreturn();
                }
              }
              FUN_00aef15c(pppppppuVar8,ppiVar10);
              ppiVar10 = extraout_ECX_03;
            }
          }
          piVar14 = (int *)((int)piVar14 + 1);
        } while (piVar14 < param_1[0x32]);
      }
      FUN_0040c000(ppiVar10);
    }
    param_1[0x57] = (int *)0x0;
    param_1[0x62] = (int *)0x0;
    if (local_121 != '\0') {
      piVar14 = (int *)(DAT_00c71678 + 0x1baa8);
      local_2c = 320.0;
      local_28 = (int **)0x43b90000;
      local_12c = (int **)0x0;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar14 >> 2 != 0) {
        do {
          if (local_12c == (int **)0x0) {
            if (piVar14[1] - *piVar14 >> 2 == 0) {
              FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            }
            pfVar15 = &local_2c;
          }
          else {
            if (piVar14[1] - *piVar14 >> 2 == 0) {
              FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            }
            iVar13 = FUN_006eef60();
            fVar17 = (float)((double)iVar13 + (&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4 *
                     DAT_00baa704;
            local_140 = (int **)(fVar17 + fVar17);
            ppiVar10 = local_140;
            FUN_0041d540();
            local_134 = (float)ppiVar10 * DAT_00baa87c + DAT_00baab14;
            ppiVar10 = local_140;
            FUN_0041d520();
            pfVar15 = &local_134;
            local_130 = (int **)((float)ppiVar10 * DAT_00baa87c + _DAT_00baab40);
          }
          FUN_007cd950(pfVar15,0,0);
          piVar14 = (int *)(DAT_00c71678 + 0x1baa8);
          local_12c = (int **)((int)local_12c + 1);
        } while (local_12c < (int **)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar14 >> 2));
      }
      param_1[0x61] = (int *)&DAT_00000005;
    }
    param_1[0x2d9] = (int *)0x3;
  }
  else {
    if ((param_1[0x2f0] == (int *)0x0) ||
       ((param_1[0xef] != (int *)0x0 && (*(char *)((int)param_1[0xef] + 0x173) == '\0')))) {
      if (((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) &&
         (local_13c != (int **)0x6)) {
        param_1[0x2d9] = (int *)0x3;
      }
      if (param_1[0x2f0] == (int *)0x0) {
        pcVar11 = *(char **)(DAT_00c71678 + 0x18300);
        local_121 = *pcVar11;
        if (local_121 == '\0') {
          ppiVar10 = (int **)0xffffffff;
        }
        else {
          ppiVar10 = (int **)(*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(pcVar11 + 0x11f0));
        }
        local_128 = ppiVar10;
        if ((((param_1[0x2e8] == (int *)0x0) && (local_121 != '\0')) &&
            ((6 < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(pcVar11 + 0x11f0) &&
             ((iVar13 = FUN_0067f010(), iVar13 == 0 || ((int)ppiVar10 < 0x3c)))))) &&
           (param_1[0x2d9] == (int *)0x3)) {
          uVar5 = FUN_006eef60(uVar5);
          if (((uVar5 % 3 == 0) || (param_1[0xc] == (int *)0x2)) || ((int)ppiVar10 < 0x3c)) {
            local_121 = '\x01';
            if (0x3b < (int)ppiVar10) goto LAB_004d1b24;
          }
          else {
            local_121 = '\0';
LAB_004d1b24:
            pfVar15 = (float *)&DAT_00c5c698;
            do {
              iVar13 = FUN_006be840();
              fVar17 = *(float *)(iVar13 + 0x33c) - *pfVar15;
              fVar18 = *(float *)(iVar13 + 0x340) - pfVar15[1];
              if (fVar18 * fVar18 + fVar17 * fVar17 < DAT_00baac18) goto LAB_004d1b7d;
              pfVar15 = pfVar15 + 2;
            } while ((int)pfVar15 < 0xc5c6b8);
            ppiVar10 = local_128;
            if (local_121 == '\0') {
LAB_004d1b7d:
              FUN_006eef60();
              FUN_006d6ba0();
              param_1[0x2e8] = (int *)0x1e;
              goto LAB_004d1d16;
            }
          }
          FUN_006d6ba0();
          if (0x3b < (int)ppiVar10) {
            iVar13 = FUN_006be840();
            piVar14 = *(int **)(iVar13 + 0x340);
            param_1[0xcd] = *(int **)(iVar13 + 0x33c);
          }
          else {
            param_1[0xcd] = param_1[0xcf];
            piVar14 = param_1[0xd0];
          }
          param_1[0xce] = piVar14;
          param_1[0xcf] = param_1[0xcd];
          param_1[0xd0] = param_1[0xce];
          if (((param_1[0xc] == (int *)0x3) && (0x3b < (int)ppiVar10)) && ((int)param_1[0x2e9] < 1))
          {
            cVar4 = FUN_0040a5d0("QuickStompBegin",1);
            if (cVar4 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            param_1[0x2d9] = (int *)0x6;
            param_1[0x2f1] = (int *)0x2;
            param_1[0x2e8] = (int *)0xb4;
          }
          else {
            cVar4 = FUN_0040a5d0("Stomp",1);
            if (cVar4 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            piVar14 = param_1[0xc];
            param_1[0x2d9] = (int *)0x7;
            param_1[0x104] = (int *)0x0;
            if (piVar14 == (int *)0x2) {
              if (param_1[0x1f] != (int *)0x0) {
                FUN_00408e00();
                piVar14 = param_1[0xc];
              }
              param_1[0x104] = (int *)0xa;
            }
            param_1[0x2e8] = (int *)&DAT_00000050;
            if (piVar14 == (int *)0x2) {
              param_1[0x2e8] = (int *)0x32;
              param_1[0x2e9] = (int *)0x0;
            }
          }
        }
LAB_004d1d16:
        if (param_1[0x2d9] == (int *)0x7) {
          ppiVar10 = param_1 + 0xcf;
          *ppiVar10 = param_1[0xcd];
          param_1[0xd0] = param_1[0xce];
          if (((param_1[0x1f] == (int *)0x0) || (cVar4 = FUN_0040ae70("Shoot"), cVar4 == '\0')) ||
             ((param_1[0x1f] != (int *)0x0 && (cVar4 = FUN_0040ae70(&DAT_00b1e554), cVar4 != '\0')))
             ) {
            piVar14 = (int *)0x0;
          }
          else {
            piVar14 = (int *)&DAT_00000004;
          }
          param_1[0x62] = piVar14;
          if ((param_1[0x1f] != (int *)0x0) && (cVar4 = FUN_0040add0("Shoot"), cVar4 != '\0')) {
            FUN_006d6ba0();
            auVar1._4_4_ = DAT_00c79104;
            auVar1._0_4_ = DAT_00c79100;
            auVar1._8_4_ = DAT_00c79108;
            auVar1._12_4_ = DAT_00c7910c;
            FUN_006ff2a0(ppiVar10,0x43960000,0x42480000,0,param_1,auVar1,0x1000000,0,0);
            FUN_00703770();
            uVar9 = FUN_004238f0(0x3f4ccccd);
            FUN_006b6550(ppiVar10,uVar9);
          }
          piVar14 = (int *)((int)param_1[0x104] +
                           ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
          param_1[0x104] = piVar14;
          if (((param_1[0xc] == (int *)0x2) && (iVar13 = FUN_0040a780(), 0x27 < iVar13)) &&
             (iVar13 = FUN_0040a780(), iVar13 < 0x32)) {
            if (param_1[0x1f] != (int *)0x0) {
              FUN_00408e00();
              piVar14 = param_1[0x104];
            }
            param_1[0x104] = (int *)((int)piVar14 + 10);
          }
        }
        else if (param_1[0x2d9] == (int *)0x6) {
          if (param_1[0x1f] == (int *)0x0) {
LAB_004d2118:
            if ((int)param_1[0x2f1] < 1) {
              param_1[0x2d9] = (int *)0x3;
            }
            else {
              piVar14 = (int *)((int)param_1[0x2f1] + -1);
              pcVar11 = "QuickStompEnd";
              param_1[0x2f1] = piVar14;
              if (piVar14 != (int *)0x0) {
                pcVar11 = "QuickStomp";
              }
              cVar4 = FUN_0040a5d0(pcVar11,1);
              if (cVar4 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(param_1 + 0x23) = 1;
              }
            }
          }
          else {
            cVar4 = FUN_0040add0("Shoot");
            if (cVar4 != '\0') {
              param_1[0x62] = (int *)&DAT_00000004;
              FUN_006d6ba0();
              uVar19 = CONCAT44(DAT_00c79104,DAT_00c79100);
              auVar2._8_4_ = DAT_00c79108;
              auVar2._0_8_ = uVar19;
              auVar2._12_4_ = DAT_00c7910c;
              ppiVar10 = param_1 + 0xcf;
              FUN_006ff2a0(ppiVar10,0x43960000,0x42480000,0,param_1,auVar2,0x1000000,0,0);
              auVar22._8_4_ = 0x4d1f66;
              auVar22._0_8_ = uVar19;
              auVar22._12_4_ = ppiVar10;
              FUN_00703770();
              param_1[0xcd] = *ppiVar10;
              param_1[0xce] = param_1[0xd0];
              if (param_1[0x2f1] == (int *)0x0) {
                uVar9 = FUN_00407170();
                FUN_006b66c0(ppiVar10,uVar9);
                local_128 = (int **)0x0;
                do {
                  uVar19 = auVar22._0_8_;
                  uVar9 = FUN_006eef60();
                  auVar20._8_4_ = param_1 + 0xcf;
                  auVar20._0_8_ = uVar19;
                  auVar20._12_4_ = &DAT_00c7b640;
                  auVar21._8_8_ = auVar20._8_8_;
                  auVar21._0_8_ = 0x4800000000;
                  auVar22._4_12_ = auVar21._4_12_;
                  auVar22._0_4_ = 1000;
                  local_13c = (int **)FUN_00428b20(1000,auVar22._4_12_,param_1,10,uVar9);
                  ppiVar10 = local_13c + 0xef;
                  if (local_13c[0xef] != (int *)0x0) {
                    local_140 = ppiVar10;
                    FUN_004cf210(&local_140);
                  }
                  *ppiVar10 = (int *)param_1;
                  FUN_004cdcf0(ppiVar10);
                  ppiVar10 = (int **)((int)local_128 + 1);
                  local_13c[0x11d] = (int *)((float)(int)local_128 * DAT_00baa9b4);
                  local_128 = ppiVar10;
                } while ((int)ppiVar10 < 4);
              }
              else {
                uVar9 = FUN_004238f0(0x3f4ccccd);
                FUN_006b6550(ppiVar10,uVar9);
              }
            }
            if (param_1[0x1f] == (int *)0x0) goto LAB_004d2118;
            cVar4 = FUN_0040add0(&DAT_00b1e554);
            if ((cVar4 != '\0') && (param_1[0x62] = (int *)0x0, 0 < (int)param_1[0x2f1])) {
              iVar13 = FUN_006be840();
              piVar14 = *(int **)(iVar13 + 0x340);
              param_1[0xcd] = *(int **)(iVar13 + 0x33c);
              param_1[0xce] = piVar14;
              if (param_1[0x2f1] == (int *)0x1) {
                local_78 = _DAT_00bac7b0;
                uStack_74 = _UNK_00bac7b4;
                uStack_70 = _UNK_00bac7b8;
                uStack_6c = _UNK_00bac7bc;
                local_58 = 0x3f800000;
                local_68 = ZEXT816(0);
                local_54 = 0x3e4ccccd;
                local_50 = 0x3e4ccccd;
                (*(code *)(*param_1)[0xf])();
              }
            }
            if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0'))
            goto LAB_004d2118;
          }
          if (param_1[0x62] == (int *)0x0) {
            piVar14 = (int *)(((float)param_1[0xce] - (float)param_1[0xd0]) * DAT_00baa198);
            param_1[0xd8] = (int *)(((float)param_1[0xcd] - (float)param_1[0xcf]) * DAT_00baa198);
            param_1[0xd9] = piVar14;
          }
          else {
            param_1[0xcf] = param_1[0xcd];
            param_1[0xd0] = param_1[0xce];
          }
        }
        else {
          param_1[0xcf] = param_1[0xcd];
          param_1[0xd0] = param_1[0xce];
          param_1[0x57] = (int *)0x0;
          param_1[0x62] = (int *)0x0;
        }
        if (*(char *)((int)param_1 + 0x173) != '\0') {
          FUN_006d6ba0();
          local_140 = *(int ***)(DAT_00c71678 + 0x18300);
          if (local_140[0x499] != (int *)0x0) {
            piVar14 = (int *)0x0;
            do {
              piVar7 = (int *)local_140[0x497][(int)piVar14];
              cVar4 = (**(code **)(*piVar7 + 0x48))();
              if (cVar4 != '\0') {
                local_3c = (undefined4 *******)DAT_00c7b640;
                local_34 = DAT_00c7b640;
                local_38 = DAT_00c7b644;
                local_30 = DAT_00c7b644;
                local_4c = 0;
                local_48 = 0;
                local_44 = 0;
                local_40 = 0;
                local_2c = 0.0;
                local_28 = (int **)0x0;
                (**(code **)(*piVar7 + 0x20))();
              }
              piVar14 = (int *)((int)piVar14 + 1);
              param_1 = local_130;
            } while (piVar14 < local_140[0x499]);
          }
          iVar13 = *(int *)(DAT_00c71678 + 0x18300);
          *(undefined4 *)(iVar13 + 0x7214) = 0x14;
          *(undefined4 *)(iVar13 + 0x7218) = 6;
          param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffbffff);
          param_1[0x5b] = param_1[0x5b];
        }
      }
      else {
        param_1[0xcf] = param_1[0xcd];
        param_1[0xd0] = param_1[0xce];
        local_130 = (int **)param_1[0xe0];
        iVar13 = FUN_00447770();
        if (*(float *)(iVar13 + 0x380) <= (float)local_130) {
          iVar13 = FUN_00447770();
          param_1[0xe0] = *(int **)(iVar13 + 0x380);
        }
        else {
          local_130 = (int **)param_1[0xe0];
          iVar13 = FUN_00447770();
          *(int ***)(iVar13 + 0x380) = local_130;
        }
        if (*(char *)((int)param_1 + 0x173) != '\0') {
          uVar19 = FUN_00435c70();
          (*(code *)((ulonglong)uVar19 >> 0x20))((int)uVar19);
        }
        if (param_1[0x2d9] == (int *)0x9) {
          if ((param_1[0x1f] != (int *)0x0) && (cVar4 = FUN_0040add0("Appear"), cVar4 != '\0')) {
            uVar19 = 0x4d23e900000000;
            FUN_006d6ba0();
            local_130 = (int **)((float)param_1[0x3b] * DAT_00baa088);
            ppiVar10 = local_130;
            FUN_0041d540();
            local_140 = ppiVar10;
            FUN_0041d520();
            fVar17 = (float)local_130 * DAT_00baa910;
            local_130 = (int **)((float)local_130 * 0.0 + (float)local_140 * DAT_00baa910 +
                                (float)param_1[0xd0]);
            local_134 = ((float)local_140 * 0.0 - fVar17) + (float)param_1[0xcf];
            auVar23._8_4_ = 0x42480000;
            auVar23._0_8_ = uVar19;
            auVar23._12_4_ = DAT_00c79100;
            FUN_006fed60(&local_134,param_1,0,0,0,auVar23._4_12_,DAT_00c79104,DAT_00c79108,
                         DAT_00c7910c);
          }
          if (param_1[0x2d9] != (int *)0x9) goto LAB_004d24ab;
        }
        else {
LAB_004d24ab:
          if ((float)param_1[0xcc][0xe] < (float)param_1[0xdc]) {
            FUN_006ac2a0();
          }
        }
        cVar4 = FUN_006ac710(4,param_1[8]);
        if (((cVar4 != '\0') && (**(char **)(DAT_00c71678 + 0x18300) != '\0')) &&
           (0x3c < *(int *)(DAT_00c71678 + 0x264f8) -
                   *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0))) {
          iVar13 = FUN_006be840();
          local_140 = (int **)((float)param_1[0xd0] -
                              (*(float *)(iVar13 + 0x364) * DAT_00baa81c +
                              *(float *)(iVar13 + 0x340)));
          local_12c = (int **)((float)param_1[0xcf] -
                              (*(float *)(iVar13 + 0x360) * DAT_00baa81c +
                              *(float *)(iVar13 + 0x33c)));
          ppiVar10 = (int **)((float)((uint)param_1[0x3b] ^ DAT_00bacb70) * DAT_00baa088);
          local_130 = ppiVar10;
          FUN_0041d540();
          local_128 = ppiVar10;
          ppiVar10 = local_130;
          FUN_0041d520();
          if (((((DAT_00baa914 <
                  (float)((uint)((float)local_12c * (float)local_128 -
                                (float)local_140 * (float)ppiVar10) & DAT_00bacb40)) ||
                (DAT_00baa9b4 <
                 (float)((uint)((float)local_140 * (float)local_128 +
                               (float)local_12c * (float)ppiVar10) & DAT_00bacb40))) ||
               ((param_1[0x2d9] == (int *)0x9 ||
                ((param_1[0x2d9] == (int *)0xb ||
                 (iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xb64) == 7)))))) ||
              (iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xb64) == 6)) ||
             ((((param_1[0xc] == (int *)0x3 || (uVar5 = FUN_006eef60(), (uVar5 & 7) != 0)) ||
               (**(char **)(DAT_00c71678 + 0x18300) == '\0')) ||
              (*(int *)(DAT_00c71678 + 0x264f8) -
               *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0) < 0x3d)))) {
            uVar5 = FUN_006eef60();
            if (((uVar5 % 100 == 0) && (param_1[0x2d9] == (int *)0x3)) &&
               (((iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xba4) < 2 &&
                 (param_1[0xc] != (int *)0x2)) ||
                (((iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xba4) < 1 &&
                  (param_1[0xc] == (int *)0x2)) &&
                 (iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xba0) == 0)))))) {
              if (((param_1[0xc] == (int *)0x3) &&
                  (iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xb64) != 6)) &&
                 ((**(char **)(DAT_00c71678 + 0x18300) != '\0' &&
                  (0x3c < *(int *)(DAT_00c71678 + 0x264f8) -
                          *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0))))) {
                cVar4 = FUN_0040a5d0("EyeLaser",1);
                if (cVar4 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(param_1 + 0x23) = 1;
                }
                iVar13 = FUN_00447770();
                *(int *)(iVar13 + 0xba4) = *(int *)(iVar13 + 0xba4) + 1;
                piVar14 = (int *)0xb;
              }
              else {
                cVar4 = FUN_0040a5d0(&DAT_00b1d34c,1);
                if (cVar4 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(param_1 + 0x23) = 1;
                }
                iVar13 = FUN_00447770();
                *(int *)(iVar13 + 0xba4) = *(int *)(iVar13 + 0xba4) + 1;
                piVar14 = (int *)&DAT_00000008;
              }
              param_1[0x2d9] = piVar14;
              if (param_1[0xc] == (int *)0x2) {
                iVar13 = FUN_00447770();
                *(undefined4 *)(iVar13 + 0xba0) = 100;
              }
            }
            else {
              iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                       *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
              iVar13 = 0;
              if (0 < iVar12) {
                iVar13 = iVar12;
              }
              if ((7 < iVar13) || (uVar5 = FUN_006eef60(), uVar5 % 0x32 != 0)) {
                iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                         *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
                iVar13 = 0;
                if (0 < iVar12) {
                  iVar13 = iVar12;
                }
                if ((5 < iVar13) || (iVar13 = FUN_0067f010(), iVar13 != 0)) goto LAB_004d290a;
              }
              if ((((int)param_1[0x2e8] < 1) &&
                  (((param_1[0x2d9] != (int *)0xb &&
                    (iVar13 = FUN_00447770(), *(int *)(iVar13 + 0xba0) == 0)) &&
                   (**(char **)(DAT_00c71678 + 0x18300) != '\0')))) &&
                 ((0x3c < *(int *)(DAT_00c71678 + 0x264f8) -
                          *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0) &&
                  (param_1[0xc] != (int *)0x2)))) {
                uVar9 = 0;
                uVar5 = FUN_006eef60(0);
                pcVar11 = "Fat02";
                if ((uVar5 & 1) == 0) {
                  pcVar11 = "Fat01";
                }
                FUN_0040a380(pcVar11,uVar9);
                param_1[0x2d9] = (int *)0xa;
              }
            }
          }
          else {
            cVar4 = FUN_0040a5d0("ArmOpen",1);
            if (cVar4 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            param_1[0x2d9] = (int *)0x9;
            FUN_006ac2a0();
          }
        }
LAB_004d290a:
        ppiVar10 = param_1 + 0xcf;
        if (param_1[0x2d9] == (int *)0x3) {
          param_1[0x62] = (int *)0x0;
LAB_004d2921:
          if ((param_1[0x2d9] == (int *)0xb) && (cVar4 = FUN_0040b030("Shoot"), cVar4 != '\0')) {
            local_128 = (int **)((float)param_1[0x3b] + DAT_00baa9b4);
            ppiVar10 = (int **)((float)local_128 * DAT_00baa088);
            FUN_0041d520();
            local_12c = ppiVar10;
            piVar7 = (int *)FUN_0096f310(1);
            piVar14 = (int *)0x0;
            if (0.0 <= (float)local_12c) {
              piVar14 = DAT_00baabc4;
            }
            piVar7[0xd6] = (int)piVar14;
            *(undefined *)(piVar7 + 0x130) = 1;
            piVar7[0x131] = 0;
            piVar7[0x132] = 0x40c00000;
            piVar7[0x133] = 0x40000000;
            (**(code **)(*piVar7 + 0xc))();
            local_128 = (int **)FUN_0096f310(1);
            piVar14 = (int *)0x0;
            if (0.0 <= (float)local_12c) {
              piVar14 = DAT_00baabc4;
            }
            local_128[0xd6] = piVar14;
            *(undefined *)(local_128 + 0x130) = 1;
            local_128[0x131] = (int *)0x0;
            local_128[0x132] = (int *)0xc0c00000;
            local_128[0x133] = (int *)0xc0000000;
            (*(code *)(*local_128)[3])();
            local_140 = (int **)FUN_0060af00(0,0);
            local_130 = local_140 + 0xf0;
            if (local_140[0xf0] != (int *)0x0) {
              local_28 = local_130;
              FUN_004cf210(&local_28);
            }
            *local_130 = piVar7;
            FUN_004cdcf0(local_130);
            local_130 = local_140 + 0xf1;
            if (*local_130 != (int *)0x0) {
              local_28 = local_130;
              FUN_004cf210(&local_28);
            }
            *local_130 = (int *)local_128;
            FUN_004cdcf0(local_130);
            local_140 = (int **)FUN_0060af00(0,0);
            local_130 = local_140 + 0xf0;
            if (local_140[0xf0] != (int *)0x0) {
              local_28 = local_130;
              FUN_004cf210(&local_28);
            }
            *local_130 = piVar7;
            FUN_004cdcf0(local_130);
            FUN_006a9320(local_128);
          }
        }
        else {
          if (((param_1[0x1f] == (int *)0x0) || (cVar4 = FUN_0040ae70("Appear"), cVar4 == '\0')) ||
             (cVar4 = FUN_0040b090("Disappear"), cVar4 != '\0')) {
            piVar14 = (int *)0x0;
          }
          else {
            piVar14 = (int *)&DAT_00000004;
          }
          param_1[0x62] = piVar14;
          if (param_1[0x2d9] == (int *)0xa) {
            if ((param_1[0x1f] != (int *)0x0) && (cVar4 = FUN_0040add0("Shoot"), cVar4 != '\0')) {
              pfVar15 = (float *)FUN_00812d00(&local_134);
              local_138 = (int **)((float)param_1[0xd0] - pfVar15[1]);
              local_12c = (int **)((float)*ppiVar10 - *pfVar15);
              fVar17 = (float)local_138 * (float)local_138 + (float)local_12c * (float)local_12c;
              FUN_00435a50();
              local_12c = (int **)((float)local_12c * (DAT_00baa868 / fVar17));
              local_138 = (int **)((float)local_138 * (DAT_00baa868 / fVar17));
              if (param_1[0xc] == (int *)0x3) {
                uVar5 = FUN_006eef60();
                uVar5 = *(uint *)(&DAT_00b6039c + (uVar5 % 6) * 4);
                ppiVar10 = local_28;
                if (uVar5 == 0x3000018) {
                  iVar13 = FUN_006d0c60(&local_34,0x18,3);
                  ppiVar10 = (int **)0x1;
                  if (*(uint *)(iVar13 + 0xc) < 2) goto LAB_004d2d35;
                  local_121 = '\x01';
                }
                else {
LAB_004d2d35:
                  local_121 = '\0';
                }
                if (((uint)ppiVar10 & 1) != 0) {
                  FUN_004175b0();
                }
                if (local_121 != '\0') {
                  uVar5 = 0x12;
                }
              }
              else if (param_1[0xc] == (int *)0x1) {
                uVar5 = FUN_006eef60();
                uVar5 = *(uint *)(&DAT_00b60388 + (uVar5 % 5) * 4);
              }
              else {
                uVar5 = FUN_006eef60();
                uVar5 = *(uint *)(&DAT_00b60358 + (uVar5 % 0xc) * 4);
              }
              FUN_006eef60(2,0,0x3f800000);
              uVar19 = 0;
              FUN_006d6ba0();
              uVar9 = FUN_006eef60();
              local_2c = (float)param_1[0xcf] - (float)local_12c;
              local_28 = (int **)((float)param_1[0xd0] - (float)local_138);
              auVar24._8_4_ = &local_2c;
              auVar24._0_8_ = uVar19;
              auVar24._12_4_ = &DAT_00c7b640;
              auVar3._4_8_ = auVar24._8_8_;
              auVar3._0_4_ = uVar5 >> 0x18;
              FUN_00428b20(uVar5 & 0xffffff,auVar3,param_1,0,uVar9);
              param_1[0x2e8] = (int *)0x64;
            }
          }
          else {
            if (((param_1[0x2d9] != (int *)&DAT_00000008) || (param_1[0xc] != (int *)0x2)) ||
               ((**(char **)(DAT_00c71678 + 0x18300) == '\0' ||
                ((*(int *)(DAT_00c71678 + 0x264f8) -
                  *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0) < 0x79 ||
                 (cVar4 = FUN_0040b030("Shoot"), cVar4 == '\0')))))) goto LAB_004d2921;
            iVar13 = FUN_006be840();
            local_130 = (int **)((float)param_1[0xd0] - *(float *)(iVar13 + 0x340));
            local_28 = (int **)((float)*ppiVar10 - *(float *)(iVar13 + 0x33c));
            fVar17 = (float)local_130 * (float)local_130 + (float)local_28 * (float)local_28;
            FUN_00435a50();
            fVar18 = (float)local_28 * (DAT_00baadc0 / fVar17);
            local_140 = (int **)((float)local_130 * (DAT_00baadc0 / fVar17));
            AI_0043ef30();
            local_2c = fVar18 + (float)*ppiVar10;
            local_28 = (int **)((float)local_140 + (float)param_1[0xd0]);
            FUN_006cb2e0();
          }
        }
        if ((local_13c != (int **)param_1[0x2d9]) &&
           (((local_13c == (int **)&DAT_00000008 || (local_13c == (int **)0xb)) &&
            (param_1[0xc] != (int *)0x2)))) {
          iVar13 = FUN_00447770();
          *(int *)(iVar13 + 0xba4) = *(int *)(iVar13 + 0xba4) + -1;
        }
      }
    }
    else {
      uVar9 = FUN_00435c70();
      (*(code *)(*param_1)[9])(uVar9);
    }
    if (0 < (int)param_1[0x2e8]) {
      piVar7 = (int *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2e8]
                      );
      piVar14 = (int *)0x0;
      if (0 < (int)piVar7) {
        piVar14 = piVar7;
      }
      param_1[0x2e8] = piVar14;
    }
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
  }
  if ((DAT_00ba9fe4 < (float)param_1[5]) && (piVar14 = param_1[2], piVar14 != param_1[3])) {
    do {
      if (piVar14[4] == 0x2d) {
        *piVar14 = 0;
      }
      piVar14 = piVar14 + 0xe;
    } while (piVar14 != param_1[3]);
  }
LAB_004d2be4:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

