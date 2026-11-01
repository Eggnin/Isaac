/* Local J460 decompiler output.
 * VA: 0x004a3040
 * Entry: 004a3040
 * Dispatcher: 0x006c2990
 * Types: 917
 * Identities: 917.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004a5cf0; instructions=2363
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=917; identities=917.0.0; dispatcher=0x006c2990;
   end=0x004a5cf0; instructions=2363 */

void __fastcall AI_004a3040(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  undefined *puVar14;
  char cVar15;
  byte bVar16;
  byte **ppbVar17;
  uint uVar18;
  int iVar19;
  int *piVar20;
  byte **ppbVar21;
  uint uVar22;
  float *pfVar23;
  int iVar24;
  undefined4 uVar25;
  int *piVar26;
  byte *pbVar27;
  char *pcVar28;
  undefined4 extraout_ECX;
  undefined4 *puVar29;
  bool bVar30;
  int **ppiVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  int local_1b0 [8];
  undefined4 local_190;
  undefined4 uStack_18c;
  undefined4 local_188;
  int local_184;
  float local_180;
  char local_17c [4];
  int local_178;
  undefined4 *local_174;
  undefined4 *local_170;
  float local_16c;
  float local_168;
  float local_164;
  int *local_160;
  float local_15c;
  float local_158;
  float local_154;
  int **local_150;
  float local_14c;
  int **local_148;
  uint local_144;
  undefined8 uStack_140;
  float fStack_138;
  undefined local_134 [4];
  int **local_130;
  char local_129;
  undefined local_128 [8];
  float local_120;
  undefined4 local_11c;
  undefined4 local_104;
  undefined4 local_d0;
  undefined4 local_cc;
  undefined4 local_94;
  undefined4 local_70;
  undefined4 local_50;
  undefined4 uStack_4c;
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
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af301b;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_168 = 0.0;
  local_180 = DAT_00baa324;
  local_184 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  if (0.0 < (float)param_1[5]) {
    param_1[5] = 0;
    pfVar23 = (float *)param_1[2];
    if (pfVar23 != (float *)param_1[3]) {
      do {
        if (((((uint)pfVar23[2] & 4) != 0) && (((uint)pfVar23[0xc] >> 1 & 1) == 0)) &&
           (((pfVar23[4] == 1.401298e-42 && (pfVar23[5] == 1.975831e-43)) ||
            (pfVar23[6] == 1.284991e-42)))) {
          *pfVar23 = 0.0;
        }
        fVar32 = *pfVar23;
        pfVar23 = pfVar23 + 0xe;
        param_1[5] = (int)(fVar32 + (float)param_1[5]);
      } while (pfVar23 != (float *)param_1[3]);
    }
  }
  local_160 = param_1;
  puVar14 = &stack0xfffffffc;
  if (((((float)param_1[0xe0] <= (float)param_1[0xe1] * DAT_00baa280 &&
         (float)param_1[0xe1] * DAT_00baa280 != (float)param_1[0xe0]) &&
       (iVar24 = param_1[0x2d9], puVar14 = &stack0xfffffffc, iVar24 != 0x10)) &&
      (puVar14 = &stack0xfffffffc, iVar24 != 4)) &&
     (((puVar14 = &stack0xfffffffc, iVar24 != 6 && (puVar14 = &stack0xfffffffc, iVar24 != 10)) &&
      (puVar14 = &stack0xfffffffc, iVar24 != 0xb)))) {
    param_1[0x2d9] = 0x10;
    FUN_006ae630(local_24);
    param_1[0x62] = 0;
    ppbVar21 = (byte **)param_1[0x1f];
    if (ppbVar21 == (byte **)0x0) {
LAB_004a31e2:
      cVar15 = FUN_0040a5d0(&DAT_00b1e848,1);
      if (cVar15 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar17 = ppbVar21;
      if (&DAT_0000000f < ppbVar21[5]) {
        ppbVar17 = (byte **)*ppbVar21;
      }
      pbVar27 = &DAT_00b1e848;
      do {
        bVar16 = *(byte *)ppbVar17;
        bVar30 = bVar16 < *pbVar27;
        if (bVar16 != *pbVar27) {
LAB_004a31c4:
          uVar18 = -(uint)bVar30 | 1;
          goto LAB_004a31c9;
        }
        if (bVar16 == 0) break;
        bVar16 = *(byte *)((int)ppbVar17 + 1);
        bVar30 = bVar16 < pbVar27[1];
        if (bVar16 != pbVar27[1]) goto LAB_004a31c4;
        ppbVar17 = (byte **)((int)ppbVar17 + 2);
        pbVar27 = pbVar27 + 2;
      } while (bVar16 != 0);
      uVar18 = 0;
LAB_004a31c9:
      if ((uVar18 != 0) || ((*(byte *)(ppbVar21 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0')))
         ) goto LAB_004a31e2;
    }
    param_1[0xcd] = (int)DAT_00c7b640;
    param_1[0xce] = (int)DAT_00c7b644;
    puVar14 = puStack_20;
  }
  puStack_20 = puVar14;
  iVar13 = _UNK_00bac8cc;
  iVar12 = _UNK_00bac8c8;
  iVar11 = _UNK_00bac8c4;
  iVar10 = _DAT_00bac8c0;
  iVar9 = _UNK_00bac7bc;
  iVar1 = _UNK_00bac7b8;
  iVar19 = _UNK_00bac7b4;
  iVar24 = _DAT_00bac7b0;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    local_190 = 0;
    uStack_18c = 0;
    local_188 = 0;
    if (param_1 + 0x79 != local_1b0) {
      param_1[0x79] = iVar24;
      param_1[0x7a] = iVar19;
      param_1[0x7b] = iVar1;
      param_1[0x7c] = iVar9;
      *(undefined8 *)(param_1 + 0x81) = 0;
      param_1[0x7d] = iVar10;
      param_1[0x7e] = iVar11;
      param_1[0x7f] = iVar12;
      param_1[0x80] = iVar13;
      param_1[0x83] = 0;
    }
    param_1[0x2f0] = -1;
    param_1[0x2f1] = 1;
    param_1[0x62] = 0;
    break;
  case 3:
    param_1[0x62] = 4;
    ppbVar21 = (byte **)param_1[0x1f];
    if (ppbVar21 == (byte **)0x0) {
LAB_004a331e:
      cVar15 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar15 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar21[5]) {
        ppbVar21 = (byte **)*ppbVar21;
      }
      pbVar27 = &DAT_00b1bc54;
      do {
        bVar16 = *(byte *)ppbVar21;
        bVar30 = bVar16 < *pbVar27;
        if (bVar16 != *pbVar27) {
LAB_004a3306:
          uVar18 = -(uint)bVar30 | 1;
          goto LAB_004a330b;
        }
        if (bVar16 == 0) break;
        bVar16 = *(byte *)((int)ppbVar21 + 1);
        bVar30 = bVar16 < pbVar27[1];
        if (bVar16 != pbVar27[1]) goto LAB_004a3306;
        ppbVar21 = (byte **)((int)ppbVar21 + 2);
        pbVar27 = pbVar27 + 2;
      } while (bVar16 != 0);
      uVar18 = 0;
LAB_004a330b:
      if ((uVar18 != 0) ||
         ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004a331e;
    }
    if (param_1[0x2e8] < 1) {
      if (param_1[0x2f1] == 0) {
        local_129 = '\0';
        pfVar23 = (float *)FUN_004a2940((int)&uStack_140 + 4,&local_129);
        fVar32 = *pfVar23;
        param_1[0xcd] = (int)fVar32;
        fStack_138 = pfVar23[1];
        param_1[0xce] = (int)fStack_138;
        fVar32 = fVar32 - (float)param_1[0xcf];
        fStack_138 = fStack_138 - (float)param_1[0xd0];
        uStack_140 = CONCAT44(fVar32 + fVar32,(undefined4)uStack_140);
        iVar24 = FUN_0067f260();
        param_1[0x2f0] = iVar24;
        if (local_129 != '\0') {
          param_1[0xcd] = (int)DAT_00c7b640;
          param_1[0xce] = (int)DAT_00c7b644;
          iVar24 = param_1[0x2f0];
        }
        if (iVar24 == 1) {
          FUN_0040a380("ChargeStartUp",0);
          iVar24 = 8;
        }
        else {
          pcVar28 = "ChargeStartDown";
          if (iVar24 != 3) {
            pcVar28 = "ChargeStartHori";
          }
          FUN_0040a380(pcVar28,0);
          iVar24 = 8;
        }
      }
      else {
        FUN_0040a380("Attack",0);
        iVar24 = FUN_006be840();
        fVar32 = (float)param_1[0xd0] - *(float *)(iVar24 + 0x340);
        fVar33 = (float)param_1[0xcf] - *(float *)(iVar24 + 0x33c);
        fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
        FUN_00435a50();
        fVar32 = fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x360) + *(float *)(iVar24 + 0x33c);
        *(bool *)(param_1 + 0x52) = (float)param_1[0xcf] <= fVar32 && fVar32 != (float)param_1[0xcf]
        ;
        iVar24 = 9;
      }
      param_1[0x2d9] = iVar24;
      param_1[0x2f1] = 0;
    }
    break;
  case 4:
    if (param_1[0x1f] == 0) {
LAB_004a4a0f:
      FUN_0040a380(&DAT_00b1d428,0);
    }
    else {
      cVar15 = FUN_0040add0("Shoot");
      if (cVar15 != '\0') {
        param_1[0x62] = 4;
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004a4a0f;
    }
    if (param_1[0x2e8] < 1) {
      param_1[0x62] = 4;
      local_178 = 0;
      local_174 = (undefined4 *)0x0;
      local_170 = (undefined4 *)0x0;
      local_14 = 2;
      iVar24 = FUN_006d0c60(&local_144,1000,0x8d);
      local_150 = *(int ***)(iVar24 + 0xc);
      FUN_004175b0();
      iVar24 = 0;
      if ((param_1[0x2f0] == 0) && ((int)local_150 < 0xe)) {
        FUN_0049cb60(0,((int)local_150 < 4) * '\x02' + '\x01',0);
        iVar24 = local_178;
      }
      uVar18 = 0;
      uVar22 = (int)local_174 - iVar24 >> 3;
      if (uVar22 != 0) {
        do {
          if (*(int *)(iVar24 + uVar18 * 8) == 1) {
            piVar26 = (int *)(iVar24 + 4 + uVar18 * 8);
            *piVar26 = *piVar26 + 2;
            if (*piVar26 < 0) {
              *(undefined4 *)(iVar24 + 4 + uVar18 * 8) = 0;
            }
            goto LAB_004a4b34;
          }
          uVar18 = uVar18 + 1;
        } while (uVar18 < uVar22);
      }
      uStack_140 = CONCAT44(1,(undefined4)uStack_140);
      fStack_138 = 2.802597e-45;
      if (local_174 == local_170) {
        FUN_004a11c0(local_174,(int)&uStack_140 + 4);
        iVar24 = local_178;
      }
      else {
        *local_174 = 1;
        local_174[1] = 2;
        local_174 = local_174 + 2;
      }
LAB_004a4b34:
      uVar18 = 0;
      uVar22 = (int)local_174 - iVar24 >> 3;
      if (uVar22 != 0) {
        do {
          if (*(int *)(iVar24 + uVar18 * 8) == 2) {
            piVar26 = (int *)(iVar24 + 4 + uVar18 * 8);
            *piVar26 = *piVar26 + 1;
            if (*piVar26 < 0) {
              *(undefined4 *)(iVar24 + 4 + uVar18 * 8) = 0;
            }
            goto LAB_004a4ba4;
          }
          uVar18 = uVar18 + 1;
        } while (uVar18 < uVar22);
      }
      uStack_140 = CONCAT44(2,(undefined4)uStack_140);
      fStack_138 = 1.401298e-45;
      if (local_174 == local_170) {
        FUN_004a11c0(local_174,(int)&uStack_140 + 4);
      }
      else {
        *local_174 = 2;
        local_174[1] = 1;
        local_174 = local_174 + 2;
      }
LAB_004a4ba4:
      local_144 = FUN_006eef60();
      local_144 = local_144 | 1;
      fStack_138 = DAT_00b1f674;
      uStack_140._0_4_ = (undefined4)DAT_00b1f66c;
      uVar25 = (undefined4)uStack_140;
      uStack_140._4_4_ = (float)((ulonglong)DAT_00b1f66c >> 0x20);
      uVar2 = uStack_140._4_4_;
      uStack_140 = DAT_00b1f66c;
      iVar24 = FUN_0049cbf0(local_144,uVar25,uVar2,DAT_00b1f674);
      if (iVar24 == 0) {
        FUN_0040a380("GoUnder",0);
        param_1[0x2d9] = 0xb;
        param_1[0x2f0] = 1;
      }
      else if (iVar24 == 1) {
        FUN_0040a380(&DAT_00b1d2ec,0);
        iVar24 = FUN_006be840();
        fVar32 = (float)param_1[0xd0] - *(float *)(iVar24 + 0x340);
        fVar33 = (float)param_1[0xcf] - *(float *)(iVar24 + 0x33c);
        fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
        FUN_00435a50();
        *(bool *)(param_1 + 0x52) =
             *(float *)(iVar24 + 0x33c) + *(float *)(iVar24 + 0x360) * fVar32 * DAT_00baa120 <
             (float)param_1[0xcf];
        param_1[0x2d9] = 10;
      }
      else if (iVar24 == 2) {
        FUN_004a2ce0();
        FUN_0040a380("GoUnder",0);
      }
      local_14 = 0xffffffff;
      if (local_178 != 0) {
        deallocate(local_178,(int)local_170 - local_178 >> 3);
      }
    }
    break;
  case 6:
    FUN_00452bf0(local_40 + 4);
    local_129 = FUN_0040cae0("GoUnder",7);
    FUN_0040d040();
    if (local_129 != '\0') {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380(&DAT_00b1d33c,0);
      }
      break;
    }
    cVar15 = FUN_0040b030(&DAT_00b1d560);
    if (cVar15 != '\0') {
      FUN_006d6ba0(0x48,0x3f800000,2,0,0x3f800000);
      param_1[0xcd] = (int)DAT_00c7b640;
      param_1[0xce] = (int)DAT_00c7b644;
      param_1[0x61] = 3;
      param_1[0x62] = 0;
      param_1[0x2ee] = 0;
    }
    cVar15 = FUN_0040b090(&DAT_00b1d560);
    if ((cVar15 != '\0') && (cVar15 = FUN_0040b090(&DAT_00b1d574), cVar15 == '\0')) {
      fVar33 = (float)param_1[0xdb] * DAT_00baa2d0;
      fVar32 = (float)param_1[0xe7] * _DAT_00baa070 + (float)param_1[0x2ee];
      param_1[0xdb] = (int)fVar33;
      if (fVar32 <= DAT_00ba9fe4) {
        fVar32 = DAT_00ba9fe4;
      }
      if (DAT_00baa454 <= fVar32) {
        fVar32 = DAT_00baa454;
      }
      param_1[0x2ee] = (int)fVar32;
      param_1[0xd8] = (int)((fVar32 * ((float)param_1[0x2ec] - (float)param_1[0xcf])) / fVar33);
      param_1[0xd9] = (int)((fVar32 * ((float)param_1[0x2ed] - (float)param_1[0xd0])) / fVar33);
    }
    cVar15 = FUN_0040b030(&DAT_00b1d574);
    if (cVar15 != '\0') {
      FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
      FUN_006b6810(param_1 + 0x79);
      AI_0043ef30();
      local_94 = 3;
      uStack_140 = CONCAT44(0x41200000,(undefined4)uStack_140);
      fStack_138 = 0.0;
      FUN_006cb2e0(param_1 + 0xcf,(int)&uStack_140 + 4,8,local_128);
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      param_1[0x61] = 5;
      param_1[0x62] = 4;
      if (param_1[0xf0] == 0) {
        uVar25 = FUN_006eef60();
        piVar26 = (int *)FUN_00428b20(1000,0xa8,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar25);
        FUN_006a92a0(param_1);
        (**(code **)(*piVar26 + 0xc))();
        FUN_006a92e0(piVar26);
      }
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    FUN_0040a380("Surface",0);
    param_1[0x2d9] = 4;
    uVar18 = FUN_006eef60();
    iVar24 = uVar18 % 0x1e + 0x14;
    goto LAB_004a571c;
  case 8:
    uVar18 = param_1[0x2f0];
    if ((int)uVar18 < 0) {
      if (param_1[0x1f] != 0) {
        cVar15 = FUN_0040add0("Shoot");
        if (cVar15 != '\0') {
          *(undefined *)(param_1 + 0x52) = 0;
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
      }
      param_1[0x2d9] = 3;
      uVar22 = FUN_006eef60();
      iVar24 = AI_0041af60(local_17c,1000,0x8d,1,0,0);
      uVar18 = *(uint *)(iVar24 + 0xc);
      FUN_004175b0();
      local_160[0x2e8] = 1;
      param_1 = local_160;
      if (uVar22 % 5 + 8 <= uVar18) {
        local_160[0x2f1] = 1;
      }
      break;
    }
    if (uVar18 < 4) {
                    /* WARNING: Load size is inaccurate */
      if ((*(int *)(*ThreadLocalStoragePointer + 0xc) < DAT_00c80020) &&
         (FUN_00aef29d(&DAT_00c80020), DAT_00c80020 == -1)) {
        _DAT_00c80024 = _DAT_00bacb90;
        _DAT_00c80028 = _UNK_00bacb94;
        uRam00c8002c = _UNK_00bacb98;
        uRam00c80030 = _UNK_00bacb9c;
        _DAT_00c80034 = _DAT_00babfb0;
        uRam00c80038 = _UNK_00babfb4;
        uRam00c8003c = _UNK_00babfb8;
        uRam00c80040 = _UNK_00babfbc;
        FUN_00aef253(&DAT_00c80020);
      }
      local_160 = *(int **)(&DAT_00c80024 + uVar18 * 8);
      local_168 = *(float *)(&DAT_00c80028 + uVar18 * 8);
    }
    else {
      local_160 = DAT_00c7b640;
      local_168 = DAT_00c7b644;
    }
    if (param_1[0x1f] == 0) {
LAB_004a35f3:
      if ((param_1[0x1f] != 0) && (*(char *)(param_1[0x1f] + 0x34) != '\0')) goto LAB_004a3608;
    }
    else {
      cVar15 = FUN_0040add0("Shoot");
      if (cVar15 != '\0') {
        *(bool *)(param_1 + 0x52) = param_1[0x2f0] == 0;
        FUN_006d6ba0(0x12d,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x1da,0x3f800000,2,0,0x3f800000);
        param_1[0x2ee] = param_1[0xcf];
        param_1[0x2ef] = param_1[0xd0];
        param_1[0x2ec] = 0;
        param_1[0x2ed] = 0;
        param_1[0xdf] = (int)(*(float *)(param_1[0xcc] + 0x44) * DAT_00baa784);
      }
      if ((param_1[0x1f] == 0) || (cVar15 = FUN_0040ae70("Shoot"), cVar15 == '\0'))
      goto LAB_004a35f3;
LAB_004a3608:
      local_180 = DAT_00baa418;
      local_158 = DAT_00baa54c;
      FUN_0041d540();
      fVar33 = DAT_00baa54c;
      FUN_0041d520();
      fVar34 = local_158 * (float)local_160;
      local_158 = local_158 * local_168 + fVar33 * (float)local_160;
      fVar32 = (float)param_1[0xcd];
      local_148 = (int **)(fVar34 - fVar33 * local_168);
      fVar33 = (float)param_1[0xce];
      if (((NAN(fVar32) || NAN((float)DAT_00c7b640)) != (fVar32 == (float)DAT_00c7b640)) &&
         ((NAN(fVar33) || NAN(DAT_00c7b644)) != (fVar33 == DAT_00c7b644))) {
        iVar24 = FUN_006be840();
        fVar32 = *(float *)(iVar24 + 0x33c);
        fVar33 = *(float *)(iVar24 + 0x340);
      }
      fVar32 = ((fVar33 - (float)param_1[0xd0]) * local_158 +
               (fVar32 - (float)param_1[0xcf]) * (float)local_148) * DAT_00baa030;
      if (fVar32 <= DAT_00baad0c) {
        fVar32 = DAT_00baad0c;
      }
      if (DAT_00baa198 <= fVar32) {
        fVar32 = DAT_00baa198;
      }
      fVar33 = fVar32 * local_158 + local_168;
      fVar32 = fVar32 * (float)local_148 + (float)local_160;
      local_130 = (int **)((fVar33 + fVar33) * (float)param_1[0xe7] + (float)param_1[0xd9]);
      local_158 = (fVar32 + fVar32) * (float)param_1[0xe7] + (float)param_1[0xd8];
      param_1[0xd9] = (int)local_130;
      param_1[0xd8] = (int)local_158;
      iVar24 = FUN_006ac760();
      if (iVar24 != 0) {
        local_158 = local_158 * DAT_00baa120;
        local_130 = (int **)((float)local_130 * DAT_00baa120);
        pfVar23 = (float *)FUN_0067f070(&local_154);
        iVar24 = FUN_006eef60();
        fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) * DAT_00ba9ff4
        ;
        fVar33 = fVar32 * pfVar23[1];
        fVar32 = fVar32 * *pfVar23;
        fStack_138 = fVar33 + fVar33 + (float)local_130;
        uStack_140 = CONCAT44(fVar32 + fVar32 + local_158,(undefined4)uStack_140);
        iVar24 = FUN_006d7cf0(&DAT_00c7b640,param_1 + 0x79,(int)&uStack_140 + 4);
        iVar19 = FUN_006eef60();
        fVar32 = (float)((double)iVar19 + (double)(&DAT_00bacb00)[-(iVar19 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa198 + DAT_00baa3a4;
        *(float *)(iVar24 + 0xe4) = fVar32;
        *(float *)(iVar24 + 0xe8) = fVar32 * DAT_00baa3a4;
        uVar18 = FUN_006eef60();
        for (local_148 = (int **)(uVar18 % 6 + 8); local_148 != (int **)0x0;
            local_148 = (int **)((int)local_148 + -1)) {
          iVar24 = FUN_006eef60();
          fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
          local_130 = (int **)(fVar32 + fVar32);
          fVar32 = (float)local_130;
          FUN_0041d520();
          local_158 = fVar32;
          FUN_0041d540();
          local_130 = (int **)((float)local_130 * DAT_00baa950);
          local_158 = local_158 * DAT_00baa904;
          iVar24 = FUN_006eef60();
          fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa6fc;
          fStack_138 = (local_158 * fVar32) / DAT_00baa950;
          uStack_140 = CONCAT44(((float)local_130 * fVar32) / DAT_00baa950,(undefined4)uStack_140);
          uVar25 = FUN_006eef60();
          local_154 = (float)local_130 + (float)param_1[0xcf];
          local_150 = (int **)(local_158 + (float)param_1[0xd0]);
          piVar26 = (int *)FUN_00428b20(1000,99,&local_154,(int)&uStack_140 + 4,0,1,uVar25);
          piVar26[0x39] = (int)((float)piVar26[0x39] + (float)piVar26[0x39]);
          piVar26[0x3a] = (int)((float)piVar26[0x3a] + (float)piVar26[0x3a]);
          iVar24 = FUN_006eef60();
          piVar26[0x106] = 0x3fc00000;
          piVar26[0x105] =
               (int)(DAT_00baad90 -
                    (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa7e8);
          (**(code **)(*piVar26 + 0xc))();
        }
      }
      local_148 = (int **)param_1[0xcf];
      fVar34 = ((float)param_1[0xd0] - (float)param_1[0x2ef]) *
               ((float)param_1[0xd0] - (float)param_1[0x2ef]) +
               ((float)local_148 - (float)param_1[0x2ee]) *
               ((float)local_148 - (float)param_1[0x2ee]);
      FUN_00435a50();
      param_1[0x2ec] = (int)(fVar34 + (float)param_1[0x2ec]);
      param_1[0x2ee] = (int)local_148;
      param_1[0x2ef] = param_1[0xd0];
      fVar33 = (float)param_1[0xe7];
      fVar32 = (float)param_1[0x2ed];
      if (fVar34 < fVar33 * DAT_00baa7a4) {
        fVar32 = fVar33 + fVar32;
        param_1[0x2ed] = (int)fVar32;
      }
      if (DAT_00baa81c < fVar32) {
        *(undefined *)(param_1 + 100) = 1;
        param_1[0x65] = param_1[0xd8];
        param_1[0x66] = param_1[0xd9];
        param_1[0x67] = param_1[0xd8];
        param_1[0x68] = param_1[0xd9];
        fVar32 = (float)param_1[0x2ed];
        fVar33 = (float)param_1[0xe7];
      }
      param_1[0x2ed] = (int)(fVar32 - fVar33 * DAT_00baa198);
      if (DAT_00baa950 < (float)param_1[0x2ec]) {
        param_1[0x2ec] = 0;
        FUN_006d6ba0(0x25,0x3f000000,2,0,0x3f800000);
        pfVar23 = (float *)FUN_0067f070((int)&uStack_140 + 4);
        iVar24 = FUN_006eef60();
        fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa81c;
        local_130 = (int **)(fVar32 * pfVar23[1] + (float)param_1[0xd9]);
        local_148 = (int **)(fVar32 * *pfVar23 + (float)param_1[0xd8]);
        uVar25 = FUN_006eef60();
        piVar26 = param_1 + 0xcf;
        fStack_138 = (float)local_130 * DAT_00baa198;
        uStack_140 = CONCAT44((float)local_148 * DAT_00baa198,(undefined4)uStack_140);
        piVar20 = (int *)FUN_00428b20(1000,0x8d,piVar26,(int)&uStack_140 + 4,param_1,1,uVar25);
        piVar20[0x117] = -1;
        piVar20[0x118] = -1;
        (**(code **)(*piVar20 + 0xc))();
        AI_0043ef30();
        local_11c = 0xbdbe76c9;
        iVar24 = FUN_006eef60();
        local_d0 = 0;
        local_cc = 0x20;
        local_104 = 0x3f75c28f;
        local_94 = 3;
        local_120 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baad74;
        fVar32 = DAT_00baa608;
        FUN_0041d540();
        local_158 = fVar32;
        fVar32 = DAT_00baa608;
        FUN_0041d520();
        local_130 = (int **)(local_158 * (float)param_1[0xd8] - fVar32 * (float)param_1[0xd9]);
        local_158 = local_158 * (float)param_1[0xd9] + fVar32 * (float)param_1[0xd8];
        fVar32 = (float)local_130 * (float)local_130 + local_158 * local_158;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar32) {
          local_130 = (int **)((DAT_00baa454 / fVar32) * (float)local_130);
          local_158 = local_158 * (DAT_00baa454 / fVar32);
        }
        iVar24 = FUN_006eef60();
        fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) * DAT_00ba9ff4
        ;
        fVar32 = fVar32 + fVar32 + DAT_00baa7a4;
        fStack_138 = fVar32 * local_158;
        uStack_140 = CONCAT44(fVar32 * (float)local_130,(undefined4)uStack_140);
        FUN_006cb2e0(piVar26,(int)&uStack_140 + 4,0,local_128);
        piVar20 = DAT_00baad70;
        FUN_0041d540();
        local_148 = (int **)piVar20;
        piVar20 = DAT_00baad70;
        FUN_0041d520();
        local_130 = (int **)((float)param_1[0xd8] * (float)local_148 -
                            (float)param_1[0xd9] * (float)piVar20);
        local_158 = (float)param_1[0xd9] * (float)local_148 + (float)param_1[0xd8] * (float)piVar20;
        fVar32 = local_158 * local_158 + (float)local_130 * (float)local_130;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar32) {
          local_130 = (int **)((float)local_130 * (DAT_00baa454 / fVar32));
          local_158 = local_158 * (DAT_00baa454 / fVar32);
        }
        iVar24 = FUN_006eef60();
        fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) * DAT_00ba9ff4
        ;
        fVar32 = fVar32 + fVar32 + DAT_00baa7a4;
        fStack_138 = fVar32 * local_158;
        uStack_140 = CONCAT44(fVar32 * (float)local_130,(undefined4)uStack_140);
        FUN_006cb2e0(piVar26,(int)&uStack_140 + 4,0,local_128);
      }
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      if (param_1[0x2f0] == 1) {
        ppbVar21 = (byte **)param_1[0x1f];
        if (ppbVar21 != (byte **)0x0) {
          if (&DAT_0000000f < ppbVar21[5]) {
            ppbVar21 = (byte **)*ppbVar21;
          }
          pcVar28 = "ChargeLoopUp";
          do {
            bVar16 = *(byte *)ppbVar21;
            bVar30 = bVar16 < (byte)*pcVar28;
            if (bVar16 != *pcVar28) {
LAB_004a3fc3:
              uVar18 = -(uint)bVar30 | 1;
              goto LAB_004a3fc8;
            }
            if (bVar16 == 0) break;
            bVar16 = *(byte *)((int)ppbVar21 + 1);
            bVar30 = bVar16 < ((byte *)pcVar28)[1];
            if (bVar16 != ((byte *)pcVar28)[1]) goto LAB_004a3fc3;
            ppbVar21 = (byte **)((int)ppbVar21 + 2);
            pcVar28 = (char *)((byte *)pcVar28 + 2);
          } while (bVar16 != 0);
          uVar18 = 0;
LAB_004a3fc8:
          if ((uVar18 == 0) &&
             ((*(char *)(param_1[0x1f] + 0x34) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
          goto LAB_004a4020;
        }
        cVar15 = FUN_0040a5d0("ChargeLoopUp",1);
        if (cVar15 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        if (param_1[0x2f0] == 3) {
          pcVar28 = "ChargeLoopDown";
        }
        else {
          pcVar28 = "ChargeLoopHori";
        }
        FUN_0040a380(pcVar28,0);
      }
    }
LAB_004a4020:
    if ((*(char *)(param_1 + 100) != '\0') &&
       (DAT_00baa2d0 < local_168 * (float)param_1[0x68] + (float)local_160 * (float)param_1[0x67]))
    {
      param_1[0xdf] = *(int *)(param_1[0xcc] + 0x44);
      FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
      FUN_00703670(6);
      if (param_1[0x2f0] == 1) {
        pcVar28 = "ChargeEndUp";
      }
      else {
        pcVar28 = "ChargeEndDown";
        if (param_1[0x2f0] != 3) {
          pcVar28 = "ChargeEndHori";
        }
      }
      FUN_0040a380(pcVar28,0);
      *(bool *)(param_1 + 0x52) = param_1[0x2f0] == 0;
      param_1[0x2f0] = -1;
    }
    break;
  case 9:
    if (param_1[0x1f] != 0) {
      cVar15 = FUN_0040add0("Shoot");
      if (cVar15 != '\0') {
        FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
        uVar25 = FUN_006eef60();
        local_130 = (int **)(param_1 + 0xcf);
        piVar26 = (int *)FUN_00428b20(1000,0x10,local_130,&DAT_00c7b640,param_1,3,uVar25);
        (**(code **)(*piVar26 + 0x3c))(param_1 + 0x79,0xffffffff,0xff,0,1);
        bVar16 = FUN_006eef60();
        *(byte *)(piVar26 + 0x52) = (bVar16 ^ 0xff) & 1;
        (**(code **)(*piVar26 + 0xc))();
        if (*(char *)(param_1 + 0x52) == '\0') {
          fVar32 = (float)param_1[0xcf] - DAT_00baa854;
          fStack_138 = (float)param_1[0xd0] + DAT_00ba9fe4;
          local_148 = (int **)DAT_00baaa78;
        }
        else {
          fVar32 = (float)param_1[0xcf] + DAT_00baa854;
          local_148 = (int **)0x0;
          fStack_138 = (float)param_1[0xd0] + 0.0;
        }
        uStack_140 = CONCAT44(fVar32,(undefined4)uStack_140);
        iVar24 = FUN_006be840();
        pfVar23 = (float *)local_130;
        fVar32 = (float)local_130[1] - *(float *)(iVar24 + 0x340);
        fVar33 = (float)*local_130 - *(float *)(iVar24 + 0x33c);
        fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
        FUN_00435a50();
        local_168 = fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x364) + *(float *)(iVar24 + 0x340);
        local_130 = (int **)(fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x360) +
                            *(float *)(iVar24 + 0x33c));
        fVar32 = local_168 - fStack_138;
        FUN_00499d60();
        local_150 = (int **)(fVar32 * DAT_00baa948);
        fVar33 = *pfVar23 - (float)local_130;
        fVar32 = pfVar23[1] - local_168;
        fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
        FUN_00435a50();
        local_168 = fVar32 * DAT_00baa108;
        local_158 = 18.0;
        pfVar23 = &local_168;
        if (DAT_00baa868 <= local_168) {
          pfVar23 = &local_158;
        }
        piVar26 = (int *)local_148;
        FUN_00682a50();
        local_130 = (int **)piVar26;
        uVar25 = FUN_006eef60();
        local_130 = (int **)((float)local_130 * DAT_00baa088);
        ppiVar31 = local_130;
        FUN_0041d520();
        local_150 = ppiVar31;
        ppiVar31 = local_130;
        FUN_0041d540();
        param_1 = local_160;
        local_154 = (float)ppiVar31 * *pfVar23;
        local_150 = (int **)(*pfVar23 * (float)local_150);
        iVar24 = FUN_00428b20(4,9,(int)&uStack_140 + 4,&local_154,local_160,0,uVar25);
        *(undefined4 *)(iVar24 + 0x41c) = 0xc0c00000;
        *(undefined4 *)(iVar24 + 0x34c) = 0;
        *(undefined4 *)(iVar24 + 0x350) = 0xc2480000;
        *(undefined4 *)(iVar24 + 0x410) = 0x24;
        *(undefined4 *)(iVar24 + 0x414) = 0x24;
        *(undefined4 *)(iVar24 + 0x188) = 0;
      }
      if (param_1[0x1f] != 0) {
        cVar15 = FUN_0040add0(&DAT_00b1d574);
        if (cVar15 != '\0') {
          *(undefined *)(param_1 + 0x52) = 0;
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
      }
    }
    param_1[0x2d9] = 3;
    uVar18 = FUN_006eef60();
    iVar24 = uVar18 % 0x14 + 0x28;
    goto LAB_004a5726;
  case 10:
    FUN_00452bf0(local_40 + 4);
    local_129 = FUN_0040cae0("Surface",7);
    FUN_0040d040();
    if (local_129 == '\0') {
      cVar15 = FUN_0040b030("Shoot");
      if (cVar15 != '\0') {
        FUN_006d6ba0(0xc,0x3f800000,2,0,0x3f800000);
        FUN_004071c0(param_1 + 0x79);
        local_70 = 0x3f000000;
        iVar24 = FUN_006b6830(param_1 + 0xcf,extraout_ECX);
        fVar32 = DAT_00baa81c;
        if (*(char *)(param_1 + 0x52) != '\0') {
          fVar32 = DAT_00baadc0;
        }
        *(float *)(iVar24 + 0x34c) = fVar32;
        *(undefined4 *)(iVar24 + 0x350) = 0xc1a00000;
        iVar24 = FUN_006be840();
        fVar32 = (float)param_1[0xd0] - *(float *)(iVar24 + 0x340);
        fVar33 = (float)param_1[0xcf] - *(float *)(iVar24 + 0x33c);
        fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
        FUN_00435a50();
        local_168 = ((fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x364) +
                     *(float *)(iVar24 + 0x340)) - (float)param_1[0xd0]) * DAT_00baa0d0;
        local_160 = (int *)(((fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x360) +
                             *(float *)(iVar24 + 0x33c)) - (float)param_1[0xcf]) * DAT_00baa0d0);
        fVar32 = local_168 * local_168 + (float)local_160 * (float)local_160;
        FUN_00435a50();
        if ((DAT_00baa87c < fVar32) && (DAT_00ba9fe4 < fVar32)) {
          local_160 = (int *)((DAT_00baa87c / fVar32) * (float)local_160);
          local_168 = local_168 * (DAT_00baa87c / fVar32);
        }
        uVar25 = FUN_006eef60();
        local_150 = DAT_00baad1c;
        FUN_0041d540();
        ppiVar31 = DAT_00baad1c;
        FUN_0041d520();
        uStack_140 = CONCAT44((float)local_160 * (float)local_150 - local_168 * (float)ppiVar31,
                              (undefined4)uStack_140);
        fStack_138 = (float)local_160 * (float)ppiVar31 + local_168 * (float)local_150;
        pfVar23 = (float *)FUN_0067f070(local_134);
        local_14c = *pfVar23 * DAT_00baa784 + (float)param_1[0xcf];
        local_148 = (int **)(pfVar23[1] * DAT_00baa784 + (float)param_1[0xd0]);
        iVar24 = FUN_00428b20(4,9,&local_14c,(int)&uStack_140 + 4,param_1,0,uVar25);
        *(undefined4 *)(iVar24 + 0x41c) = 0xc0c00000;
        *(undefined4 *)(iVar24 + 0x34c) = 0;
        *(undefined4 *)(iVar24 + 0x350) = 0xc2480000;
        *(undefined4 *)(iVar24 + 0x410) = 0x1e;
        *(undefined4 *)(iVar24 + 0x414) = 0x1e;
        *(undefined4 *)(iVar24 + 0x188) = 0;
        uVar25 = FUN_006eef60();
        ppiVar31 = DAT_00baa240;
        FUN_0041d540();
        local_150 = ppiVar31;
        ppiVar31 = DAT_00baa240;
        FUN_0041d520();
        fStack_138 = (float)ppiVar31 * (float)local_160 + (float)local_150 * local_168;
        uStack_140 = CONCAT44((float)local_150 * (float)local_160 - (float)ppiVar31 * local_168,
                              (undefined4)uStack_140);
        pfVar23 = (float *)FUN_0067f070(&local_174);
        local_15c = *pfVar23 * DAT_00baa784 + (float)param_1[0xcf];
        local_158 = pfVar23[1] * DAT_00baa784 + (float)param_1[0xd0];
        iVar24 = FUN_00428b20(4,9,&local_15c,(int)&uStack_140 + 4,param_1,0,uVar25);
        *(undefined4 *)(iVar24 + 0x41c) = 0xc0c00000;
        *(undefined4 *)(iVar24 + 0x34c) = 0;
        *(undefined4 *)(iVar24 + 0x350) = 0xc2480000;
        *(undefined4 *)(iVar24 + 0x410) = 0x24;
        *(undefined4 *)(iVar24 + 0x414) = 0x24;
        *(undefined4 *)(iVar24 + 0x188) = 0;
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_004a2ce0();
      }
    }
    else if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_0040a380(&DAT_00b1d2ec,0);
      iVar24 = FUN_006be840();
      fVar32 = (float)param_1[0xd0] - *(float *)(iVar24 + 0x340);
      fVar33 = (float)param_1[0xcf] - *(float *)(iVar24 + 0x33c);
      fVar32 = fVar32 * fVar32 + fVar33 * fVar33;
      FUN_00435a50();
      *(bool *)(param_1 + 0x52) =
           fVar32 * DAT_00baa120 * *(float *)(iVar24 + 0x360) + *(float *)(iVar24 + 0x33c) <
           (float)param_1[0xcf];
    }
    break;
  case 0xb:
    FUN_00452bf0(local_40 + 4);
    local_129 = FUN_0040cae0("GoUnder",7);
    FUN_0040d040();
    if (local_129 != '\0') {
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380(&DAT_00b1d2e4,0);
      }
      break;
    }
    cVar15 = FUN_0040b030("Shoot");
    if (cVar15 != '\0') {
      FUN_006d6ba0(0x25,0x3f800000,2,0,0x3f800000);
      uVar25 = FUN_004238f0(0x3f19999a);
      FUN_006b66a0(uVar25);
      uVar18 = 0;
      do {
        iVar24 = FUN_006eef60();
        local_150 = (int **)((((float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa87c - DAT_00baa81c) +
                             (float)((double)uVar18 +
                                    (double)(&DAT_00bacb00)[-((int)uVar18 >> 0x1f)]) * DAT_00baa910)
                            * DAT_00baa088);
        ppiVar31 = local_150;
        FUN_0041d520();
        local_130 = ppiVar31;
        iVar24 = FUN_006eef60();
        local_148 = (int **)((float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa7e8 + DAT_00baa848);
        ppiVar31 = local_150;
        FUN_0041d540();
        fStack_138 = (float)local_148 * (float)local_130;
        uStack_140 = CONCAT44((float)ppiVar31 * (float)local_148,(undefined4)uStack_140);
        uVar25 = FUN_006eef60();
        piVar26 = (int *)FUN_00428b20(1000,0x8d,param_1 + 0xcf,(int)&uStack_140 + 4,param_1,1,uVar25
                                     );
        piVar26[0x117] = -1;
        piVar26[0x118] = -1;
        (**(code **)(*piVar26 + 0xc))();
        uVar18 = uVar18 + 1;
      } while (uVar18 < 8);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    uVar18 = FUN_006eef60();
    fVar32 = local_168;
    if (uVar18 % 3 == 0) {
      iVar24 = FUN_006d0c60(local_17c,1000,0x8d);
      fVar32 = 1.401298e-45;
      if (0xb < *(uint *)(iVar24 + 0xc)) goto LAB_004a53f5;
      local_129 = '\0';
    }
    else {
LAB_004a53f5:
      local_129 = '\x01';
    }
    if (((uint)fVar32 & 1) != 0) {
      FUN_004175b0();
    }
    FUN_0040a380("Surface",0);
    if (local_129 != '\0') {
      param_1[0x2d9] = 10;
      break;
    }
    param_1[0x2d9] = 4;
    uVar18 = FUN_006eef60();
    iVar24 = uVar18 % 10 + 6;
    goto LAB_004a5726;
  case 0x10:
    if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) !=
         ((float)param_1[0xcd] == (float)DAT_00c7b640)) &&
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) != ((float)param_1[0xce] == DAT_00c7b644)))
    {
      FUN_00812f50((int)&uStack_140 + 4,param_1 + 0xcf,0x42200000,0x42a00000,0x42200000);
      fVar32 = (fStack_138 - (float)param_1[0xd0]) * DAT_00baa304;
      param_1[0xd8] = (int)((uStack_140._4_4_ - (float)param_1[0xcf]) * DAT_00baa304);
      param_1[0xd9] = (int)fVar32;
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa280);
    }
    if (param_1[0x1f] != 0) {
      cVar15 = FUN_0040add0("Shoot");
      if (cVar15 != '\0') {
        param_1[0xcd] = param_1[0xcf];
        param_1[0xce] = param_1[0xd0];
        FUN_006d6ba0(0xed,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x1c,0x3f800000,2,0,0x3f800000);
        local_40 = ZEXT816(0);
        local_30 = 0;
        local_2c = 0;
        local_28 = 0;
        local_50 = _DAT_00babcf0;
        uStack_4c = _UNK_00babcf4;
        uStack_48 = _UNK_00babcf8;
        uStack_44 = _UNK_00babcfc;
        FUN_006b6550(param_1 + 0xcf,&local_50);
        FUN_006d0c60(local_17c,1000,0x8d);
        local_14 = 0;
        puVar29 = (undefined4 *)0x0;
        if (local_170 != (undefined4 *)0x0) {
          do {
            iVar24 = *(int *)(local_178 + (int)puVar29 * 4);
            if (((iVar24 != 0) && (*(int *)(iVar24 + 0x28) == 1000)) &&
               (*(int **)(iVar24 + 0x3c8) == param_1)) {
              *(undefined4 *)(iVar24 + 0x45c) = 0x1e;
              *(undefined4 *)(iVar24 + 0x460) = 0x1e;
            }
            puVar29 = (undefined4 *)((int)puVar29 + 1);
          } while (puVar29 < local_170);
        }
        uVar18 = 0;
        do {
          iVar24 = FUN_006eef60();
          local_150 = (int **)((((float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]
                                        ) * DAT_00ba9ff4 * DAT_00baa87c - DAT_00baa81c) +
                               (float)((double)uVar18 +
                                      (double)(&DAT_00bacb00)[-((int)uVar18 >> 0x1f)]) *
                               DAT_00baa950) * DAT_00baa088);
          ppiVar31 = local_150;
          FUN_0041d520();
          local_130 = ppiVar31;
          iVar24 = FUN_006eef60();
          local_148 = (int **)((float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa83c);
          ppiVar31 = local_150;
          FUN_0041d540();
          fStack_138 = (float)local_148 * (float)local_130;
          uStack_140 = CONCAT44((float)ppiVar31 * (float)local_148,(undefined4)uStack_140);
          uVar25 = FUN_006eef60();
          piVar26 = (int *)FUN_00428b20(1000,0x8d,param_1 + 0xcf,(int)&uStack_140 + 4,param_1,1,
                                        uVar25);
          piVar26[0x117] = -1;
          piVar26[0x118] = -1;
          (**(code **)(*piVar26 + 0xc))();
          uVar18 = uVar18 + 1;
        } while (uVar18 < 6);
        local_14 = 0xffffffff;
        if (local_17c[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      if (((param_1[0x1f] != 0) && (cVar15 = FUN_0040ae70("Shoot"), cVar15 != '\0')) &&
         (ppiVar31 = (int **)(param_1 + 0xf0), param_1[0xf0] == 0)) {
        uVar25 = FUN_006eef60();
        local_148 = (int **)FUN_00428b20(1000,0xa8,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar25);
        local_130 = (int **)((int *)local_148 + 0xef);
        if (((int *)local_148)[0xef] != 0) {
          local_150 = local_130;
          FUN_004cf210(&local_150);
        }
        *local_130 = param_1;
        FUN_004cdcf0(local_130);
        (**(code **)((int)*local_148 + 0xc))();
        if (*ppiVar31 != (int *)0x0) {
          local_150 = ppiVar31;
          FUN_004cf210(&local_150);
        }
        *ppiVar31 = (int *)local_148;
        FUN_004cdcf0(ppiVar31);
      }
    }
    if ((param_1[0x1f] != 0) && (cVar15 = FUN_0040add0(&DAT_00b1d574), cVar15 != '\0')) {
      FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
      FUN_006b66c0(param_1 + 0xcf,param_1 + 0x79);
      AI_0043ef30();
      local_94 = 3;
      uStack_140 = CONCAT44(0x41200000,(undefined4)uStack_140);
      fStack_138 = 0.0;
      FUN_006cb2e0(param_1 + 0xcf,(int)&uStack_140 + 4,8,local_128);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    FUN_0040a380("Surface",0);
    param_1[0x2d9] = 4;
    uVar18 = FUN_006eef60();
    iVar24 = uVar18 % 10 + 6;
LAB_004a571c:
    param_1[0x2f0] = 0;
LAB_004a5726:
    param_1[0x2e8] = iVar24;
  }
  if ((((param_1[0x2d9] == 0x10) || (param_1[0x2d9] == 6)) && (iVar24 = FUN_006ac760(), iVar24 != 0)
      ) && ((FUN_006b6af0(&local_164,"EffectGuide"),
            (NAN(local_164) || NAN((float)DAT_00c7b640)) == (local_164 == (float)DAT_00c7b640) ||
            ((NAN((float)local_160) || NAN(DAT_00c7b644)) == ((float)local_160 == DAT_00c7b644)))))
  {
    iVar24 = FUN_006eef60();
    fVar32 = (float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_150 = (int **)(fVar32 + fVar32);
    ppiVar31 = local_150;
    FUN_0041d520();
    local_148 = ppiVar31;
    iVar24 = FUN_006eef60();
    local_130 = (int **)((float)((double)iVar24 + (double)(&DAT_00bacb00)[-(iVar24 >> 0x1f)]) *
                        DAT_00ba9ff4);
    FUN_0041d540();
    local_14c = (float)local_150 * (float)local_130;
    local_148 = (int **)((float)local_130 * (float)local_148);
    local_150 = (int **)(local_14c * DAT_00baa7a4);
    local_130 = (int **)((float)local_148 * DAT_00baa7a4);
    uVar25 = FUN_006eef60();
    local_168 = (float)param_1[0xd0] + DAT_00ba9fe4;
    local_16c = local_164 + (float)local_150 + (float)param_1[0xcf];
    piVar26 = (int *)FUN_00428b20(1000,0x6f,&local_16c,&local_14c,0,0,uVar25);
    piVar26[0xd3] = 0;
    piVar26[0xd6] = -0x3ee00000;
    piVar26[0xd4] = (int)((float)local_160 + (float)local_130);
    if (piVar26 + 0x3c != param_1 + 0x79) {
      iVar24 = param_1[0x7a];
      iVar19 = param_1[0x7b];
      iVar1 = param_1[0x7c];
      piVar26[0x3c] = param_1[0x79];
      piVar26[0x3d] = iVar24;
      piVar26[0x3e] = iVar19;
      piVar26[0x3f] = iVar1;
      iVar24 = param_1[0x7e];
      iVar19 = param_1[0x7f];
      iVar1 = param_1[0x80];
      piVar26[0x40] = param_1[0x7d];
      piVar26[0x41] = iVar24;
      piVar26[0x42] = iVar19;
      piVar26[0x43] = iVar1;
      *(undefined8 *)(piVar26 + 0x44) = *(undefined8 *)(param_1 + 0x81);
      piVar26[0x46] = param_1[0x83];
    }
    (**(code **)(*piVar26 + 0xc))();
  }
  iVar24 = param_1[0x2d9];
  if ((((iVar24 == 0x10) || (iVar24 == 4)) || ((iVar24 == 6 || ((iVar24 == 10 || (iVar24 == 0xb)))))
      ) && ((fVar32 = (float)param_1[0xcd],
            (NAN(fVar32) || NAN((float)DAT_00c7b640)) == (fVar32 == (float)DAT_00c7b640) ||
            ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
             ((float)param_1[0xce] == DAT_00c7b644))))) {
    param_1[0xd8] = (int)(fVar32 - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  }
  param_1[0xdb] = (int)(local_180 * (float)param_1[0xdb]);
  if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = param_1[0x2e8] - local_184;
  }
  uVar8 = _UNK_00bac5ec;
  uVar7 = _UNK_00bac5e8;
  uVar6 = _UNK_00bac5e4;
  uVar5 = _DAT_00bac5e0;
  uVar4 = _UNK_00babd7c;
  uVar3 = _UNK_00babd78;
  uVar2 = _UNK_00babd74;
  uVar25 = _DAT_00babd70;
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    iVar24 = *(int *)(DAT_00c71678 + 0x18300);
    iVar19 = *(int *)(iVar24 + 0x7294);
    if (iVar19 < 0) {
      *(undefined4 *)(iVar24 + 0x7244) = *(undefined4 *)(iVar24 + 0x1b30);
      *(undefined4 *)(iVar24 + 0x7248) = *(undefined4 *)(iVar24 + 0x1b34);
      *(undefined4 *)(iVar24 + 0x724c) = *(undefined4 *)(iVar24 + 0x1b38);
      *(undefined4 *)(iVar24 + 0x7250) = *(undefined4 *)(iVar24 + 0x1b3c);
      *(undefined4 *)(iVar24 + 0x7254) = *(undefined4 *)(iVar24 + 0x1b40);
      *(undefined4 *)(iVar24 + 0x7258) = *(undefined4 *)(iVar24 + 0x1b44);
      *(undefined4 *)(iVar24 + 0x725c) = *(undefined4 *)(iVar24 + 0x1b48);
      *(undefined4 *)(iVar24 + 0x7260) = *(undefined4 *)(iVar24 + 0x1b4c);
      *(undefined4 *)(iVar24 + 0x7264) = *(undefined4 *)(iVar24 + 0x1b50);
      *(undefined4 *)(iVar24 + 0x7268) = *(undefined4 *)(iVar24 + 0x1b54);
    }
    else {
      fVar32 = DAT_00baa454;
      if (iVar19 != 0) {
        fVar32 = DAT_00baa454 - (float)*(int *)(iVar24 + 0x7298) / (float)iVar19;
        if (fVar32 <= DAT_00ba9fe4) {
          fVar32 = DAT_00ba9fe4;
        }
        if (DAT_00baa454 <= fVar32) {
          fVar32 = DAT_00baa454;
        }
      }
      *(float *)(iVar24 + 0x7244) =
           (*(float *)(iVar24 + 0x726c) - *(float *)(iVar24 + 0x7244)) * fVar32 +
           *(float *)(iVar24 + 0x7244);
      *(float *)(iVar24 + 0x7248) =
           (*(float *)(iVar24 + 0x7270) - *(float *)(iVar24 + 0x7248)) * fVar32 +
           *(float *)(iVar24 + 0x7248);
      *(float *)(iVar24 + 0x724c) =
           (*(float *)(iVar24 + 0x7274) - *(float *)(iVar24 + 0x724c)) * fVar32 +
           *(float *)(iVar24 + 0x724c);
      *(float *)(iVar24 + 0x7250) =
           (*(float *)(iVar24 + 0x7278) - *(float *)(iVar24 + 0x7250)) * fVar32 +
           *(float *)(iVar24 + 0x7250);
      *(float *)(iVar24 + 0x7258) =
           (*(float *)(iVar24 + 0x7280) - *(float *)(iVar24 + 0x7258)) * fVar32 +
           *(float *)(iVar24 + 0x7258);
      *(float *)(iVar24 + 0x725c) =
           (*(float *)(iVar24 + 0x7284) - *(float *)(iVar24 + 0x725c)) * fVar32 +
           *(float *)(iVar24 + 0x725c);
      *(float *)(iVar24 + 0x7260) =
           (*(float *)(iVar24 + 0x7288) - *(float *)(iVar24 + 0x7260)) * fVar32 +
           *(float *)(iVar24 + 0x7260);
      *(float *)(iVar24 + 0x7264) =
           (*(float *)(iVar24 + 0x728c) - *(float *)(iVar24 + 0x7264)) * fVar32 +
           *(float *)(iVar24 + 0x7264);
    }
    *(undefined4 *)(iVar24 + 0x726c) = uVar25;
    *(undefined4 *)(iVar24 + 0x7270) = uVar2;
    *(undefined4 *)(iVar24 + 0x7274) = uVar3;
    *(undefined4 *)(iVar24 + 0x7278) = uVar4;
    *(undefined4 *)(iVar24 + 0x7280) = uVar5;
    *(undefined4 *)(iVar24 + 0x7284) = uVar6;
    *(undefined4 *)(iVar24 + 0x7288) = uVar7;
    *(undefined4 *)(iVar24 + 0x728c) = uVar8;
    *(undefined4 *)(iVar24 + 0x727c) = 0;
    *(undefined4 *)(iVar24 + 0x7290) = 0;
    *(undefined4 *)(iVar24 + 0x7294) = 0x5a;
    *(undefined4 *)(iVar24 + 0x7298) = 0x5a;
    AI_0041af60(local_17c,1000,0x8d,0xffffffff,0,0);
    puVar29 = (undefined4 *)0x0;
    if (local_170 != (undefined4 *)0x0) {
      do {
        iVar24 = *(int *)(local_178 + (int)puVar29 * 4);
        if (((iVar24 != 0) && (*(int *)(iVar24 + 0x28) == 1000)) &&
           (*(int **)(iVar24 + 0x3c8) == param_1)) {
          *(undefined4 *)(iVar24 + 0x45c) = 0x1e;
          *(undefined4 *)(iVar24 + 0x460) = 0x1e;
        }
        puVar29 = (undefined4 *)((int)puVar29 + 1);
      } while (puVar29 < local_170);
    }
    if (local_17c[0] == '\0') {
      local_14 = 3;
      FUN_00a648b0(0,0);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

