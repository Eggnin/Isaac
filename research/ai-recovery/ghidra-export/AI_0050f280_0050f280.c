/* Local J460 decompiler output.
 * VA: 0x0050f280
 * Entry: 0050f280
 * Dispatcher: 0x006c2990
 * Types: 25
 * Identities: 25.0.0,25.1.0,25.2.0,25.3.0,25.3.1,25.4.0,25.5.0,25.6.0
 * Evidence: dispatcher=0x006c2990; end=0x00510ae0; instructions=1338
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=25;
   identities=25.0.0,25.1.0,25.2.0,25.3.0,25.3.1,25.4.0,25.5.0,25.6.0; dispatcher=0x006c2990;
   end=0x00510ae0; instructions=1338 */

void __fastcall AI_0050f280(int *param_1)

{
  int **ppiVar1;
  float fVar2;
  int iVar3;
  bool bVar4;
  int iVar5;
  int iVar6;
  char cVar7;
  int iVar8;
  uint uVar9;
  float *pfVar10;
  undefined4 uVar11;
  int *piVar12;
  uint uVar13;
  undefined4 extraout_ECX;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  int *piVar19;
  undefined8 uVar20;
  undefined auStack_138 [4];
  int *local_134;
  int *local_130;
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  int *local_11c;
  int *local_118;
  int local_114;
  int local_110 [8];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8;
  int local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined local_d4 [8];
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  uint local_c4;
  int iStack_c0;
  undefined4 local_bc;
  undefined local_b8 [8];
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a4;
  float local_a0;
  uint local_5c;
  undefined4 local_24;
  uint local_c;
  
  iVar6 = _UNK_00baca2c;
  iVar5 = _UNK_00baca28;
  iVar8 = _UNK_00baca24;
  local_c = DAT_00bf93b4 ^ (uint)auStack_138;
  if (param_1[0x2d9] == 0) {
    iVar3 = param_1[0xb];
    if (iVar3 == 3) {
      local_f0 = 0x3f800000;
      uStack_ec = 0x3f038384;
      local_e8 = 0x3b808081;
      if (param_1 + 0x79 != local_110) {
        param_1[0x79] = _DAT_00baca20;
        param_1[0x7a] = iVar8;
        param_1[0x7b] = iVar5;
        param_1[0x7c] = iVar6;
        *(undefined8 *)(param_1 + 0x81) = 0x3f0383843f800000;
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        param_1[0x83] = 0x3b808081;
      }
    }
    else if (iVar3 == 4) {
      param_1[0x5a] = param_1[0x5a] | 0x10000;
      param_1[0x5b] = param_1[0x5b];
    }
    else if (iVar3 == 5) {
      FUN_004071f0(&DAT_00c34e80);
    }
    param_1[0x2d9] = 4;
    param_1[0x61] = 3;
    iVar8 = FUN_006eef60();
    fVar15 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_134 = (int *)(fVar15 + fVar15);
    local_128 = (float)local_134;
    FUN_0041d540();
    fVar15 = (float)local_134;
    FUN_0041d520();
    param_1[0xd8] = (int)local_128;
    param_1[0xd9] = (int)fVar15;
    FUN_00aef12b();
    return;
  }
  iVar8 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  if (iVar8 == 0) {
LAB_0050f4ca:
    bVar14 = *(char *)((int)param_1 + 0x173) == '\0';
  }
  else {
    bVar14 = *(char *)((int)param_1 + 0x173) == '\0';
    if (bVar14) {
      if ((param_1[0x5a] & 0x20000000U) == 0) {
        local_e4 = *(int *)(iVar8 + 0x28);
        uStack_e0 = *(undefined4 *)(iVar8 + 0x2c);
        uStack_dc = *(undefined4 *)(iVar8 + 0x34);
        uStack_d8 = *(undefined4 *)(iVar8 + 0x38);
        uStack_cc = *(undefined4 *)(iVar8 + 0x360);
        local_d4 = (undefined  [8])*(undefined8 *)(iVar8 + 0x33c);
        uStack_c8 = *(undefined4 *)(iVar8 + 0x364);
        local_128 = (float)(uint)((*(uint *)(iVar8 + 0x168) & 0x100) != 0);
        if ((*(uint *)(iVar8 + 0x168) & 0x20000000) == 0) {
          uVar13 = 0;
        }
        else {
          uVar13 = 2;
        }
        if ((*(uint *)(iVar8 + 0x16c) & 0x400000) == 0) {
          uVar9 = 0;
        }
        else {
          uVar9 = 4;
        }
        local_c4 = uVar9 | uVar13 | (uint)local_128;
        iStack_c0 = iVar8;
        FUN_006ad870(&local_e4,0xffffffff,1,0);
      }
      goto LAB_0050f4ca;
    }
  }
  fVar18 = DAT_00baa454;
  fVar16 = DAT_00baa354;
  fVar15 = DAT_00baa120;
  if (bVar14) {
    if (param_1[0x2d9] == 5) {
      param_1[0xd8] = param_1[0xcd];
      param_1[0xd9] = param_1[0xce];
      if (*(char *)(param_1 + 100) != '\0') {
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x2d9] = 4;
      }
    }
    else if (param_1[0x2d9] == 0x10) {
      fVar2 = (float)param_1[0xe7];
      bVar14 = NAN(DAT_00baa454);
      bVar4 = fVar2 == DAT_00baa454;
      fVar17 = (float)param_1[0x2ec] - (float)param_1[0xd4] * DAT_00baa120 * fVar2;
      param_1[0x2ec] = (int)fVar17;
      param_1[0xd4] = (int)(fVar17 * fVar2 + (float)param_1[0xd4]);
      if ((NAN(fVar2) || bVar14) == bVar4) {
        fVar16 = fVar16 / ((fVar2 + fVar16) - fVar2 * fVar16);
      }
      fVar18 = (fVar18 - (float)param_1[0x39]) * (fVar18 - fVar16) + (float)param_1[0x39];
      fVar16 = fVar18 * DAT_00c3793c;
      param_1[0x3a] = (int)(fVar18 * DAT_00c37940);
      param_1[0x39] = (int)fVar16;
      param_1[0xd8] = (int)(((float)param_1[0xcd] - (float)param_1[0xcf]) * fVar15);
      param_1[0xd9] = (int)(((float)param_1[0xce] - (float)param_1[0xd0]) * fVar15);
    }
  }
  fVar15 = (float)param_1[0xdb] * DAT_00baa3e0;
  local_128 = 0.0;
  param_1[0xdb] = (int)fVar15;
  if (param_1[0x2d9] != 8) {
    if (param_1[0x2d9] == 9) {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        uVar20 = FUN_00435c70();
        (*(code *)((ulonglong)uVar20 >> 0x20))((int)uVar20);
        uVar11 = FUN_00407170();
        FUN_00700060(param_1 + 0xcf,0x42a00000,0,0,0,0,uVar11,param_1,0x3fc00000,0,4,0,0);
        FUN_00703670(10);
        local_11c = (int *)0x0;
        do {
          piVar12 = local_11c;
          iVar8 = FUN_006eef60();
          local_134 = (int *)(((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa3a4 +
                              ((float)(int)piVar12 - (float)DAT_00baa280)) * DAT_00baa8f0 *
                             DAT_00baa088);
          piVar12 = local_134;
          FUN_0041d520();
          local_130 = piVar12;
          uVar11 = FUN_006eef60();
          iVar8 = FUN_006eef60();
          local_118 = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa81c);
          piVar12 = local_134;
          FUN_0041d540();
          local_124 = (float)piVar12 * (float)local_118;
          local_120 = (float)local_130 * (float)local_118;
          piVar12 = (int *)FUN_006fe410(1000,0x3b,param_1 + 0xcf,&local_124,param_1,0,uVar11,0);
          iVar8 = FUN_006eef60();
          piVar12[0x11d] =
               (int)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630);
          uVar13 = FUN_006eef60();
          local_c4 = 0;
          iStack_c0 = 0;
          _local_d4 = ZEXT816(0);
          iVar8 = uVar13 % 0xf + 0xf;
          local_bc = 0;
          piVar12[0x117] = iVar8;
          uStack_d8 = _UNK_00babd0c;
          uStack_dc = _UNK_00babd08;
          uStack_e0 = _UNK_00babd04;
          local_e4 = _DAT_00babd00;
          piVar12[0x118] = iVar8;
          (**(code **)(*piVar12 + 0x3c))(&local_e4,0xffffffff,0xff,0,1);
          fVar15 = DAT_00c37940;
          fVar16 = DAT_00c3793c * DAT_00baa630;
          piVar12[0xd5] = -600;
          fVar15 = fVar15 * DAT_00baa630;
          piVar12[0x39] = (int)fVar16;
          piVar12[0x3a] = (int)fVar15;
          local_11c = (int *)((int)local_11c + 1);
        } while ((int)local_11c < 10);
        iVar8 = 0;
        do {
          piVar12 = (int *)((float)iVar8 * DAT_00baa9b4 * DAT_00baa088);
          local_130 = piVar12;
          FUN_0041d520();
          local_118 = piVar12;
          FUN_0041d540();
          uVar11 = FUN_006eef60();
          piVar12 = (int *)FUN_006fe410(1000,0xbb,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar11,0);
          piVar12[0xcd] = (int)local_130;
          piVar12[0xce] = (int)local_118;
          (**(code **)(*piVar12 + 0xc))();
          iVar8 = iVar8 + 1;
        } while (iVar8 < 4);
        local_e4 = _DAT_00bac7b0;
        uStack_e0 = _UNK_00bac7b4;
        uStack_dc = _UNK_00bac7b8;
        uStack_d8 = _UNK_00bac7bc;
        local_c4 = 0;
        _local_d4 = ZEXT816(0);
        iStack_c0 = 0;
        local_bc = 0;
        FUN_006b6550(param_1 + 0xcf,&local_e4);
        iVar8 = DAT_00c71678;
        *(undefined4 *)(DAT_00c71678 + 0x2652c) = 6;
        *(undefined4 *)(iVar8 + 0x26528) = 6;
        *(undefined4 *)(iVar8 + 0x26530) = 0x3f800000;
        fVar15 = (float)param_1[0xdb];
      }
      param_1[0xdb] = (int)(fVar15 * DAT_00baa304);
    }
    else {
      FUN_0040a380(&DAT_00b1de04,0);
      if ((param_1[0xb] == 4) && (cVar7 = FUN_00417430(0x1000a00,0), cVar7 == '\0')) {
        if (param_1[0x3c7] == -1) {
          cVar7 = FUN_006ac710(3,param_1[8]);
          if ((cVar7 == '\0') ||
             ((cVar7 = FUN_00417430(0x20000000,0), cVar7 != '\0' &&
              (iVar8 = FUN_006be840(), *(int *)(iVar8 + 0x28) == 1)))) goto LAB_0050fd83;
          iVar8 = FUN_006be840();
          local_134 = *(int **)(iVar8 + 0x33c);
          local_11c = *(int **)(iVar8 + 0x340);
          iVar8 = FUN_006be840();
          local_130 = *(int **)(iVar8 + 0x360);
          local_118 = *(int **)(iVar8 + 0x364);
          iVar8 = FUN_006eef60();
          fVar15 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa85c;
          local_124 = (float)local_134 + (float)local_130 * fVar15;
          local_120 = (float)local_11c + (float)local_118 * fVar15;
          FUN_00812f50(&local_130,&local_124,0x41a00000,0x41a00000,0x41a00000);
          fVar16 = (float)param_1[0xcf] - (float)local_130;
          fVar15 = (float)param_1[0xd0] - local_12c;
          if ((DAT_00baa87c <= (float)((uint)fVar16 & DAT_00bacb40)) &&
             (DAT_00baa87c <= (float)((uint)fVar15 & DAT_00bacb40))) goto LAB_0050fd83;
          fVar15 = fVar15 * fVar15 + fVar16 * fVar16;
          FUN_00435a50();
          if ((DAT_00baaa94 <= fVar15) ||
             (cVar7 = FUN_007f0df0(param_1 + 0xcf,&local_130,3,999,0,0,0), cVar7 == '\0'))
          goto LAB_0050fd83;
        }
        else {
          cVar7 = FUN_006cae60(0,7);
          if (cVar7 == '\0') goto LAB_0050fd83;
          FUN_006d9050(1);
        }
        param_1[0x2d9] = 8;
        FUN_0040a380("Attack",0);
      }
    }
    goto LAB_0050fd83;
  }
  if (param_1[0x1f] == 0) {
LAB_0050f798:
    param_1[0x2d9] = 4;
  }
  else {
    cVar7 = FUN_0040add0("Shoot");
    if ((cVar7 != '\0') && (param_1[0xb] == 4)) {
      iVar8 = FUN_006be840();
      local_12c = *(float *)(iVar8 + 0x340) - (float)param_1[0xd0];
      piVar12 = (int *)param_1[0x3c8];
      if (((NAN((float)piVar12) || NAN(DAT_00c7b640)) == ((float)piVar12 == DAT_00c7b640)) ||
         (local_130 = (int *)(*(float *)(iVar8 + 0x33c) - (float)param_1[0xcf]),
         (NAN((float)param_1[0x3c9]) || NAN(DAT_00c7b644)) ==
         ((float)param_1[0x3c9] == DAT_00c7b644))) {
        local_12c = (float)param_1[0x3c9];
        local_130 = piVar12;
      }
      AI_0043ef30();
      local_24 = 1;
      FUN_004071f0(&DAT_00c5c7d4);
      FUN_006d6ba0(0xf9,0x3f800000,2,0,0x3f800000);
      pfVar10 = (float *)FUN_00a10030(&local_124);
      local_130 = (int *)(*pfVar10 * DAT_00baa81c);
      local_12c = pfVar10[1] * DAT_00baa81c;
      FUN_006cb2e0(param_1 + 0xcf,&local_130,0,local_b8);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_0050f798;
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
LAB_0050fd83:
  if (((param_1[0x5a] & 0x200U) == 0) || (param_1[0x3c7] != -1)) {
    local_11c = DAT_00baa2b8;
    if (param_1[0xb] == 2) {
      local_11c = DAT_00baa280;
    }
    iVar8 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
    if ((iVar8 != 0) && ((param_1[0x5a] & 0x20000000U) == 0)) {
      local_11c = DAT_00baa1d4;
    }
    piVar12 = local_11c;
    if ((float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0) {
      piVar12 = (int *)((uint)local_11c ^ DAT_00bacb70);
    }
    if ((float)param_1[0xd9] <= 0.0 && (float)param_1[0xd9] != 0.0) {
      local_11c = (int *)((uint)local_11c ^ DAT_00bacb70);
    }
    piVar19 = local_11c;
    local_134 = piVar12;
    if (param_1[0x3c7] != -1) {
      piVar12 = (int *)((float)local_11c * (float)local_11c + (float)piVar12 * (float)piVar12);
      FUN_00435a50();
      local_130 = piVar12;
      pfVar10 = (float *)FUN_006d82d0(&local_124);
      piVar19 = (int *)((float)local_11c + (float)local_130 * DAT_00baa2d0 * pfVar10[1]);
      piVar12 = (int *)((float)local_134 + (float)local_130 * DAT_00baa2d0 * *pfVar10);
    }
    fVar15 = (float)param_1[0xdb];
    if (NAN(fVar15) == (fVar15 == 0.0)) {
      param_1[0xd8] = (int)(((float)piVar12 * (float)param_1[0xe7]) / fVar15 + (float)param_1[0xd8])
      ;
      param_1[0xd9] = (int)(((float)piVar19 * (float)param_1[0xe7]) / fVar15 + (float)param_1[0xd9])
      ;
    }
    if (((param_1[0x5a] & 0x1000800U) != 0) && (param_1[0x3c7] == -1)) {
      iVar8 = FUN_006be840();
      local_134 = (int *)((uint)(*(float *)(iVar8 + 0x33c) - (float)param_1[0xcf]) ^ DAT_00bacb70);
      local_11c = (int *)((uint)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70);
      fVar16 = (float)local_134 * (float)local_134 + (float)local_11c * (float)local_11c;
      FUN_00435a50();
      fVar15 = (DAT_00baaa00 - fVar16) * DAT_00baa08c;
      if (fVar15 <= 0.0) {
        fVar15 = 0.0;
      }
      if (DAT_00baa454 <= fVar15) {
        fVar15 = DAT_00baa454;
      }
      piVar12 = local_11c;
      piVar19 = local_134;
      if (0.0 < fVar16) {
        piVar12 = (int *)((fVar15 / fVar16) * (float)local_11c);
        piVar19 = (int *)((float)local_134 * (fVar15 / fVar16));
      }
      fVar15 = (float)param_1[0xdb];
      if (NAN(fVar15) == (fVar15 == 0.0)) {
        param_1[0xd8] =
             (int)(((float)piVar19 * (float)param_1[0xe7]) / fVar15 + (float)param_1[0xd8]);
        param_1[0xd9] =
             (int)(((float)piVar12 * (float)param_1[0xe7]) / fVar15 + (float)param_1[0xd9]);
      }
    }
  }
  else {
    FUN_007e6300(0);
  }
  if ((param_1[0x3c7] != -1) && (cVar7 = FUN_009561e0(9,param_1[0x3c7],param_1,0), cVar7 != '\0')) {
    local_e4 = 0;
    uStack_e0 = 0;
    uStack_dc = 0;
    uStack_d8 = 0;
    local_d4._4_4_ = DAT_00c7b644;
    local_d4._0_4_ = DAT_00c7b640;
    uStack_cc = DAT_00c7b640;
    uStack_c8 = DAT_00c7b644;
    local_c4 = 0;
    iStack_c0 = 0;
    (**(code **)(*param_1 + 0x24))(&local_e4);
  }
  iVar8 = param_1[0xb];
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if ((((iVar8 == 5) && ((param_1[0x5a] & 0x4000U) == 0)) &&
        (cVar7 = FUN_006fd350(), cVar7 == '\0')) &&
       ((int)(((float)param_1[0xe8] + 0.0) / DAT_00baadc0) !=
        (int)(((float)param_1[0xe9] + 0.0) / DAT_00baadc0))) {
      uVar11 = FUN_006eef60();
      iVar8 = FUN_006eef60();
      fVar15 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_134 = (int *)(fVar15 + fVar15);
      iVar8 = FUN_006eef60();
      local_128 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4;
      piVar12 = local_134;
      FUN_0041d540();
      local_130 = (int *)((float)piVar12 * local_128);
      piVar12 = local_134;
      FUN_0041d520();
      local_124 = (float)local_130 + (float)local_130;
      local_120 = (float)piVar12 * local_128 + (float)piVar12 * local_128;
      piVar12 = (int *)FUN_006fe410(1000,0x8d,param_1 + 0xcf,&local_124,param_1,0,uVar11,0);
      piVar12[0x117] = 0x5a;
      piVar12[0x118] = 0x5a;
      fVar15 = DAT_00c37940 * DAT_00baa354;
      piVar12[0x39] = (int)(DAT_00c3793c * DAT_00baa354);
      piVar12[0x3a] = (int)fVar15;
      (**(code **)(*piVar12 + 0xc))();
    }
  }
  else if (iVar8 == 0) {
    if ((param_1[0x5a] & 0x1000000U) == 0) {
      FUN_00700060(param_1 + 0xcf,0x42200000,0,0,0,0,param_1 + 0x6e,param_1,0x3f800000,1,4,0,0);
      FUN_00aef12b();
      return;
    }
  }
  else if (iVar8 == 2) {
    if ((param_1[0x5a] & 0x1000000U) == 0) {
      ppiVar1 = (int **)(param_1 + 0xcf);
      FUN_00700060(ppiVar1,0x42200000,0,0,0,0,param_1 + 0x6e,param_1,0x3f800000,1,4,0,0);
      uVar11 = AI_0043ef30();
      local_124 = DAT_00baa81c;
      if ((*(int *)(DAT_00c71678 + 0x269c8) != 1) && (*(int *)(DAT_00c71678 + 0x269c8) != 3)) {
        local_124 = DAT_00baa7e8;
      }
      local_120 = 0.0;
      FUN_006cb2e0(ppiVar1,&local_124,6,uVar11);
      uVar13 = FUN_006eef60();
      if (uVar13 % 3 == 0) {
        local_130 = *ppiVar1;
        local_12c = (float)param_1[0xd0];
        iVar8 = FUN_007f0780(local_130,local_12c);
        if (iVar8 == 0) {
          uVar11 = FUN_006eef60();
          piVar12 = (int *)FUN_006fe410(0x17,1,ppiVar1,&DAT_00c7b640,param_1,0,uVar11,0);
          (**(code **)(*piVar12 + 0xc))();
          fVar15 = (float)piVar12[0xe1] * DAT_00baa2d0;
          piVar12[0xe1] = (int)fVar15;
          piVar12[0xe0] = (int)fVar15;
          FUN_00aef12b();
          return;
        }
      }
    }
  }
  else if (iVar8 == 3) {
    if ((param_1[0x5a] & 0x1000000U) == 0) {
      AI_0043ef30();
      local_e4 = _DAT_00bac7b0;
      uStack_e0 = _UNK_00bac7b4;
      uStack_dc = _UNK_00bac7b8;
      uStack_d8 = _UNK_00bac7bc;
      local_a4 = 0x40000000;
      _local_d4 = ZEXT816(0);
      local_ac = 0x3f800000;
      local_b0 = 0;
      local_c4 = 0x3f800000;
      iStack_c0 = 0x3e99999a;
      local_bc = 0;
      FUN_004071f0(&local_e4);
      uVar13 = 8;
      if (param_1[0xc] != 0) {
        uVar13 = 0x10;
      }
      local_5c = local_5c | uVar13;
      FUN_006cb2e0(param_1 + 0xcf,&DAT_00c7b640,0,local_b8);
      FUN_00aef12b();
      return;
    }
  }
  else {
    if (iVar8 == 4) {
      FUN_006eef60();
      iVar8 = FUN_006be840();
      local_124 = *(float *)(iVar8 + 0x33c) - (float)param_1[0xcf];
      local_120 = *(float *)(iVar8 + 0x340) - (float)param_1[0xd0];
      uVar11 = FUN_0067f260();
      switch(uVar11) {
      case 0:
        local_128 = DAT_00baa708;
        break;
      case 1:
        local_128 = DAT_00baad60;
        break;
      case 2:
        break;
      case 3:
        local_128 = DAT_00baa54c;
        break;
      default:
        iVar8 = FUN_006eef60();
        local_128 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa708;
      }
      AI_0043ef30();
      local_24 = 1;
      local_a0 = local_128;
      FUN_004071f0(&DAT_00c5c7d4);
      iVar8 = FUN_006d8240();
      local_124 = DAT_00baa804;
      if (0 < iVar8) {
        local_124 = DAT_00baa81c;
      }
      local_120 = 3.0;
      FUN_006cb2e0(param_1 + 0xcf,&local_124,9,local_b8);
      FUN_00aef12b();
      return;
    }
    if (iVar8 == 5) {
      cVar7 = FUN_00417430(0x1000000,0);
      if (cVar7 == '\0') {
        local_c4 = 0;
        iStack_c0 = 0;
        local_e4 = _DAT_00bac7b0;
        uStack_e0 = _UNK_00bac7b4;
        uStack_dc = _UNK_00bac7b8;
        uStack_d8 = _UNK_00bac7bc;
        local_bc = 0;
        local_d4._4_4_ = _UNK_00babbc4;
        local_d4._0_4_ = _DAT_00babbc0;
        uStack_cc = _UNK_00babbc8;
        uStack_c8 = _UNK_00babbcc;
        FUN_00700060(param_1 + 0xcf,0x42200000,0,0,0,0,&local_e4,param_1,0x3f800000,1,4,0,0);
        if (param_1[0xd] != 0x38e) {
          AI_0043ef30();
          FUN_004071f0(&DAT_00c34ed8);
          local_124 = 10.0;
          local_120 = 6.0;
          FUN_006cb2e0(param_1 + 0xcf,&local_124,9,local_b8);
        }
        uVar13 = 0;
        do {
          iVar8 = FUN_006eef60();
          local_134 = (int *)((((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baa85c - DAT_00baa7e8) +
                              (float)((double)uVar13 +
                                     (double)(&DAT_00bacb00)[-((int)uVar13 >> 0x1f)]) * DAT_00baa910
                              ) * DAT_00baa088);
          iVar8 = FUN_006eef60();
          local_128 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa83c;
          piVar12 = local_134;
          FUN_0041d540();
          local_124 = (float)piVar12 * local_128;
          piVar12 = local_134;
          FUN_0041d520();
          local_120 = (float)piVar12 * local_128;
          uVar11 = FUN_006eef60();
          piVar12 = (int *)FUN_006fe410(1000,0x8d,param_1 + 0xcf,&local_124,param_1,0,uVar11,0);
          iVar8 = 0x96;
          if (param_1[0xd] != 0x38e) {
            iVar8 = 300;
          }
          piVar12[0x117] = iVar8;
          piVar12[0x118] = iVar8;
          (**(code **)(*piVar12 + 0xc))();
          uVar13 = uVar13 + 1;
        } while (uVar13 < 8);
        FUN_00aef12b();
        return;
      }
    }
    else if (iVar8 == 6) {
      cVar7 = FUN_00417430(0x1000000,0);
      if ((cVar7 == '\0') && (param_1[0x2d9] != 9)) {
        param_1[0x2d9] = 9;
        cVar7 = FUN_0040a5d0("Explode",1);
        if (cVar7 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        param_1[0x62] = 0;
        *(undefined *)((int)param_1 + 0x173) = 0;
        FUN_006ae630();
        *(undefined *)(param_1 + 0xec) = 1;
        local_134 = (int *)0x0;
        do {
          FUN_0067f1d0();
          uVar11 = FUN_006eef60();
          local_124 = (float)param_1[0xcf] + DAT_00ba9fe4;
          local_120 = (float)param_1[0xd0] - DAT_00baa8d0;
          piVar12 = (int *)FUN_006fe410(1000,0xc6,&local_124,&DAT_00c7b640,0,0,uVar11,0);
          if (piVar12[0xef] != 0) {
            local_130 = piVar12 + 0xef;
            FUN_004cf210(&local_130);
          }
          piVar12[0xef] = (int)param_1;
          FUN_004cdcf0(piVar12 + 0xef);
          local_c4 = 0;
          iStack_c0 = 0;
          local_bc = 0;
          fVar15 = (float)param_1[0xcf];
          fVar16 = (float)param_1[0xd0];
          *(undefined *)(piVar12 + 0x119) = 1;
          piVar12[0x11a] = (int)((float)piVar12[0xcf] - fVar15);
          iVar3 = _UNK_00bac14c;
          iVar6 = _UNK_00bac148;
          iVar5 = _UNK_00bac144;
          iVar8 = _DAT_00bac140;
          piVar12[0x11b] = (int)((float)piVar12[0xd0] - fVar16);
          if (piVar12 + 0x3c != &local_e4) {
            *(undefined (*) [16])(piVar12 + 0x40) = ZEXT816(0);
            *(undefined8 *)(piVar12 + 0x44) = 0;
            piVar12[0x3c] = iVar8;
            piVar12[0x3d] = iVar5;
            piVar12[0x3e] = iVar6;
            piVar12[0x3f] = iVar3;
            piVar12[0x46] = 0;
          }
          piVar12[0xcd] = (int)local_118;
          piVar12[0xce] = local_114;
          piVar12[0x117] = 0x19;
          piVar12[0x118] = 0x19;
          (**(code **)(*piVar12 + 0xc))();
          local_134 = (int *)((int)local_134 + 1);
        } while ((int)local_134 < 4);
        FUN_00aef12b();
        return;
      }
    }
    else {
      cVar7 = FUN_00417430(0x1000000,0);
      if (cVar7 == '\0') {
        AI_0043ef30();
        iVar8 = FUN_006d8240();
        local_124 = DAT_00baa7e8;
        if (0 < iVar8) {
          local_124 = DAT_00baa81c;
        }
        local_120 = 6.0;
        FUN_006cb2e0(param_1 + 0xcf,&local_124,9,extraout_ECX);
        FUN_00aef12b();
        return;
      }
    }
  }
  FUN_00aef12b();
  return;
}

