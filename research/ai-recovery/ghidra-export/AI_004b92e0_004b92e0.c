/* Local J460 decompiler output.
 * VA: 0x004b92e0
 * Entry: 004b92e0
 * Dispatcher: 0x006c2990
 * Types: 906
 * Identities: 906.0.0,906.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004bb0e0; instructions=1685
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=906; identities=906.0.0,906.1.0; dispatcher=0x006c2990;
   end=0x004bb0e0; instructions=1685 */

void __fastcall AI_004b92e0(int **param_1)

{
  byte bVar1;
  undefined auVar2 [16];
  undefined4 uVar3;
  undefined *puVar4;
  char cVar5;
  short sVar6;
  undefined4 *puVar7;
  int **ppiVar8;
  int **ppiVar9;
  byte **ppbVar10;
  uint *puVar11;
  int ***pppiVar12;
  int iVar13;
  undefined4 uVar14;
  int *piVar15;
  int iVar16;
  float *pfVar17;
  int ***pppiVar18;
  uint uVar19;
  int **ppiVar20;
  bool bVar21;
  float fVar22;
  undefined auVar23 [16];
  float fVar24;
  int *piVar25;
  float fVar26;
  float fVar27;
  undefined4 uVar28;
  undefined local_154 [8];
  int *local_14c;
  int *local_148;
  int *local_144;
  undefined local_140 [4];
  int *local_13c;
  int *local_138;
  int *local_134;
  int **local_130;
  int *local_12c;
  int *local_128;
  int **local_124;
  int *local_120;
  int **local_11c;
  int local_118;
  char local_111;
  int **local_110;
  int *local_10c;
  int **local_108;
  int *local_104;
  int **local_100;
  int **local_fc;
  undefined local_f8 [20];
  undefined4 local_e4;
  uint local_9c;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined auStack_3b [7];
  undefined auStack_34 [4];
  int **local_30;
  int **local_2c;
  int **local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af349d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_12c = param_1[0xf5];
  local_118 = *(int *)(DAT_00c71678 + 0x18300);
  local_100 = param_1;
  puVar4 = &stack0xfffffffc;
  switch(param_1[0x2d9]) {
  case (int *)0x0:
    puStack_20 = &stack0xfffffffc;
    if (param_1[0xb] == (int *)0x0) {
      puStack_20 = &stack0xfffffffc;
      FUN_006d0c60(auStack_34,1000,0x98);
      local_14 = 0;
      if (local_28 == (int **)0x0) {
        uVar14 = FUN_006eef60();
        piVar15 = (int *)FUN_00428b20(1000,0x98,&DAT_00c7b640,&DAT_00c7b640,0,0,uVar14);
        (**(code **)(*piVar15 + 0xc))();
      }
      else {
        piVar15 = *local_30;
      }
      if (param_1[0xef] != (int *)0x0) {
        local_fc = param_1 + 0xef;
        FUN_004cf210(&local_fc);
      }
      param_1[0xef] = piVar15;
      if (piVar15 != (int *)0x0) {
        FUN_004cdcf0(param_1 + 0xef);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffb);
    param_1[0x5b] = param_1[0x5b];
    iVar13 = FUN_0040b220(3);
    *(undefined *)(iVar13 + 0x74) = 0;
    iVar13 = FUN_0040b220(4);
    *(undefined *)(iVar13 + 0x74) = 0;
    param_1[0x104] = (int *)0x0;
    *(undefined4 *)((int)param_1 + 0xba2) = 0;
    *(undefined *)((int)param_1 + 0xba6) = 0;
    *(undefined2 *)(param_1 + 0x2e8) = 0;
    FUN_0044bd80(2);
    *(undefined4 *)
     (param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
     ((uint)param_1[0x2ff] & 3) * 4) = 0;
    local_10c = param_1[0x2ff];
    *(undefined4 *)
     (param_1[0x2fd][(int)param_1[0x2fe] - 1U & (int)local_10c + 1U >> 2] +
     ((int)local_10c + 1U & 3) * 4) = 0;
    if (param_1[0xb] == (int *)0x1) {
      param_1[0x5a] = (int *)((uint)param_1[0x5a] | 0x140011);
      param_1[0x2d9] = (int *)0x10;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x5b] = param_1[0x5b];
      puVar4 = puStack_20;
    }
    else {
      local_12c = param_1[0xf5];
      if (local_12c == (int *)0x0) {
        FUN_006b7be0(&DAT_00c7b640,&DAT_00c7b640);
        uVar19 = local_40._0_4_;
        auVar2._8_8_ = 0;
        auVar2._0_8_ = stack0xffffffc8;
        _local_40 = auVar2 << 0x40;
        local_2c = (int **)0x0;
        local_28 = (int **)0xf;
        local_40[4] = 0;
        local_40 = (undefined  [5])CONCAT14(local_40[4],uVar19);
        puVar7 = (undefined4 *)FUN_0040cf00();
        uVar3 = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0._12_4_;
        uVar28 = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0._8_4_;
        uVar14 = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0._4_4_;
        local_2c = (int **)0x21;
        local_28 = (int **)&DAT_0000002f;
        *puVar7 = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0._0_4_;
        puVar7[1] = uVar14;
        puVar7[2] = uVar28;
        puVar7[3] = uVar3;
        *(undefined (*) [16])(puVar7 + 4) = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0._16_16_;
        *(char *)(puVar7 + 8) = s_gfx_965_001_hornfel_minecart_anm_00b5fcc0[0x20];
        *(undefined *)((int)puVar7 + 0x21) = 0;
        stack0xffffffc4 = (int)puVar7;
        local_14 = 1;
        FUN_0040bd50(local_40 + 4,1);
        local_14 = 0xffffffff;
        if (&DAT_0000000f < local_28) {
          ppiVar9 = (int **)((int)local_28 + 1);
          iVar13 = stack0xffffffc4;
          if ((int **)0xfff < ppiVar9) {
            iVar13 = *(int *)(stack0xffffffc4 + -4);
            ppiVar9 = local_28 + 9;
            if (0x1f < (stack0xffffffc4 - iVar13) - 4U) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(iVar13,ppiVar9);
        }
        local_12c = param_1[0xf5];
      }
      FUN_004b8a30();
      *(undefined2 *)((int)param_1 + 0xba1) = 0x1e1e;
      puVar4 = puStack_20;
    }
    break;
  case (int *)0x3:
  case (int *)0xe:
    if (((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) ||
       (puStack_20 = &stack0xfffffffc, *(char *)(param_1[0x1f] + 0xd) != '\0')) {
      puStack_20 = &stack0xfffffffc;
      FUN_004b7e30();
    }
    local_12c[0x2ee] = 0x3f99999a;
    puVar4 = puStack_20;
    if ((0 < *(short *)(param_1 + 0x2e9)) &&
       (sVar6 = *(short *)(param_1 + 0x2e9) + -1, *(short *)(param_1 + 0x2e9) = sVar6, sVar6 < 1)) {
      if (param_1[0x2d9] == (int *)&DAT_0000000e) {
        if (*(char *)((int)param_1 + 0xba7) != '\0') {
          FUN_0040a380("Taunt",0);
          *(undefined *)((int)param_1 + 0xba3) = 0x96;
          puVar4 = puStack_20;
        }
      }
      else {
        FUN_004b8ca0();
        puVar4 = puStack_20;
      }
    }
    break;
  case (int *)0x4:
    fVar24 = (float)((uint)param_1[0xd9] & DAT_00bacb40);
    fVar22 = (float)((uint)param_1[0xd8] & DAT_00bacb40);
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
    if (fVar24 < fVar22) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380("RunHori",0);
      bVar21 = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
    }
    else {
      ppbVar10 = (byte **)param_1[0x1f];
      local_fc = (int **)0xb5fdc8;
      if (0.0 <= (float)param_1[0xd9]) {
        local_fc = (int **)0xb5fdd0;
      }
      if (ppbVar10 == (byte **)0x0) {
LAB_004ba3e5:
        puStack_20 = &stack0xfffffffc;
        cVar5 = FUN_0040a5d0(local_fc,1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppiVar9 = local_fc;
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar10 = (byte **)*ppbVar10;
        }
        do {
          bVar1 = *(byte *)ppbVar10;
          bVar21 = bVar1 < *(byte *)ppiVar9;
          if (bVar1 != *(byte *)ppiVar9) {
LAB_004ba3c4:
            uVar19 = -(uint)bVar21 | 1;
            goto LAB_004ba3c9;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar10 + 1);
          bVar21 = bVar1 < *(byte *)((int)ppiVar9 + 1);
          if (bVar1 != *(byte *)((int)ppiVar9 + 1)) goto LAB_004ba3c4;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          ppiVar9 = (int **)((int)ppiVar9 + 2);
        } while (bVar1 != 0);
        uVar19 = 0;
LAB_004ba3c9:
        if ((uVar19 != 0) ||
           ((puStack_20 = &stack0xfffffffc, *(char *)(param_1[0x1f] + 0xd) != '\0' &&
            (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_004ba3e5;
      }
      bVar21 = false;
    }
    *(bool *)(param_1 + 0x52) = bVar21;
    if (0 < *(short *)(param_1 + 0x2e9)) {
      *(short *)(param_1 + 0x2e9) =
           *(short *)(param_1 + 0x2e9) -
           ((short)(int)(float)param_1[0xe9] - (short)(int)(float)param_1[0xe8]);
    }
    if (param_1[0x2fb] == (int *)0x0) {
      local_104 = (int *)0xffffffff;
    }
    else {
      local_104 = (int *)FUN_004bb6b0();
    }
    piVar15 = (int *)FUN_00812c90(param_1 + 0xcf);
    if ((piVar15 == local_104) || (cVar5 = FUN_00813360(param_1 + 0xcf,0), cVar5 == '\0')) {
      local_111 = '\x01';
    }
    else {
      local_111 = '\0';
      if ((param_1[0x2fb] != (int *)0x0) && (cVar5 = FUN_006ac710(10,0), cVar5 != '\0')) {
        uVar28 = 0;
        uVar14 = FUN_00812f00(local_140,local_104);
        cVar5 = FUN_007e7070(uVar14,uVar28);
        ppiVar9 = param_1 + 0x2fb;
        if (cVar5 == '\0') {
          if (*ppiVar9 != (int *)0x0) {
            local_100 = ppiVar9;
            FUN_004cf210(&local_100);
          }
          *ppiVar9 = (int *)0x0;
        }
      }
    }
    local_130 = (int **)param_1[0x2fb];
    piVar15 = local_104;
    if (local_130 == (int **)0x0) {
      if (*(short *)(param_1 + 0x2e9) < 1) {
        local_fc = DAT_00baacc8;
        local_11c = *(int ***)(DAT_00c71678 + 0x18300);
        local_108 = (int **)0x0;
        piVar15 = (int *)0x0;
        local_104 = piVar15;
        if (local_11c[0x499] != (int *)0x0) {
          do {
            piVar25 = (int *)local_11c[0x497][(int)local_108];
            if (piVar25[10] == 0x3c7) {
              local_100 = (int **)(((float)param_1[0xd0] - (float)piVar25[0xd0]) *
                                   ((float)param_1[0xd0] - (float)piVar25[0xd0]) +
                                  ((float)param_1[0xcf] - (float)piVar25[0xcf]) *
                                  ((float)param_1[0xcf] - (float)piVar25[0xcf]));
              cVar5 = FUN_007e7070(param_1 + 0xcf,0);
              piVar15 = local_104;
              if ((cVar5 != '\0') && ((float)local_100 < (float)local_fc)) {
                local_fc = local_100;
                piVar15 = piVar25;
                local_104 = piVar25;
              }
            }
            local_108 = (int **)((int)local_108 + 1);
          } while (local_108 < local_11c[0x499]);
          if (piVar15 != (int *)0x0) {
            if (param_1[0x2fb] != (int *)0x0) {
              local_100 = param_1 + 0x2fb;
              FUN_004cf210(&local_100);
              piVar15 = local_104;
            }
            param_1[0x2fb] = piVar15;
            FUN_004cdcf0(param_1 + 0x2fb);
          }
        }
        if (param_1[0x2fb] != (int *)0x0) {
          piVar15 = (int *)FUN_004bb6b0();
          local_130 = (int **)param_1[0x2fb];
          goto LAB_004ba6b2;
        }
      }
LAB_004ba7a3:
      iVar13 = FUN_006be840();
      fVar27 = (float)param_1[0xd0] - *(float *)(iVar13 + 0x340);
      fVar24 = (float)param_1[0xcf] - *(float *)(iVar13 + 0x33c);
      fVar26 = fVar24 * _DAT_00c5c678 + fVar27 * _DAT_00c5c67c;
      fVar22 = 0.0;
      if (0.0 < fVar26) {
        fVar22 = fVar26;
      }
      pfVar17 = (float *)&DAT_00c7b640;
      if (0.0 < fVar26) {
        pfVar17 = (float *)&DAT_00c5c678;
      }
      fVar26 = fVar24 * _DAT_00c5c680 + fVar27 * _DAT_00c5c684;
      if (fVar22 < fVar26) {
        pfVar17 = (float *)&DAT_00c5c680;
        fVar22 = fVar26;
      }
      fVar26 = fVar24 * DAT_00c5c688 + fVar27 * DAT_00c5c68c;
      if (fVar22 < fVar26) {
        pfVar17 = &DAT_00c5c688;
        fVar22 = fVar26;
      }
      fVar24 = DAT_00c5c694 * fVar27 + fVar24 * DAT_00c5c690;
      if (fVar22 < fVar24) {
        pfVar17 = &DAT_00c5c690;
        fVar22 = fVar24;
      }
      fVar22 = (float)param_1[0xd0] -
               (fVar22 * pfVar17[1] * DAT_00baa3a4 + *(float *)(iVar13 + 0x340));
      FUN_00499d60();
      local_11c = (int **)(fVar22 * DAT_00baa948);
      local_100 = (int **)((float)param_1[0x2ec] * DAT_00baa088);
      ppiVar9 = local_100;
      FUN_0041d520();
      local_fc = ppiVar9;
      FUN_0041d540();
      FUN_006eef60();
      piVar15 = param_1[0x2ec];
      FUN_00682a50();
      fVar24 = (float)local_100 * DAT_00baa4b0;
      fVar22 = (float)local_fc * DAT_00baa4b0;
      param_1[0x2ec] = piVar15;
      param_1[0xd8] = (int *)(fVar24 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int *)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      iVar13 = local_118;
      if (*(char *)(param_1 + 100) != '\0') {
        piVar15 = param_1[0x68];
        fVar22 = (float)local_fc -
                 ((float)piVar15 * (float)local_fc + (float)param_1[0x67] * (float)local_100) *
                 ((float)piVar15 + (float)piVar15);
        FUN_00499d60();
        param_1[0x2ec] = (int *)(fVar22 * DAT_00baa948);
        iVar13 = local_118;
      }
    }
    else {
LAB_004ba6b2:
      iVar13 = local_118;
      if (local_130 == (int **)0x0) goto LAB_004ba7a3;
      FUN_00812f00(&local_110,piVar15);
      if (local_111 == '\0') {
        param_1[0x61] = (int *)&DAT_00000005;
        FUN_007e33c0(&local_110,0x3f8a3d71,0,1);
      }
      else {
        param_1[0x61] = (int *)0x0;
        puVar11 = (uint *)FUN_004bb550(local_140);
        fVar22 = (float)(puVar11[1] ^ DAT_00bacb70);
        param_1[0xd8] =
             (int *)((float)(*puVar11 ^ DAT_00bacb70) * (float)param_1[0xe7] + (float)param_1[0xd8])
        ;
        param_1[0xd9] = (int *)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        FUN_004bb830(5);
        iVar16 = FUN_00812c90(param_1 + 0xcf);
        if (iVar16 < 0) {
          FUN_007fec00(param_1);
          (*(code *)(*param_1)[10])();
        }
      }
    }
    cVar5 = FUN_00813360(param_1 + 0xcf,0);
    puVar4 = puStack_20;
    if (cVar5 == '\0') {
      local_11c = (int **)(*(float *)(iVar13 + 0x14) - (float)param_1[0xcf]);
      local_100 = (int **)((float)param_1[0xcf] - *(float *)(iVar13 + 0x1c));
      local_fc = (int **)(*(float *)(iVar13 + 0x18) - (float)param_1[0xd0]);
      local_108 = (int **)((float)param_1[0xd0] - *(float *)(iVar13 + 0x20));
      pppiVar12 = &local_100;
      if ((float)local_100 <= (float)local_11c) {
        pppiVar12 = &local_11c;
      }
      pppiVar18 = &local_fc;
      if ((float)local_fc < (float)*pppiVar12 || (float)local_fc == (float)*pppiVar12) {
        pppiVar18 = pppiVar12;
      }
      pppiVar12 = &local_108;
      if ((float)local_108 < (float)*pppiVar18 || (float)local_108 == (float)*pppiVar18) {
        pppiVar12 = pppiVar18;
      }
      fVar22 = ((float)*pppiVar12 - 0.0) / DAT_00baa91c;
      auVar23 = ZEXT416((uint)fVar22);
      if (fVar22 <= 0.0) {
        auVar23 = ZEXT416(0) << 0x20;
      }
      if (DAT_00baa454 <= auVar23._0_4_) {
        auVar23._0_4_ = DAT_00baa454;
      }
      param_1[0x3f] = (int *)(DAT_00baa454 - auVar23._0_4_);
    }
    else {
      param_1[0x3f] = (int *)0x3f800000;
    }
    break;
  case (int *)0x6:
  case (int *)0x7:
    *(undefined *)((int)param_1 + 0x171) = 0;
    param_1[0x62] = (int *)0x0;
    puVar4 = &stack0xfffffffc;
    if (param_1[0xf0] == (int *)0x0) {
      if (*(short *)(param_1 + 0x104) == 0) {
        puVar4 = &stack0xfffffffc;
        if (*(short *)((int)param_1 + 0x412) < 1) {
          puStack_20 = &stack0xfffffffc;
          FUN_004b8190();
          puVar4 = puStack_20;
        }
      }
      else {
        *(short *)(param_1 + 0x104) = *(short *)(param_1 + 0x104) + -1;
        puVar4 = &stack0xfffffffc;
      }
    }
    break;
  case (int *)0x8:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Sound");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0xc9,0x3f800000,2,0,0x3f800000);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
      iVar13 = FUN_006be840();
      local_fc = *(int ***)(iVar13 + 0x33c);
      local_108 = *(int ***)(iVar13 + 0x340);
      local_104 = *(int **)(iVar13 + 0x360);
      local_128 = *(int **)(iVar13 + 0x364);
      iVar16 = FUN_006eef60();
      fVar22 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) * DAT_00ba9ff4 *
               _DAT_00baa19c + DAT_00baa120;
      local_104 = (int *)((float)local_104 * fVar22);
      local_128 = (int *)((float)local_128 * fVar22);
      fVar22 = (float)param_1[0xd0] - *(float *)(iVar13 + 0x340);
      fVar24 = (float)param_1[0xcf] - *(float *)(iVar13 + 0x33c);
      fVar22 = fVar22 * fVar22 + fVar24 * fVar24;
      FUN_00435a50();
      local_120 = (int *)((float)local_108 + fVar22 * (float)local_128);
      local_124 = (int **)(fVar22 * (float)local_104 + (float)local_fc);
      ppiVar9 = (int **)FUN_00813520(&local_110,&local_124,0,0,0,0);
      piVar15 = param_1[0x2ff];
      local_124 = (int **)*ppiVar9;
      local_120 = ppiVar9[1];
      if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)piVar15 >> 2] +
                  ((uint)piVar15 & 3) * 4) == 0) {
        local_fc = (int **)((int)piVar15 + 1U >> 2);
        uVar19 = (int)piVar15 + 1U & 3;
        local_10c = piVar15;
        if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)local_fc] + uVar19 * 4) != 0) {
          FUN_004b90e0(*(undefined4 *)
                        (param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)local_fc] + uVar19 * 4),
                       &local_124);
          local_10c = param_1[0x2ff];
          piVar15 = (int *)((int)local_10c + 1);
          goto LAB_004b9d9e;
        }
      }
      else {
        FUN_004b90e0(*(undefined4 *)
                      (param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)piVar15 >> 2] +
                      ((uint)piVar15 & 3) * 4),&local_124);
        piVar15 = param_1[0x2ff];
LAB_004b9d9e:
        ppiVar9 = (int **)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)piVar15 >> 2] +
                          ((uint)piVar15 & 3) * 4);
        if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)piVar15 >> 2] +
                    ((uint)piVar15 & 3) * 4) != 0) {
          local_fc = ppiVar9;
          FUN_004cf210(&local_fc);
        }
        *ppiVar9 = (int *)0x0;
      }
      *(char *)((int)param_1 + 0xba6) = *(char *)((int)param_1 + 0xba6) + '\x01';
    }
    puVar4 = puStack_20;
    if (((((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) &&
         (param_1[0x2d9] = (int *)0x3, *(char *)((int)param_1 + 0xba7) != '\0')) &&
        ((*(char *)((int)param_1 + 0xba3) == '\0' &&
         (uVar19 = FUN_006eef60(), puVar4 = puStack_20, uVar19 % 10 == 0)))) &&
       (DAT_00baa2d0 < (float)param_1[0xe0] / (float)param_1[0xe1])) {
      FUN_0040a380("Taunt",0);
      *(undefined *)((int)param_1 + 0xba3) = 0x96;
      puVar4 = puStack_20;
    }
    break;
  case (int *)0x9:
    puStack_20 = &stack0xfffffffc;
    cVar5 = FUN_0040b030("Shoot");
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x19,0x3f800000,2,0,0x3f800000);
      local_130 = (int **)0x0;
      local_30 = (int **)0x0;
      local_2c = (int **)0x0;
      local_108 = (int **)0x0;
      local_28 = (int **)0x0;
      local_14 = 2;
      local_fc = (int **)((0x87 < *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) *
                                  *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc)) + 3);
      do {
        ppiVar9 = local_2c;
        local_120 = (int *)0x0;
        local_124 = (int **)0x0;
        if (local_130 == local_2c) {
          pfVar17 = (float *)FUN_0081e9d0(local_154,0x42200000);
          local_124 = (int **)*pfVar17;
          local_120 = (int *)pfVar17[1];
        }
        else {
          local_138 = DAT_00baaed4;
          local_134 = (int *)0x8;
          do {
            ppiVar20 = local_130;
            FUN_0081e9d0(&local_110,0x42200000);
            local_14c = (int *)0x0;
            do {
              local_104 = (int *)((float)local_10c - (float)ppiVar20[1]);
              local_128 = (int *)((float)local_110 - (float)*ppiVar20);
              ppiVar8 = (int **)((float)local_104 * (float)local_104 +
                                (float)local_128 * (float)local_128);
              FUN_00435a50();
              local_11c = ppiVar8;
              local_144 = (int *)((uint)local_104 & DAT_00bacb40);
              local_148 = (int *)((uint)local_128 & DAT_00bacb40);
              fVar22 = (float)local_144 * (float)local_144 + (float)local_148 * (float)local_148;
              local_128 = local_148;
              local_104 = local_144;
              FUN_00435a50();
              piVar25 = local_128;
              piVar15 = local_104;
              if (DAT_00ba9fe4 < fVar22) {
                local_148 = (int *)((float)local_128 * (DAT_00baa454 / fVar22));
                local_144 = (int *)((float)local_104 * (DAT_00baa454 / fVar22));
                piVar25 = local_148;
                piVar15 = local_144;
              }
              ppiVar8 = &local_144;
              if ((float)piVar25 <= (float)piVar15) {
                ppiVar8 = &local_148;
              }
              ppiVar20 = ppiVar20 + 2;
              local_14c = (int *)((float)*ppiVar8 * (float)local_11c + (float)local_14c);
            } while (ppiVar20 != ppiVar9);
            if ((float)local_138 < (float)local_14c) {
              local_124 = local_110;
              local_120 = local_10c;
              local_138 = local_14c;
            }
            local_134 = (int *)((int)local_134 + -1);
          } while (local_134 != (int *)0x0);
          local_134 = (int *)0x0;
          param_1 = local_100;
        }
        ppiVar9 = (int **)FUN_00813520(local_140,&local_124,0x42800000,0,0,0);
        local_124 = (int **)*ppiVar9;
        local_134 = ppiVar9[1];
        local_120 = local_134;
        local_11c = local_124;
        uVar14 = FUN_006eef60();
        iVar13 = FUN_00428b20(4,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar14);
        FUN_004b90e0(iVar13,&local_124);
        *(undefined4 *)(iVar13 + 0x188) = 1;
        if (local_2c == local_108) {
          FUN_0042f430(local_2c,&local_124);
          local_108 = local_28;
          local_130 = local_30;
        }
        else {
          *local_2c = (int *)local_11c;
          local_2c[1] = local_134;
          local_2c = local_2c + 2;
        }
        local_fc = (int **)((int)local_fc + -1);
      } while (local_fc != (int **)0x0);
      local_14 = 0xffffffff;
      *(undefined2 *)((int)param_1 + 0x412) = 0x7d;
      puVar4 = puStack_20;
      if (local_130 != (int **)0x0) {
        uVar19 = ((int)local_108 - (int)local_130 >> 3) * 8;
        ppiVar9 = local_130;
        if (0xfff < uVar19) {
          ppiVar9 = (int **)local_130[-1];
          uVar19 = uVar19 + 0x23;
          if ((undefined *)0x1f < (undefined *)((int)local_130 + (-4 - (int)ppiVar9))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(ppiVar9,uVar19);
        puVar4 = puStack_20;
      }
    }
    break;
  case (int *)0xa:
    puStack_20 = &stack0xfffffffc;
    FUN_004b7e30();
    local_fc = (int **)0x41f00000;
    local_108 = (int **)((float)local_12c[0x2ee] + DAT_00baa108);
    pppiVar12 = &local_fc;
    if ((float)(int **)((float)local_12c[0x2ee] + DAT_00baa108) <= DAT_00baa8d0) {
      pppiVar12 = &local_108;
    }
    local_12c[0x2ee] = (int)*pppiVar12;
    cVar5 = FUN_006ac710(0xf,param_1[8]);
    puVar4 = puStack_20;
    if ((cVar5 != '\0') &&
       (cVar5 = FUN_00813360(param_1 + 0xcf,0x41a00000), puVar4 = puStack_20, cVar5 != '\0')) {
      pfVar17 = (float *)FUN_0067f070(&local_124);
      iVar13 = FUN_006eef60();
      fVar22 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4;
      local_10c = (int *)(fVar22 * pfVar17[1] + (float)param_1[0xd0]);
      local_110 = (int **)(fVar22 * *pfVar17 + (float)param_1[0xcf]);
      FUN_00813520(&local_148,&local_110,0,0,0,0);
      uVar14 = FUN_006eef60();
      ppiVar9 = &local_148;
      uVar14 = FUN_00428b20(4,0,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar14);
      FUN_004b90e0(uVar14,ppiVar9);
      puVar4 = puStack_20;
    }
    break;
  case (int *)0xb:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("ChargeFinish",0);
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      AI_0043ef30();
      local_9c = local_9c | 8;
      local_50 = _DAT_00bac7b0;
      uStack_4c = _UNK_00bac7b4;
      uStack_48 = _UNK_00bac7b8;
      uStack_44 = _UNK_00bac7bc;
      local_e4 = 0x40000000;
      _local_40 = ZEXT816(0);
      local_30 = (int **)0x3f800000;
      local_2c = (int **)0x3e99999a;
      local_28 = (int **)0x0;
      FUN_004071f0(&local_50);
      iVar13 = FUN_006be840();
      local_108 = (int **)(*(float *)(iVar13 + 0x364) * DAT_00baa120);
      local_fc = (int **)(*(float *)(iVar13 + 0x360) * DAT_00baa120);
      fVar24 = (float)param_1[0xcf] - *(float *)(iVar13 + 0x33c);
      fVar22 = (float)param_1[0xd0] - *(float *)(iVar13 + 0x340);
      fVar22 = fVar22 * fVar22 + fVar24 * fVar24;
      FUN_00435a50();
      local_110 = (int **)((float)local_fc * fVar22 + *(float *)(iVar13 + 0x33c));
      local_10c = (int *)((float)local_108 * fVar22 + *(float *)(iVar13 + 0x340));
      iVar13 = FUN_006ccdd0(1,&local_110,0x41200000,local_f8);
      fVar22 = *(float *)(iVar13 + 0x418) - DAT_00baa304;
      *(undefined4 *)(iVar13 + 0x420) = 0x40000000;
      *(float *)(iVar13 + 0x418) = fVar22;
      *(float *)(iVar13 + 0x414) = *(float *)(iVar13 + 0x414) * DAT_00baa354 - DAT_00baa6fc;
    }
    cVar5 = FUN_0040b090("Shoot");
    puVar4 = puStack_20;
    if (cVar5 == '\0') {
      local_138 = (int *)((float)local_12c[0x2ee] - DAT_00baa380);
      local_134 = (int *)0x3f4ccccd;
      ppiVar9 = &local_134;
      if (DAT_00baa3a4 <= (float)local_138) {
        ppiVar9 = &local_138;
      }
      local_12c[0x2ee] = (int)*ppiVar9;
    }
    else {
      local_108 = (int **)((float)local_12c[0x2ee] + DAT_00baa120);
      local_fc = (int **)0x3f99999a;
      pppiVar12 = &local_fc;
      if ((float)local_108 <= DAT_00baa4b0) {
        pppiVar12 = &local_108;
      }
      local_12c[0x2ee] = (int)*pppiVar12;
    }
    break;
  case (int *)0xc:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("Detonate",0);
    cVar5 = FUN_0040b030("Sound");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0xfc,0x3f800000,2,0,0x3f800000);
    }
    cVar5 = FUN_0040b030("Shoot");
    puVar4 = puStack_20;
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x1d5,0x3f800000,2,0,0x3f800000);
      puVar4 = puStack_20;
    }
    break;
  case (int *)0xd:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa304);
    if ((param_1[0x1f] == (int *)0x0) ||
       (puVar4 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = (int *)&DAT_00000004;
      *(undefined2 *)(param_1 + 0x2e9) = 0x5a;
      puStack_20 = &stack0xfffffffc;
      iVar13 = FUN_006be840(local_24);
      fVar22 = (float)param_1[0xd0] - *(float *)(iVar13 + 0x340);
      FUN_00499d60();
      param_1[0x2ec] = (int *)(fVar22 * DAT_00baa948);
      puVar4 = puStack_20;
    }
    break;
  case (int *)0x10:
    FUN_0040a380("DecoyIdle",0);
    puVar4 = puStack_20;
    if (0.0 < (float)param_1[5]) {
      if (((uint)param_1[6] & 4) == 0) {
        pfVar17 = (float *)param_1[2];
        if (pfVar17 == (float *)param_1[3]) {
          piVar15 = param_1[0xe0];
        }
        else {
          do {
            if (DAT_00baa81c < *pfVar17) {
              uVar19 = FUN_006eef60();
              fVar22 = DAT_00baa6fc;
              if (uVar19 % 3 != 0) {
LAB_004b966e:
                fVar22 = DAT_00baa630;
              }
LAB_004b9680:
              piVar15 = (int *)((float)param_1[0xe0] - fVar22);
              param_1[0xe0] = piVar15;
            }
            else {
              if (0.0 < *pfVar17) {
                uVar19 = FUN_006eef60();
                fVar22 = DAT_00baa454;
                if (uVar19 % 3 == 0) goto LAB_004b966e;
                goto LAB_004b9680;
              }
              piVar15 = param_1[0xe0];
            }
            pfVar17 = pfVar17 + 0xe;
          } while (pfVar17 != (float *)param_1[3]);
        }
        puVar4 = puStack_20;
        if (DAT_00baa454 <= (float)piVar15) {
          if ((float)piVar15 < DAT_00baa528) {
            *(undefined *)((int)param_1 + 0x173) = 1;
          }
        }
        else {
          param_1[0xe0] = (int *)0x3f800000;
          *(undefined *)((int)param_1 + 0x173) = 1;
        }
      }
      else {
        param_1[0xe0] = (int *)0x3f800000;
        *(undefined *)((int)param_1 + 0x173) = 1;
      }
    }
  }
  puStack_20 = puVar4;
  if (0 < *(short *)((int)param_1 + 0x412)) {
    *(short *)((int)param_1 + 0x412) = *(short *)((int)param_1 + 0x412) + -1;
  }
  pfVar17 = (float *)param_1[2];
  if (pfVar17 != (float *)param_1[3]) {
    do {
      local_13c = (int *)pfVar17[3];
      if (((((((uint)pfVar17[2] & 4) != 0) && (pfVar17[6] != 1.401298e-45)) &&
           (pfVar17[4] != 1.401298e-45)) ||
          ((((uint)pfVar17[2] & 8) != 0 && ((int *)pfVar17[4] == param_1[10])))) ||
         ((pfVar17[4] == 1.401298e-42 &&
          ((pfVar17[5] == 2.059909e-43 && (pfVar17[6] != 1.401298e-45)))))) {
        param_1[5] = (int *)((float)param_1[5] - *pfVar17);
        *pfVar17 = 0.0;
      }
      pfVar17 = pfVar17 + 0xe;
    } while (pfVar17 != (float *)param_1[3]);
  }
  if ((float)param_1[5] <= 0.0 && (float)param_1[5] != 0.0) {
    param_1[5] = (int *)0x0;
  }
  iVar13 = FUN_006ac760();
  if (iVar13 != 0) {
    if (*(char *)(param_1 + 0x2e8) != '\0') {
      *(char *)(param_1 + 0x2e8) = *(char *)(param_1 + 0x2e8) + -1;
    }
    if (*(char *)((int)param_1 + 0xba1) != '\0') {
      *(char *)((int)param_1 + 0xba1) = *(char *)((int)param_1 + 0xba1) + -1;
    }
    if (*(char *)((int)param_1 + 0xba2) != '\0') {
      *(char *)((int)param_1 + 0xba2) = *(char *)((int)param_1 + 0xba2) + -1;
    }
    if (*(char *)((int)param_1 + 0xba3) != '\0') {
      *(char *)((int)param_1 + 0xba3) = *(char *)((int)param_1 + 0xba3) + -1;
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[0xb] == (int *)0x1) {
      uVar14 = FUN_006eef60();
      ppiVar9 = param_1 + 0xcf;
      FUN_00428b20(1000,1,ppiVar9,&DAT_00c7b640,0,0,uVar14);
      uVar14 = FUN_006eef60();
      piVar15 = (int *)FUN_00428b20(1000,0x12,ppiVar9,&DAT_00c7b640,0,0,uVar14);
      (**(code **)(*piVar15 + 0xc))();
      FUN_006ff2a0(ppiVar9,0x42dc0000,0x42960000,0,0,0,0,0,0,0x1004,0,0);
      iVar13 = 6;
      do {
        iVar16 = FUN_006eef60();
        fVar22 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_fc = (int **)(fVar22 + fVar22);
        iVar16 = FUN_006eef60();
        local_108 = (int **)((float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa854 + DAT_00baa784);
        ppiVar9 = local_fc;
        FUN_0041d540();
        local_110 = (int **)((float)ppiVar9 * (float)local_108);
        ppiVar9 = local_fc;
        FUN_0041d520();
        local_10c = (int *)((float)ppiVar9 * (float)local_108);
        uVar14 = FUN_006eef60();
        iVar16 = FUN_00428b20(4,3,param_1 + 0xcf,&local_110,param_1,0,uVar14);
        *(undefined4 *)(iVar16 + 0x188) = 1;
        iVar13 = iVar13 + -1;
      } while (iVar13 != 0);
    }
    else if ((local_12c != (int *)0x0) && (*(char *)((int)param_1 + 0x171) != '\0')) {
      uVar14 = FUN_006eef60();
      FUN_00428b20(1000,1,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar14);
      if (param_1[0x2d9] == (int *)&DAT_00000008) {
        if (*(int *)(param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
                    ((uint)param_1[0x2ff] & 3) * 4) != 0) {
          pfVar17 = (float *)FUN_0067f070(local_140);
          iVar13 = FUN_006eef60();
          fVar22 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa81c;
          local_10c = (int *)(fVar22 * pfVar17[1] + (float)param_1[0xd0]);
          local_110 = (int **)(fVar22 * *pfVar17 + (float)param_1[0xcf]);
          FUN_004b90e0(*(undefined4 *)
                        (param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
                        ((uint)param_1[0x2ff] & 3) * 4),&local_110);
          uVar19 = (uint)param_1[0x2ff] & 3;
          ppiVar9 = (int **)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                            uVar19 * 4);
          if (*(int *)(param_1[0x2fd][(uint)param_1[0x2ff] >> 2 & (int)param_1[0x2fe] - 1U] +
                      uVar19 * 4) != 0) {
            local_100 = ppiVar9;
            FUN_004cf210(&local_100);
          }
          *ppiVar9 = (int *)0x0;
        }
        local_13c = param_1[0x2ff];
        if (*(int *)(param_1[0x2fd][(int)local_13c + 1U >> 2 & (int)param_1[0x2fe] - 1U] +
                    ((int)local_13c + 1U & 3) * 4) != 0) {
          pfVar17 = (float *)FUN_0067f070(local_140);
          iVar13 = FUN_006eef60();
          fVar22 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa81c;
          local_10c = (int *)(fVar22 * pfVar17[1] + (float)param_1[0xd0]);
          local_110 = (int **)(fVar22 * *pfVar17 + (float)param_1[0xcf]);
          FUN_004b90e0(*(undefined4 *)
                        (param_1[0x2fd][(int)param_1[0x2ff] + 1U >> 2 & (int)param_1[0x2fe] - 1U] +
                        ((int)param_1[0x2ff] + 1U & 3) * 4),&local_110);
          uVar19 = (int)param_1[0x2ff] + 1U & 3;
          ppiVar9 = (int **)(param_1[0x2fd]
                             [(int)param_1[0x2ff] + 1U >> 2 & (int)param_1[0x2fe] - 1U] + uVar19 * 4
                            );
          if (*(int *)(param_1[0x2fd][(int)param_1[0x2ff] + 1U >> 2 & (int)param_1[0x2fe] - 1U] +
                      uVar19 * 4) != 0) {
            local_100 = ppiVar9;
            FUN_004cf210(&local_100);
          }
          *ppiVar9 = (int *)0x0;
        }
      }
      FUN_004cee90();
      param_1[0x2d9] = (int *)0xd;
      FUN_0040a380(&DAT_00b1cdf8,0);
      ppiVar9 = param_1 + 0x2fb;
      param_1[0x61] = (int *)&DAT_00000005;
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0xe0] = (int *)0x42c80000;
      if (*ppiVar9 != (int *)0x0) {
        local_100 = ppiVar9;
        FUN_004cf210(&local_100);
      }
      *ppiVar9 = (int *)0x0;
      param_1[0xe2] = (int *)0x3f800000;
      param_1[0x3f] = (int *)0x3f800000;
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

