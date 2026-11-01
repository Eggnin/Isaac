/* Local J460 decompiler output.
 * VA: 0x005111b0
 * Entry: 005111b0
 * Dispatcher: 0x006c2990
 * Types: 27,859
 * Identities: 27.0.0,27.1.0,27.3.0,859.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00512110; instructions=934
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=27,859; identities=27.0.0,27.1.0,27.3.0,859.0.0;
   dispatcher=0x006c2990; end=0x00512110; instructions=934 */

void __fastcall AI_005111b0(int param_1)

{
  byte bVar1;
  char cVar2;
  char cVar3;
  byte **ppbVar4;
  uint uVar5;
  float *pfVar6;
  int iVar7;
  float *pfVar8;
  int **ppiVar9;
  uint uVar10;
  int iVar11;
  char *pcVar12;
  uint uVar13;
  undefined4 uVar14;
  bool bVar15;
  float fVar16;
  undefined auVar17 [16];
  int *piVar18;
  float fVar19;
  int *piVar20;
  undefined auStack_13c [7];
  char local_135;
  int *local_134;
  int *local_130;
  int *local_12c;
  undefined4 local_128;
  int *local_124;
  float local_120;
  float local_11c;
  int *local_118;
  int *local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  float local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  undefined4 local_f0;
  uint local_ec;
  int local_e8;
  undefined local_e4 [44];
  undefined local_b8 [12];
  float local_ac;
  undefined4 local_a8;
  undefined local_20;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_13c;
  if ((*(int *)(param_1 + 0x28) == 0x35b) ||
     ((*(int *)(param_1 + 0x2c) != 1 && (*(int *)(param_1 + 0x30) != 99)))) {
    cVar3 = '\x01';
  }
  else {
    cVar3 = '\0';
  }
  local_135 = cVar3;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    cVar2 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (((cVar2 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    if (cVar3 != '\0') {
      *(undefined *)(param_1 + 0x3b0) = 1;
      FUN_00aef12b();
      return;
    }
    goto LAB_00511faf;
  }
  *(undefined *)(param_1 + 0x3b0) = 0;
  if ((cVar3 != '\0') && (0.0 < *(float *)(param_1 + 0x14))) {
    auVar17 = ZEXT816(0);
    local_12c = (int *)0x0;
    if ((*(int *)(param_1 + 0xb64) == 3) || (*(int *)(param_1 + 0x7c) == 0)) {
LAB_005112bb:
      pfVar6 = *(float **)(param_1 + 8);
      if (pfVar6 != *(float **)(param_1 + 0xc)) {
        do {
          local_11c = pfVar6[3];
          if (((uint)pfVar6[2] & 0x8000) == 0) {
            if (((uint)pfVar6[2] & 0x408080) == 0) {
              auVar17._0_4_ = auVar17._0_4_ + *pfVar6;
            }
            *pfVar6 = 0.0;
          }
          pfVar6 = pfVar6 + 0xe;
        } while (pfVar6 != *(float **)(param_1 + 0xc));
        local_12c = auVar17._0_4_;
      }
    }
    else {
      cVar2 = FUN_0040ae70(&DAT_00b1d644);
      if ((cVar2 == '\0') || (cVar2 = FUN_0040b090("Close"), cVar2 != '\0')) {
        auVar17 = ZEXT416(local_12c);
        goto LAB_005112bb;
      }
    }
    fVar19 = DAT_00baa87c;
    if ((*(int *)(param_1 + 0xb64) == 3) && (0.0 < (float)local_12c)) {
      fVar16 = *(float *)(param_1 + 3000) - *(float *)(param_1 + 0x14) * DAT_00baa0d0;
      iVar11 = *(int *)(param_1 + 0x410) + (int)(*(float *)(param_1 + 0x14) + DAT_00baa2d0) / 2;
      if (fVar16 <= 0.0) {
        fVar16 = 0.0;
      }
      iVar7 = 10;
      if (iVar11 < 10) {
        iVar7 = iVar11;
      }
      *(int *)(param_1 + 0x410) = iVar7;
      *(float *)(param_1 + 3000) = fVar16;
      if (fVar19 < (float)local_12c) {
        FUN_0040a380("Bombed",0);
        *(undefined4 *)(param_1 + 3000) = 0;
      }
    }
  }
  if (*(int *)(param_1 + 0xf1c) != -1) {
    if ((*(uint *)(param_1 + 0x168) & 0x10) == 0) {
LAB_00511463:
      fVar19 = *(float *)(param_1 + 0xbbc) -
               (*(float *)(param_1 + 0x39c) * DAT_00baa6fc) / DAT_00baaa44;
      if (fVar19 <= 0.0) {
        fVar19 = 0.0;
      }
      *(float *)(param_1 + 0xbbc) = fVar19;
      if (cVar3 == '\0') {
        *(undefined4 *)(param_1 + 0xbbc) = 0;
      }
    }
    else {
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        ppbVar4 = *(byte ***)(param_1 + 0x7c);
        if (&DAT_0000000f < ppbVar4[5]) {
          ppbVar4 = (byte **)*ppbVar4;
        }
        pcVar12 = "Bombed";
        do {
          bVar1 = *(byte *)ppbVar4;
          bVar15 = bVar1 < (byte)*pcVar12;
          if (bVar1 != *pcVar12) {
LAB_00511400:
            uVar5 = -(uint)bVar15 | 1;
            goto LAB_00511405;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar4 + 1);
          bVar15 = bVar1 < ((byte *)pcVar12)[1];
          if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00511400;
          ppbVar4 = (byte **)((int)ppbVar4 + 2);
          pcVar12 = (char *)((byte *)pcVar12 + 2);
        } while (bVar1 != 0);
        uVar5 = 0;
LAB_00511405:
        if (uVar5 == 0) goto LAB_00511463;
      }
      if (cVar3 == '\0') goto LAB_00511463;
      local_118 = DAT_00baa454;
      cVar3 = FUN_00417430(0x1000a00,0);
      piVar18 = local_118;
      if (cVar3 != '\0') {
        piVar18 = DAT_00baa630;
      }
      piVar18 = (int *)(((float)piVar18 * *(float *)(param_1 + 0x39c)) / DAT_00baaa44 +
                       *(float *)(param_1 + 0xbbc));
      if ((float)DAT_00baa454 <= (float)piVar18) {
        piVar18 = DAT_00baa454;
      }
      *(int **)(param_1 + 0xbbc) = piVar18;
    }
    FUN_006d8e40(1);
  }
  if (*(int *)(param_1 + 0x28) == 0x35b) {
    fVar19 = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    *(float *)(param_1 + 0x36c) = fVar19;
    if (((*(uint *)(param_1 + 0x168) & 0x200) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
      piVar18 = DAT_00baa2e4;
      if (*(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0) {
        piVar18 = DAT_00baad30;
      }
      piVar20 = DAT_00baa2e4;
      if (*(float *)(param_1 + 0x364) <= 0.0 && *(float *)(param_1 + 0x364) != 0.0) {
        piVar20 = DAT_00baad30;
      }
      local_134 = piVar20;
      local_12c = piVar18;
      if (*(int *)(param_1 + 0xf1c) != -1) {
        pfVar6 = (float *)FUN_006d82d0(&local_120);
        fVar16 = (float)local_12c * (float)local_12c + (float)local_134 * (float)local_134;
        FUN_00435a50();
        fVar19 = *(float *)(param_1 + 0x36c);
        piVar20 = (int *)((float)local_134 + fVar16 * DAT_00baa2d0 * pfVar6[1]);
        piVar18 = (int *)(fVar16 * DAT_00baa2d0 * *pfVar6 + (float)local_12c);
      }
      if (NAN(fVar19) == (fVar19 == 0.0)) {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * (float)piVar20) / fVar19 + *(float *)(param_1 + 0x364);
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * (float)piVar18) / fVar19 + *(float *)(param_1 + 0x360);
      }
    }
    else {
      FUN_007e6300(0);
    }
  }
  else {
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
  }
  iVar7 = FUN_006be840();
  iVar11 = *(int *)(param_1 + 0x2c);
  pfVar6 = (float *)(param_1 + 0x33c);
  local_110 = 5;
  local_134 = (int *)(*(float *)(iVar7 + 0x33c) - *pfVar6);
  if (iVar11 != 1) {
    local_110 = 2;
  }
  uVar14 = 0;
  local_128 = (int *)CONCAT31(local_128._1_3_,iVar11 == 3);
  if (iVar11 != 3) {
    uVar14 = 3;
  }
  AI_0043ef30();
  local_ac = local_ac - DAT_00baa0d0;
  local_a8 = 0x3f88f5c3;
  if (*(int *)(param_1 + 0x28) == 0x35b) {
    local_a8 = 0x3f99999a;
    local_20 = 1;
  }
  iVar11 = *(int *)(param_1 + 0xb64);
  if (iVar11 == 3) {
    if (local_135 != '\0') {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x10;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
    }
    if (*(int *)(param_1 + 0x410) < 1) {
      FUN_0040a380(&DAT_00b1bc54,0);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        cVar3 = FUN_00417430(0x200,0);
        if ((cVar3 != '\0') || (cVar3 = FUN_00417430(0x1000800,0), cVar3 != '\0')) {
          uVar5 = FUN_006eef60();
          if (uVar5 % 0x32 == 0) {
            *(undefined4 *)(param_1 + 0xb64) = 9;
            *(undefined4 *)(param_1 + 0x410) = 0;
            FUN_00aef12b();
            return;
          }
          goto LAB_00511faf;
        }
        cVar3 = FUN_006ac710(7,*(undefined4 *)(param_1 + 0x20));
        if (cVar3 != '\0') {
          if (*(int *)(param_1 + 0xba0) < 1) {
            iVar11 = FUN_006be840();
            local_11c = *(float *)(iVar11 + 0x340);
            local_120 = *(float *)(iVar11 + 0x33c);
            fVar19 = local_11c - *(float *)(param_1 + 0x340);
            if (((local_120 - *pfVar6) * (local_120 - *pfVar6) + fVar19 * fVar19 < DAT_00baac64) &&
               ((*(int *)(param_1 + 0xc64) == 8 ||
                (cVar3 = FUN_007f0df0(pfVar6,&local_120,uVar14,999,0,local_128,0), cVar3 != '\0'))))
            {
              *(undefined4 *)(param_1 + 0xba0) = 7;
              *(undefined4 *)(param_1 + 0xb64) = 8;
              *(undefined4 *)(param_1 + 0x410) = 0;
              FUN_00aef12b();
              return;
            }
          }
          else {
            *(int *)(param_1 + 0xba0) = *(int *)(param_1 + 0xba0) + -1;
          }
        }
      }
      else if (((float)DAT_00baa454 <= *(float *)(param_1 + 0xbbc)) ||
              (cVar3 = FUN_006cae60(0,7), cVar3 != '\0')) {
        *(float *)(param_1 + 0xf20) = DAT_00c7b640;
        *(float *)(param_1 + 0xf24) = DAT_00c7b644;
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined4 *)(param_1 + 0x410) = 0;
        *(undefined4 *)(param_1 + 0xba0) = 0x46;
      }
    }
    iVar11 = DAT_00c71678;
    if (((((*(uint *)(param_1 + 0x168) & 0x4000) == 0) && (cVar3 = FUN_006fd350(), cVar3 == '\0'))
        && ((*(int *)(iVar11 + 0x264f8) + *(int *)(param_1 + 0x20)) % 7 == 0)) &&
       (0 < *(int *)(param_1 + 0x410))) {
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + -1;
    }
LAB_00511faf:
    FUN_00aef12b();
    return;
  }
  if (iVar11 != 8) {
    if (iVar11 == 9) {
      if (local_135 != '\0') {
        *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xffffffef;
        *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      }
      if ((*(int *)(param_1 + 0x7c) != 0) &&
         ((cVar3 = FUN_0040add0(&DAT_00b1d644), cVar3 != '\0' ||
          ((*(int *)(param_1 + 0x7c) != 0 && (cVar3 = FUN_0040add0("Close"), cVar3 != '\0')))))) {
        FUN_006d6ba0(0xa6,0x3f800000,2,0,0x3f800000);
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
      FUN_0040a380("Shoot",0);
      *(bool *)(param_1 + 0x148) = (float)local_134 < 0.0;
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
        *(undefined4 *)(param_1 + 0x410) = 0;
        FUN_00aef12b();
        return;
      }
    }
    goto LAB_00511faf;
  }
  if (local_135 != '\0') {
    *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) & 0xffffffef;
    *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
  }
  piVar18 = (int *)(param_1 + 0x78);
  local_12c = piVar18;
  if ((*(int *)(param_1 + 0x7c) != 0) &&
     ((cVar3 = FUN_0040add0(&DAT_00b1d644), local_130 = piVar18, cVar3 != '\0' ||
      ((*(int *)(param_1 + 0x7c) != 0 &&
       (cVar3 = FUN_0040add0("Close"), local_130 = piVar18, local_12c = piVar18, cVar3 != '\0'))))))
  {
    local_130 = piVar18;
    FUN_006d6ba0(0xa6,0x3f800000,2,0,0x3f800000);
    local_12c = local_130;
  }
  if ((*(int *)(param_1 + 0xf1c) != -1) &&
     ((*(int *)(param_1 + 0x7c) == 0 ||
      ((cVar3 = FUN_0040ae70("Shoot"), cVar3 == '\0' &&
       ((*(int *)(param_1 + 0x7c) == 0 || (cVar3 = FUN_0040ae70("Close"), cVar3 == '\0')))))))) {
    cVar3 = FUN_00417430(0x1000a00,0);
    if (cVar3 == '\0') {
      FUN_006d8b20(0);
      pfVar8 = (float *)FUN_006d8d30(&local_120);
      fVar19 = pfVar8[1] - *(float *)(param_1 + 0x340);
      *(float *)(param_1 + 0xf20) = *pfVar8 - *pfVar6;
    }
    else {
      *(float *)(param_1 + 0xf20) = DAT_00c7b640;
      fVar19 = DAT_00c7b644;
    }
    *(float *)(param_1 + 0xf24) = fVar19;
  }
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
  FUN_0040a380("Shoot",0);
  piVar18 = local_134;
  if (*(int *)(param_1 + 0xf1c) != -1) {
    piVar18 = *(int **)(param_1 + 0xf20);
  }
  *(bool *)(param_1 + 0x148) = (float)piVar18 < 0.0;
  if (*(int *)(param_1 + 0x2c) == 3) {
    if (*(int *)(param_1 + 0x7c) == 0) goto LAB_00511e87;
    cVar3 = FUN_0040add0("Close");
    if (cVar3 != '\0') {
      local_130 = (int *)0x34;
      FUN_00956780();
      FUN_0092dc30(local_130,0x3f800000,10,0,0x3f800000,0);
      iVar11 = FUN_006be840();
      local_128 = (int *)(*(float *)(iVar11 + 0x33c) - *pfVar6);
      local_124 = (int *)(*(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340));
      FUN_00a10030(&local_118);
      if (*(int *)(param_1 + 0xf1c) == -1) {
        local_130 = local_114;
        local_134 = local_118;
      }
      else {
        cVar3 = FUN_00a10600(&DAT_00c7b640);
        if (cVar3 == '\0') {
          ppiVar9 = (int **)FUN_00a10030(&local_128);
        }
        else {
          ppiVar9 = (int **)FUN_0067f070(&local_120);
        }
        local_134 = *ppiVar9;
        local_130 = ppiVar9[1];
      }
      uVar14 = FUN_006eef60();
      local_120 = (float)local_134 * DAT_00baa87c + *pfVar6;
      local_11c = (float)local_130 * DAT_00baa87c + *(float *)(param_1 + 0x340);
      local_128 = (int *)FUN_006fe410(1000,0x48,&local_120,&DAT_00c7b640,param_1,2,uVar14,0);
      piVar18 = (int *)((int)local_128 + 0x3bc);
      if (*(int *)((int)local_128 + 0x3bc) != 0) {
        local_118 = piVar18;
        FUN_004cf210(&local_118);
      }
      *piVar18 = param_1;
      FUN_004cdcf0(piVar18);
      piVar18 = local_130;
      FUN_00499d60();
      *(float *)((int)local_128 + 0x474) = (float)piVar18 * DAT_00baa948;
      FUN_004238f0(0x3f800000);
      iVar11 = FUN_006eef60();
      local_128 = (int *)((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa75c);
      uVar5 = FUN_006eef60();
      FUN_00703330(pfVar6,0x23,(uVar5 & 3) + 5,local_128,local_e4,0x47c35000,0);
      FUN_00703670(0xc);
      cVar3 = FUN_004567b0();
      if ((cVar3 == '\0') &&
         (uVar5 = 0, *(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0))
      {
        do {
          local_118 = (int *)FUN_00417870(uVar5);
          local_134 = (int *)((float)local_118[0xd0] - *(float *)(param_1 + 0x340));
          local_130 = (int *)((float)local_118[0xcf] - *(float *)(param_1 + 0x33c));
          fVar19 = (float)local_134 * (float)local_134 + (float)local_130 * (float)local_130;
          FUN_00435a50();
          piVar20 = local_130;
          piVar18 = local_134;
          if (DAT_00ba9fe4 < fVar19) {
            piVar20 = (int *)((float)local_130 * ((float)DAT_00baa454 / fVar19));
            piVar18 = (int *)((float)local_134 * ((float)DAT_00baa454 / fVar19));
          }
          if (fVar19 < DAT_00baaa00) {
            local_11c = (float)piVar18 * DAT_00baa6fc;
            local_f8 = *(undefined4 *)(param_1 + 0x340);
            local_120 = (float)piVar20 * DAT_00baa6fc;
            local_128 = *(int **)(*local_118 + 0x54);
            local_fc = *(float *)(param_1 + 0x33c);
            local_10c = *(undefined4 *)(param_1 + 0x28);
            local_108 = *(undefined4 *)(param_1 + 0x2c);
            local_104 = *(undefined4 *)(param_1 + 0x34);
            local_100 = *(undefined4 *)(param_1 + 0x38);
            local_f4 = *(undefined4 *)(param_1 + 0x360);
            local_f0 = *(undefined4 *)(param_1 + 0x364);
            if ((*(uint *)(param_1 + 0x168) & 0x20000000) == 0) {
              uVar13 = 0;
            }
            else {
              uVar13 = 2;
            }
            if ((*(uint *)(param_1 + 0x16c) & 0x400000) == 0) {
              uVar10 = 0;
            }
            else {
              uVar10 = 4;
            }
            local_ec = uVar10 | uVar13 | (uint)((*(uint *)(param_1 + 0x168) & 0x100) != 0);
            local_e8 = param_1;
            (*(code *)local_128)(&local_10c,&local_120,0x41100000);
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                               >> 2));
      }
    }
  }
  if (*(int *)(param_1 + 0x7c) != 0) {
    cVar3 = FUN_0040add0("Shoot");
    if (cVar3 != '\0') {
      iVar11 = FUN_006be840();
      local_130 = (int *)(*(float *)(iVar11 + 0x33c) - *(float *)(param_1 + 0x33c));
      local_134 = (int *)(*(float *)(iVar11 + 0x340) - *(float *)(param_1 + 0x340));
      if (*(int *)(param_1 + 0xf1c) != -1) {
        local_130 = *(int **)(param_1 + 0xf20);
        local_134 = *(int **)(param_1 + 0xf24);
      }
      if (((NAN((float)local_130) || NAN(DAT_00c7b640)) == ((float)local_130 == DAT_00c7b640)) ||
         ((NAN((float)local_134) || NAN(DAT_00c7b644)) == ((float)local_134 == DAT_00c7b644))) {
        fVar19 = (float)local_134 * (float)local_134 + (float)local_130 * (float)local_130;
        FUN_00435a50();
        if (fVar19 <= DAT_00ba9fe4) {
          local_128 = local_130;
          local_124 = local_134;
        }
        else {
          local_124 = (int *)((DAT_00baa7b8 / fVar19) * (float)local_134);
          local_128 = (int *)((DAT_00baa7b8 / fVar19) * (float)local_130);
        }
        FUN_006cb2e0((float *)(param_1 + 0x33c),&local_128,local_110,local_b8);
        uVar14 = FUN_00407170();
        local_120 = 0.0;
        local_11c = -6.0;
        iVar11 = FUN_006d7cf0(&local_120,uVar14,&DAT_00c7b640);
        *(undefined4 *)(iVar11 + 0xe4) = 0x3f400000;
        *(undefined4 *)(iVar11 + 0xe8) = 0x3f400000;
        *(undefined4 *)(iVar11 + 0x358) = 0x3f800000;
      }
    }
    if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) goto LAB_00511faf;
  }
LAB_00511e87:
  *(undefined4 *)(param_1 + 0xb64) = 3;
  *(undefined4 *)(param_1 + 0x410) = 0;
  FUN_0040a380(&DAT_00b1bc54,0);
  FUN_00aef12b();
  return;
}

