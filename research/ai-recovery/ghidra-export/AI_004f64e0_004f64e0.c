/* Local J460 decompiler output.
 * VA: 0x004f64e0
 * Entry: 004f64e0
 * Dispatcher: 0x006c2990
 * Types: 892
 * Identities: 892.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004f76f0; instructions=1000
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=892; identities=892.0.0; dispatcher=0x006c2990;
   end=0x004f76f0; instructions=1000 */

void __fastcall AI_004f64e0(int param_1)

{
  byte bVar1;
  byte **ppbVar2;
  code *pcVar3;
  float fVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  byte **ppbVar8;
  uint uVar9;
  undefined4 uVar10;
  int *piVar11;
  float *pfVar12;
  int iVar13;
  byte *pbVar14;
  int extraout_EDX;
  undefined4 extraout_EDX_00;
  uint *puVar15;
  int iVar16;
  int iVar17;
  bool bVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  char local_160 [4];
  int local_15c;
  byte *local_154;
  float local_150;
  float local_14c;
  float local_148;
  float local_144;
  float local_140;
  float local_13c;
  float local_138;
  float local_134;
  float local_130;
  float local_12c;
  float local_128;
  float local_124;
  float local_120;
  float local_11c;
  int *local_118;
  float local_114;
  float local_110;
  float local_10c;
  char local_105;
  float local_104;
  char local_fd;
  byte *local_fc;
  undefined local_f8 [24];
  undefined4 local_e0;
  undefined local_50 [8];
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar4 = DAT_00baa75c;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3f90;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  fVar21 = *(float *)(param_1 + 3000);
  fVar22 = *(float *)(param_1 + 0x14);
  local_12c = DAT_00baa454;
  *(float *)(param_1 + 0xbb4) =
       (fVar21 * DAT_00baa2d0 + DAT_00baa454) * fVar22 + *(float *)(param_1 + 0xbb4);
  fVar20 = DAT_00baa06c;
  if ((0.0 < fVar22) && (fVar21 < fVar4)) {
    fVar19 = fVar22 / DAT_00baa81c;
    *(float *)(param_1 + 0x14) = fVar22 * DAT_00baa06c;
    *(float *)(param_1 + 0xbbc) = fVar19 + *(float *)(param_1 + 0xbbc);
    local_104 = *(float *)(param_1 + 8);
    iVar13 = *(int *)(param_1 + 0xc) - (int)local_104;
    iVar16 = iVar13 >> 0x1f;
    if (iVar13 / 0x38 + iVar16 != iVar16) {
      iVar16 = 0;
      local_10c = 0.0;
      do {
        iVar16 = iVar16 + 0x38;
        local_10c = (float)((int)local_10c + 1);
        *(float *)((int)local_104 + -0x38 + iVar16) =
             *(float *)((int)local_104 + -0x38 + iVar16) * fVar20;
      } while ((uint)local_10c < (uint)((*(int *)(param_1 + 0xc) - (int)local_104) / 0x38));
      fVar21 = *(float *)(param_1 + 3000);
    }
  }
  fVar22 = *(float *)(param_1 + 0xbbc);
  fVar20 = fVar21;
  if (fVar21 <= 0.0) {
    fVar20 = 0.0;
  }
  if (fVar4 <= fVar20) {
    fVar20 = fVar4;
  }
  if (fVar21 < fVar22) {
    fVar19 = *(float *)(param_1 + 0x39c) / DAT_00baa834;
    if (fVar19 < (float)((uint)(fVar21 - fVar22) & DAT_00bacb40)) {
      fVar22 = fVar21 + fVar19;
    }
    if (fVar22 <= 0.0) {
      fVar22 = 0.0;
    }
    fVar21 = fVar22;
    if (fVar4 <= fVar22) {
      fVar21 = fVar4;
    }
    *(float *)(param_1 + 3000) = fVar21;
  }
  if (fVar21 <= 0.0) {
    fVar21 = 0.0;
  }
  if (fVar4 <= fVar21) {
    fVar21 = fVar4;
  }
  iVar16 = (int)fVar21;
  local_24 = uVar7;
  puVar5 = &stack0xfffffffc;
  if ((int)fVar20 < iVar16) {
    puVar5 = &stack0xfffffffc;
    if ((*(int *)(param_1 + 0xb64) == 8) &&
       ((*(int *)(param_1 + 0x7c) == 0 ||
        (puVar5 = &stack0xfffffffc, *(char *)(*(int *)(param_1 + 0x7c) + 0x34) == '\0')))) {
      FUN_0040a5d0((&PTR_s_Attack0_00b60adc)[iVar16],0);
      puVar5 = puStack_20;
    }
    puStack_20 = puVar5;
    local_110 = (float)((uint)DAT_00c37940 ^ DAT_00bacb70);
    local_114 = (float)((uint)DAT_00c3793c ^ DAT_00bacb70);
    FUN_006ac2a0(((float)iVar16 * DAT_00baa198 + DAT_00baa454) *
                 *(float *)(*(int *)(param_1 + 0x330) + 0x38),local_114,local_110,0xffffffff);
    puVar5 = puStack_20;
  }
  puStack_20 = puVar5;
  fVar21 = DAT_00baa198;
  if (0.0 < *(float *)(param_1 + 0xbb0)) {
    local_10c = 0.0;
    local_104 = *(float *)(param_1 + 0xbb0) - *(float *)(param_1 + 0x39c) / DAT_00baa950;
    pfVar12 = &local_104;
    if (local_104 <= 0.0) {
      pfVar12 = &local_10c;
    }
    *(float *)(param_1 + 0xbb0) = *pfVar12;
  }
  if (0.0 < *(float *)(param_1 + 0xbb4)) {
    *(float *)(param_1 + 0xbb4) =
         *(float *)(param_1 + 3000) * fVar21 * *(float *)(param_1 + 0x39c) +
         *(float *)(param_1 + 0xbb4);
  }
  iVar13 = *(int *)(param_1 + 0xb64);
  if (iVar13 != 0) {
    if (iVar13 == 3) {
      local_fc = (&PTR_DAT_00b60ac8)[iVar16];
      ppbVar2 = *(byte ***)(param_1 + 0x7c);
      if (ppbVar2 == (byte **)0x0) {
LAB_004f6be6:
        cVar6 = FUN_0040a5d0(local_fc,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar2;
        pbVar14 = local_fc;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar8 = (byte **)*ppbVar2;
        }
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar18 = bVar1 < *pbVar14;
          if (bVar1 != *pbVar14) {
LAB_004f6bc1:
            uVar9 = -(uint)bVar18 | 1;
            goto LAB_004f6bc6;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar18 = bVar1 < pbVar14[1];
          if (bVar1 != pbVar14[1]) goto LAB_004f6bc1;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar14 = pbVar14 + 2;
        } while (bVar1 != 0);
        uVar9 = 0;
LAB_004f6bc6:
        if ((uVar9 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0')))
           ) goto LAB_004f6be6;
      }
      if (DAT_00baa87c < *(float *)(param_1 + 0xbb4)) {
        *(undefined4 *)(param_1 + 0xbb4) = 0;
        *(undefined4 *)(param_1 + 0xb64) = 8;
      }
      goto LAB_004f68f5;
    }
    if (iVar13 != 8) goto LAB_004f68f5;
    local_fc = (&PTR_s_Attack0_00b60adc)[iVar16];
    ppbVar2 = *(byte ***)(param_1 + 0x7c);
    if (ppbVar2 == (byte **)0x0) {
LAB_004f683d:
      cVar6 = FUN_0040a5d0(local_fc,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar2;
      pbVar14 = local_fc;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar18 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004f6818:
          uVar9 = -(uint)bVar18 | 1;
          goto LAB_004f681d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar18 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004f6818;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar9 = 0;
LAB_004f681d:
      if ((uVar9 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x8c) == '\0'))))
      goto LAB_004f683d;
    }
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
        AI_0043ef30();
        local_e0 = 0;
        local_114 = 10.0;
        local_110 = 6.0;
        FUN_006cb2e0(param_1 + 0x33c,&local_114,9,local_f8);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_004f68f5;
    }
  }
  *(undefined4 *)(param_1 + 0xb64) = 3;
LAB_004f68f5:
  *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
  FUN_006bec40(&local_134,0);
  iVar16 = FUN_006be840(uVar7);
  if ((iVar16 != 0) && (*(int *)(iVar16 + 0x28) == 1)) {
    local_114 = *(float *)(iVar16 + 0x1630) * DAT_00baa9a0 + local_134;
    local_110 = local_130 + *(float *)(iVar16 + 0x1634) * DAT_00baa9a0;
    FUN_00812f50(&local_128,&local_114,0,0,0);
    local_134 = local_128;
    local_130 = local_124;
    FUN_007e33c0(&local_134,0x3ecccccd,0,1);
  }
  if ((*(char *)(param_1 + 0x173) != '\0') && ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0)) {
    local_fc = (byte *)0x8d;
    FUN_00956780();
    FUN_0092dc30(local_fc,0x3f800000,2,0,0x3fc00000,0);
    iVar16 = param_1 + 0x33c;
    FUN_00704360(iVar16,0x42f00000,param_1,0,0);
    FUN_00703670(8);
    uVar10 = FUN_00407170();
    FUN_006b66c0(iVar16,uVar10);
    local_40 = ZEXT816(0);
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_50._4_4_ = _UNK_00babba4;
    local_50._0_4_ = _DAT_00babba0;
    uStack_48 = _UNK_00babba8;
    uStack_44 = _UNK_00babbac;
    FUN_006b6830(iVar16,local_50);
    uVar10 = FUN_006eef60();
    iVar16 = FUN_00428b20(1000,0x16,iVar16,&DAT_00c7b640,param_1,0,uVar10);
    fVar21 = DAT_00c37940;
    fVar22 = DAT_00c3793c * DAT_00baa6c8;
    *(undefined4 *)(iVar16 + 0x45c) = 0x5a;
    fVar21 = fVar21 * DAT_00baa6c8;
    *(undefined4 *)(iVar16 + 0x460) = 0x5a;
    *(float *)(iVar16 + 0xe4) = fVar22;
    *(float *)(iVar16 + 0xe8) = fVar21;
    iVar16 = FUN_006eef60();
    local_10c = 8.407791e-45;
    local_118 = (int *)((float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                        DAT_00ba9ff4 * DAT_00baab30);
    do {
      fVar21 = (float)local_118 * DAT_00baa088;
      local_fc = (byte *)fVar21;
      FUN_0041d520();
      local_104 = fVar21;
      fVar21 = (float)local_fc;
      FUN_0041d540();
      local_114 = fVar21 * DAT_00baa868;
      local_110 = local_104 * DAT_00baa868;
      uVar10 = FUN_006eef60();
      piVar11 = (int *)FUN_00428b20(1000,2,param_1 + 0x33c,&local_114,0,3,uVar10);
      (**(code **)(*piVar11 + 0x3c))(param_1 + 0x1e4,0xffffffff,0xff,0,1);
      piVar11[0x37] = 0;
      piVar11[0x38] = -0x3e900000;
      piVar11[0xd6] = 0x41200000;
      fVar21 = (float)local_fc;
      FUN_0041d520();
      local_104 = fVar21;
      fVar21 = (float)local_fc;
      FUN_0041d540();
      local_120 = fVar21;
      iVar16 = 0;
      do {
        local_11c = (float)iVar16 * DAT_00baa924 + DAT_00baa924;
        local_fc = (byte *)(local_11c * local_120);
        local_11c = local_104 * local_11c;
        uVar10 = FUN_006eef60();
        local_128 = (float)local_fc + *(float *)(param_1 + 0x33c);
        local_124 = local_11c + *(float *)(param_1 + 0x340);
        iVar13 = FUN_00428b20(1000,0x16,&local_128,&DAT_00c7b640,param_1,0,uVar10);
        iVar17 = iVar16 + 1;
        fVar21 = DAT_00baa630 - (float)iVar16 * DAT_00baa2d0;
        fVar22 = fVar21 * DAT_00c37940;
        fVar21 = fVar21 * DAT_00c3793c;
        *(undefined4 *)(iVar13 + 0x45c) = 0x5a;
        *(float *)(iVar13 + 0xe8) = fVar22;
        *(undefined4 *)(iVar13 + 0x460) = 0x5a;
        *(float *)(iVar13 + 0xe4) = fVar21;
        iVar16 = iVar17;
      } while (iVar17 < 2);
      local_10c = (float)((int)local_10c - 1);
      local_118 = (int *)((float)local_118 + DAT_00baa950);
    } while (local_10c != 0.0);
    uVar7 = FUN_006eef60();
    fVar21 = *(float *)(param_1 + 0x200);
    local_104 = (float)(uVar7 % 5 + 5);
    local_144 = *(float *)(param_1 + 0x1f0);
    local_148 = *(float *)(param_1 + 0x1e4) * _DAT_00baa30c;
    local_124 = *(float *)(param_1 + 0x1e8) * _DAT_00baa0c0;
    local_110 = *(float *)(param_1 + 0x1ec) * _DAT_00baa0d8;
    if ((NAN(fVar21) || NAN(DAT_00ba9fe4)) == (fVar21 == DAT_00ba9fe4)) {
      fVar22 = local_124 * _DAT_00baa374 + local_148 * _DAT_00baa1b4 + local_110 * _DAT_00baa0f8;
      local_148 = local_148 + (fVar22 * *(float *)(param_1 + 500) - local_148) * fVar21;
      local_124 = local_124 + (fVar22 * *(float *)(param_1 + 0x1f8) - local_124) * fVar21;
      local_110 = local_110 + (fVar22 * *(float *)(param_1 + 0x1fc) - local_110) * fVar21;
    }
    local_110 = local_110 + *(float *)(param_1 + 0x20c);
    local_124 = local_124 + *(float *)(param_1 + 0x208);
    local_148 = local_148 + *(float *)(param_1 + 0x204);
    for (; local_104 != 0.0; local_104 = (float)((int)local_104 + -1)) {
      iVar16 = FUN_006eef60();
      local_120 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa704;
      local_120 = local_120 + local_120;
      fVar21 = local_120;
      FUN_0041d520();
      local_11c = fVar21;
      iVar16 = FUN_006eef60();
      local_fc = (byte *)((float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa81c);
      fVar21 = local_120;
      FUN_0041d540();
      local_150 = fVar21 * (float)local_fc;
      local_14c = (float)local_fc * local_11c;
      local_140 = local_150;
      local_fc = (byte *)local_14c;
      uVar10 = FUN_006eef60();
      iVar16 = FUN_006eef60();
      local_120 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa704;
      local_120 = local_120 + local_120;
      fVar21 = local_120;
      FUN_0041d520();
      local_10c = fVar21;
      iVar16 = FUN_006eef60();
      local_11c = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa87c;
      fVar21 = local_120;
      FUN_0041d540();
      local_13c = fVar21 * local_11c + *(float *)(param_1 + 0x33c);
      local_138 = local_10c * local_11c + *(float *)(param_1 + 0x340);
      piVar11 = (int *)FUN_00428b20(1000,0x3b,&local_13c,&local_150,param_1,0,uVar10);
      local_10c = DAT_00baa454;
      if ((float)((uint)local_140 ^ DAT_00bacb70) *
          ((float)piVar11[0xd0] - *(float *)(param_1 + 0x340)) +
          ((float)piVar11[0xcf] - *(float *)(param_1 + 0x33c)) * (float)local_fc < 0.0) {
        local_10c = DAT_00baad50;
      }
      local_118 = piVar11;
      iVar16 = FUN_006eef60();
      piVar11[0x11d] =
           (int)(((float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * local_10c);
      uVar7 = FUN_006eef60();
      iVar16 = uVar7 % 0xf + 0xf;
      piVar11[0x117] = iVar16;
      piVar11[0x118] = iVar16;
      pcVar3 = *(code **)(*piVar11 + 0x3c);
      iVar16 = FUN_006eef60();
      local_30 = 0;
      local_2c = 0;
      local_28 = 0;
      local_40 = ZEXT816(0);
      local_50._4_4_ = local_124;
      local_50._0_4_ = local_148;
      uStack_48 = local_110;
      uStack_44 = ((float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa1d4 + DAT_00baa120) * local_144;
      (*pcVar3)(local_50,0xffffffff,0xff,0,1);
      (**(code **)(*local_118 + 0xc))();
    }
    local_30 = 0;
    local_2c = 0;
    local_40 = ZEXT816(0);
    local_28 = 0;
    local_50._4_4_ = _UNK_00babfb4;
    local_50._0_4_ = _DAT_00babfb0;
    uStack_48 = _UNK_00babfb8;
    uStack_44 = _UNK_00babfbc;
    FUN_00700060(param_1 + 0x33c,0x40800000,0,0,0,0,local_50,param_1,0x3f800000,1,4,0,0);
    local_fd = '\0';
    FUN_0041a790(local_160,param_1 + 0x33c,0x28);
    local_14 = 0;
    local_fc = (byte *)0x0;
    if (local_154 != (byte *)0x0) {
      do {
        piVar11 = *(int **)(local_15c + (int)local_fc * 4);
        if ((1 < *(int *)(DAT_00c71678 + 0x26614)) && (piVar11[10] == 1)) {
          iVar16 = 1;
          goto LAB_004f73bb;
        }
        iVar16 = piVar11[10];
        if ((((iVar16 - 10U < 0x3de) && (iVar16 != 0x21)) && (iVar16 != 0x11)) && (iVar16 != 0x124))
        {
          if (iVar16 != 0x375) {
            if (((iVar16 != 0x3c0) && (iVar16 != 0x3c5)) && (iVar16 != 0xf5)) goto LAB_004f73bb;
            goto LAB_004f7533;
          }
          if (piVar11[0xb] != 10) {
LAB_004f73bb:
            if (*(char *)((int)piVar11 + 0x173) == '\0') {
              local_105 = (piVar11[0x5a] & 0x20000000U) != 0;
              cVar6 = FUN_004567b0();
              iVar16 = extraout_EDX;
              if (local_105 == cVar6) {
                local_50._4_4_ = _UNK_00babfb4;
                local_50._0_4_ = _DAT_00babfb0;
                uStack_48 = _UNK_00babfb8;
                uStack_44 = _UNK_00babfbc;
                local_30 = 0x3f800000;
                local_40 = ZEXT816(0);
                local_2c = 0;
                local_28 = 0;
                (**(code **)(*piVar11 + 0x3c))(local_50,8,0xff,1,1);
                local_124 = (float)piVar11[0xe1] + (float)piVar11[0xe1];
                local_110 = (float)piVar11[0xe0] + DAT_00baa854;
                pfVar12 = &local_110;
                if (local_124 <= (float)piVar11[0xe0] + DAT_00baa854) {
                  pfVar12 = &local_124;
                }
                piVar11[0xe0] = (int)*pfVar12;
                uVar10 = FUN_006eef60();
                piVar11 = (int *)FUN_00428b20(1000,0x31,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar10);
                FUN_006b6af0(&local_13c,"OverlayEffect");
                if (((NAN(local_13c) || NAN(DAT_00c7b640)) == (local_13c == DAT_00c7b640)) ||
                   ((NAN(local_138) || NAN(DAT_00c7b644)) == (local_138 == DAT_00c7b644))) {
                  piVar11[0xd3] = (int)local_13c;
                  piVar11[0xd4] = (int)local_138;
                }
                else {
                  piVar11[0xd3] = 0;
                  piVar11[0xd4] = -0x3e400000;
                }
                piVar11[0xd6] = 0x3f800000;
                (**(code **)(*piVar11 + 0xc))();
                local_fd = '\x01';
                goto LAB_004f75f2;
              }
            }
            goto LAB_004f7533;
          }
        }
        else {
LAB_004f7533:
          if ((iVar16 == 1) && (cVar6 = FUN_004567b0(), cVar6 != '\0')) {
            local_50._4_4_ = _UNK_00babfb4;
            local_50._0_4_ = _DAT_00babfb0;
            uStack_48 = _UNK_00babfb8;
            uStack_44 = _UNK_00babfbc;
            local_30 = 0x3f800000;
            local_40 = ZEXT816(0);
            local_2c = 0;
            local_28 = 0;
            (**(code **)(*piVar11 + 0x3c))(local_50,8,0xff,extraout_EDX_00,extraout_EDX_00);
            FUN_00758a70(2,0,0);
            uVar10 = FUN_006eef60();
            piVar11 = (int *)FUN_00428b20(1000,0x31,param_1 + 0x33c,&DAT_00c7b640,0,0,uVar10);
            piVar11[0x37] = 0;
            piVar11[0x38] = -0x3e400000;
            (**(code **)(*piVar11 + 0xc))();
            local_fd = '\x01';
          }
        }
LAB_004f75f2:
        local_fc = local_fc + 1;
      } while (local_fc < local_154);
      if (local_fd != '\0') {
        fVar21 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (fVar21 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_12c = fVar21;
        }
        local_104 = 2.200039e-43;
        FUN_00956780();
        FUN_0092dc30(local_104,0x3f800000,2,0,local_12c,0);
      }
    }
    if (local_160[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar15 = &DAT_00c7f618;
      }
      else {
        puVar15 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_15c != 0) {
        uVar9 = *(uint *)(local_15c + -4);
        uVar7 = *puVar15;
        *puVar15 = *puVar15 - uVar9;
        puVar15[1] = puVar15[1] - (uint)(uVar7 < uVar9);
        free((void *)(local_15c + -4));
      }
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

