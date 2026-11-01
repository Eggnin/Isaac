/* Local J460 decompiler output.
 * VA: 0x00573030
 * Entry: 00573030
 * Dispatcher: 0x006c2990
 * Types: 921
 * Identities: 921.0.0,921.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00575a10; instructions=2411
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=921; identities=921.0.0,921.1.0; dispatcher=0x006c2990;
   end=0x00575a10; instructions=2411 */

void __fastcall AI_00573030(int *param_1)

{
  byte bVar1;
  int **ppiVar2;
  float *pfVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  char cVar7;
  int *piVar8;
  byte **ppbVar9;
  int ***pppiVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  float *pfVar14;
  int **ppiVar15;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int extraout_ECX_02;
  char *pcVar16;
  float fVar17;
  int *extraout_EDX;
  uint uVar18;
  int iVar19;
  int ***pppiVar20;
  int iVar21;
  bool bVar22;
  float fVar23;
  float fVar24;
  undefined8 uVar25;
  int iVar26;
  int iVar27;
  undefined local_1bc [40];
  float local_194;
  float local_190;
  float local_18c;
  float local_188;
  float local_184;
  uint local_180;
  float local_17c;
  float local_178;
  uint local_174;
  float local_170;
  float local_16c;
  float local_168;
  int **local_164;
  int *local_160;
  int *local_15c;
  int **local_158;
  int *local_154;
  int **local_150;
  int **local_14c;
  int **local_148;
  int **local_144;
  int *local_140;
  char local_13c [4];
  int local_138 [2];
  float local_130;
  char local_129;
  float local_128;
  int **local_124;
  undefined local_120 [24];
  undefined4 local_108;
  undefined4 local_8c;
  int local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined local_68 [16];
  undefined4 local_58;
  undefined4 uStack_54;
  int local_50;
  undefined local_4c [16];
  int local_3c [4];
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af510d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_128 = (float)param_1[0x2dd];
  local_160 = param_1;
  if (local_128 == 5.605194e-45) {
    FUN_004f83a0(param_1[0x30a]);
    if (param_1[0x30a] != 0) {
      iVar21 = param_1[0x304];
      iVar19 = param_1[0x301];
      iVar12 = param_1[0x30a] + param_1[0x309];
      iVar27 = param_1[0x306];
      iVar26 = param_1[0x309];
      iVar13 = param_1[0x306];
LAB_00575082:
      FUN_00575fe0(iVar13,0,iVar26,iVar27,0,iVar12,iVar19,0,iVar21);
    }
LAB_00575092:
    if (((param_1[0x2d9] == 8) || (param_1[0x2d9] == 9)) &&
       (((param_1[0x1f] != 0 && (cVar7 = FUN_0040ae70("Shoot"), cVar7 != '\0')) ||
        ((param_1[0x1f] != 0 && (*(char *)(param_1[0x1f] + 0x34) != '\0')))))) {
      local_129 = '\x01';
    }
    else {
      local_129 = '\0';
    }
    pfVar14 = (float *)FUN_006b6af0(&local_14c,"Trail");
    local_164 = (int **)((float)param_1[0xcf] + *pfVar14);
    local_158 = (int **)(pfVar14[1] + (float)param_1[0xd0]);
    if (local_129 == '\0') {
      fVar17 = ((float)param_1[0xe9] * DAT_00baa708) / DAT_00baa854;
      FUN_0041d520();
      local_148 = (int **)((float)local_158 + 0.0);
      local_14c = (int **)(fVar17 * DAT_00baa7a4 + (float)local_164);
      local_190 = DAT_00c7b640 + 0.0;
      local_18c = DAT_00c7b644 + DAT_00baa528;
    }
    else {
      local_124 = DAT_00baa54c;
      FUN_0041d540();
      ppiVar15 = DAT_00baa54c;
      FUN_0041d520();
      fVar17 = (float)param_1[0xe9] * DAT_00baa708 * DAT_00baa1d4;
      fVar24 = (float)param_1[0xd9] * (float)local_124;
      local_124 = (int **)((float)param_1[0xd8] * (float)local_124 -
                          (float)param_1[0xd9] * (float)ppiVar15);
      local_144 = (int **)(fVar24 + (float)param_1[0xd8] * (float)ppiVar15);
      FUN_0041d520();
      local_14c = (int **)((float)local_164 + (float)local_124 * fVar17);
      local_148 = (int **)((float)local_158 + (float)local_144 * fVar17);
      local_190 = (float)local_124 * DAT_00baa220 * fVar17 + DAT_00c7b640;
      local_18c = (float)local_144 * DAT_00baa220 * fVar17 + DAT_00c7b644;
    }
    local_164 = local_14c;
    local_158 = local_148;
    if (param_1[0x1f] == 0) {
      local_140 = (int *)0x0;
    }
    else {
      local_140 = (int *)FUN_0040ace0("Trail");
    }
    local_124 = DAT_00baa454;
    ppiVar15 = DAT_00baa454;
    if (local_128 == 2.802597e-45) {
      ppiVar15 = DAT_00baa2d0;
    }
    local_168 = (float)ppiVar15 * (float)param_1[0xe7];
    local_15c = (int *)param_1[0x304];
    piVar8 = (int *)param_1[0x301];
    while (ppiVar15 = DAT_00baa454, local_15c < (int *)(param_1[0x305] + param_1[0x304])) {
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      local_180 = (int)local_15c + 1U >> 1;
      local_154 = (int *)((int)local_15c + 1U & 1);
      iVar21 = *(int *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & local_180) * 4);
      fVar17 = *(float *)(iVar21 + 4 + (int)local_154 * 8);
      if (piVar8 == (int *)0x0) {
        iVar19 = 0;
      }
      else {
        iVar19 = *piVar8;
      }
      local_17c = (float)((uint)local_15c & 1);
      local_174 = (uint)local_15c >> 1;
      iVar19 = *(int *)(*(int *)(iVar19 + 4) + (*(int *)(iVar19 + 8) - 1U & local_174) * 4);
      *(float *)(iVar19 + (int)local_17c * 8) =
           local_168 * *(float *)(iVar21 + (int)local_154 * 8) +
           *(float *)(iVar19 + (int)local_17c * 8);
      *(float *)(iVar19 + 4 + (int)local_17c * 8) =
           local_168 * fVar17 + *(float *)(iVar19 + 4 + (int)local_17c * 8);
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      local_184 = *(float *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & local_180) * 4);
      if (piVar8 == (int *)0x0) {
        local_178 = 0.0;
      }
      else {
        local_178 = (float)*piVar8;
      }
      local_144 = (int **)((int)local_15c + 2U & 1);
      local_160 = (int *)((int)local_15c + 2U >> 1);
      local_16c = *(float *)(*(int *)(*(int *)((int)local_178 + 4) +
                                     (*(int *)((int)local_178 + 8) - 1U & (uint)local_160) * 4) +
                            (int)local_144 * 8) * DAT_00baa108 + DAT_00baa3e0;
      if ((NAN(local_168) || NAN((float)ppiVar15)) == (local_168 == (float)ppiVar15)) {
        local_16c = local_16c / ((local_16c + local_168) - local_16c * local_168);
      }
      local_188 = local_16c * *(float *)((int)local_184 + (int)local_154 * 8);
      local_16c = local_16c * *(float *)((int)local_184 + 4 + (int)local_154 * 8);
      iVar21 = FUN_006eef60();
      local_184 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa704;
      local_184 = local_184 + local_184;
      fVar17 = local_184;
      FUN_0041d520();
      local_194 = fVar17;
      iVar21 = FUN_006eef60();
      local_178 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                  DAT_00ba9ff4;
      fVar17 = local_184;
      FUN_0041d540();
      fVar24 = local_194 * local_178 * DAT_00baa1f8;
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      fVar23 = *(float *)(*(int *)(*(int *)(iVar21 + 4) +
                                  (*(int *)(iVar21 + 8) - 1U & (uint)local_160) * 4) +
                         (int)local_144 * 8);
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      iVar21 = *(int *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & local_180) * 4);
      *(float *)(iVar21 + (int)local_154 * 8) =
           local_188 + fVar23 * fVar17 * local_178 * DAT_00baa1f8 * local_168;
      *(float *)(iVar21 + 4 + (int)local_154 * 8) = local_16c + fVar23 * fVar24 * local_168;
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      local_188 = 0.0;
      local_16c = *(float *)(*(int *)(*(int *)(iVar21 + 4) +
                                     (*(int *)(iVar21 + 8) - 1U & (uint)local_160) * 4) +
                            (int)local_144 * 8) - local_168 * DAT_00baa108;
      pfVar14 = &local_16c;
      if (local_16c <= DAT_00ba9fe4) {
        pfVar14 = &local_188;
      }
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      *(float *)(*(int *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & (uint)local_160) * 4)
                + (int)local_144 * 8) = *pfVar14;
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      iVar21 = *(int *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & local_174) * 4);
      fVar17 = (float)local_158 - *(float *)(iVar21 + 4 + (int)local_17c * 8);
      fVar24 = (float)local_164 - *(float *)(iVar21 + (int)local_17c * 8);
      fVar17 = fVar17 * fVar17 + fVar24 * fVar24;
      FUN_00435a50();
      if (DAT_00baa904 < fVar17) {
        fVar24 = DAT_00baa904;
        fVar23 = DAT_00baa304;
        FUN_00684cb0();
        fVar24 = fVar23 * (fVar17 - fVar24) + fVar24;
        if (piVar8 == (int *)0x0) {
          iVar21 = 0;
        }
        else {
          iVar21 = *piVar8;
        }
        iVar21 = *(int *)(*(int *)(iVar21 + 4) + (*(int *)(iVar21 + 8) - 1U & local_174) * 4);
        fVar23 = *(float *)(iVar21 + 4 + (int)local_17c * 8);
        if (piVar8 == (int *)0x0) {
          iVar19 = 0;
        }
        else {
          iVar19 = *piVar8;
        }
        iVar19 = *(int *)(*(int *)(iVar19 + 4) + (*(int *)(iVar19 + 8) - 1U & local_174) * 4);
        *(float *)(iVar19 + (int)local_17c * 8) =
             (float)local_164 +
             ((*(float *)(iVar21 + (int)local_17c * 8) - (float)local_164) * fVar24) / fVar17;
        *(float *)(iVar19 + 4 + (int)local_17c * 8) =
             (float)local_158 + ((fVar23 - (float)local_158) * fVar24) / fVar17;
      }
      if (piVar8 == (int *)0x0) {
        iVar21 = 0;
      }
      else {
        iVar21 = *piVar8;
      }
      if ((0.0 < *(float *)(*(int *)(*(int *)(iVar21 + 4) +
                                    (*(int *)(iVar21 + 8) - 1U & (uint)local_160) * 4) +
                           (int)local_144 * 8)) || (local_128 == 2.802597e-45)) {
        local_15c = (int *)((int)local_15c + 3);
      }
      else {
        ppiVar15 = (int **)FUN_00498fd0(local_138,piVar8,0,local_15c,piVar8,0,(int)local_15c + 3);
        piVar8 = *ppiVar15;
        local_15c = ppiVar15[2];
      }
    }
    if ((local_128 != 2.802597e-45) &&
       ((param_1[0x305] == 0 ||
        (uVar18 = param_1[0x304] & 1,
        iVar21 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & (uint)param_1[0x304] >> 1) * 4),
        fVar17 = (float)local_158 - *(float *)(iVar21 + 4 + uVar18 * 8),
        fVar24 = (float)local_164 - *(float *)(iVar21 + uVar18 * 8),
        DAT_00baa7e8 < fVar17 * fVar17 + fVar24 * fVar24)))) {
      if (local_140 != (int *)0x0) {
        local_124 = (int **)local_140[4];
      }
      iVar21 = FUN_006eef60();
      local_16c = 0.0;
      local_170 = ((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa304) * (float)local_124;
      FUN_00499190(&local_170);
      FUN_00499190(&local_190);
      FUN_00499190(&local_14c);
    }
    if ((local_140 == (int *)0x0) || (*(char *)(local_140 + 3) == '\0')) {
      local_58 = 0;
      uStack_54 = 0;
      local_50 = 0;
      iVar21 = FUN_0040b220(2);
      uVar6 = _UNK_00bab05c;
      uVar5 = _UNK_00bab058;
      uVar11 = _UNK_00bab054;
      piVar8 = (int *)(iVar21 + 0x48);
      if (piVar8 != &local_78) {
        *piVar8 = _DAT_00bab050;
        *(undefined4 *)(iVar21 + 0x4c) = uVar11;
        *(undefined4 *)(iVar21 + 0x50) = uVar5;
        *(undefined4 *)(iVar21 + 0x54) = uVar6;
        *(undefined (*) [16])(iVar21 + 0x58) = ZEXT816(0);
        *(ulonglong *)(iVar21 + 0x68) = CONCAT44(uStack_54,local_58);
        iVar21 = local_50;
        goto LAB_00575977;
      }
    }
    else {
      iVar21 = FUN_0040b220(2);
      piVar8 = (int *)(iVar21 + 0x48);
      if (piVar8 != local_140 + 6) {
        iVar19 = local_140[7];
        iVar27 = local_140[8];
        iVar26 = local_140[9];
        *piVar8 = local_140[6];
        *(int *)(iVar21 + 0x4c) = iVar19;
        *(int *)(iVar21 + 0x50) = iVar27;
        *(int *)(iVar21 + 0x54) = iVar26;
        iVar19 = local_140[0xb];
        iVar27 = local_140[0xc];
        iVar26 = local_140[0xd];
        *(int *)(iVar21 + 0x58) = local_140[10];
        *(int *)(iVar21 + 0x5c) = iVar19;
        *(int *)(iVar21 + 0x60) = iVar27;
        *(int *)(iVar21 + 100) = iVar26;
        *(undefined8 *)(iVar21 + 0x68) = *(undefined8 *)(local_140 + 0xe);
        iVar21 = local_140[0x10];
LAB_00575977:
        piVar8[10] = iVar21;
      }
    }
    iVar21 = FUN_0040b220(1);
    if ((int *)(iVar21 + 0x48) != piVar8) {
      iVar19 = piVar8[1];
      iVar27 = piVar8[2];
      iVar26 = piVar8[3];
      *(int *)(iVar21 + 0x48) = *piVar8;
      *(int *)(iVar21 + 0x4c) = iVar19;
      *(int *)(iVar21 + 0x50) = iVar27;
      *(int *)(iVar21 + 0x54) = iVar26;
      iVar19 = piVar8[5];
      iVar27 = piVar8[6];
      iVar26 = piVar8[7];
      *(int *)(iVar21 + 0x58) = piVar8[4];
      *(int *)(iVar21 + 0x5c) = iVar19;
      *(int *)(iVar21 + 0x60) = iVar27;
      *(int *)(iVar21 + 100) = iVar26;
      *(undefined8 *)(iVar21 + 0x68) = *(undefined8 *)(piVar8 + 8);
      *(int *)(iVar21 + 0x70) = piVar8[10];
    }
    goto LAB_005759a9;
  }
  if (local_128 == 2.802597e-45) {
    puStack_20 = &stack0xfffffffc;
    FUN_004f83a0(param_1[0x305]);
    if (param_1[0x305] != 0) {
      iVar21 = param_1[0x309];
      iVar19 = param_1[0x306];
      iVar12 = param_1[0x305] + param_1[0x304];
      iVar27 = param_1[0x301];
      iVar26 = param_1[0x304];
      iVar13 = param_1[0x301];
      goto LAB_00575082;
    }
    goto LAB_00575092;
  }
  iVar19 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  puStack_20 = &stack0xfffffffc;
  local_174 = FUN_006ac760(local_24);
  iVar21 = param_1[0x2d9];
  if ((((iVar21 == 3) || (iVar21 == 8)) ||
      ((iVar21 == 7 && (cVar7 = FUN_0040b090("Shoot"), iVar21 = extraout_ECX, cVar7 == '\0')))) &&
     ((float)param_1[0xe0] <= (float)param_1[0xe1] * DAT_00baa1d4)) {
    FUN_0040a380("Transition",0);
    param_1[0x2d9] = 0x10;
    param_1[0x62] = 2;
    param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
    FUN_005729a0(1);
    iVar21 = extraout_ECX_00;
  }
  switch(param_1[0x2d9]) {
  case 0:
    local_78 = _DAT_00babc20;
    uStack_74 = _UNK_00babc24;
    uStack_70 = _UNK_00babc28;
    uStack_6c = _UNK_00babc2c;
    local_58 = 0;
    local_68 = _DAT_00bac980;
    uStack_54 = 0;
    local_50 = 0;
    FUN_004071f0(&local_78);
    param_1[0x2d9] = 3;
    param_1[0x3c6] = 10;
    FUN_0040a940("Trail",0);
    iVar21 = FUN_0040b220(1);
    *(undefined *)(iVar21 + 0x74) = 0;
    iVar21 = FUN_0040b220(2);
    *(undefined *)(iVar21 + 0x74) = 0;
    param_1[0x62] = 2;
    param_1[0x61] = 3;
    local_140 = (int *)0x1;
    FUN_006d0c60(local_13c,0x379,0xffffffff);
    local_14 = 0;
    local_128 = 0.0;
    iVar21 = local_138[0];
    piVar8 = (int *)0x1;
    if (local_130 != 0.0) {
      do {
        iVar19 = *(int *)(iVar21 + (int)local_128 * 4);
        if ((iVar19 != 0) &&
           ((((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
              (*(int *)(iVar19 + 0x28) == 1)) || (*(int *)(iVar19 + 0x28) - 10U < 0x3de)) &&
            ((((*(uint *)(iVar19 + 0x168) & 0x20000000) != 0) ==
              ((param_1[0x5a] & 0x20000000U) != 0) && (*(int *)(iVar19 + 0x3bc) == 0)))))) {
          *(int **)(iVar19 + 0x3bc) = param_1;
          FUN_004cdcf0((int **)(iVar19 + 0x3bc));
          fVar17 = *(float *)(iVar19 + 900) * DAT_00baa598;
          *(int **)(iVar19 + 0xbc4) = local_140;
          *(float *)(iVar19 + 900) = fVar17;
          *(float *)(iVar19 + 0x380) = fVar17;
          iVar21 = local_138[0];
          local_140 = (int *)((int)local_140 + 1);
        }
        local_128 = (float)((int)local_128 + 1);
        piVar8 = local_140;
      } while ((uint)local_128 < (uint)local_130);
    }
    param_1[0x2f0] = (int)piVar8;
    local_14 = 0xffffffff;
    FUN_004175b0();
    break;
  case 3:
    FUN_0040a380(&DAT_00b1bc54,0);
    FUN_007e6650(0);
    iVar21 = param_1[0x104];
    if (-1 < iVar21) {
      iVar21 = iVar21 + iVar19;
      param_1[0x104] = iVar21;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    if ((0xf < iVar21) || (iVar21 < 0)) {
      piVar8 = (int *)param_1[0xef];
      if (((piVar8 == (int *)0x0) || (piVar8[10] != 0x379)) &&
         (local_154 = piVar8, piVar8 = (int *)FUN_00572a70(extraout_ECX_01), piVar8 == (int *)0x0))
      {
        local_154 = piVar8;
        FUN_0040a380("Transition",0);
        param_1[0x2d9] = 0x10;
        FUN_005729a0(1);
      }
      else {
        param_1[0x2d9] = 8;
        if ((float)((uint)((float)piVar8[0xcf] - (float)param_1[0xcf]) & DAT_00bacb40) <=
            (float)((uint)((float)piVar8[0xd0] - (float)param_1[0xd0]) & DAT_00bacb40)) {
          pcVar16 = "MoveStartUp";
          if ((float)param_1[0xd0] <= (float)piVar8[0xd0]) {
            pcVar16 = "MoveStartDown";
          }
        }
        else {
          pcVar16 = "MoveStart";
        }
        local_154 = piVar8;
        FUN_0040a380(pcVar16,0);
        if (param_1[0xf0] != 0) {
          local_124 = (int **)(param_1 + 0xf0);
          FUN_004cf210(&local_124);
        }
        param_1[0xf0] = (int)piVar8;
        FUN_004cdcf0(param_1 + 0xf0);
        if (param_1[0x104] < 0) {
          if (param_1[0x1f] != 0) {
            FUN_00408e00();
          }
          param_1[0x62] = 2;
          param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
        }
        else {
          local_128 = 4.428103e-43;
          FUN_00956780();
          FUN_0092dc30(local_128,0x3f800000,2,0,0x3fc00000,0);
          FUN_005729a0(0);
          uVar11 = FUN_006eef60();
          piVar8 = local_154;
          local_14c = (int **)local_154[0xcf];
          local_148 = (int **)local_154[0xd0];
          local_158 = (int **)FUN_00428b20(1000,0xaf,&local_14c,&DAT_00c7b640,param_1,0,uVar11);
          uVar25 = FUN_004238f0(0x3f4ccccd);
          (*(code *)((ulonglong)uVar25 >> 0x20))((int)uVar25,0xffffffff,0xff,0,1);
          local_144 = local_158 + 0xf1;
          if (*local_144 != (int *)0x0) {
            local_124 = local_144;
            FUN_004cf210(&local_124);
          }
          *local_144 = piVar8;
          FUN_004cdcf0(local_144);
          local_144 = local_158 + 0xef;
          if (*local_144 != (int *)0x0) {
            local_124 = local_144;
            FUN_004cf210(&local_124);
          }
          *local_144 = param_1;
          FUN_004cdcf0(local_144);
          (*(code *)(*local_158)[3])();
          if (param_1[0x2fb] != 0) {
            local_124 = (int **)(param_1 + 0x2fb);
            FUN_004cf210(&local_124);
          }
          param_1[0x2fb] = (int)local_158;
          FUN_004cdcf0(param_1 + 0x2fb);
        }
        if (piVar8[0x2d9] != 0x10) {
          piVar8[0x2d9] = 7;
          FUN_0040a380("Stunned",0);
          fVar17 = DAT_00c7b644;
          piVar8[0xcd] = (int)DAT_00c7b640;
          piVar8[0xce] = (int)fVar17;
        }
        *(bool *)(param_1 + 0x52) =
             (float)param_1[0xcf] <= (float)piVar8[0xcf] &&
             (float)piVar8[0xcf] != (float)param_1[0xcf];
      }
      iVar21 = 0;
      if (param_1[0x104] < 0) {
        iVar21 = 0x1e;
      }
      param_1[0x104] = iVar21;
    }
    break;
  case 4:
    FUN_007e6650(0);
    fVar17 = (float)param_1[0xdb] * DAT_00baa3e0;
    param_1[0x104] = param_1[0x104] + iVar19;
    param_1[0xdb] = (int)fVar17;
    if (8 < param_1[0x104]) {
      iVar21 = FUN_006be840();
      local_14c = *(int ***)(iVar21 + 0x33c);
      local_148 = *(int ***)(iVar21 + 0x340);
      local_144 = local_148;
      local_124 = local_14c;
      cVar7 = FUN_00a10630(&DAT_00c7b640);
      if (cVar7 != '\0') {
        param_1[0x2d9] = 9;
        FUN_0040a380("MoveStart2",0);
        param_1[0xcd] = (int)local_124;
        param_1[0xce] = (int)local_144;
        *(bool *)(param_1 + 0x52) =
             (float)param_1[0xcf] <= (float)local_124 && (float)local_124 != (float)param_1[0xcf];
LAB_00574b41:
        param_1[0x104] = 0;
      }
    }
    break;
  case 6:
    iVar19 = param_1[0xf0];
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    if (((iVar19 == 0) || (*(char *)(iVar19 + 0x173) != '\0')) ||
       (cVar7 = FUN_00417430(0x10,0), iVar21 = extraout_ECX_02, cVar7 != '\0')) {
      if (param_1[0x62] == 0) {
        piVar8 = (int *)FUN_00572a70(iVar21);
        local_154 = piVar8;
        if (piVar8 == (int *)0x0) {
          FUN_0040a380(&DAT_00b61c10,0);
          param_1[0x2d9] = 7;
          param_1[0x104] = 0;
          param_1[0x2ec] = 0x42a00000;
        }
        else {
          if (param_1[0xef] != 0) {
            local_124 = (int **)(param_1 + 0xef);
            FUN_004cf210(&local_124);
          }
          param_1[0xef] = (int)piVar8;
          FUN_004cdcf0(param_1 + 0xef);
          param_1[0x2d9] = 0xb;
          local_128 = 4.428103e-43;
          FUN_00956780();
          FUN_0092dc30(local_128,0x3f800000,2,0,0x3fc00000,0);
          FUN_005729a0(1);
          uVar11 = FUN_006eef60();
          local_14c = (int **)local_154[0xcf];
          local_148 = (int **)local_154[0xd0];
          piVar8 = (int *)FUN_00428b20(1000,0xaf,&local_14c,&DAT_00c7b640,param_1,0,uVar11);
          uVar25 = FUN_004238f0(0x3f4ccccd);
          (*(code *)((ulonglong)uVar25 >> 0x20))((int)uVar25,0xffffffff,0xff,0,1);
          if (piVar8[0xf1] != 0) {
            local_124 = (int **)(piVar8 + 0xf1);
            FUN_004cf210(&local_124);
          }
          piVar8[0xf1] = (int)local_154;
          FUN_004cdcf0(piVar8 + 0xf1);
          if (piVar8[0xef] != 0) {
            local_124 = (int **)(piVar8 + 0xef);
            FUN_004cf210(&local_124);
          }
          piVar8[0xef] = (int)param_1;
          FUN_004cdcf0(piVar8 + 0xef);
          (**(code **)(*piVar8 + 0xc))();
          if (param_1[0x2fb] != 0) {
            local_124 = (int **)(param_1 + 0x2fb);
            FUN_004cf210(&local_124);
          }
          param_1[0x2fb] = (int)piVar8;
          FUN_004cdcf0(param_1 + 0x2fb);
          FUN_0040a380("Unpossess",0);
        }
        param_1[0x62] = 2;
        param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
        iVar21 = FUN_006be840();
        local_14c = (int **)((float)param_1[0xcf] - *(float *)(iVar21 + 0x33c));
        local_148 = (int **)((float)param_1[0xd0] - *(float *)(iVar21 + 0x340));
        pfVar14 = (float *)FUN_00a10030(&local_190);
        fVar17 = pfVar14[1] * DAT_00baa87c;
        param_1[0xd8] = (int)(*pfVar14 * DAT_00baa87c + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(fVar17 + (float)param_1[0xd9]);
      }
      else {
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x2d9] = 3;
        param_1[0x104] = 0xf;
        param_1[0x62] = 2;
        param_1[0x57] = *(int *)(param_1[0xcc] + 0x24);
      }
    }
    else {
      fVar17 = *(float *)(iVar19 + 0x340);
      param_1[0xd8] = (int)(*(float *)(iVar19 + 0x33c) - (float)param_1[0xcf]);
      param_1[0xd9] = (int)(fVar17 - (float)param_1[0xd0]);
      cVar7 = FUN_0040b030("Sound");
      if (cVar7 != '\0') {
        local_128 = 2.270104e-43;
        FUN_00956780();
        FUN_0092dc30(local_128,0x3f800000,2,0,0x3fc00000,0);
      }
      cVar7 = FUN_0040b030("Shoot");
      if (cVar7 != '\0') {
        FUN_004567e0();
        local_128 = 6.459986e-43;
        FUN_00956780();
        FUN_0092dc30(local_128,0x3f800000,2,0,0x3fc00000,0);
        param_1[0x62] = 0;
        param_1[0x57] = 0;
        iVar21 = FUN_004567e0();
        *(undefined4 *)(iVar21 + 0xb64) = 5;
        FUN_004567e0();
        FUN_0040a380("Transition",0);
        iVar21 = FUN_004567e0();
        iVar19 = FUN_00447770();
        if ((iVar21 == iVar19) && (iVar21 = FUN_004567e0(), *(int *)(iVar21 + 0x7c) != 0)) {
          FUN_00408e00();
        }
      }
    }
    break;
  case 7:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if (param_1[0x104] == 0) {
      param_1[0x104] = 1;
      FUN_006d0c60(local_13c,0x379,0xffffffff);
      local_14 = 1;
      local_168 = 0.0;
      iVar21 = local_138[0];
      fVar17 = local_130;
      if (local_130 != 0.0) {
        do {
          piVar8 = *(int **)(iVar21 + (int)local_168 * 4);
          local_154 = piVar8;
          if ((piVar8 != (int *)0x0) &&
             (((((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar8[10] == 1))
                || (piVar8[10] - 10U < 0x3de)) &&
               (((int *)piVar8[0xef] == param_1 && (piVar8[0x2d9] == 0x10)))) &&
              (piVar8[0x2f1] == 99)))) {
            local_124 = (int **)(piVar8 + 0x12);
            piVar8[0x2f1] = 0;
            ppbVar9 = (byte **)piVar8[0x1f];
            if (ppbVar9 == (byte **)0x0) {
LAB_00573ef6:
              cVar7 = FUN_0040a5d0("Collapse",1);
              ppiVar15 = local_124;
              if (cVar7 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(ppiVar15 + 0x11) = 1;
                piVar8 = local_154;
              }
            }
            else {
              if (&DAT_0000000f < ppbVar9[5]) {
                ppbVar9 = (byte **)*ppbVar9;
              }
              pcVar16 = "Collapse";
              do {
                bVar1 = *(byte *)ppbVar9;
                bVar22 = bVar1 < (byte)*pcVar16;
                if (bVar1 != *pcVar16) {
LAB_00573ed6:
                  uVar18 = -(uint)bVar22 | 1;
                  goto LAB_00573edb;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar9 + 1);
                bVar22 = bVar1 < ((byte *)pcVar16)[1];
                if (bVar1 != ((byte *)pcVar16)[1]) goto LAB_00573ed6;
                ppbVar9 = (byte **)((int)ppbVar9 + 2);
                pcVar16 = (char *)((byte *)pcVar16 + 2);
              } while (bVar1 != 0);
              uVar18 = 0;
LAB_00573edb:
              if ((uVar18 != 0) ||
                 ((*(char *)(piVar8[0x1f] + 0x34) != '\0' && (*(char *)(piVar8 + 0x23) == '\0'))))
              goto LAB_00573ef6;
            }
            if (piVar8[0x1f] != 0) {
              FUN_00408d00(*(int *)(piVar8[0x1f] + 0x30) + -1);
            }
            local_128 = 3.657389e-43;
            FUN_00956780();
            FUN_0092dc30(local_128,0x3f59999a,2,0,0x3f800000,0);
            uVar11 = FUN_006eef60();
            local_14c = (int **)local_154[0xcf];
            local_148 = (int **)local_154[0xd0];
            local_140 = (int *)FUN_00428b20(1000,0xf,&local_14c,&DAT_00c7b640,0,0,uVar11);
            local_124 = (int **)(local_140 + 0x12);
            local_2c = 0;
            local_28 = 0xf;
            local_3c[0] = 0;
            FUN_0040ccd0("gfx/033.010_Movable Fireplace.anm2",0x22);
            local_14._0_1_ = 2;
            FUN_0040bd50(local_3c,1);
            local_14 = CONCAT31(local_14._1_3_,1);
            if (0xf < local_28) {
              uVar18 = local_28 + 1;
              iVar21 = local_3c[0];
              if (0xfff < uVar18) {
                iVar21 = *(int *)(local_3c[0] + -4);
                uVar18 = local_28 + 0x24;
                if (0x1f < (local_3c[0] - iVar21) - 4U) goto LAB_00574161;
              }
              FUN_00aef15c(iVar21,uVar18);
            }
            piVar8 = local_140;
            uVar18 = 0;
            if (local_140[0x32] != 0) {
              do {
                iVar21 = FUN_0040b220(uVar18);
                uVar6 = uRam00c34e34;
                uVar5 = uRam00c34e30;
                uVar11 = uRam00c34e2c;
                if ((undefined4 *)(iVar21 + 0x48) != (undefined4 *)&DAT_00c34e28) {
                  *(undefined4 *)(iVar21 + 0x48) = _DAT_00c34e28;
                  *(undefined4 *)(iVar21 + 0x4c) = uVar11;
                  *(undefined4 *)(iVar21 + 0x50) = uVar5;
                  *(undefined4 *)(iVar21 + 0x54) = uVar6;
                  uVar6 = uRam00c34e44;
                  uVar5 = uRam00c34e40;
                  uVar11 = uRam00c34e3c;
                  *(undefined4 *)(iVar21 + 0x58) = _DAT_00c34e38;
                  *(undefined4 *)(iVar21 + 0x5c) = uVar11;
                  *(undefined4 *)(iVar21 + 0x60) = uVar5;
                  *(undefined4 *)(iVar21 + 100) = uVar6;
                  *(undefined8 *)(iVar21 + 0x68) = DAT_00c34e48;
                  *(undefined4 *)(iVar21 + 0x70) = DAT_00c34e50;
                }
                uVar18 = uVar18 + 1;
                param_1 = local_160;
              } while (uVar18 < (uint)piVar8[0x32]);
            }
            FUN_0040a380("Disappear",0);
            (**(code **)(*local_140 + 0xc))();
            iVar21 = local_138[0];
            fVar17 = local_130;
          }
          local_168 = (float)((int)local_168 + 1);
        } while ((uint)local_168 < (uint)fVar17);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    fVar17 = (float)param_1[0x2ec];
    if (fVar17 <= 0.0) {
      FUN_0040a380("StunEnd",0);
      FUN_006a92a0(0);
      FUN_006a92e0(0);
      cVar7 = FUN_0040b030("Shoot");
      if (cVar7 != '\0') {
        FUN_006d6ba0(0x10b,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x139,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x1a2,0x40000000,2,0,0x3f800000);
        FUN_00703670(0x10);
        FUN_00703770(param_1 + 0xcf,0x3d0f5c29,0x3ccccccd,10);
      }
      cVar7 = FUN_0040b090("Shoot");
      if ((cVar7 != '\0') && (iVar21 = FUN_006ac760(), iVar21 != 0)) {
        ppiVar15 = (int **)0x0;
        local_150 = (int **)0x0;
        local_14c = (int **)0x0;
        local_148 = (int **)0x0;
        local_14 = 3;
        FUN_006d0c60(local_13c,0x379,0xffffffff);
        local_14 = CONCAT31(local_14._1_3_,4);
        local_128 = 0.0;
        iVar21 = local_138[0];
        fVar17 = local_130;
        if (local_130 != 0.0) {
          do {
            ppiVar2 = *(int ***)(iVar21 + (int)local_128 * 4);
            if (((ppiVar2 != (int **)0x0) &&
                (((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                  (ppiVar2[10] == (int *)0x1)) || ((int)ppiVar2[10] - 10U < 0x3de)))) &&
               (((local_124 = ppiVar2, ppiVar2[0x2d9] == (int *)0x10 &&
                 (fVar17 = local_130,
                 (((uint)ppiVar2[0x5a] & 0x20000000) != 0) == ((param_1[0x5a] & 0x20000000U) != 0)))
                && (ppiVar2[0xef] == param_1)))) {
              if (ppiVar15 == local_148) {
                FUN_0042c920(ppiVar15,&local_124);
                iVar21 = local_138[0];
                fVar17 = local_130;
                ppiVar15 = local_14c;
              }
              else {
                *ppiVar15 = (int *)ppiVar2;
                local_14c = ppiVar15 + 1;
                ppiVar15 = local_14c;
              }
            }
            local_128 = (float)((int)local_128 + 1);
          } while ((uint)local_128 < (uint)fVar17);
          if (local_150 != ppiVar15) {
            iVar21 = FUN_0067f010();
            FUN_00572c10(local_150[iVar21]);
          }
        }
        FUN_004175b0();
        local_14 = 0xffffffff;
        FID_conflict__Tidy();
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_006d0c60(local_13c,0x379,0xffffffff);
        fVar17 = 0.0;
        local_14 = 5;
        iVar21 = local_138[0];
        if (local_130 != 0.0) {
          do {
            iVar19 = *(int *)(iVar21 + (int)fVar17 * 4);
            if (((iVar19 != 0) &&
                (((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                  (*(int *)(iVar19 + 0x28) == 1)) || (*(int *)(iVar19 + 0x28) - 10U < 0x3de)))) &&
               (((*(int *)(iVar19 + 0xb64) == 0x10 &&
                 (((*(uint *)(iVar19 + 0x168) & 0x20000000) != 0) ==
                  ((param_1[0x5a] & 0x20000000U) != 0))) && (*(int **)(iVar19 + 0x3bc) == param_1)))
               ) {
              FUN_00572c10(iVar19);
              iVar21 = local_138[0];
            }
            fVar17 = (float)((int)fVar17 + 1);
          } while ((uint)fVar17 < (uint)local_130);
        }
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x2d9] = 3;
        param_1[0x104] = 0;
        local_14 = 0xffffffff;
        FUN_004175b0();
      }
    }
    else {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380("StunLoop",0);
        fVar17 = (float)param_1[0x2ec];
      }
      pppiVar20 = (int ***)(param_1 + 5);
      local_124 = (int **)((float)param_1[0xe7] * DAT_00baa120);
      pppiVar10 = &local_124;
      if ((float)local_124 < (float)*pppiVar20 || (float)local_124 == (float)*pppiVar20) {
        pppiVar10 = pppiVar20;
      }
      param_1[0x2ec] = (int)(fVar17 - (float)*pppiVar10);
    }
    break;
  case 8:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    if (param_1[0xf0] == 0) {
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = 3;
      param_1[0x104] = 0xf;
      break;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380("MoveLoop",0);
    }
    param_1[0x104] = param_1[0x104] + iVar19;
    cVar7 = FUN_0040b030("Shoot");
    if (cVar7 != '\0') {
      local_128 = 9.823102e-43;
      FUN_00956780();
      FUN_0092dc30(local_128,0x3f800000,2,0,0x3f800000,0);
      FUN_005729a0(0);
    }
    cVar7 = FUN_0040b090("Shoot");
    if ((cVar7 == '\0') && ((param_1[0x1f] == 0 || (*(char *)(param_1[0x1f] + 0x34) == '\0'))))
    break;
    local_144 = (int **)0x41f00000;
    local_124 = (int **)((float)param_1[0x104] * DAT_00baa3a4);
    pppiVar20 = &local_124;
    if (DAT_00baa8d0 <= (float)local_124) {
      pppiVar20 = &local_144;
    }
    local_17c = *(float *)(param_1[0xf0] + 0x33c) - (float)param_1[0xcf];
    local_178 = *(float *)(param_1[0xf0] + 0x340) - (float)param_1[0xd0];
    param_1[0xd8] = (int)local_17c;
    param_1[0xd9] = (int)local_178;
    fVar17 = local_17c * local_17c + local_178 * local_178;
    FUN_00435a50();
    if (DAT_00baa87c <= fVar17) {
      if (((float)*pppiVar20 < fVar17) && (0.0 < fVar17)) {
        fVar17 = (float)*pppiVar20 / fVar17;
        param_1[0xd9] = (int)(fVar17 * local_178);
        param_1[0xd8] = (int)(fVar17 * local_17c);
      }
      break;
    }
    FUN_0040a380("Possess",0);
    param_1[0x2d9] = 6;
    param_1[0x104] = 0;
    goto LAB_00574b58;
  case 9:
    cVar7 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar7 != '\0') {
      FUN_0040a380("MoveLoop2",0);
    }
    param_1[0x104] = param_1[0x104] + iVar19;
    cVar7 = FUN_0040b090("Shoot");
    if ((cVar7 != '\0') || (cVar7 = FUN_004073b0(), cVar7 != '\0')) {
      fVar17 = DAT_00baa8d0;
      local_144 = (int **)0x41f00000;
      fVar24 = ((float)param_1[0xcd] - (float)param_1[0xcf]) * (float)DAT_00baa2d0;
      local_124 = (int **)((float)param_1[0x104] * DAT_00baa4b0);
      param_1[0xd8] = (int)fVar24;
      pppiVar20 = &local_124;
      if (fVar17 <= (float)local_124) {
        pppiVar20 = &local_144;
      }
      fVar17 = ((float)param_1[0xce] - (float)param_1[0xd0]) * (float)DAT_00baa2d0;
      param_1[0xd9] = (int)fVar17;
      fVar17 = fVar24 * fVar24 + fVar17 * fVar17;
      FUN_00435a50();
      if (fVar17 < DAT_00baa87c) {
        FUN_0040a380("AttackStart",0);
        param_1[0x2d9] = 10;
        goto LAB_00574b41;
      }
      if ((float)*pppiVar20 < fVar17) {
        FUN_00a100b0(*pppiVar20);
      }
    }
    break;
  case 10:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    cVar7 = FUN_0040b030("Shoot");
    if (cVar7 != '\0') {
      FUN_006d6ba0(700,0x3f4ccccd,2,0,0x3fc00000);
      AI_0043ef30();
      local_108 = 0;
      if ((*(byte *)(param_1 + 0x104) & 1) == 0) {
        local_108 = 0x3f060a92;
      }
      local_8c = 2;
      FUN_004071f0(&DAT_00c34e28);
      local_14c = (int **)0x41100000;
      local_148 = (int **)0x40c00000;
      FUN_006cb2e0(param_1 + 0xcf,&local_14c,9,local_120);
      param_1[0x104] = param_1[0x104] + 1;
    }
    cVar7 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar7 != '\0') {
      if (5 < param_1[0x104]) {
        FUN_0040a380(&DAT_00b1d428,0);
        param_1[0x2d9] = 4;
        goto LAB_00574b41;
      }
      FUN_0040a380("Attack",1);
    }
    break;
  case 0xb:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
      param_1[0x104] = -1000;
    }
    break;
  case 0x10:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    cVar7 = FUN_0040b030("Shoot");
    if (cVar7 != '\0') {
      FUN_006d6ba0(0x10b,0x3f800000,2,0,0x3f800000);
      FUN_006d6ba0(0x139,0x3f800000,2,0,0x3f800000);
      FUN_006d6ba0(0x1a2,0x3fc00000,2,0,0x3f800000);
      FUN_00703670(0x10);
      FUN_00703770(param_1 + 0xcf,0x3d0f5c29,0x3ccccccd,10);
    }
    cVar7 = FUN_0040b090("Shoot");
    if ((cVar7 != '\0') && (iVar21 = FUN_006ac760(), iVar21 != 0)) {
      ppiVar15 = (int **)0x0;
      local_150 = (int **)0x0;
      local_14c = (int **)0x0;
      local_148 = (int **)0x0;
      local_14 = 6;
      FUN_006d0c60(local_13c,0x379,0xffffffff);
      local_14 = CONCAT31(local_14._1_3_,7);
      local_128 = 0.0;
      iVar21 = local_138[0];
      fVar17 = local_130;
      if (local_130 != 0.0) {
        do {
          ppiVar2 = *(int ***)(iVar21 + (int)local_128 * 4);
          if (((ppiVar2 != (int **)0x0) &&
              (((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                (ppiVar2[10] == (int *)0x1)) || ((int)ppiVar2[10] - 10U < 0x3de)))) &&
             ((fVar17 = local_130, local_124 = ppiVar2,
              (((uint)ppiVar2[0x5a] & 0x20000000) != 0) == ((param_1[0x5a] & 0x20000000U) != 0) &&
              (ppiVar2[0xef] == param_1)))) {
            if (ppiVar15 == local_148) {
              FUN_0042c920(ppiVar15,&local_124);
              iVar21 = local_138[0];
              fVar17 = local_130;
              ppiVar15 = local_14c;
            }
            else {
              *ppiVar15 = (int *)ppiVar2;
              local_14c = ppiVar15 + 1;
              ppiVar15 = local_14c;
            }
          }
          local_128 = (float)((int)local_128 + 1);
        } while ((uint)local_128 < (uint)fVar17);
        if (local_150 != ppiVar15) {
          iVar21 = FUN_0067f010();
          FUN_00572cc0(local_150[iVar21]);
        }
      }
      FUN_004175b0();
      local_14 = 0xffffffff;
      FID_conflict__Tidy();
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_006d0c60(local_13c,0x379,0xffffffff);
      fVar17 = 0.0;
      local_14 = 8;
      iVar21 = local_138[0];
      if (local_130 != 0.0) {
        do {
          iVar19 = *(int *)(iVar21 + (int)fVar17 * 4);
          if (((iVar19 != 0) &&
              (((iVar21 = local_138[0], 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                (*(int *)(iVar19 + 0x28) == 1)) || (*(int *)(iVar19 + 0x28) - 10U < 0x3de)))) &&
             (((*(int *)(iVar19 + 0xb64) == 0x10 &&
               (((*(uint *)(iVar19 + 0x168) & 0x20000000) != 0) ==
                ((param_1[0x5a] & 0x20000000U) != 0))) && (*(int **)(iVar19 + 0x3bc) == param_1))))
          {
            FUN_00572cc0(iVar19);
            iVar21 = local_138[0];
          }
          fVar17 = (float)((int)fVar17 + 1);
        } while ((uint)fVar17 < (uint)local_130);
      }
      FUN_0040a380(&DAT_00b1d428,0);
      param_1[0x2d9] = 4;
      param_1[0x104] = 0;
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    else {
      param_1[5] = 0;
      fVar17 = DAT_00baa120;
      pfVar3 = (float *)param_1[3];
      for (pfVar14 = (float *)param_1[2]; pfVar14 != pfVar3; pfVar14 = pfVar14 + 0xe) {
        fVar24 = *pfVar14;
        *pfVar14 = fVar24 * fVar17;
        param_1[5] = (int)(fVar24 * fVar17 + (float)param_1[5]);
      }
    }
  }
  if (local_174 != 0) {
LAB_00574b58:
    iVar21 = 1;
    AI_0041af60(local_13c,0x379,0xffffffff,0xffffffff,0,0);
    fVar17 = 0.0;
    iVar19 = iVar21;
    if (local_130 != 0.0) {
      do {
        iVar27 = *(int *)(local_138[0] + (int)fVar17 * 4);
        iVar21 = iVar19;
        if (((iVar27 != 0) &&
            (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)(iVar27 + 0x28) == 1)) ||
             (*(int *)(iVar27 + 0x28) - 10U < 0x3de)))) &&
           ((*(int **)(iVar27 + 0x3bc) == param_1 && (*(int *)(iVar27 + 0xb64) != 0x10)))) {
          if (iVar27 == param_1[0xf0]) {
            *(undefined4 *)(iVar27 + 0xbc4) = 0;
          }
          else {
            iVar21 = iVar19 + 1;
            *(int *)(iVar27 + 0xbc4) = iVar19;
          }
        }
        fVar17 = (float)((int)fVar17 + 1);
        iVar19 = iVar21;
      } while ((uint)fVar17 < (uint)local_130);
    }
    param_1[0x2f0] = iVar21;
    if (local_13c[0] == '\0') {
      local_14 = 9;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_154 = (int *)0x0;
    local_17c = *(float *)(DAT_00c71678 + 0x18300);
    if (*(int *)((int)local_17c + 0x1264) != 0) {
      do {
        piVar8 = *(int **)(*(int *)((int)local_17c + 0x125c) + (int)local_154 * 4);
        local_15c = piVar8;
        if ((piVar8 == (int *)0x0) ||
           (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (iVar21 = piVar8[10], iVar21 != 1)) &&
            (iVar21 = piVar8[10], 0x3dd < iVar21 - 10U)))) {
          iVar21 = piVar8[10];
LAB_00574f1b:
          if ((iVar21 == 9) && ((int *)piVar8[0xef] == param_1)) {
            piVar8[0x10e] = 0;
            piVar8[0x10f] = 0;
            *(undefined *)((int)piVar8 + 0x173) = 1;
          }
        }
        else {
          local_129 = (piVar8[0x5a] & 0x20000000U) != 0;
          cVar7 = FUN_004567b0();
          piVar8 = extraout_EDX;
          if (local_129 != cVar7) goto LAB_00574f1b;
          if (iVar21 == 0x379) {
            if ((int *)extraout_EDX[0xef] != param_1) {
LAB_00574d28:
              bVar22 = false;
              goto LAB_00574d2a;
            }
            extraout_EDX[0x5a] = extraout_EDX[0x5a] | 0x10;
            extraout_EDX[0x5b] = extraout_EDX[0x5b];
            pcVar4 = *(code **)(*extraout_EDX + 0x24);
            FUN_00431310(param_1);
            (*pcVar4)(&uStack_74);
          }
          else {
            if ((iVar21 != 0x21) || (extraout_EDX[0xb] != 0xd)) goto LAB_00574d28;
            bVar22 = true;
LAB_00574d2a:
            if (bVar22) {
              pcVar4 = *(code **)(*extraout_EDX + 0x24);
              FUN_00431310(param_1);
              (*pcVar4)(local_4c);
              local_128 = 3.657389e-43;
              FUN_00956780();
              FUN_0092dc30(local_128,0x3f59999a,2,0,0x3f800000,0);
              uVar11 = FUN_006eef60();
              local_14c = (int **)local_15c[0xcf];
              local_148 = (int **)local_15c[0xd0];
              local_140 = (int *)FUN_00428b20(1000,0xf,&local_14c,&DAT_00c7b640,0,0,uVar11);
              local_124 = (int **)(local_140 + 0x12);
              local_2c = 0;
              local_28 = 0xf;
              local_3c[0] = 0;
              FUN_0040ccd0("gfx/033.010_Movable Fireplace.anm2",0x22);
              local_14 = 10;
              FUN_0040bd50(local_3c,1);
              local_14 = 0xffffffff;
              if (0xf < local_28) {
                uVar18 = local_28 + 1;
                iVar21 = local_3c[0];
                if (0xfff < uVar18) {
                  iVar21 = *(int *)(local_3c[0] + -4);
                  uVar18 = local_28 + 0x24;
                  if (0x1f < (local_3c[0] - iVar21) - 4U) {
LAB_00574161:
                    /* WARNING: Subroutine does not return */
                    _invalid_parameter_noinfo_noreturn();
                  }
                }
                FUN_00aef15c(iVar21,uVar18);
              }
              piVar8 = local_140;
              uVar18 = 0;
              if (local_140[0x32] != 0) {
                do {
                  iVar21 = FUN_0040b220(uVar18);
                  uVar6 = uRam00c34e34;
                  uVar5 = uRam00c34e30;
                  uVar11 = uRam00c34e2c;
                  if ((undefined4 *)(iVar21 + 0x48) != (undefined4 *)&DAT_00c34e28) {
                    *(undefined4 *)(iVar21 + 0x48) = _DAT_00c34e28;
                    *(undefined4 *)(iVar21 + 0x4c) = uVar11;
                    *(undefined4 *)(iVar21 + 0x50) = uVar5;
                    *(undefined4 *)(iVar21 + 0x54) = uVar6;
                    uVar6 = uRam00c34e44;
                    uVar5 = uRam00c34e40;
                    uVar11 = uRam00c34e3c;
                    *(undefined4 *)(iVar21 + 0x58) = _DAT_00c34e38;
                    *(undefined4 *)(iVar21 + 0x5c) = uVar11;
                    *(undefined4 *)(iVar21 + 0x60) = uVar5;
                    *(undefined4 *)(iVar21 + 100) = uVar6;
                    *(undefined8 *)(iVar21 + 0x68) = DAT_00c34e48;
                    *(undefined4 *)(iVar21 + 0x70) = DAT_00c34e50;
                  }
                  uVar18 = uVar18 + 1;
                  param_1 = local_160;
                } while (uVar18 < (uint)piVar8[0x32]);
              }
              FUN_0040a380("Disappear",0);
              (**(code **)(*local_140 + 0xc))();
            }
            else if (((iVar21 == 0x399) && (extraout_EDX[0xb] == 1)) &&
                    ((int *)extraout_EDX[0xef] == param_1)) {
              pcVar4 = *(code **)(*extraout_EDX + 0x24);
              FUN_00431310(param_1);
              (*pcVar4)(local_1bc);
            }
          }
        }
        local_154 = (int *)((int)local_154 + 1);
      } while (local_154 < *(int **)((int)local_17c + 0x1264));
    }
  }
LAB_005759a9:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

