/* Local J460 decompiler output.
 * VA: 0x004d9000
 * Entry: 004d9000
 * Dispatcher: 0x006c2990
 * Types: 854
 * Identities: 854.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004da590; instructions=1107
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=854; identities=854.0.0; dispatcher=0x006c2990;
   end=0x004da590; instructions=1107 */

void __fastcall AI_004d9000(int *param_1)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  float *pfVar4;
  float *pfVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined4 uVar9;
  int *piVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float local_130;
  float fStack_12c;
  float local_124;
  float local_120;
  int local_11c;
  undefined auStack_118 [8];
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined local_d4 [16];
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined auStack_b8 [12];
  undefined4 uStack_ac;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_130;
  local_11c = *(int *)(DAT_00c71678 + 0x18300);
  local_110 = _DAT_00bac7b0;
  uStack_10c = _UNK_00bac7b4;
  uStack_108 = _UNK_00bac7b8;
  uStack_104 = _UNK_00bac7bc;
  local_f0 = 0;
  local_ec = 0;
  local_e8 = 0;
  fVar11 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_100 = _DAT_00bac5d0;
  uStack_fc = _UNK_00bac5d4;
  uStack_f8 = _UNK_00bac5d8;
  uStack_f4 = _UNK_00bac5dc;
  local_130 = fVar11;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    param_1[0x2f0] = 0;
    param_1[0x104] = -1;
    break;
  case 3:
    if (param_1[0x2f0] < 1) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      cVar3 = FUN_00417430(0x100,0);
      if ((cVar3 == '\0') && (param_1[0x3ce] == 0)) {
        cVar3 = FUN_00417430(0x800,0);
        if (cVar3 == '\0') {
          pfVar5 = (float *)(param_1 + 0x108);
          cVar3 = FUN_00a10600(&DAT_00c7b640);
          if (cVar3 != '\0') {
            local_130 = (float)param_1[0xcf];
            fStack_12c = (float)param_1[0xd0];
            FUN_006be840();
            pfVar4 = (float *)FUN_004d8f20(local_130,fStack_12c);
            *pfVar5 = *pfVar4;
            param_1[0x109] = (int)pfVar4[1];
          }
          fVar11 = (float)param_1[0xdb];
          fVar13 = *pfVar5 * DAT_00baa354;
          if ((NAN(fVar11) || NAN(DAT_00ba9fe4)) == (fVar11 == DAT_00ba9fe4)) {
            param_1[0xd9] =
                 (int)(((float)param_1[0xe7] * (float)param_1[0x109] * DAT_00baa354) / fVar11 +
                      (float)param_1[0xd9]);
            param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar13) / fVar11 + (float)param_1[0xd8]);
          }
          iVar6 = FUN_007f0780(param_1[0xcf],param_1[0xd0]);
          if (iVar6 == 0) {
            uVar8 = FUN_006eef60();
            if (uVar8 % 0x1e == 0) {
              local_130 = (float)param_1[0xcf];
              fStack_12c = (float)param_1[0xd0];
              FUN_006be840();
              pfVar4 = (float *)FUN_004d8f20(local_130,fStack_12c);
              *pfVar5 = *pfVar4;
              param_1[0x109] = (int)pfVar4[1];
            }
            if (*(char *)(param_1 + 100) != '\0') {
              *pfVar5 = *pfVar5 * DAT_00baad50;
              param_1[0x109] = (int)((float)param_1[0x109] * DAT_00baad50);
            }
          }
          else {
            uVar8 = FUN_006eef60();
            if (uVar8 % 0x1e == 0) {
              FUN_00813520(&local_130,param_1 + 0xcf,0,0,0,0);
              local_124 = local_130 - (float)param_1[0xcf];
              local_120 = fStack_12c - (float)param_1[0xd0];
              pfVar4 = (float *)FUN_00a10030(auStack_118);
              *pfVar5 = *pfVar4;
              param_1[0x109] = (int)pfVar4[1];
            }
          }
        }
        else {
          iVar6 = FUN_006be840();
          local_130 = *(float *)(iVar6 + 0x33c);
          fStack_12c = *(float *)(iVar6 + 0x340);
          FUN_007e4940(&local_130,0);
        }
      }
      else {
        uVar9 = FUN_006bec40(auStack_118,0);
        FUN_007e33c0(uVar9,0x3f333333,0,1);
      }
      FUN_0040a380("MoveHori",0);
      *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
      cVar3 = FUN_00417430(0x1000a00,0);
      if (cVar3 == '\0') {
        iVar6 = FUN_006be840();
        pfVar5 = (float *)(param_1 + 0xcf);
        local_130 = *(float *)(iVar6 + 0x33c) - *pfVar5;
        local_124 = *(float *)(iVar6 + 0x340) - (float)param_1[0xd0];
        if ((-1 < param_1[0x104]) ||
           (((((float)((uint)local_124 & DAT_00bacb40) <= (float)((uint)local_130 & DAT_00bacb40) &&
              ((float)((uint)local_124 & DAT_00bacb40) <= DAT_00baa9a0)) ||
             (DAT_00baa328 <= (float)param_1[0xe0] / (float)param_1[0xe1])) ||
            ((uVar8 = FUN_006eef60(), uVar8 % 3 != 0 ||
             (iVar7 = FUN_007f0780(*pfVar5,param_1[0xd0]), iVar6 = local_11c, iVar7 != 0)))))) {
          uVar8 = FUN_006eef60();
          if ((uVar8 % 3 == 0) && ((float)((uint)local_124 & DAT_00bacb40) < DAT_00baa8d0)) {
            FUN_006d6ba0(0x1fe,0x3f800000,10,0,0x3f800000);
            fVar11 = DAT_00baad50;
            if (DAT_00ba9fe4 < local_130) {
              fVar11 = DAT_00baa454;
            }
            param_1[0xcd] = (int)fVar11;
            param_1[0xce] = 0;
            param_1[0x2d9] = 8;
            param_1[0x2ef] = 0x3f000000;
          }
        }
        else {
          param_1[0x104] = 0;
          param_1[0x2d9] = 6;
          iVar7 = FUN_00812c90(pfVar5);
          fVar11 = (float)(iVar7 / *(int *)(iVar6 + 0xc)) * DAT_00baa904 + DAT_00baaa00;
          param_1[0xcd] =
               (int)((float)(iVar7 % *(int *)(iVar6 + 0xc)) * DAT_00baa904 + DAT_00baa904);
          param_1[0xce] = (int)fVar11;
        }
      }
    }
    else {
      param_1[0x2f0] = param_1[0x2f0] - (int)fVar11;
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    }
    break;
  case 5:
    if ((float)param_1[0x2ef] <= DAT_00baa630 && DAT_00baa630 != (float)param_1[0x2ef]) {
      param_1[0x2ef] = 0x40000000;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * _DAT_00baa3c8);
    FUN_0040a380("MoveHori",0);
    local_124 = (float)param_1[0xcd];
    *(bool *)(param_1 + 0x52) = local_124 < 0.0;
    local_130 = (float)param_1[0xce];
    iVar6 = FUN_006be840();
    fVar11 = DAT_00baa134;
    if ((*(float *)(iVar6 + 0x340) <= (float)param_1[0xd0] + DAT_00baa81c) &&
       (fVar11 = local_130, *(float *)(iVar6 + 0x340) < (float)param_1[0xd0] - DAT_00baa81c)) {
      fVar11 = DAT_00baacfc;
    }
    fVar13 = (float)param_1[0x2ef];
    fVar12 = fVar13 * fVar11;
    if (fVar13 * fVar11 <= DAT_00baad74) {
      fVar12 = DAT_00baad74;
    }
    if (DAT_00baa630 <= fVar12) {
      fVar12 = DAT_00baa630;
    }
    fVar11 = (float)param_1[0xdb];
    if (NAN(fVar11) == (fVar11 == 0.0)) {
      fVar14 = ((float)param_1[0xe7] * local_124 * fVar13) / fVar11 + (float)param_1[0xd8];
      param_1[0xd9] = (int)((fVar12 * (float)param_1[0xe7]) / fVar11 + (float)param_1[0xd9]);
      param_1[0xd8] = (int)fVar14;
      fVar13 = (float)param_1[0x2ef];
    }
    else {
      fVar14 = (float)param_1[0xd8];
    }
    iVar6 = DAT_00c71678;
    fVar12 = DAT_00baa9a0;
    fVar11 = DAT_00baa784;
    if (fVar13 + DAT_00baa198 <= DAT_00baa784) {
      fVar11 = fVar13 + DAT_00baa198;
    }
    param_1[0x2ef] = (int)fVar11;
    if (((0.0 < fVar14) &&
        (*(float *)(*(int *)(iVar6 + 0x18300) + 0x1c) + fVar12 < (float)param_1[0xcf])) ||
       ((fVar14 < 0.0 &&
        (fVar12 = *(float *)(*(int *)(iVar6 + 0x18300) + 0x14) - fVar12,
        (float)param_1[0xcf] <= fVar12 && fVar12 != (float)param_1[0xcf])))) {
      (**(code **)(*param_1 + 0x28))();
    }
    break;
  case 6:
    param_1[0xdb] = 0x3f4ccccd;
    param_1[0xd8] =
         (int)((((float)param_1[0xcd] - (float)param_1[0xcf]) * DAT_00baa1f8) / DAT_00baa3a4 +
              (float)param_1[0xd8]);
    param_1[0xd9] =
         (int)((((float)param_1[0xce] - (float)param_1[0xd0]) * DAT_00baa1f8) / DAT_00baa3a4 +
              (float)param_1[0xd9]);
    FUN_0040a380("Burrow",0);
    if (param_1[0x1f] != 0) {
      cVar3 = FUN_0040add0("Sound");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      }
      if (param_1[0x1f] != 0) {
        cVar3 = FUN_0040add0(&DAT_00b1d3b0);
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x42,0x3f800000,2,0,0x3f800000);
          param_1[0x62] = 0;
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
      }
    }
    param_1[0x104] = param_1[0x104] + (int)local_130;
    param_1[0xcd] = (int)DAT_00c7b640;
    param_1[0xce] = (int)DAT_00c7b644;
    param_1[0xd8] = (int)DAT_00c7b640;
    param_1[0xd9] = (int)DAT_00c7b644;
    if ((0x1e < param_1[0x104]) && (uVar8 = FUN_006eef60(), uVar8 % 0xf == 0)) {
      iVar7 = FUN_006be840();
      iVar6 = *(int *)(iVar7 + 0x33c);
      iVar7 = *(int *)(iVar7 + 0x340);
      param_1[0x2d9] = 7;
      param_1[0x61] = 5;
      param_1[0xcf] = iVar6;
      param_1[0xd0] = iVar7;
      param_1[0x104] = 0;
      FUN_006d6ba0(0x1fe,0x3f800000,10,0,0x3f800000);
    }
    break;
  case 7:
    FUN_0040a380("ChargeDown",0);
    fVar11 = (float)param_1[0xcd];
    if (((NAN(fVar11) || NAN(DAT_00c7b640)) == (fVar11 == DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644)))
    {
      fVar13 = (float)param_1[0xdb] * DAT_00baa354;
      bVar1 = NAN(DAT_00ba9fe4);
      bVar2 = fVar13 == DAT_00ba9fe4;
      param_1[0xdb] = (int)fVar13;
      if ((NAN(fVar13) || bVar1) == bVar2) {
        param_1[0xd8] =
             (int)(((fVar11 - (float)param_1[0xcf]) * (float)param_1[0xe7]) / fVar13 +
                  (float)param_1[0xd8]);
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * ((float)param_1[0xce] - (float)param_1[0xd0])) / fVar13 +
                  (float)param_1[0xd9]);
      }
    }
    else if (param_1[0x61] == 5) {
      iVar6 = FUN_006be840();
      local_130 = *(float *)(iVar6 + 0x33c);
      fStack_12c = *(float *)(iVar6 + 0x340);
      FUN_007e33c0(&local_130,0x3f4ccccd,0,1);
    }
    else {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    }
    if (param_1[0x1f] != 0) {
      cVar3 = FUN_0040add0(&DAT_00b1d3b0);
      if (cVar3 != '\0') {
        param_1[0x61] = 3;
        FUN_00703670(0xc);
        FUN_006d6ba0(0x4d,0x3f800000,2,0,0x3f800000);
        param_1[0xd8] = (int)DAT_00c7b640;
        param_1[0xd9] = (int)DAT_00c7b644;
        param_1[0xcd] = param_1[0xcf];
        param_1[0xce] = param_1[0xd0];
        param_1[0x62] = 4;
        local_130 = 0.0;
        fStack_12c = -14.0;
        FUN_006d7cf0(&local_130,&local_110,&DAT_00c7b640);
        AI_0043ef30();
        uStack_ac = 0xbca3d70a;
        local_130 = 8.0;
        fStack_12c = 10.0;
        FUN_006cb2e0(param_1 + 0xcf,&local_130,9,auStack_b8);
      }
      if (param_1[0x1f] != 0) {
        cVar3 = FUN_0040add0("Sound");
        if (cVar3 != '\0') {
          FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
          param_1[0xcd] = (int)DAT_00c7b640;
          param_1[0xce] = (int)DAT_00c7b644;
        }
        goto LAB_004d9f3c;
      }
    }
    goto LAB_004d9911;
  case 8:
    param_1[0xdb] = (int)((float)param_1[0xdb] * _DAT_00baa3c8);
    FUN_0040a380("MoveHori",0);
    local_124 = (float)param_1[0xcd];
    *(bool *)(param_1 + 0x52) = local_124 < 0.0;
    cVar3 = FUN_00417430(0x1000a00,0);
    if (cVar3 == '\0') {
      if (*(char *)(param_1 + 100) == '\0') {
        local_130 = (float)param_1[0xce];
        iVar6 = FUN_006be840();
        fVar11 = *(float *)(iVar6 + 0x33c);
        fVar13 = DAT_00baa134;
        if ((*(float *)(iVar6 + 0x340) <= (float)param_1[0xd0] + DAT_00baa81c) &&
           (fVar13 = local_130, *(float *)(iVar6 + 0x340) < (float)param_1[0xd0] - DAT_00baa81c)) {
          fVar13 = DAT_00baacfc;
        }
        fVar12 = (float)param_1[0x2ef];
        fVar14 = fVar13 * fVar12;
        if (fVar13 * fVar12 <= DAT_00baad74) {
          fVar14 = DAT_00baad74;
        }
        if (DAT_00baa630 <= fVar14) {
          fVar14 = DAT_00baa630;
        }
        fVar13 = (float)param_1[0xdb];
        if ((NAN(fVar13) || NAN(DAT_00ba9fe4)) == (fVar13 == DAT_00ba9fe4)) {
          param_1[0xd8] =
               (int)((local_124 * fVar12 * (float)param_1[0xe7]) / fVar13 + (float)param_1[0xd8]);
          param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar14) / fVar13 + (float)param_1[0xd9]);
          fVar12 = (float)param_1[0x2ef];
        }
        if ((fVar12 < DAT_00baa454) ||
           ((float)((uint)((float)param_1[0xcf] - fVar11) & DAT_00bacb40) < DAT_00baab7c)) {
          fVar12 = (float)param_1[0xe7] * DAT_00baa198 + fVar12;
          fVar11 = DAT_00baa784;
          if (fVar12 <= DAT_00baa784) {
            fVar11 = fVar12;
          }
          param_1[0x2ef] = (int)fVar11;
        }
        break;
      }
    }
    else if (*(char *)(param_1 + 100) == '\0') goto LAB_004d9911;
    fVar11 = (float)param_1[0x65] * (float)param_1[0x65] +
             (float)param_1[0x66] * (float)param_1[0x66];
    FUN_00435a50();
    if ((DAT_00baa81c < fVar11) &&
       (pfVar5 = (float *)FUN_00a10030(auStack_118),
       DAT_00baa304 < (float)param_1[0x68] * pfVar5[1] + (float)param_1[0x67] * *pfVar5)) {
      FUN_00703670(6);
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      fVar11 = (float)param_1[0x68] * DAT_00baa6bc;
      param_1[0xd8] = (int)((float)param_1[0xd8] - (float)param_1[0x67] * DAT_00baa6bc);
      param_1[0xd9] = (int)((float)param_1[0xd9] - fVar11);
      param_1[0x2f0] = 0xc;
      uVar9 = FUN_00407170();
      local_130 = 0.0;
      local_124 = (float)param_1[0xcd] * DAT_00baa848 + (float)param_1[0xcf];
      fStack_12c = -14.0;
      local_120 = (float)param_1[0xce] * DAT_00baa848 + (float)param_1[0xd0];
      piVar10 = (int *)FUN_006d7cf0(&local_130,uVar9,&DAT_00c7b640);
      piVar10[0xd6] = 0x40a00000;
      (**(code **)(*piVar10 + 0x3c))(&local_110,0xffffffff,0xff,0,1);
      AI_0043ef30();
      uStack_ac = 0x3da3d70a;
      local_124 = (float)param_1[0xcd] * DAT_00baa7e8 + (float)param_1[0xcf];
      local_130 = 10.0;
      fStack_12c = 12.0;
      local_120 = (float)param_1[0xce] * DAT_00baa7e8 + (float)param_1[0xd0];
      FUN_006cb2e0(&local_124,&local_130,9,auStack_b8);
      cVar3 = FUN_0040aaf0("BounceOverlay",1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x2b) = 1;
      }
    }
    goto LAB_004d9911;
  case 9:
    param_1[0xdb] = (int)((float)param_1[0xdb] * _DAT_00baa3c8);
    FUN_0040a380("Charge",0);
    local_130 = (float)param_1[0xcd];
    *(bool *)(param_1 + 0x52) = local_130 < 0.0;
    local_124 = (float)param_1[0xd8];
    fVar13 = local_124 * local_124 + (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    if (DAT_00baa6fc <= fVar13) {
      param_1[0x104] = 0;
    }
    else {
      param_1[0x104] = param_1[0x104] + (int)fVar11;
    }
    fVar11 = (float)param_1[0xdb];
    fVar13 = (float)param_1[0xce] * DAT_00baa754;
    if ((NAN(fVar11) || NAN(DAT_00ba9fe4)) == (fVar11 == DAT_00ba9fe4)) {
      param_1[0xd8] = (int)((local_130 * DAT_00baa754 * (float)param_1[0xe7]) / fVar11 + local_124);
      param_1[0xd9] = (int)((fVar13 * (float)param_1[0xe7]) / fVar11 + (float)param_1[0xd9]);
    }
    if ((*(char *)(param_1 + 100) == '\0') ||
       ((float)param_1[0xce] * (float)param_1[0x68] + (float)param_1[0xcd] * (float)param_1[0x67] <=
        DAT_00baa304)) {
      if (10 < param_1[0x104]) {
        param_1[0x2d9] = 3;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
      }
    }
    else {
      FUN_00703670(0xc);
      FUN_006d6ba0(0x4d,0x3f800000,2,0,0x3f800000);
      param_1[0xd8] = (int)DAT_00c7b640;
      param_1[0xd9] = (int)DAT_00c7b644;
      param_1[0xcd] = param_1[0xcf];
      local_124 = (float)param_1[0xcf] * DAT_00baa848;
      param_1[0xce] = param_1[0xd0];
      local_124 = local_124 + (float)param_1[0xcf];
      local_130 = 0.0;
      local_120 = (float)param_1[0xd0] * DAT_00baa848 + (float)param_1[0xd0];
      fStack_12c = -14.0;
      FUN_006d7cf0(&local_130,&local_110,&DAT_00c7b640);
      AI_0043ef30();
      FUN_006ccdd0(0xc,&DAT_00c7b640,0,auStack_b8);
      param_1[0x2d9] = 10;
    }
    uVar8 = FUN_006eef60();
    if ((uVar8 & 1) == 0) {
      iVar6 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa500 + DAT_00baa2d0);
    }
    break;
  case 10:
    FUN_0040a380("ChargeHit",0);
    if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("Sound"), cVar3 != '\0')) {
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      fVar11 = DAT_00baad50;
      if (*(char *)(param_1 + 0x52) != '\0') {
        fVar11 = DAT_00baa454;
      }
      param_1[0xd8] = (int)(fVar11 * DAT_00baa784 + (float)param_1[0xd8]);
      param_1[0xd9] = (int)((float)param_1[0xd9] + 0.0);
      param_1[0xcd] = (int)DAT_00c7b640;
      param_1[0xce] = (int)DAT_00c7b644;
    }
    fVar11 = (float)param_1[0xcd];
    if (((NAN(fVar11) || NAN(DAT_00c7b640)) == (fVar11 == DAT_00c7b640)) ||
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) == ((float)param_1[0xce] == DAT_00c7b644)))
    {
      fVar13 = (float)param_1[0xdb] * DAT_00baa354;
      param_1[0xdb] = (int)fVar13;
      if (NAN(fVar13) == (fVar13 == 0.0)) {
        param_1[0xd8] =
             (int)(((fVar11 - (float)param_1[0xcf]) * (float)param_1[0xe7]) / fVar13 +
                  (float)param_1[0xd8]);
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * ((float)param_1[0xce] - (float)param_1[0xd0])) / fVar13 +
                  (float)param_1[0xd9]);
      }
    }
    else {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    }
LAB_004d9f3c:
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
LAB_004d9911:
    param_1[0x2d9] = 3;
    param_1[0xcd] = (int)DAT_00c7b640;
    param_1[0xce] = (int)DAT_00c7b644;
  }
  if (((param_1[0x27] != 0) && (iVar6 = FUN_0040ace0("Deform"), iVar6 != 0)) &&
     (*(char *)(iVar6 + 0xc) != '\0')) {
    iVar7 = FUN_0040b220(0);
    *(undefined4 *)(iVar7 + 0x34) = *(undefined4 *)(iVar6 + 0x10);
    *(undefined4 *)(iVar7 + 0x38) = *(undefined4 *)(iVar6 + 0x14);
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_11c = 3;
    do {
      iVar6 = FUN_006eef60();
      local_130 = ((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  - DAT_00baa2d0) * DAT_00baa8d0;
      iVar6 = FUN_006eef60();
      local_c4 = 0;
      local_c0 = 0;
      local_bc = 0;
      local_124 = ((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  - DAT_00baa2d0) * DAT_00baa9a0 + (float)param_1[0xcf];
      local_120 = local_130 + (float)param_1[0xd0];
      local_e4 = _DAT_00bac7b0;
      uStack_e0 = _UNK_00bac7b4;
      uStack_dc = _UNK_00bac7b8;
      uStack_d8 = _UNK_00bac7bc;
      local_d4 = ZEXT816(0);
      iVar6 = FUN_006eef60();
      local_130 = DAT_00baadc0 -
                  (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa904;
      uVar8 = FUN_006eef60();
      uVar9 = FUN_006eef60();
      piVar10 = (int *)FUN_00428b20(1000,2,&local_124,&DAT_00c7b640,0,(uVar8 & 1) + 3,uVar9);
      (**(code **)(*piVar10 + 0x3c))(&local_e4,0xffffffff,0xff,0,1);
      local_11c = local_11c + -1;
      piVar10[0x37] = 0;
      piVar10[0x38] = (int)local_130;
      piVar10[0xd6] = 0x41200000;
    } while (local_11c != 0);
  }
  FUN_00aef12b();
  return;
}

