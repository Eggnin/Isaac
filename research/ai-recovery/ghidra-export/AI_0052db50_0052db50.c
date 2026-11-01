/* Local J460 decompiler output.
 * VA: 0x0052db50
 * Entry: 0052db50
 * Dispatcher: 0x006c2990
 * Types: 21,23,31,55,237,243
 * Identities: 21.0.0,23.0.0,23.0.1,23.1.0,23.2.0,23.3.0,237.0.0,237.1.0,237.2.0,243.0.0,31.0.0,31.1.0,55.0.0,55.1.0,55.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00530a80; instructions=2691
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=21,23,31,55,237,243;
   identities=21.0.0,23.0.0,23.0.1,23.1.0,23.2.0,23.3.0,237.0.0,237.1.0,237.2.0,243.0.0,31.0.0,31.1.0,55.0.0,55.1.0,55.2.0;
   dispatcher=0x006c2990; end=0x00530a80; instructions=2691 */

void __fastcall AI_0052db50(int *param_1)

{
  int iVar1;
  bool bVar2;
  bool bVar3;
  undefined auVar4 [12];
  undefined auVar5 [12];
  undefined auVar6 [12];
  undefined auVar7 [12];
  undefined auVar8 [16];
  undefined auVar9 [16];
  int iVar10;
  undefined *puVar11;
  char cVar12;
  uint uVar13;
  undefined4 uVar14;
  undefined4 *puVar15;
  int iVar16;
  undefined4 uVar17;
  float *pfVar18;
  char *pcVar19;
  uint *puVar20;
  int *piVar21;
  int extraout_ECX;
  int *piVar22;
  int iVar23;
  int *piVar24;
  float10 fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  ulonglong *puVar29;
  ulonglong *puVar30;
  ulonglong *puVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  char *pcVar35;
  undefined8 uVar36;
  undefined auVar37 [16];
  undefined auVar38 [16];
  undefined auVar39 [16];
  undefined auVar40 [16];
  undefined auVar41 [16];
  undefined auVar42 [16];
  undefined auVar43 [16];
  undefined auVar44 [16];
  undefined auVar45 [16];
  undefined auVar46 [16];
  undefined auVar47 [16];
  undefined auVar48 [16];
  undefined auVar49 [16];
  undefined auVar55 [12];
  undefined auVar56 [12];
  undefined auVar50 [16];
  undefined auVar51 [16];
  undefined auVar52 [16];
  undefined auVar53 [16];
  undefined auVar54 [16];
  int local_2a0 [8];
  undefined4 local_280;
  undefined4 uStack_27c;
  undefined4 local_278;
  int local_274 [8];
  undefined4 local_254;
  undefined4 uStack_250;
  undefined4 local_24c;
  char local_245;
  char *local_244;
  undefined4 local_240;
  float local_23c;
  char local_236;
  char local_235;
  int *local_234;
  char *local_230;
  uint local_22c;
  undefined4 local_224;
  undefined4 local_220;
  undefined4 local_21c;
  undefined4 local_170;
  undefined4 local_14c;
  float local_144;
  float local_13c;
  undefined4 local_138;
  float local_12c;
  undefined4 local_f8;
  undefined4 local_f4;
  int local_e8;
  int local_e4;
  char *local_a8 [4];
  char *local_98;
  undefined8 local_94;
  char *local_8c;
  char *local_88 [6];
  char *local_70 [3];
  char local_64 [4];
  char *local_60 [3];
  char *local_54 [4];
  char *local_44;
  char *local_40;
  char *local_3c [6];
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4705;
  local_1c = ExceptionList;
  uVar13 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_234 = param_1;
  local_24 = uVar13;
  if (((param_1[10] == 0x17) && (param_1[0xb] == 0)) && (param_1[0xc] == 1)) {
    local_245 = '\x01';
    puVar11 = &stack0xfffffffc;
  }
  else {
    local_245 = '\0';
    puVar11 = &stack0xfffffffc;
    if (((param_1[10] == 0x37) && (puVar11 = &stack0xfffffffc, param_1[0xb] != 0)) &&
       ((puVar11 = &stack0xfffffffc, param_1[0x3c7] != -1 &&
        (cVar12 = FUN_00956110(), puVar11 = puStack_20, cVar12 != '\0')))) {
      uVar36 = FUN_00435c70();
      (*(code *)((ulonglong)uVar36 >> 0x20))((int)uVar36);
      puVar11 = puStack_20;
    }
  }
  puStack_20 = puVar11;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[10] == 0x37) {
      if ((param_1[0xb] != 0) && ((param_1[0x5a] & 0x1000000U) == 0)) {
        uVar36 = _DAT_00c79100;
        FUN_006ff2a0(param_1 + 0xcf,0x42200000,0x42700000,1,param_1,_DAT_00c79100,4,0,0);
        uVar14 = FUN_006eef60();
        auVar37._8_4_ = param_1 + 0xcf;
        auVar37._0_8_ = uVar36;
        auVar37._12_4_ = &DAT_00c7b640;
        auVar38._8_8_ = auVar37._8_8_;
        auVar38._0_8_ = 0x100000000;
        FUN_00428b20(1000,auVar38._4_12_,0,0,uVar14);
      }
    }
    else if (((param_1[10] == 0x17) && (param_1[0xb] == 1)) && ((param_1[0x5a] & 0x1000000U) == 0))
    {
      AI_0043ef30(uVar13);
      iVar16 = FUN_006d8240();
      local_3c[4] = (char *)DAT_00baa7e8;
      if (0 < iVar16) {
        local_3c[4] = (char *)DAT_00baa81c;
      }
      local_3c[5] = (char *)0x0;
      FUN_006cb2e0();
    }
  }
  if ((((param_1[10] == 0xed) && (*(char *)((int)param_1 + 0xc3d) != '\0')) && (param_1[0xc] == 2))
     && (puVar15 = (undefined4 *)param_1[2], puVar15 != (undefined4 *)param_1[3])) {
    do {
      if (((puVar15[2] & 4) != 0) && (puVar15[6] == param_1[10])) {
        *puVar15 = 0x40a00000;
      }
      puVar15 = puVar15 + 0xe;
    } while (puVar15 != (undefined4 *)param_1[3]);
  }
  AI_0041af60();
  local_14 = 0;
  if ((int *)local_60[2] != (int *)0x0) {
    piVar24 = (int *)0x0;
    pcVar19 = local_60[0];
    piVar22 = (int *)local_60[2];
    do {
      if (*(int *)(*(int *)(pcVar19 + (int)piVar24 * 4) + 0xb64) == 0x10) {
        piVar24 = (int *)((int)piVar24 + 1);
      }
      else {
        if (piVar22 <= piVar24) {
          FUN_00a112c0(0x10,"EL: invalid index for remove\n");
          pcVar19 = local_60[0];
        }
        piVar22 = (int *)((int)piVar22 + -1);
        for (piVar21 = piVar24; local_60[2] = (char *)piVar22, piVar21 < piVar22;
            piVar21 = (int *)((int)piVar21 + 1)) {
          *(undefined4 *)(pcVar19 + (int)piVar21 * 4) =
               *(undefined4 *)(pcVar19 + (int)piVar21 * 4 + 4);
        }
      }
      param_1 = local_234;
    } while (piVar24 < piVar22);
  }
  puVar31 = (ulonglong *)(param_1 + 0xcf);
  auVar39._8_8_ = 0;
  auVar39._0_8_ = *puVar31;
  auVar39 = auVar39 << 0x20;
  local_240 = puVar31;
  uVar14 = FUN_004be670(0);
  auVar40._12_4_ = auVar39._12_4_;
  auVar40._0_8_ = auVar39._0_8_;
  auVar40._8_4_ = uVar14;
  auVar48._8_8_ = auVar40._8_8_;
  auVar48._0_8_ = 0x52ddee00000000;
  local_230 = (char *)__RTDynamicCast();
  if (local_64[0] == '\0') {
    local_14 = 1;
    FUN_00a648b0(0,0);
  }
  uVar36 = auVar48._0_8_;
  local_14 = 0xffffffff;
  if (param_1[0x2d9] != 0) {
    local_236 = '\0';
    local_244 = DAT_00baa304;
    if (local_230 == (char *)0x0) {
LAB_0052e24c:
      param_1[0x37] = 0;
      param_1[0x38] = 0;
      param_1[0xd5] = 0;
      param_1[0x3b] = 0;
    }
    else {
      local_23c = *(float *)(local_230 + 0x33c) - (float)*(int **)puVar31;
      local_40 = (char *)(*(float *)(local_230 + 0x340) / (float)DAT_00baa304 -
                         (float)param_1[0xd0] / (float)DAT_00baa304);
      fVar26 = (float)local_40 * (float)local_40 + local_23c * local_23c;
      FUN_00435a50();
      fVar27 = *(float *)(local_230 + 0x370);
      if (fVar26 < fVar27 * DAT_00baa4cc) {
        param_1[0xd5] = 0x578;
        fVar27 = *(float *)(local_230 + 0x370);
      }
      if (fVar27 <= fVar26) goto LAB_0052e24c;
      local_236 = '\x01';
      local_23c = (local_23c / fVar27) * DAT_00baa8ec *
                  (DAT_00baa454 - (float)((uint)((float)local_40 / fVar27) & DAT_00bacb40));
      local_40 = (char *)(DAT_00baa454 - (fVar26 / fVar27) * (fVar26 / fVar27));
      fVar27 = local_23c;
      if ((*(int *)(local_230 + 0x7c) != 0) &&
         (iVar16 = FUN_0040ace0("ClimbPos"), fVar27 = local_23c, iVar16 != 0)) {
        fVar27 = *(float *)(iVar16 + 4);
        param_1[0x37] = 0;
        param_1[0x38] = (int)((float)local_40 * fVar27);
        fVar27 = local_23c * (*(float *)(iVar16 + 4) / DAT_00baa8b8);
      }
      param_1[0x3b] = (int)fVar27;
      param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa3c4);
    }
    iVar16 = param_1[10];
    if (((iVar16 == 0x17) || (iVar16 == 0x37)) ||
       (local_240 = (ulonglong *)((uint)local_240 & 0xffffff00), iVar16 == 0xed)) {
      local_240 = (ulonglong *)CONCAT31(local_240._1_3_,1);
    }
    iVar16 = FUN_006be840();
    if (((*(int *)(iVar16 + 0x28) == 1) && ((param_1[0x5a] & 0x20000000U) != 0)) &&
       ((param_1[0x3c7] == -1 &&
        (local_240 = (ulonglong *)((uint)local_240 & 0xff), *(int *)(DAT_00c71678 + 0x26614) < 2))))
    {
      local_240 = (ulonglong *)0x0;
    }
    iVar16 = param_1[10];
    if (iVar16 == 0x15) {
      local_244 = DAT_00baa380;
    }
    else if (iVar16 == 0x37) {
      local_244 = DAT_00baa3c4;
    }
    else if ((iVar16 == 0x1f) || (iVar16 == 0xf3)) {
      local_244 = DAT_00baa37c;
    }
    else if ((iVar16 == 0x17) && (param_1[0xb] == 1)) {
      local_244 = DAT_00baa2dc;
    }
    iVar16 = (int)(((float)*(int **)puVar31 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar23 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    if ((((iVar16 < 0) ||
         (iVar1 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc), iVar1 <= iVar16)) ||
        (iVar23 < 0)) || (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar23)) {
      local_23c = -NAN;
    }
    else {
      local_23c = (float)(iVar16 + iVar1 * iVar23);
    }
    pcVar19 = DAT_00baa3c4;
    FUN_004cdd80(puVar31,900);
    fVar27 = DAT_00baad50;
    uVar36 = auVar48._0_8_;
    local_3c[3] = "Move Hori";
    local_3c[4] = "Move Up";
    local_3c[5] = "Move Down";
    local_88[0] = "Hori";
    local_88[1] = &DAT_00b1cde4;
    local_88[2] = "Down";
    local_60[0] = "DashHori";
    local_60[1] = "DashUp";
    local_60[2] = "DashDown";
    local_3c[0] = "Attack Hori";
    local_3c[1] = "Attack Up";
    local_3c[2] = "Attack Down";
    local_70[0] = "Move Hori";
    local_70[1] = "Move Vert";
    local_70[2] = "Move Vert";
    local_54[0] = "Attack Hori";
    local_54[1] = "Attack Down";
    local_54[2] = "Attack Down";
    local_a8[0] = "WalkVert";
    local_a8[1] = "WalkVert";
    local_a8[2] = "WalkLeft";
    local_a8[3] = "WalkRight";
    local_98 = "ChargeUp";
    local_94 = 0xb5fc6c00b5fcb4;
    local_8c = "ChargeRight";
    local_88[3] = "Alert Hori";
    local_88[4] = "Alert Up";
    local_88[5] = "Alert Down";
    local_54[3] = "Recover Hori";
    local_44 = "Recover Up";
    local_40 = "Recover Down";
    if ((param_1[10] != 0x17) || (local_235 = '\x01', param_1[0xb] != 2)) {
      local_235 = '\0';
    }
    iVar16 = param_1[0x2d9];
    if (iVar16 == 5) {
      if (((NAN((float)param_1[0x2ec]) || NAN(DAT_00c7b640)) !=
           ((float)param_1[0x2ec] == DAT_00c7b640)) &&
         ((NAN((float)param_1[0x2ed]) || NAN(DAT_00c7b644)) !=
          ((float)param_1[0x2ed] == DAT_00c7b644))) {
        param_1[0x2ec] = param_1[0xcd];
        param_1[0x2ed] = param_1[0xce];
      }
      fVar27 = (float)param_1[0xdb] * (float)DAT_00baa3e0;
      param_1[0xdb] = (int)fVar27;
      if (NAN(fVar27) == (fVar27 == 0.0)) {
        fVar26 = ((float)param_1[0xe7] * (float)param_1[0x2ec]) / fVar27 + (float)param_1[0xd8];
        param_1[0xd8] = (int)fVar26;
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * (float)param_1[0x2ed]) / fVar27 + (float)param_1[0xd9]);
      }
      else {
        fVar26 = (float)param_1[0xd8];
      }
      if (((0.0 < fVar26) &&
          (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1c) + DAT_00baa9a0 <
           (float)*(int **)puVar31)) ||
         ((fVar26 < 0.0 &&
          (fVar27 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x14) - DAT_00baa9a0,
          (float)*(int **)puVar31 <= fVar27 && fVar27 != (float)*(int **)puVar31)))) {
        (**(code **)(*param_1 + 0x28))();
      }
      goto LAB_00530a61;
    }
    local_22c = 0;
    if (param_1[10] == 0xed) {
      if ((float)(param_1[0xd8] & DAT_00bacb40) <= (float)(param_1[0xd9] & DAT_00bacb40)) {
        local_22c = (uint)(0.0 <= (float)param_1[0xd9]);
      }
      else {
        local_22c = (0.0 <= (float)param_1[0xd8]) + 2;
      }
    }
    else {
      if ((iVar16 == 8) || ((local_235 != '\0' && (iVar16 == 0x10)))) {
        iVar23 = 0xbb0;
      }
      else {
        iVar23 = 0x360;
      }
      fVar26 = *(float *)(iVar23 + (int)param_1);
      fVar34 = *(float *)(iVar23 + 4 + (int)param_1);
      if ((float)((uint)fVar26 & DAT_00bacb40) <= (float)((uint)fVar34 & DAT_00bacb40)) {
        local_22c = (0.0 <= fVar34) + 1;
      }
      else if ((iVar16 != 9) && (*(bool *)(param_1 + 0x52) = fVar26 < 0.0, fVar26 < 0.0)) {
        param_1[0x3b] = (int)((float)param_1[0x3b] * fVar27);
        iVar16 = param_1[0x2d9];
      }
    }
    if (iVar16 == 3) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * (float)pcVar19);
      if (param_1[10] == 0xed) {
        if (param_1[0x1f] != 0) {
          cVar12 = FUN_0040add0("Shoot");
          uVar36 = auVar48._0_8_;
          if (cVar12 != '\0') {
            if (param_1[0xb] == 0) {
              uVar36 = 0;
              FUN_006d6ba0();
              AI_0043ef30();
              local_3c[4] = (char *)0x40f00000;
              local_3c[5] = (char *)0x40c00000;
              FUN_006cb2e0();
            }
            else if (param_1[0xb] == 2) {
              iVar16 = FUN_006d6c20();
              local_23c = 0.0;
              if (iVar16 < 9) {
                local_23c = 5.605194e-45;
              }
              cVar12 = FUN_00417430(0,0x10000000);
              if (cVar12 != '\0') {
                auVar48._8_4_ = 0x52e7e3;
                auVar48._12_4_ = 0xd9;
                iVar16 = FUN_006ac7e0();
                if (4 - iVar16 <= (int)local_23c) {
                  local_23c = (float)(4 - iVar16);
                }
              }
              if ((int)local_23c < 1) {
                uVar36 = 0;
                FUN_00704360();
              }
              else {
                local_230 = (char *)0x0;
                do {
                  uVar36 = auVar48._0_8_;
                  fVar27 = (float)(int)local_230 * DAT_00baa1d4 * DAT_00baab30 * DAT_00baa088;
                  local_40 = (char *)fVar27;
                  FUN_0041d520();
                  local_240 = (ulonglong *)fVar27;
                  FUN_0041d540();
                  uVar14 = FUN_006eef60();
                  local_3c[4] = (char *)((float)local_40 * (float)DAT_00baa81c);
                  local_3c[5] = (char *)((float)local_240 * (float)DAT_00baa81c);
                  auVar46._8_4_ = local_54 + 7;
                  auVar46._0_8_ = uVar36;
                  auVar46._12_4_ = local_54 + 10;
                  local_3c[2] = (char *)((float)local_240 * ((float)param_1[0xdc] + DAT_00baa784) +
                                        (float)param_1[0xd0]);
                  auVar47._8_8_ = auVar46._8_8_;
                  auVar47._0_8_ = 0x200000000;
                  local_3c[1] = (char *)(((float)param_1[0xdc] + DAT_00baa784) * (float)local_40 +
                                        (float)*(int **)puVar31);
                  auVar48._4_12_ = auVar47._4_12_;
                  auVar48._0_4_ = 0xd9;
                  local_240 = (ulonglong *)local_3c[5];
                  local_40 = local_3c[4];
                  piVar22 = (int *)FUN_00428b20(0xd9,auVar48._4_12_,param_1,0,uVar14);
                  piVar22[0x5a] = piVar22[0x5a] & 0xfffffffb;
                  fVar27 = (float)piVar22[0xdb];
                  bVar2 = NAN(DAT_00ba9fe4);
                  bVar3 = fVar27 == DAT_00ba9fe4;
                  piVar22[0x5b] = piVar22[0x5b];
                  if ((NAN(fVar27) || bVar2) == bVar3) {
                    piVar22[0xd8] =
                         (int)(((float)local_40 * (float)piVar22[0xe7]) / fVar27 +
                              (float)piVar22[0xd8]);
                    piVar22[0xd9] =
                         (int)(((float)piVar22[0xe7] * (float)local_240) / fVar27 +
                              (float)piVar22[0xd9]);
                  }
                  piVar22[0xe0] = 0x3dcccccd;
                  (**(code **)(*piVar22 + 0xc))();
                  local_230 = local_230 + 1;
                } while ((int)local_230 < (int)local_23c);
                uVar36 = 0;
                FUN_006d6ba0();
              }
            }
            else if (param_1[0xc] == 0) {
              local_230 = (char *)0x0;
              uVar13 = FUN_006eef60();
              uVar36 = auVar48._0_8_;
              if (uVar13 % 3 != 0) {
                do {
                  uVar36 = auVar48._0_8_;
                  iVar16 = FUN_006eef60();
                  fVar27 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_40 = (char *)(fVar27 + fVar27);
                  puVar29 = (ulonglong *)local_40;
                  FUN_0041d540();
                  local_240 = puVar29;
                  FUN_0041d520();
                  uVar14 = FUN_006eef60();
                  local_3c[4] = (char *)((float)local_240 + (float)local_240);
                  local_3c[1] = (char *)((float)local_240 * DAT_00baa904 + (float)*(int **)puVar31);
                  local_3c[5] = (char *)((float)local_40 + (float)local_40);
                  auVar49._8_4_ = local_54 + 7;
                  auVar49._0_8_ = uVar36;
                  auVar49._12_4_ = local_54 + 10;
                  local_3c[2] = (char *)((float)local_40 * DAT_00baa904 + (float)param_1[0xd0]);
                  auVar8._8_8_ = 0;
                  auVar8._0_8_ = auVar49._8_8_;
                  auVar48._4_12_ = SUB1612(auVar8 << 0x40,4);
                  auVar48._0_4_ = 0x12;
                  iVar16 = FUN_00428b20(0x12,auVar48._4_12_,param_1,0,uVar14);
                  local_230 = local_230 + 1;
                  *(uint *)(iVar16 + 0x168) = *(uint *)(iVar16 + 0x168) & 0xfffffffb;
                  *(undefined4 *)(iVar16 + 0x16c) = *(undefined4 *)(iVar16 + 0x16c);
                  uVar13 = FUN_006eef60();
                  uVar36 = auVar48._0_8_;
                } while (local_230 < (char *)(uVar13 % 3));
              }
            }
          }
          goto LAB_0052eadd;
        }
LAB_00530388:
        param_1[0x2d9] = 4;
      }
      else {
LAB_0052eadd:
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_00530388;
      }
LAB_00530392:
      pfVar18 = (float *)(param_1 + 0xcf);
      fVar34 = DAT_00baa454;
    }
    else {
      if (iVar16 != 4) {
        if (iVar16 == 8) {
          if (local_235 != '\0') {
            param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa3a4);
            if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
              FUN_0040a380(local_54[local_22c + 6],0);
              fVar27 = DAT_00baad50;
            }
            cVar12 = FUN_004073b0();
            if (cVar12 != '\0') {
              if (*(char *)(param_1 + 100) != '\0') {
                param_1[0x2ec] = (int)((float)param_1[0x2ec] * fVar27);
                param_1[0x2ed] = (int)((float)param_1[0x2ed] * fVar27);
              }
              local_3c[5] = (char *)param_1[0x2ec];
              fVar26 = (float)local_3c[5] * (float)local_3c[5] +
                       (float)param_1[0x2ed] * (float)param_1[0x2ed];
              FUN_00435a50();
              fVar27 = DAT_00baa194;
              if ((param_1[0x104] < 0x2e) || ((float)DAT_00baa630 <= fVar26)) {
                param_1[0xdb] = 0x3f800000;
                FUN_00684cb0();
                fVar26 = DAT_00baa454;
                fVar27 = DAT_00baa454 - fVar27;
                param_1[0xd9] =
                     (int)(fVar27 * ((float)param_1[0x2ed] - (float)param_1[0xd9]) +
                          (float)param_1[0xd9]);
                param_1[0xd8] =
                     (int)((float)param_1[0xd8] +
                          fVar27 * ((float)local_3c[5] - (float)param_1[0xd8]));
                fVar27 = ((float)param_1[0x104] - (float)DAT_00baa81c) / DAT_00baa97c;
                if (fVar27 <= 0.0) {
                  fVar27 = 0.0;
                }
                if (fVar26 <= fVar27) {
                  fVar27 = fVar26;
                }
                fVar26 = fVar26 - fVar27 * _DAT_00baa0e0;
                param_1[0x2ed] = (int)(fVar26 * (float)param_1[0x2ed]);
                param_1[0x2ec] = (int)(fVar26 * (float)param_1[0x2ec]);
                FUN_00812f00(local_54 + 10,local_23c);
                puVar29 = (ulonglong *)local_3c[4];
                puVar30 = (ulonglong *)local_3c[5];
                if (param_1[0x3c7] != -1) {
                  puVar29 = (ulonglong *)param_1[0x2ee];
                  puVar30 = (ulonglong *)param_1[0x2ef];
                }
                if ((float)(param_1[0xd9] & DAT_00bacb40) <= (float)(param_1[0xd8] & DAT_00bacb40))
                {
                  param_1[0xd0] =
                       (int)((float)puVar30 * DAT_00baa120 +
                            (float)param_1[0xd0] * (float)DAT_00baa3e0);
                }
                else {
                  *(int **)puVar31 =
                       (int *)((float)puVar29 * DAT_00baa120 +
                              (float)*(int **)puVar31 * (float)DAT_00baa3e0);
                }
                FUN_0040a380(local_54[local_22c + 6],0);
              }
              else {
                FUN_007e6fa0();
                FUN_0040a380(local_54[local_22c + 3],0);
                param_1[0x2d9] = 0x10;
              }
              uVar13 = FUN_006eef60();
              if (uVar13 % 10 == 0) {
                iVar16 = FUN_006eef60();
                piVar22 = (int *)FUN_006b64d0((float)((double)iVar16 +
                                                     (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                                              DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
                uVar36 = 0;
                (**(code **)(*piVar22 + 0x3c))();
              }
              cVar12 = FUN_006ac710(3,0);
              if ((cVar12 == '\0') && (cVar12 = FUN_00417430(0x1000000,0), cVar12 == '\0')) {
                FUN_006eef60();
                FUN_00428b20(1000,0x1a,puVar31,&DAT_00c7b640,param_1);
                uVar36 = 0;
                piVar22 = (int *)__RTDynamicCast();
                FUN_006a92a0(param_1);
                fVar26 = DAT_00c3793c * (float)DAT_00baa3a4;
                fVar27 = DAT_00c37940 * (float)DAT_00baa3a4;
                piVar22[0x117] = 0x5a;
                piVar22[0x39] = (int)fVar26;
                piVar22[0x118] = 0x5a;
                piVar22[0x3a] = (int)fVar27;
                (**(code **)(*piVar22 + 0xc))();
              }
            }
            goto LAB_00530392;
          }
          fVar27 = (float)param_1[0x2d1] - (float)*(int **)puVar31;
          if ((float)DAT_00baa630 <=
              (((float)param_1[0x2d2] - (float)param_1[0xd0]) *
               ((float)param_1[0x2d2] - (float)param_1[0xd0]) + fVar27 * fVar27) /
              ((float)param_1[0xe7] * (float)param_1[0xe7])) {
            param_1[0x10f] = 0;
          }
          else {
            param_1[0x10f] =
                 param_1[0x10f] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
          }
          param_1[0x2d1] = (int)*(int **)puVar31;
          param_1[0x2d2] = param_1[0xd0];
          if ((*(char *)(param_1 + 100) == '\0') &&
             (cVar12 = FUN_00417430(0x1000a00,0), cVar12 == '\0')) {
            cVar12 = FUN_00417430(0x80,0);
            if (cVar12 != '\0') {
              fVar27 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                       (float)param_1[0xd9] * (float)param_1[0xd9];
              FUN_00435a50();
              if (fVar27 < DAT_00baa6fc) goto LAB_0052fdf6;
            }
            if ((param_1[0x10f] < 6) && (local_236 == '\0')) {
              puVar29 = DAT_00baa3e0;
              if (param_1[10] == 0x17) {
                puVar29 = DAT_00baa3a4;
              }
              param_1[0xdb] = (int)((float)puVar29 * (float)param_1[0xdb]);
              FUN_004314b0(param_1 + 0x2ec,0);
              if ((param_1[10] != 0x17) || (param_1[0xb] != 3)) {
                FUN_00812f00(local_54 + 10,local_23c);
                puVar29 = (ulonglong *)local_3c[4];
                puVar30 = (ulonglong *)local_3c[5];
                if (param_1[0x3c7] != -1) {
                  puVar29 = (ulonglong *)param_1[0x2ee];
                  puVar30 = (ulonglong *)param_1[0x2ef];
                }
                iVar16 = param_1[10];
                if (iVar16 != 0xed) {
                  fVar34 = (float)(param_1[0x2ec] & DAT_00bacb40);
                  fVar26 = (float)(param_1[0x2ed] & DAT_00bacb40);
                  fVar27 = DAT_00baa354;
                  FUN_00684cb0();
                  iVar16 = extraout_ECX;
                  if (fVar26 <= fVar34) {
                    param_1[0xd9] =
                         (int)((((float)puVar30 - (float)param_1[0xd0]) - (float)param_1[0xd9]) *
                               (DAT_00baa454 - fVar27) + (float)param_1[0xd9]);
                  }
                  else {
                    param_1[0xd8] =
                         (int)((((float)puVar29 - (float)*(int **)puVar31) - (float)param_1[0xd8]) *
                               (DAT_00baa454 - fVar27) + (float)param_1[0xd8]);
                  }
                }
                if (iVar16 == 0x37) {
                  FUN_0040a380(local_60[local_22c],0);
                }
                else if (iVar16 == 0xed) {
                  FUN_0040a380((&local_98)[local_22c],0);
                }
                else {
                  FUN_0040a380(local_54[local_22c + 6],0);
                }
                goto LAB_00530392;
              }
              pcVar19 = "Attack Up";
              if (0.0 < (float)param_1[0x2ed] || (float)param_1[0x2ed] == 0.0) {
                pcVar19 = "Attack Down";
              }
              FUN_0040a380(pcVar19,0);
              fVar27 = DAT_00baa54c;
              local_3c[5] = (char *)param_1[0x2ec];
              *(bool *)(param_1 + 0x52) = (float)local_3c[5] < 0.0;
              FUN_0041d540();
              local_3c[2] = (char *)fVar27;
              fVar27 = DAT_00baa54c;
              FUN_0041d520();
              local_3c[1] = (char *)((float)local_3c[5] * (float)local_3c[2] -
                                    (float)param_1[0x2ed] * fVar27);
              local_3c[2] = (char *)((float)param_1[0x2ed] * (float)local_3c[2] +
                                    (float)local_3c[5] * fVar27);
              FUN_00a10030(local_54 + 10);
              FUN_00812f00(local_54 + 7,local_23c);
              puVar29 = (ulonglong *)local_3c[1];
              puVar30 = (ulonglong *)local_3c[2];
              if (param_1[0x3c7] != -1) {
                puVar29 = (ulonglong *)param_1[0x2ee];
                puVar30 = (ulonglong *)param_1[0x2ef];
              }
              local_40 = (char *)(((float)*(int **)puVar31 - ((float)puVar29 - DAT_00baa87c)) *
                                  (float)local_3c[4] +
                                 ((float)param_1[0xd0] - ((float)puVar30 - 0.0)) *
                                 (float)local_3c[5]);
              puVar31 = (ulonglong *)
                        (((float)param_1[0xd0] - ((float)puVar30 + 0.0)) * (float)local_3c[5] +
                        ((float)*(int **)puVar31 - ((float)puVar29 + DAT_00baa87c)) *
                        (float)local_3c[4]);
              if ((float)((uint)puVar31 & DAT_00bacb40) <= (float)((uint)local_40 & DAT_00bacb40)) {
                local_40 = (char *)puVar31;
              }
              fVar27 = (float)param_1[0xd9];
              fVar26 = (float)param_1[0xd8];
              fVar32 = fVar26 * (float)local_3c[4] + fVar27 * (float)local_3c[5];
              fVar33 = fVar32 * (float)local_3c[5];
              fVar32 = fVar32 * (float)local_3c[4];
              fVar28 = DAT_00baa354;
              FUN_00684cb0();
              fVar34 = DAT_00baa454;
              pfVar18 = (float *)(param_1 + 0xcf);
              fVar28 = DAT_00baa454 - fVar28;
              param_1[0xd8] =
                   (int)(fVar26 - ((float)local_40 * (float)local_3c[4] + fVar32) * fVar28);
              param_1[0xd9] =
                   (int)(fVar27 - fVar28 * (fVar33 + (float)local_40 * (float)local_3c[5]));
              goto LAB_005303a6;
            }
          }
LAB_0052fdf6:
          FUN_007e6fa0();
          if (param_1[10] != 0xed) goto LAB_00530388;
          FUN_0040a380(&DAT_00b1d6f4,0);
          param_1[0x2d9] = 3;
          goto LAB_00530392;
        }
        if (iVar16 == 9) {
          param_1[0xdb] = (int)((float)param_1[0xdb] * (float)pcVar19);
          FUN_006d9050(0);
          cVar12 = FUN_0040b030("Shoot");
          if (cVar12 != '\0') {
            uVar36 = 0;
            FUN_006d6ba0();
            auVar50._8_4_ = 0x13f;
            auVar50._0_8_ = uVar36;
            auVar50._12_4_ = 0x3f800000;
            auVar51._8_8_ = auVar50._8_8_;
            auVar51._0_8_ = 0x52fea700000000;
            FUN_006d6ba0();
            AI_0043ef30();
            local_224 = 0x41600000;
            local_220 = 0xbdcccccd;
            local_21c = 0xbdced917;
            local_234 = (int *)0x2;
            if (param_1[0x3c7] == -1) {
              iVar16 = param_1[0x2f0];
              if (iVar16 == 0) {
                if (*(char *)(param_1 + 0x52) != '\0') {
                  local_234 = (int *)0x0;
                }
              }
              else if (iVar16 == 1) {
                local_234 = (int *)0x1;
              }
              else {
                local_234 = (int *)0x2;
                if (iVar16 == 2) {
                  local_234 = (int *)0x3;
                }
              }
            }
            else {
              local_234 = (int *)FUN_0067f260();
              *(undefined *)(param_1 + 0x52) = 0;
              if (local_234 == (int *)0x1) {
                local_22c = 1;
              }
              else if (local_234 == (int *)0x3) {
                local_22c = 2;
              }
              else {
                local_22c = 0;
                *(bool *)(param_1 + 0x52) = local_234 == (int *)0x0;
              }
              if (param_1[10] == 0x1f) {
                pcVar19 = local_54[local_22c + 6];
              }
              else {
                pcVar19 = local_54[local_22c];
              }
              cVar12 = FUN_0040a4d0(pcVar19);
              if (cVar12 == '\0') {
                if (param_1[10] == 0x1f) {
                  pcVar19 = local_54[local_22c + 6];
                }
                else {
                  pcVar19 = local_54[local_22c];
                }
                FUN_0040a5d0(pcVar19,0);
              }
            }
            uVar36 = auVar51._0_8_;
            if ((param_1[10] == 0x1f) && (param_1[0xb] == 1)) {
              AI_0043ef30();
              local_14c = 0x41200000;
              FUN_0067f1d0();
              local_230 = (char *)0x0;
              local_40 = (char *)0xa;
              do {
                uVar36 = auVar51._0_8_;
                local_f8 = 0x8000000;
                local_f4 = 0;
                local_13c = DAT_00baa580 - (float)(int)local_230 * DAT_00baa120;
                local_12c = DAT_00baa454 - (float)(int)local_230 * DAT_00baa0a0;
                local_144 = (float)(int)local_40 * DAT_00baa054 - DAT_00baa108;
                iVar16 = FUN_006eef60();
                local_3c[5] = (char *)(((float)((double)iVar16 +
                                               (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                                        DAT_00ba9ff4 - DAT_00baa2d0) * (float)(int)local_230 *
                                      DAT_00baa088);
                puVar29 = (ulonglong *)local_3c[5];
                FUN_0041d540();
                local_3c[2] = (char *)puVar29;
                puVar29 = (ulonglong *)local_3c[5];
                FUN_0041d520();
                local_70[1] = (char *)(((float)local_3c[2] * (float)local_54[1] -
                                       (float)puVar29 * (float)local_54[2]) * DAT_00baa868);
                local_70[2] = (char *)(((float)puVar29 * (float)local_54[1] +
                                       (float)local_3c[2] * (float)local_54[2]) * DAT_00baa868);
                auVar51._8_4_ = 0x5300df;
                auVar51._0_8_ = uVar36;
                auVar51._12_4_ = puVar31;
                FUN_006cb2e0();
                uVar36 = auVar51._0_8_;
                local_40 = (char *)((int)local_40 + -1);
                local_230 = local_230 + 1;
              } while (0 < (int)local_40);
            }
            else {
              pfVar18 = (float *)FUN_0067f1d0();
              local_3c[4] = (char *)(*pfVar18 * (float)DAT_00baa7e8);
              local_3c[5] = (char *)(pfVar18[1] * (float)DAT_00baa7e8);
              FUN_006cb2e0();
              if (param_1[10] == 0xf3) {
                puVar20 = (uint *)FUN_0067f1d0();
                local_3c[4] = (char *)((float)(*puVar20 ^ DAT_00bacb70) * (float)DAT_00baa7e8);
                local_3c[5] = (char *)((float)(puVar20[1] ^ DAT_00bacb70) * (float)DAT_00baa7e8);
                FUN_006cb2e0();
              }
            }
          }
        }
        else {
          if (iVar16 != 0x10) {
            if (iVar16 == 0xd) {
              param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa3a4);
              cVar12 = FUN_0040b030("Shoot");
              if (cVar12 != '\0') {
                uVar36 = 0;
                FUN_006d6ba0();
                puVar20 = (uint *)FUN_0067f1d0();
                local_3c[5] = (char *)(*puVar20 ^ DAT_00bacb70);
                local_3c[2] = (char *)(puVar20[1] ^ DAT_00bacb70);
                uVar14 = FUN_007e90f0();
                local_54[1] = (char *)((float)local_3c[5] * (float)DAT_00baa7e8 +
                                      (float)*(int **)puVar31);
                local_3c[4] = (char *)((float)local_3c[5] * DAT_00baa7a4);
                local_54[2] = (char *)((float)local_3c[2] * (float)DAT_00baa7e8 +
                                      (float)param_1[0xd0]);
                local_3c[5] = (char *)((float)local_3c[2] * DAT_00baa7a4);
                auVar52._8_4_ = local_54 + 1;
                auVar52._0_8_ = uVar36;
                auVar52._12_4_ = local_54 + 10;
                auVar9._8_8_ = 0;
                auVar9._0_8_ = auVar52._8_8_;
                uVar36 = 0;
                piVar22 = (int *)FUN_00428b20(0xd9,SUB1612(auVar9 << 0x40,4),param_1,0,uVar14);
                piVar22[0x5a] = piVar22[0x5a] & 0xfffffffb;
                piVar22[0x5b] = piVar22[0x5b];
                (**(code **)(*piVar22 + 0xc))();
                FUN_006a92e0(piVar22);
              }
              cVar12 = FUN_0040a550(&DAT_00b1a4ec);
              if (cVar12 != '\0') goto LAB_00530388;
            }
            goto LAB_00530392;
          }
          param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa3a4);
        }
        cVar12 = FUN_0040a550(&DAT_00b1a4ec);
        fVar34 = DAT_00baa454;
        pfVar18 = (float *)(param_1 + 0xcf);
        if (cVar12 != '\0') {
          param_1[0x2d9] = 4;
        }
        goto LAB_005303a6;
      }
      iVar16 = param_1[10];
      local_40 = (char *)(param_1 + 0x12);
      if (iVar16 == 0x37) {
        pcVar19 = local_88[local_22c];
      }
      else if (iVar16 == 0xed) {
        pcVar19 = local_a8[local_22c];
      }
      else if (iVar16 == 0xf3) {
        pcVar19 = local_88[local_22c + 6];
      }
      else {
        pcVar19 = local_54[local_22c + 9];
      }
      FUN_0040a380(pcVar19,0);
      if (local_230 == (char *)0x0) {
        FUN_007e5340(local_244,0);
      }
      else {
        local_3c[4] = *(char **)(local_230 + 0x33c);
        local_3c[5] = *(char **)(local_230 + 0x340);
        FUN_007e33c0();
        pfVar18 = (float *)FUN_0067f170();
        fVar26 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                 (float)param_1[0xd9] * (float)param_1[0xd9];
        FUN_00435a50();
        fVar27 = *pfVar18;
        param_1[0xd9] = (int)(fVar26 * pfVar18[1]);
        param_1[0xd8] = (int)(fVar26 * fVar27);
        param_1 = local_234;
      }
      fVar26 = DAT_00baa430;
      fVar27 = (float)param_1[0xe7];
      bVar2 = NAN(DAT_00baa454);
      bVar3 = fVar27 == DAT_00baa454;
      param_1[0xdb] = (int)((float)param_1[0xdb] * (float)DAT_00baa3c4);
      if ((NAN(fVar27) || bVar2) == bVar3) {
        fVar26 = fVar26 / ((fVar27 + fVar26) - fVar27 * fVar26);
      }
      param_1[0xd9] = (int)(fVar26 * (float)param_1[0xd9]);
      if (((param_1[10] == 0x1f) && (param_1[0xb] == 1)) &&
         (cVar12 = FUN_0040b030("Shoot"), cVar12 != '\0')) {
        uVar36 = 0;
        FUN_006d6ba0();
        AI_0043ef30();
        AI_0043ef30();
        FUN_006eef60();
        FUN_006ccdd0();
      }
      if ((char)local_240 != '\0') {
        if (param_1[0x3c7] == -1) {
          cVar12 = FUN_006ac710(4,param_1[8]);
        }
        else {
          cVar12 = FUN_006d8260(9);
        }
        if (cVar12 == '\0') goto LAB_0052f52a;
        local_3c[5] = (char *)0x0;
        if (param_1[10] == 0x37) {
          local_3c[5] = (char *)0x2;
        }
        FUN_00812f00(local_88 + 7,local_23c);
        pfVar18 = (float *)FUN_006bec40(local_88 + 1,0);
        iVar16 = FUN_006be840();
        local_40 = *(char **)(iVar16 + 0x360);
        local_240 = *(ulonglong **)(iVar16 + 0x364);
        iVar16 = FUN_006eef60();
        fVar27 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) * DAT_00ba9ff4
        ;
        local_54[2] = (char *)(fVar27 * (float)local_240 * DAT_00baa85c + pfVar18[1]);
        local_54[1] = (char *)(fVar27 * (float)local_40 * DAT_00baa85c + *pfVar18);
        FUN_00436090(local_54 + 7,local_54 + 1,0x41a00000);
        param_1 = local_234;
        if (local_230 != (char *)0x0) {
          local_3c[1] = *(char **)(local_230 + 0x33c);
          local_3c[2] = *(char **)(local_230 + 0x340);
        }
        local_244 = (char *)((float)local_3c[1] - (float)local_70[1]);
        local_230 = (char *)((float)local_3c[2] - (float)local_70[2]);
        local_240 = (ulonglong *)local_3c[2];
        local_54[1] = local_244;
        local_54[2] = local_230;
        local_40 = local_3c[1];
        if (local_234[0x3c7] != -1) {
          pfVar18 = (float *)FUN_006d82d0(local_88 + 1);
          local_54[1] = (char *)(*pfVar18 * DAT_00baa9d0);
          local_54[2] = (char *)(pfVar18[1] * DAT_00baa9d0);
        }
        iVar16 = param_1[10];
        local_244 = local_54[1];
        local_230 = local_54[2];
        if ((iVar16 != 0x17) || (param_1[0xb] != 3)) {
          cVar12 = FUN_00417430(0x1000a00,0);
          if ((cVar12 != '\0') || (local_236 != '\0')) goto LAB_00530392;
          if (param_1[0x3c7] == -1) {
            if ((((float)((uint)local_244 & DAT_00bacb40) < DAT_00baa87c) ||
                ((float)((uint)local_230 & DAT_00bacb40) < DAT_00baa87c)) &&
               (((float)local_230 * (float)local_230 + (float)local_244 * (float)local_244 <
                 DAT_00baac5c || (iVar16 == 0x37)))) {
              auVar56._8_4_ = 0;
              auVar56._0_8_ = CONCAT44(local_3c[5],local_54 + 7);
              auVar7._4_8_ = CONCAT44(local_3c[5],local_54 + 7);
              auVar7._0_4_ = local_88 + 7;
              uVar36 = auVar7._0_8_;
              cVar12 = FUN_007f0df0(local_88 + 7,auVar56,0,0,0);
              if (cVar12 != '\0') goto LAB_0052f31c;
            }
            goto LAB_00530392;
          }
LAB_0052f31c:
          if ((param_1[10] != 0x37) && (param_1[10] == 0xed)) {
            FUN_006d6ba0();
          }
          uVar36 = 0;
          FUN_006d6ba0();
          pfVar18 = (float *)FUN_0067f170();
          fVar27 = DAT_00baa4cc;
          if (param_1[10] == 0x37) {
            fVar27 = DAT_00baa548;
          }
          fVar26 = fVar27 * pfVar18[1];
          fVar27 = fVar27 * *pfVar18;
          param_1[0x2ed] = (int)fVar26;
          param_1[0x2ec] = (int)fVar27;
          if (param_1[10] == 0xed) {
            if ((*(char *)((int)param_1 + 0xc3d) != '\0') && (param_1[0xc] == 1)) {
              param_1[0x2ec] = (int)(fVar27 * DAT_00baa528);
              fVar26 = fVar26 * DAT_00baa528;
              goto LAB_0052f441;
            }
LAB_0052f41d:
            if (local_235 != '\0') {
              param_1[0x2ec] = (int)(fVar27 * DAT_00baa848);
              fVar26 = fVar26 * DAT_00baa848;
              goto LAB_0052f441;
            }
          }
          else {
            if ((param_1[10] != 0x17) || (param_1[0xb] != 1)) goto LAB_0052f41d;
            param_1[0x2ec] = (int)(fVar27 * (float)DAT_00baa3e0);
            fVar26 = fVar26 * (float)DAT_00baa3e0;
LAB_0052f441:
            param_1[0x2ed] = (int)fVar26;
          }
          pfVar18 = (float *)(param_1 + 0xcf);
          param_1[0x2d9] = 8;
          param_1[0x2d1] = (int)*pfVar18;
          param_1[0x2d2] = param_1[0xd0];
          param_1[0x10f] = 0;
          param_1[0x104] = 0;
          param_1[0x2ee] = (int)*pfVar18;
          param_1[0x2ef] = param_1[0xd0];
          fVar34 = DAT_00baa454;
          if (local_235 != '\0') {
            fVar27 = (float)param_1[0x2ec];
            if ((float)((uint)fVar27 & DAT_00bacb40) <= (float)(param_1[0x2ed] & DAT_00bacb40)) {
              local_22c = (0.0 <= (float)param_1[0x2ed]) + 1;
            }
            else {
              local_22c = 0;
              *(bool *)(param_1 + 0x52) = fVar27 < 0.0;
              if (fVar27 < 0.0) {
                param_1[0x3b] = (int)((float)param_1[0x3b] * DAT_00baad50);
                FUN_0040a380(local_88[3],0);
                fVar34 = DAT_00baa454;
                goto LAB_005303a6;
              }
            }
            FUN_0040a380(local_88[local_22c + 3],0);
            fVar34 = DAT_00baa454;
          }
          goto LAB_005303a6;
        }
        piVar22 = DAT_00baa398;
        FUN_0041d540();
        local_234 = piVar22;
        piVar22 = DAT_00baa398;
        FUN_0041d520();
        local_3c[4] = (char *)((float)local_244 * (float)local_234 -
                              (float)local_230 * (float)piVar22);
        local_3c[5] = (char *)((float)local_244 * (float)piVar22 +
                              (float)local_230 * (float)local_234);
        if ((((float)((uint)local_3c[4] & DAT_00bacb40) < DAT_00baa87c) ||
            ((float)((uint)local_3c[5] & DAT_00bacb40) < DAT_00baa87c)) &&
           (cVar12 = FUN_00417430(0x1000a00,0), cVar12 == '\0')) {
          pfVar18 = (float *)FUN_0067f170();
          fVar27 = DAT_00baad48;
          FUN_0041d540();
          local_244 = (char *)fVar27;
          fVar27 = DAT_00baad48;
          FUN_0041d520();
          local_230 = (char *)((float)local_244 * *pfVar18 - fVar27 * pfVar18[1]);
          local_244 = (char *)((float)local_244 * pfVar18[1] + fVar27 * *pfVar18);
          fVar27 = DAT_00baa54c;
          FUN_0041d540();
          local_234 = (int *)fVar27;
          fVar27 = DAT_00baa54c;
          FUN_0041d520();
          local_3c[5] = *(char **)(DAT_00c71678 + 0x18300);
          local_88[5] = (char *)((float)local_230 * (float)local_234 - (float)local_244 * fVar27);
          local_234 = (int *)((float)local_230 * fVar27 + (float)local_244 * (float)local_234);
          FUN_00812f00(local_54 + 7,local_23c);
          pfVar18 = (float *)(param_1 + 0xcf);
          local_88[2] = (char *)((float)local_3c[1] - DAT_00baa87c);
          local_54[2] = (char *)((float)local_3c[1] + DAT_00baa87c);
          local_70[2] = (char *)((float)local_3c[2] - 0.0);
          local_3c[2] = (char *)((float)local_3c[2] + 0.0);
          local_23c = ((float)param_1[0xd0] - (float)local_3c[2]) * (float)local_234 +
                      (*pfVar18 - (float)local_54[2]) * (float)local_88[5];
          fVar26 = ((float)param_1[0xd0] - (float)local_70[2]) * (float)local_234 +
                   (*pfVar18 - (float)local_88[2]) * (float)local_88[5];
          pcVar19 = local_54[2];
          fVar27 = local_23c;
          puVar31 = (ulonglong *)local_3c[2];
          if ((float)((uint)fVar26 & DAT_00bacb40) < (float)((uint)local_23c & DAT_00bacb40)) {
            pcVar19 = local_88[2];
            fVar27 = fVar26;
            puVar31 = (ulonglong *)local_70[2];
          }
          pcVar35 = (char *)((float)param_1[0xd0] - fVar27 * (float)local_234);
          local_88[4] = (char *)(*pfVar18 - fVar27 * (float)local_88[5]);
          fVar27 = ((float)local_40 - (float)pcVar19) * (float)local_88[5] +
                   ((float)local_240 - (float)puVar31) * (float)local_234;
          fVar26 = (float)local_40 - fVar27 * (float)local_88[5];
          local_40 = (char *)(((float)local_240 - fVar27 * (float)local_234) -
                             (float)local_244 * (float)DAT_00baa81c);
          local_44 = (char *)(fVar26 - (float)local_230 * (float)DAT_00baa81c);
          local_88[5] = pcVar35;
          if (param_1[0x3c7] == -1) {
            auVar5._8_4_ = 1;
            auVar5._0_8_ = ZEXT48(local_54 + 4) << 0x20;
            auVar55._8_4_ = 0;
            auVar55._0_8_ = auVar5._4_8_;
            auVar6._4_8_ = auVar5._4_8_;
            auVar6._0_4_ = local_88 + 4;
            uVar36 = auVar6._0_8_;
            cVar12 = FUN_007f0df0(local_88 + 4,auVar55,0,0,0);
            fVar34 = DAT_00baa454;
            if (cVar12 == '\0') goto LAB_005303a6;
          }
          uVar36 = 0;
          FUN_006d6ba0();
          fVar27 = (float)local_244 * DAT_00baa4cc;
          param_1[0x2ec] = (int)((float)local_230 * DAT_00baa4cc);
          param_1[0x2ed] = (int)fVar27;
          param_1[0x2d9] = 8;
          param_1[0x104] = 0;
          param_1[0x2ee] = (int)*pfVar18;
          param_1[0x2ef] = param_1[0xd0];
          param_1[0x2d1] = (int)*pfVar18;
          param_1[0x2d2] = param_1[0xd0];
          param_1[0x10f] = 0;
          fVar34 = DAT_00baa454;
          goto LAB_005303a6;
        }
        goto LAB_00530392;
      }
LAB_0052f52a:
      if ((param_1[10] != 0x1f) && (param_1[10] != 0xf3)) goto LAB_00530392;
      if (param_1[0x3c7] == -1) {
        uVar13 = FUN_006eef60();
        cVar12 = uVar13 % 0x23 == 0;
      }
      else {
        cVar12 = FUN_006cae60(0,7);
      }
      if ((cVar12 == '\0') || (cVar12 = FUN_00417430(0x1000a00,0), cVar12 != '\0'))
      goto LAB_00530392;
      FUN_006d9050(1);
      param_1[0x2d9] = 9;
      param_1[0x104] = 0;
      if (param_1[10] == 0x1f) {
        pcVar19 = local_54[local_22c + 6];
      }
      else {
        pcVar19 = local_54[local_22c];
      }
      FUN_0040a380(pcVar19,1);
      pfVar18 = (float *)(param_1 + 0xcf);
      param_1[0x2f0] = local_22c;
      fVar34 = DAT_00baa454;
    }
LAB_005303a6:
    param_1[0x104] = param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    if (param_1[10] == 0xed) {
      param_1[0x3cc] = 0;
    }
    else {
      if (((param_1[10] == 0x17) && (param_1[0xb] == 3)) && (param_1[0x2d9] == 8)) {
        piVar22 = (int *)FUN_00a10030(local_54 + 10);
      }
      else {
        piVar22 = (int *)FUN_0067f1d0();
      }
      param_1[0x3cc] = *piVar22;
      fVar34 = (float)piVar22[1];
    }
    param_1[0x3cd] = (int)fVar34;
    if ((param_1[10] == 0xed) &&
       (DAT_00baa804 <
        (float)param_1[0xd8] * (float)param_1[0xd8] + (float)param_1[0xd9] * (float)param_1[0xd9]))
    {
      iVar16 = FUN_006ac760();
      if (iVar16 != 0) {
        iVar16 = FUN_006eef60();
        piVar22 = (int *)FUN_006b64d0((float)((double)iVar16 +
                                             (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                                      DAT_00ba9ff4 * _DAT_00baa270 + DAT_00baa198);
        uVar36 = 0;
        (**(code **)(*piVar22 + 0x3c))();
      }
      if ((param_1[0xb] == 0) || (param_1[0x2d9] == 8)) {
        local_236 = *(char *)((int)param_1 + 0xc3d);
        if ((local_236 == '\0') || (param_1[0xc] == 0)) {
          iVar16 = FUN_006ac760();
          if (iVar16 == 0) {
            if (local_236 != '\0') goto LAB_005306b9;
          }
          else {
            local_40 = (char *)0x16;
            if (param_1[0xb] == 2) {
              local_40 = (char *)0x5e;
              uVar13 = FUN_006eef60();
              if (uVar13 % 3 == 0) {
                iVar16 = FUN_006eef60();
                local_3c[5] = (char *)((float)((double)iVar16 +
                                              (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                                       DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa454);
                FUN_006eef60();
                FUN_006d6ba0();
              }
            }
            FUN_006eef60();
            FUN_00428b20(1000,local_40,pfVar18,&DAT_00c7b640,param_1);
            piVar22 = (int *)__RTDynamicCast();
            piVar22[0x39] = 0x3f9d70a4;
            piVar22[0x3a] = 0x3f9d70a4;
            piVar22[0x11d] = 0;
            (**(code **)(*piVar22 + 0xc))();
            if (*(char *)((int)param_1 + 0xc63) == '\0') {
              if (param_1[0xb] != 2) {
                FUN_004071c0(param_1 + 0x6e);
                local_170 = 0x3f800000;
                (**(code **)(*piVar22 + 0x3c))();
              }
            }
            else {
              (**(code **)(*piVar22 + 0x3c))();
            }
          }
        }
        else {
LAB_005306b9:
          if ((param_1[0xc] == 2) && (iVar16 = FUN_006ac760(), iVar16 != 0)) {
            uVar14 = FUN_006eef60();
            auVar53._8_4_ = pfVar18;
            auVar53._0_8_ = uVar36;
            auVar53._12_4_ = &DAT_00c7b640;
            auVar54._8_8_ = auVar53._8_8_;
            auVar54._0_8_ = 0x300000000;
            iVar16 = FUN_00428b20(4,auVar54._4_12_,param_1,0,uVar14);
            *(undefined4 *)(iVar16 + 0x188) = 1;
            uVar14 = FUN_00812c90(param_1 + 0xcf);
            FUN_004565e0(uVar14,900);
          }
        }
      }
    }
    if ((((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] == 0x1f)) && (param_1[0xb] == 1)
        ) && (cVar12 = FUN_00417430(0x1000000,0), cVar12 == '\0')) {
      AI_0043ef30();
      local_e8 = param_1[0xcf];
      local_e4 = param_1[0xd0];
      local_13c = 1.25;
      local_144 = -0.07;
      local_138 = 0;
      local_f8 = 0x800;
      local_f4 = 0;
      local_3c[4] = (char *)0x41000000;
      local_3c[5] = (char *)0x41000000;
      FUN_006cb2e0();
      local_138 = 0x3ec90fdb;
      local_f8 = 0x1000;
      local_f4 = 0;
      local_3c[4] = (char *)0x41000000;
      local_3c[5] = (char *)0x41000000;
      FUN_006cb2e0();
    }
    if ((local_245 != '\0') && (param_1[0x2d9] == 4)) {
      local_98 = (char *)param_1[0xfb];
      local_240 = (ulonglong *)0x0;
      local_230 = (char *)0x0;
      local_94 = DAT_00b1f564;
      local_8c = DAT_00b1f56c;
      fVar25 = (float10)FUN_007e9080();
      local_3c[5] = (char *)((float)fVar25 * DAT_00baa854 + DAT_00baa854);
      fVar27 = (float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)param_1[0xd9] * (float)param_1[0xd9];
      FUN_00435a50();
      local_3c[2] = (char *)(ulonglong *)(fVar27 + DAT_00baa280);
      if ((float)(ulonglong *)(fVar27 + DAT_00baa280) <= (float)DAT_00baa3a4) {
        local_3c[2] = (char *)DAT_00baa3a4;
      }
      if ((float)DAT_00baa630 <= (float)local_3c[2]) {
        local_3c[2] = (char *)DAT_00baa630;
      }
      AI_0041af60();
      local_234 = (int *)0x0;
      if ((int *)local_60[2] != (int *)0x0) {
        do {
          piVar22 = *(int **)(local_60[0] + (int)local_234 * 4);
          if ((piVar22 != (int *)0x0) &&
             ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar22[10] == 1)) ||
               (piVar22[10] - 10U < 0x3de)) && (piVar22 != param_1)))) {
            local_70[2] = (char *)((float)param_1[0xd0] - (float)piVar22[0xd0]);
            local_54[2] = (char *)((float)param_1[0xcf] - (float)piVar22[0xcf]);
            fVar27 = (float)local_70[2] * (float)local_70[2] +
                     (float)local_54[2] * (float)local_54[2];
            FUN_00435a50();
            if (((DAT_00ba9fe4 < fVar27) && (fVar27 < (float)local_3c[5])) &&
               (DAT_00baa120 < (float)local_3c[2])) {
              local_230 = (char *)((float)local_3c[2] * ((float)local_54[2] / fVar27) +
                                  (float)local_230);
              local_240 = (ulonglong *)
                          ((float)local_3c[2] * ((float)local_70[2] / fVar27) + (float)local_240);
            }
          }
          local_234 = (int *)((int)local_234 + 1);
        } while (local_234 < local_60[2]);
      }
      param_1[0xd9] = (int)((float)param_1[0xe7] * (float)local_240 + (float)param_1[0xd9]);
      param_1[0xd8] = (int)((float)param_1[0xe7] * (float)local_230 + (float)param_1[0xd8]);
      if (local_64[0] == '\0') {
        local_14 = 4;
        FUN_00a648b0(0,0);
      }
    }
    goto LAB_00530a61;
  }
  iVar16 = param_1[10];
  if (iVar16 == 0x37) {
    if (param_1[0xb] == 2) {
      FUN_006eef60();
      FUN_00428b20(0x60,0,puVar31,&DAT_00c7b640,param_1);
      uVar36 = 0;
      iVar16 = __RTDynamicCast();
      puVar31 = (ulonglong *)(iVar16 + 0x3bc);
      if (*(int *)(iVar16 + 0x3bc) != 0) {
        local_40 = (char *)puVar31;
        FUN_004cf210(local_54 + 5);
      }
      *(int **)puVar31 = param_1;
      FUN_004cdcf0(puVar31);
      iVar16 = param_1[10];
    }
    if (iVar16 != 0x37) goto LAB_0052deca;
    param_1[0x61] = 3;
    param_1[0x2d9] = 4;
  }
  else {
LAB_0052deca:
    param_1[0x2d9] = 4;
    if (((iVar16 == 0xed) && (*(char *)((int)param_1 + 0xc3d) != '\0')) &&
       ((param_1[0xd] == 0 && (param_1[0xc] == 1)))) {
      auVar41._8_4_ = 0xed;
      auVar41._0_8_ = uVar36;
      auVar41._12_4_ = 1;
      auVar42._8_8_ = auVar41._8_8_;
      auVar42._4_4_ = local_64;
      auVar42._0_4_ = 0x52df27;
      AI_0041af60();
      local_14 = 2;
      iVar23 = 0;
      piVar22 = (int *)0x0;
      iVar16 = iVar23;
      if ((int *)local_60[2] != (int *)0x0) {
        do {
          iVar16 = iVar23 + 1;
          if (*(int *)(*(int *)(local_60[0] + (int)piVar22 * 4) + 0x34) != 0) {
            iVar16 = iVar23;
          }
          piVar22 = (int *)((int)piVar22 + 1);
          iVar23 = iVar16;
          param_1 = local_234;
        } while (piVar22 < local_60[2]);
      }
      iVar16 = (iVar16 + 1) / 2 + iVar16;
      if ((int)local_60[2] < iVar16) {
        local_230 = (char *)(iVar16 - (int)local_60[2]);
        do {
          uVar36 = auVar42._0_8_;
          uVar14 = FUN_006eef60();
          iVar16 = param_1[0xc];
          auVar43._8_4_ = local_240;
          auVar43._0_8_ = uVar36;
          auVar43._12_4_ = 0x42700000;
          auVar44._8_8_ = auVar43._8_8_;
          auVar44._4_4_ = local_54 + 10;
          auVar44._0_4_ = 0x52dfa6;
          uVar36 = auVar44._0_8_;
          uVar17 = FUN_00813520();
          param_1 = local_234;
          auVar45._8_4_ = uVar17;
          auVar45._0_8_ = uVar36;
          auVar45._12_4_ = &DAT_00c7b640;
          auVar4._4_8_ = auVar45._8_8_;
          auVar4._0_4_ = local_234[0xb];
          auVar42._4_12_ = auVar4;
          auVar42._0_4_ = local_234[10];
          piVar22 = (int *)FUN_00428b20(local_234[10],auVar4,local_234,iVar16,uVar14);
          (**(code **)(*piVar22 + 0xc))();
          local_230 = local_230 + -1;
        } while (local_230 != (char *)0x0);
      }
      local_14 = 0xffffffff;
      if (local_64[0] == '\0') {
        local_14 = 3;
        FUN_00a648b0(0,0);
      }
    }
  }
  iVar10 = _UNK_00babf2c;
  iVar1 = _UNK_00babf28;
  iVar23 = _UNK_00babf24;
  iVar16 = _DAT_00babf20;
  if (param_1[10] == 0xed) {
    if (param_1[0xb] == 2) {
      local_254 = 0x3f19999a;
      uStack_250 = 0x3ecccccd;
      local_24c = 0;
      if (param_1 + 0x79 != local_274) {
        *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        *(undefined8 *)(param_1 + 0x81) = 0x3ecccccd3f19999a;
        param_1[0x79] = iVar16;
        param_1[0x7a] = iVar23;
        param_1[0x7b] = iVar1;
        param_1[0x7c] = iVar10;
        param_1[0x83] = 0;
      }
    }
  }
  else if ((param_1[10] == 0x17) && (param_1[0xb] == 2)) {
    local_280 = 0;
    uStack_27c = 0;
    local_278 = 0;
    if (param_1 + 0x79 != local_2a0) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0;
      param_1[0x79] = iVar16;
      param_1[0x7a] = iVar23;
      param_1[0x7b] = iVar1;
      param_1[0x7c] = iVar10;
      param_1[0x83] = 0;
    }
  }
LAB_00530a61:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

