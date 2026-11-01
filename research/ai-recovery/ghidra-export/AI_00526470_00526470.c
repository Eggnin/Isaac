/* Local J460 decompiler output.
 * VA: 0x00526470
 * Entry: 00526470
 * Dispatcher: 0x006c2990
 * Types: 29,34,54,86,246,305,840
 * Identities: 246.0.0,246.1.0,29.0.0,29.1.0,29.2.0,29.3.0,305.0.0,34.0.0,34.1.0,54.0.0,840.0.0,86.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00528ec0; instructions=2249
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=29,34,54,86,246,305,840;
   identities=246.0.0,246.1.0,29.0.0,29.1.0,29.2.0,29.3.0,305.0.0,34.0.0,34.1.0,54.0.0,840.0.0,86.0.0;
   dispatcher=0x006c2990; end=0x00528ec0; instructions=2249 */

void __fastcall AI_00526470(float *param_1)

{
  float fVar1;
  undefined4 uVar2;
  char cVar3;
  uint uVar4;
  undefined4 uVar5;
  float **ppfVar6;
  float **ppfVar7;
  undefined *puVar8;
  int *piVar9;
  uint3 uVar16;
  undefined1 *puVar10;
  int iVar11;
  float *pfVar12;
  uint uVar13;
  float *pfVar14;
  int iVar15;
  float *pfVar17;
  float *pfVar18;
  float **extraout_ECX;
  float **extraout_ECX_00;
  char *pcVar19;
  bool bVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  undefined4 *puVar24;
  float local_31c [8];
  undefined4 local_2fc;
  undefined4 uStack_2f8;
  undefined4 local_2f4;
  float local_2f0 [8];
  undefined4 local_2d0;
  undefined4 uStack_2cc;
  undefined4 local_2c8;
  int local_2c4;
  float local_2c0;
  float local_2bc;
  undefined local_2b8 [4];
  float *local_2b4;
  float local_2b0;
  float *local_2ac;
  uint local_2a8;
  undefined8 uStack_2a4;
  float *pfStack_29c;
  float local_298;
  float *local_294;
  float local_290;
  float local_28c;
  char local_285;
  float local_284;
  int local_280;
  undefined4 *local_27c;
  char *local_278;
  undefined4 *local_274;
  float *local_270;
  float *local_26c;
  float *local_268;
  float *local_264;
  float *local_260;
  float *local_25c;
  float *local_258;
  undefined4 local_254;
  float *local_250;
  float *local_24c;
  undefined local_248 [20];
  undefined4 local_234;
  undefined local_1a0 [12];
  undefined4 local_194;
  undefined4 local_18c;
  undefined4 local_188;
  undefined local_108;
  undefined local_f8 [44];
  undefined4 local_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined local_bc [16];
  undefined8 local_ac;
  undefined4 local_a4;
  uint local_a0;
  float local_90;
  float local_8c;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af45f0;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_2b4 = param_1;
  local_24 = uVar4;
  if (param_1[0x2d9] == 0.0) {
    fVar21 = param_1[10];
    param_1[0x2d9] = 4.203895e-45;
    fVar1 = _UNK_00bac29c;
    fVar23 = _UNK_00bac298;
    fVar22 = _UNK_00bac294;
    if (fVar21 != 1.205117e-43) {
      if (fVar21 != 4.063766e-44) {
        if (fVar21 == 7.567012e-44) {
          local_50 = _DAT_00babf20;
          fStack_4c = _UNK_00babf24;
          fStack_48 = _UNK_00babf28;
          fStack_44 = _UNK_00babf2c;
          local_30 = 0x3e109091;
          local_40 = ZEXT816(0);
          local_2c = 0x3df8f8f9;
          local_28 = 0x3de0e0e1;
          puStack_20 = &stack0xfffffffc;
          FUN_004071f0(&local_50);
          puVar8 = puStack_20;
        }
        else if (fVar21 == 3.447194e-43) {
          puVar8 = &stack0xfffffffc;
          if (param_1[0xb] == 1.401298e-45) {
            puStack_20 = &stack0xfffffffc;
            FUN_004071f0(&DAT_00c34da4);
            puVar8 = puStack_20;
          }
        }
        else {
          puVar8 = &stack0xfffffffc;
          if ((fVar21 == 4.764415e-44) && (puVar8 = &stack0xfffffffc, param_1[0xb] == 1.401298e-45))
          {
            uVar5 = FUN_00435a80();
            FUN_004071f0(uVar5);
            puVar8 = puStack_20;
          }
        }
        goto LAB_00528e8a;
      }
      puVar8 = &stack0xfffffffc;
      if (param_1[0xb] != 2.802597e-45) goto LAB_00528e8a;
    }
    local_2d0 = 0;
    uStack_2cc = 0;
    local_2c8 = 0;
    puVar8 = &stack0xfffffffc;
    if (param_1 + 0x79 != local_2f0) {
      param_1[0x79] = _DAT_00bac290;
      param_1[0x7a] = fVar22;
      param_1[0x7b] = fVar23;
      param_1[0x7c] = fVar1;
      *(undefined8 *)(param_1 + 0x81) = 0;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      param_1[0x83] = 0.0;
      puVar8 = &stack0xfffffffc;
    }
    goto LAB_00528e8a;
  }
  if ((((((uint)param_1[0x5b] & 0x8000) != 0) && (param_1[0xbe] == 1.401298e-45)) &&
      (((NAN(param_1[0xcd]) || NAN((float)DAT_00c7b640)) == (param_1[0xcd] == (float)DAT_00c7b640)
       || ((NAN(param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
           (param_1[0xce] == (float)DAT_00c7b644))))) && (param_1[0x2d9] == 5.605194e-45)) {
    param_1[0x2d9] = 4.203895e-45;
    param_1[0x104] = 0.0;
    param_1[0xcd] = (float)DAT_00c7b640;
    param_1[0xce] = (float)DAT_00c7b644;
  }
  pfVar12 = (float *)param_1[2];
  pfVar14 = (float *)param_1[3];
  puStack_20 = &stack0xfffffffc;
  if (pfVar12 != pfVar14) {
    local_25c = pfVar12 + 0xe;
    pfVar17 = local_25c;
    local_278 = (char *)pfVar12;
    puStack_20 = &stack0xfffffffc;
    do {
      if (((uint)pfVar17[-0xc] & 2) == 0) {
LAB_005267e3:
        pfVar12 = pfVar12 + 0xe;
        pfVar18 = pfVar17 + 0xe;
        local_278 = (char *)pfVar12;
        local_25c = pfVar18;
      }
      else {
        if (param_1[10] == 4.063766e-44) {
          if (param_1[0xb] != 0.0) goto LAB_005267e3;
          local_270 = (float *)(param_1[0xe0] / param_1[0xe1]);
          FUN_006c0f30(0x36,0,0,0xffffffff);
          fVar23 = _UNK_00babf2c;
          fVar22 = _UNK_00babf28;
          fVar21 = _UNK_00babf24;
          local_2fc = 0x3e109091;
          uStack_2f8 = 0x3df8f8f9;
          local_2f4 = 0x3de0e0e1;
          if (param_1 + 0x79 != local_31c) {
            param_1[0x79] = _DAT_00babf20;
            param_1[0x7a] = fVar21;
            param_1[0x7b] = fVar22;
            param_1[0x7c] = fVar23;
            *(undefined8 *)(param_1 + 0x81) = 0x3df8f8f93e109091;
            *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
            param_1[0x83] = 0.1098039;
          }
          param_1[0xe0] = (float)local_270 * param_1[0xe1];
          pfVar17 = local_25c;
        }
        else if (param_1[10] != 7.567012e-44) goto LAB_005267e3;
        local_24c = (float *)param_1[3];
        pfVar14 = local_24c;
        pfVar18 = pfVar17;
        if (pfVar17 != local_24c) {
          pfVar14 = pfVar17 + -3;
          pfVar12 = pfVar17;
          do {
            pfVar14[-0xb] = *pfVar12;
            pfVar12 = pfVar12 + 0xe;
            pfVar14[-9] = pfVar14[5];
            pfVar14[-8] = pfVar14[6];
            pfVar14[-7] = pfVar14[7];
            pfVar14[-6] = pfVar14[8];
            pfVar14[-5] = pfVar14[9];
            pfVar14[-4] = pfVar14[10];
            pfVar14[-3] = pfVar14[0xb];
            pfVar14[-2] = pfVar14[0xc];
            pfVar14[-1] = pfVar14[0xd];
            *pfVar14 = pfVar14[0xe];
            pfVar14[1] = pfVar14[0xf];
            pfVar14[2] = pfVar14[0x10];
            pfVar14 = pfVar14 + 0xe;
          } while (pfVar12 != local_24c);
          pfVar14 = (float *)local_2b4[3];
          pfVar18 = local_25c;
          pfVar12 = (float *)local_278;
          param_1 = local_2b4;
        }
        pfVar14 = pfVar14 + -0xe;
        param_1[3] = (float)pfVar14;
        local_270 = pfVar17;
      }
      pfVar17 = pfVar18;
    } while (pfVar12 != pfVar14);
  }
  fVar21 = param_1[10];
  local_25c = (float *)&DAT_00b1bc54;
  pcVar19 = "";
  local_278 = &DAT_00b1de1c;
  if (fVar21 == 1.205117e-43) {
    local_25c = (float *)&DAT_00b1cddc;
    local_278 = "JumpDown";
    pcVar19 = "ShootDown";
  }
  else if (fVar21 == 4.27396e-43) {
    pcVar19 = "Attack";
  }
  else if ((fVar21 == 4.063766e-44) && (param_1[0xb] == 4.203895e-45)) {
    local_25c = (float *)&DAT_00b1d428;
    local_270 = (float *)&DAT_00b1de1c;
    if (((uint)param_1[0x2f0] & 1) == 0) {
      local_25c = (float *)&DAT_00b1bc54;
    }
    local_278 = &DAT_00b60f70;
    if (((uint)param_1[0x2f0] & 1) == 0) {
      local_278 = &DAT_00b1de1c;
    }
  }
  if (((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) &&
     (fVar21 = param_1[0x2d9], fVar21 != 7.006492e-45)) {
    pfVar14 = local_25c;
    if (fVar21 != 4.203895e-45) {
      if (fVar21 == 8.407791e-45) {
        pfVar14 = (float *)"BigJumpUp";
      }
      else {
        if (fVar21 != 9.809089e-45) goto LAB_005268cd;
        pfVar14 = (float *)"BigJumpDown";
      }
    }
    FUN_0040a380(pfVar14,0);
  }
LAB_005268cd:
  fVar21 = param_1[10];
  local_268 = (float *)0x0;
  local_284 = 0.0;
  local_260 = (float *)0x0;
  fVar22 = local_284;
  if (fVar21 == 4.063766e-44) {
    fVar21 = param_1[0xb];
    if (fVar21 == 1.401298e-45) {
LAB_00526934:
      if (param_1[0x3c7] == -NAN) {
        iVar11 = FUN_006eef60(uVar4);
        local_284 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa924;
        iVar11 = FUN_006eef60();
        local_260 = (float *)&DAT_0000000f;
        fVar22 = local_284 + (float)local_268 +
                 (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa97c;
      }
      else {
        local_260 = (float *)&DAT_0000000f;
        fVar22 = DAT_00baaa00;
      }
    }
    else if (fVar21 == 2.802597e-45) {
      local_260 = (float *)&DAT_00000008;
    }
    else if (fVar21 == 4.203895e-45) {
      local_260 = (float *)0x1a;
    }
  }
  else {
    if (fVar21 == 3.447194e-43) goto LAB_00526934;
    if ((fVar21 == 7.567012e-44) && (fVar22 = DAT_00baa924, param_1[0x3c7] == -NAN)) {
      iVar11 = FUN_006eef60(uVar4);
      fVar22 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa924 + (float)local_268;
    }
  }
  local_284 = fVar22;
  local_2ac = (float *)(local_284 * DAT_00baa4cc + DAT_00baaa1c);
  if (param_1[10] == 3.447194e-43) {
    bVar20 = param_1[0xb] == 1.401298e-45;
LAB_00526a65:
    if (bVar20) {
      local_2ac = (float *)((float)local_2ac * DAT_00baa354);
    }
  }
  else if (param_1[10] == 4.063766e-44) {
    bVar20 = param_1[0xb] == 2.802597e-45;
    goto LAB_00526a65;
  }
  if (param_1[0x3c7] != -NAN) {
    ppfVar6 = (float **)FUN_006d82d0(&local_2c0);
    if (((NAN((float)*ppfVar6) || NAN((float)DAT_00c7b640)) ==
         ((float)*ppfVar6 == (float)DAT_00c7b640)) ||
       (pfVar14 = local_268,
       (NAN((float)ppfVar6[1]) || NAN((float)DAT_00c7b644)) ==
       ((float)ppfVar6[1] == (float)DAT_00c7b644))) {
      ppfVar6 = &local_24c;
      local_270 = (float *)0x41f00000;
      local_24c = (float *)(param_1[0x2ee] + DAT_00baa454);
      ppfVar7 = &local_270;
      if ((float)(float *)(param_1[0x2ee] + DAT_00baa454) <= DAT_00baa8d0) {
        ppfVar7 = ppfVar6;
      }
      pfVar14 = *ppfVar7;
    }
    param_1[0x2ee] = (float)pfVar14;
    fVar21 = param_1[0x2d9];
    if (((fVar21 == 4.203895e-45) || (fVar21 == 1.121039e-44)) ||
       ((fVar21 == 5.605194e-45 &&
        ((param_1[0x1f] != 0.0 &&
         (cVar3 = FUN_0040ae70(&DAT_00b1d574), ppfVar6 = extraout_ECX, cVar3 != '\0')))))) {
      FUN_006d8b20(1);
      ppfVar6 = extraout_ECX_00;
    }
    if ((((param_1[0x2d9] == 4.203895e-45) || (param_1[0x2d9] == 5.605194e-45)) &&
        (param_1[0x3c7] != -NAN)) &&
       (cVar3 = FUN_00956110(9,param_1[0x3c7],param_1,ppfVar6), cVar3 != '\0')) {
      param_1[0x2ef] = 1.0;
    }
  }
  FUN_006bec40(&local_290,0x42700000);
  local_270 = param_1 + 0xcf;
  local_26c = (float *)(local_290 - *local_270);
  local_254 = (float *)(local_28c - param_1[0xd0]);
  fVar21 = param_1[0x2d9];
  if (fVar21 == 4.203895e-45) {
    if ((((NAN(param_1[0xcd]) || NAN((float)DAT_00c7b640)) != (param_1[0xcd] == (float)DAT_00c7b640)
         ) && ((NAN(param_1[0xce]) || NAN((float)DAT_00c7b644)) !=
               (param_1[0xce] == (float)DAT_00c7b644))) &&
       (((param_1[10] == 1.205117e-43 || (param_1[10] == 4.27396e-43)) &&
        (((uint)param_1[0x5a] & 0x1000a00) == 0)))) {
      if ((int)param_1[0x2e8] < 1) {
        if (param_1[0x3c7] == -NAN) {
          cVar3 = (float)local_26c * (float)local_26c + (float)local_254 * (float)local_254 <
                  DAT_00baac5c;
        }
        else {
          cVar3 = FUN_006cae60(0,7);
        }
        if ((cVar3 != '\0') &&
           ((param_1[0x3c7] != -NAN ||
            (cVar3 = FUN_007f0df0(param_1 + 0xcf,&local_290,3,999,0,0,0), cVar3 != '\0')))) {
          FUN_006d9050(1);
          param_1[0x2e8] = 2.802597e-45;
          param_1[0x2d9] = 1.121039e-44;
          cVar3 = FUN_0040a5d0(pcVar19,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          param_1[0x104] = 0.0;
        }
        fVar21 = param_1[0x2d9];
        goto LAB_00526d06;
      }
      param_1[0x2e8] = (float)((int)param_1[0x2e8] - ((int)param_1[0xe9] - (int)param_1[0xe8]));
    }
  }
  else {
LAB_00526d06:
    if (fVar21 == 1.121039e-44) {
      if (param_1[0x3c7] == -NAN) {
        param_1[0x3c8] = (float)DAT_00c7b640;
        pfVar14 = DAT_00c7b644;
LAB_00526d99:
        param_1[0x3c9] = (float)pfVar14;
      }
      else {
        FUN_006d85a0(&local_298);
        if (((NAN(local_298) || NAN((float)DAT_00c7b640)) == (local_298 == (float)DAT_00c7b640)) ||
           ((NAN((float)local_294) || NAN((float)DAT_00c7b644)) ==
            ((float)local_294 == (float)DAT_00c7b644))) {
          param_1[0x3c8] = local_298;
          pfVar14 = local_294;
          goto LAB_00526d99;
        }
      }
      if (param_1[0x1f] != 0.0) {
        cVar3 = FUN_0040add0("Shoot");
        if (cVar3 != '\0') {
          pfStack_29c = (float *)DAT_00baa454;
          fVar21 = DAT_00baa528;
          if ((param_1[0x319] == 2.522337e-44) ||
             (fVar21 = DAT_00baa2d0, param_1[0x319] == 2.662467e-44)) {
            pfStack_29c = (float *)fVar21;
          }
          local_24c = (float *)0xb2;
          FUN_00956780();
          FUN_0092dc30(local_24c,0x3f800000,2,0,pfStack_29c,0);
          if ((param_1[0x3c7] != -NAN) &&
             ((pfVar14 = (float *)param_1[0x3c8],
              (NAN((float)pfVar14) || NAN((float)DAT_00c7b640)) ==
              ((float)pfVar14 == (float)DAT_00c7b640) ||
              ((NAN(param_1[0x3c9]) || NAN((float)DAT_00c7b644)) ==
               (param_1[0x3c9] == (float)DAT_00c7b644))))) {
            local_254 = (float *)param_1[0x3c9];
            local_26c = pfVar14;
          }
          if (param_1[10] == 3.447194e-43) {
            AI_0043ef30();
            local_cc = _DAT_00bac4a0;
            uStack_c8 = _UNK_00bac4a4;
            uStack_c4 = _UNK_00bac4a8;
            uStack_c0 = _UNK_00bac4ac;
            local_a0 = local_a0 | 0x2800;
            local_bc = ZEXT816(0);
            local_ac = CONCAT44(local_268,local_268);
            local_90 = param_1[0xcf];
            local_8c = param_1[0xd0];
            local_a4 = 0;
            pfStack_29c = local_26c;
            local_f8[0] = 0;
            local_24c = local_254;
            fVar21 = (float)local_26c * (float)local_26c + (float)local_254 * (float)local_254;
            FUN_00435a50();
            local_294 = local_24c;
            pfVar14 = pfStack_29c;
            if ((float)local_268 < fVar21) {
              local_294 = (float *)((DAT_00baa454 / fVar21) * (float)local_254);
              pfVar14 = (float *)((DAT_00baa454 / fVar21) * (float)local_26c);
            }
            local_298 = (float)pfVar14 * DAT_00baa7b8;
            local_294 = (float *)((float)local_294 * DAT_00baa7b8);
            FUN_006cb2e0(param_1 + 0xcf,&local_298,0,local_f8);
            puVar8 = local_f8;
            local_2c0 = (float)((uint)local_298 ^ DAT_00bacb70);
            local_2bc = (float)((uint)local_294 ^ DAT_00bacb70);
            pfVar14 = &local_2c0;
            uVar5 = 0;
          }
          else {
            fVar21 = (float)local_26c * (float)local_26c + (float)local_254 * (float)local_254;
            pfStack_29c = local_26c;
            local_24c = local_254;
            FUN_00435a50();
            local_294 = local_24c;
            if ((float)local_268 < fVar21) {
              pfStack_29c = (float *)((DAT_00baa454 / fVar21) * (float)local_26c);
              local_294 = (float *)((DAT_00baa454 / fVar21) * (float)local_254);
            }
            local_298 = (float)pfStack_29c * DAT_00baa7b8;
            local_294 = (float *)((float)local_294 * DAT_00baa7b8);
            if (param_1[10] == 4.27396e-43) {
              FUN_006d6ba0(0x13e,0x3f800000,2,0,0x3f800000);
              AI_0043ef30();
              local_2c0 = local_298 + param_1[0xcf];
              local_2bc = (float)local_294 + param_1[0xd0];
              local_234 = 0x3f000000;
              FUN_006ccdd0(5,&local_2c0,0x41200000,local_248);
              *(bool *)(param_1 + 0x52) = (float)pfStack_29c < (float)local_268;
              goto LAB_00527174;
            }
            puVar8 = (undefined *)AI_0043ef30();
            uVar5 = 1;
            pfVar14 = &local_298;
          }
          FUN_006cb2e0(param_1 + 0xcf,pfVar14,uVar5,puVar8);
        }
LAB_00527174:
        if ((param_1[0x1f] != 0.0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_005271b7;
      }
      param_1[0x2d9] = 4.203895e-45;
      param_1[0x104] = 0.0;
      param_1[0xcd] = (float)DAT_00c7b640;
      param_1[0xce] = (float)DAT_00c7b644;
    }
  }
LAB_005271b7:
  pfVar14 = local_260;
  fVar21 = param_1[0x2d9];
  local_2c4 = 3;
  if (fVar21 == 8.407791e-45) {
    if (param_1[0x1f] == 0.0) {
      fVar21 = param_1[0x3c7];
    }
    else {
      cVar3 = FUN_0040ae70(&DAT_00b1d560);
      fVar21 = param_1[0x3c7];
      if (cVar3 != '\0') {
        fVar22 = 0.0;
        fVar23 = param_1[0x2ec] + DAT_00baa08c;
        param_1[0x62] = 0.0;
        if (fVar21 != -NAN) {
          fVar22 = 4.203895e-45;
        }
        param_1[0x61] = fVar22;
        param_1[0x2ec] = fVar23;
        if (fVar21 == -NAN) {
          fVar21 = DAT_00baa454 - fVar23;
          param_1[0xd0] = fVar21 * param_1[0xd0] + fVar23 * param_1[0xce];
          param_1[0xcf] = fVar21 * param_1[0xcf] + fVar23 * param_1[0xcd];
        }
        else {
          FUN_006d9320();
          param_1[0xcd] = param_1[0xcf];
          param_1[0xce] = param_1[0xd0];
        }
        if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2d9] = 9.809089e-45;
          param_1[0x104] = 0.0;
          param_1[0xd5] = 0.0;
        }
        goto LAB_005283ec;
      }
    }
    fVar22 = param_1[0xdb] * DAT_00baa3a4;
    param_1[0x62] = 5.605194e-45;
    param_1[0x61] = 7.006492e-45;
    param_1[0xdb] = fVar22;
    if (fVar21 != -NAN) {
      FUN_007e33c0(&DAT_00c7b640,0x3f000000,0,1);
    }
  }
  else {
    if (fVar21 == 9.809089e-45) {
      if ((param_1[0x1f] == 0.0) || (cVar3 = FUN_0040ae70(&DAT_00b1d574), cVar3 == '\0')) {
        fVar21 = 0.0;
        fVar22 = param_1[0x2ec] + DAT_00baa08c;
        param_1[0x62] = 0.0;
        if (param_1[0x3c7] != -NAN) {
          fVar21 = 4.203895e-45;
        }
        param_1[0x61] = fVar21;
        param_1[0x2ec] = fVar22;
        if (param_1[0x3c7] == -NAN) {
          fVar21 = DAT_00baa454 - fVar22;
          param_1[0xd0] = fVar21 * param_1[0xd0] + fVar22 * param_1[0xce];
          param_1[0xcf] = fVar21 * param_1[0xcf] + fVar22 * param_1[0xcd];
        }
        else {
          FUN_006d9320();
          param_1[0xcd] = param_1[0xcf];
          param_1[0xce] = param_1[0xd0];
        }
      }
      else {
        fVar21 = param_1[0xdb] * DAT_00baa3a4;
        param_1[0x62] = 5.605194e-45;
        param_1[0x61] = 7.006492e-45;
        param_1[0xdb] = fVar21;
      }
      if (param_1[0x1f] != 0.0) {
        cVar3 = FUN_0040add0(&DAT_00b1d574);
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x45,0x40000000,2,0,0x3f800000);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          if ((param_1[10] == 4.764415e-44) && (param_1[0xb] == 1.401298e-45)) {
            uVar5 = FUN_006eef60();
            piVar9 = (int *)FUN_00428b20(1000,0x1a,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5);
            fVar21 = DAT_00c37940 * DAT_00baa630;
            piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
            piVar9[0x117] = 300;
            piVar9[0x3a] = (int)fVar21;
            piVar9[0x118] = 300;
            (**(code **)(*piVar9 + 0xc))();
            iVar11 = FUN_006d7cf0(&DAT_00c7b640,param_1 + 0x79,&DAT_00c7b640);
            *(undefined4 *)(iVar11 + 0x358) = 0xc1200000;
            AI_0043ef30();
            FUN_004071f0(&DAT_00c34e54);
            local_18c = 0x3f333333;
            FUN_006ccdd0(6,&DAT_00c7b640,0x41200000,local_1a0);
          }
          else {
            uVar5 = FUN_00407170(&DAT_00c7b640);
            iVar11 = FUN_006d7cf0(&DAT_00c7b640,uVar5);
            *(undefined4 *)(iVar11 + 0x358) = 0xc1200000;
            uVar5 = AI_0043ef30();
            local_274 = DAT_00baa834;
            if ((*(int *)(DAT_00c71678 + 0x269c8) != 1) && (*(int *)(DAT_00c71678 + 0x269c8) != 3))
            {
              local_274 = DAT_00baa804;
            }
            local_270 = (float *)0x0;
            FUN_006cb2e0(param_1 + 0xcf,&local_274,6,uVar5);
          }
        }
        if ((param_1[0x1f] != 0.0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_005283ec;
      }
      param_1[0x2d9] = 4.203895e-45;
      param_1[0x104] = 0.0;
      param_1[0xcd] = (float)DAT_00c7b640;
      param_1[0xce] = (float)DAT_00c7b644;
      goto LAB_005283ec;
    }
    if (fVar21 == 4.203895e-45) {
      if ((((int)param_1[0x104] < (int)local_260) ||
          ((NAN(param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
           (param_1[0xcd] == (float)DAT_00c7b640))) ||
         ((NAN(param_1[0xce]) || NAN((float)DAT_00c7b644)) == (param_1[0xce] == (float)DAT_00c7b644)
         )) goto LAB_005283ec;
      local_260 = local_268;
      local_264 = local_268;
      if (param_1[0x3c7] == -NAN) {
        if ((float)local_2ac * (float)local_2ac <=
            (float)local_26c * (float)local_26c + (float)local_254 * (float)local_254) {
          pfVar14 = (float *)FUN_0067f070(&local_250);
          local_260 = (float *)((local_284 + _DAT_00baa9c0) * pfVar14[1] + param_1[0xd0]);
          local_264 = (float *)((local_284 + _DAT_00baa9c0) * *pfVar14 + param_1[0xcf]);
        }
        else {
          local_264 = (float *)(local_290 + ((float)local_26c * local_284) / DAT_00baaa94);
          pfStack_29c = (float *)(local_28c + ((float)local_254 * local_284) / DAT_00baaa94);
          local_260 = pfStack_29c;
          local_24c = local_264;
          if (param_1[10] == 7.567012e-44) {
            iVar11 = FUN_006be840();
            local_264 = (float *)(*(float *)(iVar11 + 0x360) * DAT_00baa784 + (float)local_24c);
            local_260 = (float *)((float)pfStack_29c + *(float *)(iVar11 + 0x364) * DAT_00baa784);
          }
        }
        uVar5 = 0x40a00000;
        ppfVar6 = &local_264;
LAB_00527921:
        ppfVar6 = (float **)FUN_00436090((int)&uStack_2a4 + 4,ppfVar6,uVar5);
        pfVar14 = *ppfVar6;
        pfVar12 = ppfVar6[1];
      }
      else if (((pfVar14 == (float *)0x0) && (DAT_00baa81c < param_1[0x2ee])) ||
              (cVar3 = FUN_006d8d80(), pfVar14 = local_264, pfVar12 = local_260, cVar3 != '\0')) {
        pfVar14 = (float *)FUN_006d8d30((int)&uStack_2a4 + 4);
        pfVar17 = local_270;
        pfStack_29c = (float *)(pfVar14[1] - local_270[1]);
        local_24c = (float *)(*pfVar14 - *local_270);
        fVar21 = (float)pfStack_29c * (float)pfStack_29c + (float)local_24c * (float)local_24c;
        FUN_00435a50();
        pfVar14 = DAT_00c7b640;
        pfVar12 = DAT_00c7b644;
        if (DAT_00baa81c < fVar21) {
          local_250 = (float *)(*pfVar17 + (float)local_24c);
          local_24c = (float *)(pfVar17[1] + (float)pfStack_29c);
          uVar5 = 0x41200000;
          ppfVar6 = &local_250;
          goto LAB_00527921;
        }
      }
      local_260 = pfVar12;
      local_264 = pfVar14;
      if (((NAN((float)local_264) || NAN((float)DAT_00c7b640)) ==
           ((float)local_264 == (float)DAT_00c7b640)) ||
         ((NAN((float)local_260) || NAN((float)DAT_00c7b644)) ==
          ((float)local_260 == (float)DAT_00c7b644))) {
        pfVar14 = (float *)FUN_007f0780(local_264,local_260);
      }
      else {
        pfVar14 = (float *)0x3;
      }
      if (param_1[10] == 1.177091e-42) {
        if (param_1[0x3c7] == -NAN) {
          local_24c = (float *)(DAT_00c71678 + 0x18300);
          iVar11 = FUN_00812c10(&local_264);
          pfVar12 = local_270;
          pfStack_29c = (float *)0x0;
          if (199 < iVar11) {
            pfVar14 = (float *)0x2;
          }
          do {
            param_1 = local_2b4;
            if (pfVar14 == (float *)0x0) break;
            iVar11 = FUN_006eef60();
            fVar21 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_270 = (float *)(fVar21 + fVar21);
            pfVar14 = local_270;
            FUN_0041d520();
            local_25c = pfVar14;
            local_24c = (float *)(local_284 + _DAT_00baa9c0);
            pfVar14 = local_270;
            FUN_0041d540();
            local_2b0 = (float)pfVar14 * (float)local_24c + *pfVar12;
            local_2ac = (float *)((float)local_25c * (float)local_24c + pfVar12[1]);
            FUN_00812f50(&local_258,&local_2b0,0,0,0);
            local_264 = local_258;
            local_24c = (float *)(DAT_00c71678 + 0x18300);
            local_260 = local_254;
            local_270 = (float *)FUN_007f0780(local_258,local_254);
            iVar11 = FUN_00812c10(&local_264);
            pfVar14 = local_270;
            if (199 < iVar11) {
              pfVar14 = (float *)0x2;
            }
            pfStack_29c = (float *)((int)pfStack_29c + 1);
            param_1 = local_2b4;
          } while (pfStack_29c < (float *)0xa);
          goto LAB_00527b52;
        }
LAB_00527b5b:
        cVar3 = FUN_006cae60(0,7);
      }
      else {
LAB_00527b52:
        if (param_1[0x3c7] != -NAN) goto LAB_00527b5b;
        uVar4 = FUN_006eef60();
        cVar3 = uVar4 % 3 == 0;
      }
      if (((cVar3 == '\0') || (param_1[10] != 3.447194e-43)) ||
         (cVar3 = FUN_00417430(0x1000a00,0), cVar3 != '\0')) {
        if ((pfVar14 == (float *)0x0) && (iVar11 = FUN_00812c90(&local_264), -1 < iVar11)) {
          pfVar14 = (float *)FUN_00812f00(local_2b8,iVar11);
          param_1[0xcd] = *pfVar14;
          param_1[0xce] = pfVar14[1];
          param_1[0x2d9] = 5.605194e-45;
          FUN_0040a380(local_278,1);
          if (0x270e < (int)param_1[0x104]) {
            FUN_0040a720(4);
          }
          param_1[0x104] = 0.0;
        }
      }
      else {
        FUN_006d9050(1);
        param_1[0x2d9] = 1.121039e-44;
        FUN_0040a380("Appear",1);
        param_1[0x104] = 0.0;
      }
      goto LAB_005283ec;
    }
    if (fVar21 != 5.605194e-45) goto LAB_005283ec;
    fVar21 = param_1[0x1f];
    uVar16 = (uint3)((uint)fVar21 >> 8);
    if (fVar21 == 0.0) {
      local_254 = (float *)((uint)uVar16 << 8);
    }
    else {
      local_254 = (float *)CONCAT31(uVar16,*(undefined *)((int)fVar21 + 0x34));
    }
    pfVar14 = param_1 + 0xcf;
    local_278 = (char *)(param_1[0xcd] - *pfVar14);
    pfStack_29c = (float *)(param_1[0xce] - param_1[0xd0]);
    local_274 = (undefined4 *)local_278;
    local_270 = pfStack_29c;
    pfVar12 = (float *)((float)local_278 * (float)local_278 +
                       (float)pfStack_29c * (float)pfStack_29c);
    FUN_00435a50();
    local_2b4 = pfVar12;
    if ((char)local_254 == '\0') {
      if (param_1[0x1f] != 0.0) {
        cVar3 = FUN_0040add0(&DAT_00b1d574);
        if (cVar3 == '\0') goto switchD_00527fc8_caseD_4;
        FUN_006d6ba0(0x45,0x3f800000,2,0,0x3f800000);
        fVar21 = param_1[10];
        if (fVar21 == 1.177091e-42) {
          uVar5 = FUN_006eef60();
          piVar9 = (int *)FUN_00428b20(1000,0x16,pfVar14,&DAT_00c7b640,param_1,0,uVar5);
          fVar21 = DAT_00c37940 * DAT_00baa4c0;
          piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa4c0);
          piVar9[0x3a] = (int)fVar21;
          (**(code **)(*piVar9 + 0xc))();
          puVar24 = &DAT_00c7b640;
          pfVar14 = (float *)FUN_00407170(&DAT_00c7b640);
LAB_00527e22:
          iVar11 = FUN_006d7cf0(&DAT_00c7b640,pfVar14,puVar24);
          *(undefined4 *)(iVar11 + 0x358) = 0xc1200000;
          uVar5 = FUN_00812c90(param_1 + 0xcf);
          FUN_004565e0(uVar5,900);
        }
        else {
          if (fVar21 == 4.764415e-44) {
            if (param_1[0xb] == 1.401298e-45) {
              uVar5 = FUN_006eef60();
              piVar9 = (int *)FUN_00428b20(1000,0x1a,pfVar14,&DAT_00c7b640,param_1,0,uVar5);
              fVar21 = DAT_00c37940 * DAT_00baa528;
              piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa528);
              piVar9[0x117] = 300;
              piVar9[0x3a] = (int)fVar21;
              piVar9[0x118] = 300;
              (**(code **)(*piVar9 + 0xc))();
              puVar24 = &DAT_00c7b640;
              pfVar14 = param_1 + 0x79;
              goto LAB_00527e22;
            }
            goto switchD_00527fc8_caseD_4;
          }
          if (fVar21 != 4.063766e-44) goto switchD_00527fc8_caseD_4;
          if (param_1[0xb] == 2.802597e-45) {
            cVar3 = FUN_00417430(0x1000000,0);
            if (cVar3 == '\0') {
              uVar5 = FUN_006eef60();
              piVar9 = (int *)FUN_00428b20(1000,0x19,pfVar14,&DAT_00c7b640,param_1,0,uVar5);
              fVar21 = DAT_00c37940 * DAT_00baa3a4;
              piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa3a4);
              piVar9[0x117] = 0x96;
              piVar9[0x3a] = (int)fVar21;
              piVar9[0x118] = 0x96;
              (**(code **)(*piVar9 + 0xc))();
              uVar5 = FUN_00812c90(param_1 + 0xcf);
              FUN_004565e0(uVar5,900);
            }
            goto switchD_00527fc8_caseD_4;
          }
          if (param_1[0xb] != 4.203895e-45) goto switchD_00527fc8_caseD_4;
          uVar5 = FUN_00407170(&DAT_00c7b640);
          iVar11 = FUN_006d7cf0(&DAT_00c7b640,uVar5);
          *(undefined4 *)(iVar11 + 0x358) = 0xc1200000;
          FUN_006b64d0(0x3f800000);
          uVar5 = FUN_00812c90(param_1 + 0xcf);
          FUN_004565e0(uVar5,900);
          AI_0043ef30();
          local_108 = 1;
          local_188 = 0;
          local_194 = 0xbd8f5c29;
          switch(param_1[0x2f0]) {
          case 0.0:
            local_250 = (float *)0x41000000;
            local_24c = (float *)0x0;
            uVar5 = 6;
            goto LAB_0052802d;
          case 1.401298e-45:
            local_24c = (float *)0x40c00000;
            break;
          case 2.802597e-45:
            local_250 = (float *)0x41000000;
            local_24c = (float *)0x41000000;
            goto LAB_00528024;
          case 4.203895e-45:
            local_24c = (float *)0x41400000;
            break;
          default:
            goto switchD_00527fc8_caseD_4;
          }
          local_250 = (float *)0x41200000;
LAB_00528024:
          uVar5 = 9;
LAB_0052802d:
          FUN_006cb2e0(param_1 + 0xcf,&local_250,uVar5,local_1a0);
        }
switchD_00527fc8_caseD_4:
        if ((param_1[0x1f] != 0.0) && (cVar3 = FUN_0040ae70(&DAT_00b1d560), cVar3 != '\0')) {
          param_1[0x61] = 4.203895e-45;
          param_1[0x62] = 2.802597e-45;
          goto LAB_005280c3;
        }
      }
      local_278 = (char *)((float)local_278 * DAT_00baa120);
      param_1[0x61] = 7.006492e-45;
      param_1[0x62] = 5.605194e-45;
      pfStack_29c = (float *)((float)pfStack_29c * DAT_00baa120);
      local_274 = (undefined4 *)local_278;
      local_270 = pfStack_29c;
    }
LAB_005280c3:
    pfVar14 = local_25c;
    if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380(local_25c,0);
      local_254 = (float *)CONCAT31(local_254._1_3_,1);
    }
    if (((param_1[10] == 1.177091e-42) && (param_1[0x1f] != 0.0)) &&
       (cVar3 = FUN_0040ae70(&DAT_00b1d574), cVar3 != '\0')) {
      uVar4 = FUN_006eef60();
      local_254 = (float *)((uint)local_254 & 0xff);
      if (uVar4 % 3 != 0) {
        local_254 = (float *)0x1;
      }
    }
    if ((float)local_2b4 < DAT_00baa81c) {
LAB_00528193:
      if ((char)local_254 != '\0') {
        param_1[0xcd] = (float)DAT_00c7b640;
        param_1[0xce] = (float)DAT_00c7b644;
        param_1[0x2d9] = 4.203895e-45;
        param_1[0x104] = 0.0;
        FUN_0040a380(pfVar14,0);
      }
    }
    else {
      fVar21 = param_1[0xd8] * param_1[0xd8] + param_1[0xd9] * param_1[0xd9];
      FUN_00435a50();
      if (((fVar21 < DAT_00baa380) || (0x1e < (int)param_1[0x104])) &&
         (uVar4 = FUN_006eef60(), uVar4 % 10 == 0)) goto LAB_00528193;
    }
    if (param_1[10] == 4.063766e-44) {
      if (((param_1[0xb] == 2.802597e-45) && (cVar3 = FUN_0040b030(&DAT_00b1d574), cVar3 != '\0'))
         && (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)) {
        param_1[0xcd] = (float)DAT_00c7b640;
        param_1[0xce] = (float)DAT_00c7b644;
        param_1[0x2d9] = 4.203895e-45;
        param_1[0x104] = 1.401158e-41;
        FUN_0040a380(pfVar14,0);
      }
      else if (((param_1[10] == 4.063766e-44) && (param_1[0xb] == 4.203895e-45)) &&
              (cVar3 = FUN_0040b030(&DAT_00b1d574), cVar3 != '\0')) {
        if ((int)param_1[0x2f0] < 3) {
          fVar21 = (float)((int)param_1[0x2f0] + 1);
          param_1[0x2f0] = fVar21;
          puVar10 = &DAT_00b1d428;
          param_1[0xcd] = (float)DAT_00c7b640;
          if (((uint)fVar21 & 1) == 0) {
            puVar10 = &DAT_00b1bc54;
          }
          param_1[0xce] = (float)DAT_00c7b644;
          param_1[0x2d9] = 4.203895e-45;
          param_1[0x104] = 1.401158e-41;
          FUN_0040a380(puVar10,0);
        }
        else {
          param_1[0x2f0] = 0.0;
        }
      }
    }
    fVar21 = param_1[0xdb];
    if (DAT_00baa8d0 <= (float)local_2b4) {
      fVar22 = (float)pfStack_29c * DAT_00baa0d0;
      if ((NAN(fVar21) || NAN((float)local_268)) == (fVar21 == (float)local_268)) {
        param_1[0xd8] = ((float)local_278 * DAT_00baa0d0 * param_1[0xe7]) / fVar21 + param_1[0xd8];
        param_1[0xd9] = (fVar22 * param_1[0xe7]) / fVar21 + param_1[0xd9];
      }
    }
    else {
      pfVar14 = (float *)FUN_00a10030(&local_27c);
      fVar21 = param_1[0xdb];
      if ((NAN(fVar21) || NAN((float)local_268)) == (fVar21 == (float)local_268)) {
        fVar22 = *pfVar14;
        param_1[0xd9] = (param_1[0xe7] * pfVar14[1]) / fVar21 + param_1[0xd9];
        param_1[0xd8] = (param_1[0xe7] * fVar22) / fVar21 + param_1[0xd8];
      }
    }
    if (param_1[10] == 4.27396e-43) {
      *(bool *)(param_1 + 0x52) =
           param_1[0xd8] <= (float)local_268 && (float)local_268 != param_1[0xd8];
    }
  }
LAB_005283ec:
  if (((param_1[10] == 4.764415e-44) &&
      (pfVar14 = param_1 + 0xcd,
      (NAN(param_1[0xcd]) || NAN((float)DAT_00c7b640)) != (param_1[0xcd] == (float)DAT_00c7b640)))
     && ((NAN(param_1[0xce]) || NAN((float)DAT_00c7b644)) != (param_1[0xce] == (float)DAT_00c7b644))
     ) {
    if (param_1[0x3c7] == -NAN) {
      uVar4 = FUN_006eef60();
      bVar20 = uVar4 % 7 == 0;
    }
    else {
      bVar20 = (float)local_268 < param_1[0x2ef];
    }
    if ((bVar20) && (((uint)param_1[0x5a] & 0x1000a00) == 0)) {
      *pfVar14 = local_290;
      param_1[0xce] = local_28c;
      param_1[0x2ef] = 0.0;
      local_290 = *pfVar14;
      local_28c = param_1[0xce];
      local_2b4 = *(float **)(DAT_00c71678 + 0x18300);
      iVar11 = FUN_007f0780(local_290,local_28c);
      if (iVar11 != 0) {
        pfVar12 = (float *)FUN_00813520(&local_290,pfVar14,0x42f00000,0,0,0);
        *pfVar14 = *pfVar12;
        param_1[0xce] = pfVar12[1];
      }
      param_1[0x2ec] = 0.0;
      param_1[0x104] = 0.0;
      param_1[0x2d9] = 8.407791e-45;
    }
  }
  if (param_1[0x2d9] == 4.203895e-45) {
    param_1[0x61] = 7.006492e-45;
  }
  pfVar14 = param_1 + 0xcf;
  if ((param_1[10] == 3.447194e-43) && (param_1[0xb] == 1.401298e-45)) {
    local_278 = *(char **)(DAT_00c71678 + 0x18300);
    uVar4 = FUN_00812c90(pfVar14);
    if ((uVar4 < 0x1c0) && (499 < *(int *)((int)local_278 + (uVar4 + 0x1db) * 4))) {
LAB_005285ae:
      fVar21 = param_1[0x2d9];
    }
    else {
      uVar4 = FUN_00812c90(pfVar14);
      fVar21 = param_1[0x2d9];
      if (uVar4 < 0x1c0) {
        *(undefined4 *)((int)local_278 + (uVar4 + 0x1db) * 4) = 500;
        goto LAB_005285ae;
      }
    }
    if (fVar21 == 2.242078e-44) {
      if (param_1[0xef] == 0.0) {
        uVar5 = FUN_006eef60();
        FUN_00428b20(1000,0xf,pfVar14,&DAT_00c7b640,0,0,uVar5);
        (**(code **)((int)*param_1 + 0x28))();
      }
    }
    else {
      if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0xef] != 0.0)) {
        cVar3 = FUN_00417430(0,0x10000000);
        if (cVar3 == '\0') {
          fVar21 = param_1[0xdb] * DAT_00baa1f8;
          *(undefined *)((int)param_1 + 0x173) = 0;
          param_1[0xe0] = param_1[0xe1];
          param_1[0x2d9] = 2.242078e-44;
          *(undefined *)(param_1 + 0xec) = 1;
          param_1[0x62] = 0.0;
          param_1[0x61] = 7.006492e-45;
          param_1[0xdb] = fVar21;
          FUN_006ae630();
        }
        local_2c0 = 0.0;
        local_2bc = -5.0;
        FUN_006d7cf0(&local_2c0,param_1 + 0x79,&DAT_00c7b640);
      }
      if (param_1[0x2d9] == 2.802597e-45) {
        FUN_0040a380("Regen",0);
        if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
          *(undefined *)(param_1 + 0xec) = 0;
          param_1[0x2d9] = 4.203895e-45;
          param_1[0xcd] = (float)DAT_00c7b640;
          param_1[0xce] = (float)DAT_00c7b644;
          param_1[0x62] = 5.605194e-45;
        }
      }
      else if (param_1[0x2d9] == 2.242078e-44) {
        FUN_0040a380(&DAT_00b60f6c,0);
      }
    }
  }
  if ((param_1[0x2d9] == 4.203895e-45) &&
     (((NAN(param_1[0xcd]) || NAN((float)DAT_00c7b640)) == (param_1[0xcd] == (float)DAT_00c7b640) ||
      ((NAN(param_1[0xce]) || NAN((float)DAT_00c7b644)) == (param_1[0xce] == (float)DAT_00c7b644))))
     ) {
    param_1[0xcd] = (float)DAT_00c7b640;
    param_1[0xce] = (float)DAT_00c7b644;
  }
  if ((param_1[10] == 4.063766e-44) && (param_1[0xb] == 2.802597e-45)) {
    if (param_1[0x2d9] == 7.006492e-45) {
      param_1[0x62] = 0.0;
      param_1[0xd8] = param_1[0xcd] - *pfVar14;
      param_1[0xd9] = param_1[0xce] - param_1[0xd0];
      if ((param_1[0x1f] == 0.0) || (cVar3 = FUN_0040add0(&DAT_00b1d560), cVar3 == '\0')) {
        if (-1 < (int)param_1[0x104]) goto LAB_0052883d;
      }
      else {
        FUN_006d6ba0(0xed,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0xb5,0x3f800000,2,0,0x3f800000);
        param_1[0x104] = 0.0;
LAB_0052883d:
        local_26c = (float *)((int)param_1[0xe9] - (int)param_1[0xe8]);
        if (0 < (int)local_26c) {
          do {
            fVar21 = (float)((int)param_1[0x104] + 1);
            param_1[0x104] = fVar21;
            if ((int)fVar21 < 0xf) {
              if ((int)fVar21 % local_2c4 != 2) {
LAB_0052888b:
                if ((int)fVar21 % 6 != 1) goto LAB_0052889b;
              }
LAB_005288b6:
              if (0 < *(short *)((int)param_1 + 0xc76)) {
                uVar13 = (int)*(short *)((int)param_1 + 0xc76) + 1;
                uVar4 = 3;
                if ((int)uVar13 < 3) {
                  uVar4 = uVar13;
                }
                if ((uVar4 != 0) && (uVar13 = FUN_006eef60(), uVar13 % uVar4 != 0))
                goto LAB_00528d74;
              }
              uVar5 = FUN_007e90f0();
              iVar11 = FUN_006eef60();
              fVar21 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_2b4 = (float *)(fVar21 + fVar21);
              pfVar14 = local_2b4;
              FUN_0041d520();
              local_270 = pfVar14;
              pfVar14 = local_2b4;
              FUN_0041d540();
              local_2c0 = (float)pfVar14 + param_1[0xcf];
              local_2bc = (float)local_270 + param_1[0xd0];
              iVar11 = FUN_00428b20(0x374,0,&local_2c0,&DAT_00c7b640,param_1,0,uVar5);
              local_280 = 0;
              local_27c = (undefined4 *)0x0;
              local_278 = (char *)0x0;
              *(uint *)(iVar11 + 0x168) = *(uint *)(iVar11 + 0x168) | 0x40000000;
              *(undefined4 *)(iVar11 + 0x16c) = *(undefined4 *)(iVar11 + 0x16c);
              local_14 = 0;
              local_298 = 0.0;
              local_294 = (float *)0x3;
              FUN_004a11c0(0,&local_298);
              uVar4 = 0;
              local_254 = (float *)((int)local_27c - local_280 >> 3);
              if (local_254 != (float *)0x0) {
                do {
                  if (*(int *)(local_280 + uVar4 * 8) == 1) {
                    piVar9 = (int *)(local_280 + 4 + uVar4 * 8);
                    *piVar9 = *piVar9 + 2;
                    if (*piVar9 < 0) {
                      *(undefined4 *)(local_280 + 4 + uVar4 * 8) = 0;
                    }
                    goto LAB_00528a93;
                  }
                  uVar4 = uVar4 + 1;
                } while (uVar4 < local_254);
              }
              local_290 = 1.401298e-45;
              local_28c = 2.802597e-45;
              if (local_27c == (undefined4 *)local_278) {
                FUN_004a11c0(local_27c,&local_290);
              }
              else {
                *local_27c = 1;
                local_27c[1] = 2;
                local_27c = local_27c + 2;
              }
LAB_00528a93:
              pfVar14 = (float *)0x0;
              local_254 = (float *)((int)local_27c - local_280 >> 3);
              if (local_254 != (float *)0x0) {
                do {
                  if (*(int *)(local_280 + (int)pfVar14 * 8) == 2) {
                    piVar9 = (int *)(local_280 + 4 + (int)pfVar14 * 8);
                    *piVar9 = *piVar9 + 1;
                    if (*piVar9 < 0) {
                      *(undefined4 *)(local_280 + 4 + (int)pfVar14 * 8) = 0;
                    }
                    goto LAB_00528b17;
                  }
                  pfVar14 = (float *)((int)pfVar14 + 1);
                } while (pfVar14 < local_254);
              }
              local_250 = (float *)0x2;
              local_24c = (float *)0x1;
              if (local_27c == (undefined4 *)local_278) {
                FUN_004a11c0(local_27c,&local_250);
              }
              else {
                *local_27c = 2;
                local_27c[1] = 1;
                local_27c = local_27c + 2;
              }
LAB_00528b17:
              iVar15 = FUN_006eef60();
              fVar21 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa704;
              local_2b4 = (float *)(fVar21 + fVar21);
              pfVar14 = local_2b4;
              FUN_0041d520();
              local_25c = pfVar14;
              pfVar14 = local_2b4;
              FUN_0041d540();
              local_2ac = pfVar14;
              local_2a8 = FUN_006eef60();
              local_2a8 = local_2a8 | 1;
              pfStack_29c = DAT_00b1f674;
              uStack_2a4._0_4_ = (undefined4)DAT_00b1f66c;
              uVar5 = (undefined4)uStack_2a4;
              uStack_2a4._4_4_ = (undefined4)((ulonglong)DAT_00b1f66c >> 0x20);
              uVar2 = uStack_2a4._4_4_;
              uStack_2a4 = DAT_00b1f66c;
              iVar15 = FUN_0049cbf0(local_2a8,uVar5,uVar2,DAT_00b1f674);
              if (iVar15 == 0) {
                FUN_0040a380("HopShort",0);
                if (*(int *)(iVar11 + 0x7c) != 0) {
                  FUN_00408e00();
                }
                iVar15 = FUN_006eef60();
                fVar21 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                         DAT_00ba9ff4 + DAT_00baa784;
LAB_00528c7d:
                pfVar12 = (float *)((float)local_2ac * fVar21);
                pfVar14 = (float *)((float)local_25c * fVar21);
              }
              else {
                if (iVar15 == 1) {
                  FUN_0040a380(&DAT_00b1de1c,0);
                  if (*(int *)(iVar11 + 0x7c) != 0) {
                    FUN_00408e00();
                  }
                  iVar15 = FUN_006eef60();
                  fVar21 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                           DAT_00ba9ff4;
                  fVar21 = fVar21 + fVar21 + DAT_00baa7e8;
                  goto LAB_00528c7d;
                }
                pfVar12 = local_2ac;
                pfVar14 = local_25c;
                if (iVar15 == 2) {
                  FUN_0040a380("HopLong",0);
                  if (*(int *)(iVar11 + 0x7c) != 0) {
                    FUN_00408e00();
                  }
                  iVar15 = FUN_006eef60();
                  fVar21 = (float)((double)iVar15 + (double)(&DAT_00bacb00)[-(iVar15 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa81c;
                  goto LAB_00528c7d;
                }
              }
              local_14 = 0xffffffff;
              *(float **)(iVar11 + 0x334) = pfVar12;
              *(float **)(iVar11 + 0x338) = pfVar14;
              *(undefined4 *)(iVar11 + 0xb64) = 6;
              *(float **)(iVar11 + 0x360) = pfVar12;
              *(float **)(iVar11 + 0x364) = pfVar14;
              if (local_280 != 0) {
                deallocate(local_280,(int)local_278 - local_280 >> 3);
                local_280 = 0;
                local_27c = (undefined4 *)0x0;
                local_278 = (char *)0x0;
              }
            }
            else {
              if ((int)fVar21 < 0x20) goto LAB_0052888b;
LAB_0052889b:
              if (((int)fVar21 < 0x3d) && ((int)fVar21 % 0xf == 0)) goto LAB_005288b6;
            }
LAB_00528d74:
            local_26c = (float *)((int)local_26c + -1);
          } while (local_26c != (float *)0x0);
          local_26c = (float *)0x0;
        }
      }
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
        uVar5 = FUN_00435c70();
        (**(code **)((int)*param_1 + 0x24))(uVar5);
      }
    }
    if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0x2d9] != 7.006492e-45)) &&
       (param_1[0x2d9] != 2.522337e-44)) {
      FUN_0040a380(&DAT_00b60f6c,0);
      param_1[0x2d9] = 7.006492e-45;
      local_285 = FUN_00417430(0x1000000,0);
      FUN_006ae630();
      if (local_285 != '\0') {
        FUN_00431310(param_1);
        FUN_006b5c10(&fStack_4c,0xffffff6a,0,0);
      }
      param_1[0x104] = -NAN;
      *(undefined *)(param_1 + 0xec) = 1;
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0xe0] = 0.1;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
    }
  }
  fVar21 = param_1[0xdb] * DAT_00baa354;
  param_1[0x104] = (float)((int)param_1[0x104] + ((int)param_1[0xe9] - (int)param_1[0xe8]));
  param_1[0xdb] = fVar21;
  puVar8 = puStack_20;
LAB_00528e8a:
  puStack_20 = puVar8;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

